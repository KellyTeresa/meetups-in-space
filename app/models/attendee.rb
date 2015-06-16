class Attendee < ActiveRecord::Base
  has_one :users
  has_many :meetups
end
