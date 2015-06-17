require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth-github'
require 'pry'

require_relative 'config/application'

Dir['app/**/*.rb'].each { |file| require_relative file }

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def set_current_user(user)
  session[:user_id] = user.id
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in if you want to do that!'
    redirect '/'
  end
end

get '/' do
  @meetups = Meetup.all.order(:name)
  @title = "Upcoming Meetups:"
  erb :index
end

get '/auth/github/callback' do
  auth = env['omniauth.auth']

  user = User.find_or_create_from_omniauth(auth)
  set_current_user(user)
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/meetups/:id' do
  authenticate!
  @meetup = Meetup.find(params[:id].to_i)
  @creator = Membership.where(owner: true).find_by(meetup: @meetup).user
  @going = Membership.where(meetup: @meetup)

  erb :show
end

post '/meetups/:id' do
  meetup = params[:id].to_i
  Membership.create(user: current_user, meetup_id: meetup, owner: false)

  flash[:notice] = "YAY, you joined. See you there!"
  redirect "/meetups/#{meetup}"
end

get '/meetup/new' do
  authenticate!
  erb :create
end

post '/meetup/new' do
  name = params[:name]
  description = params[:description]
  location = params[:location]

  new_meetup = Meetup.create(name: name, description: description, location: location)

  Membership.create(user: current_user, meetup: new_meetup, owner: true)

  flash[:notice] = "Success!"
  redirect "/meetups/#{new_meetup.id}"
end
