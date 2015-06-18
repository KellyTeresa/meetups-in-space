# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
require 'faker'

# Make some meetups
Meetup.create(name: "LaMonte & Kelly's Super Awesome Meetup", description: "The best meetup of all time", location: "Launch Academy Mission Control")
Meetup.create(name: "SpaceJam", description: "You already know.", location: "Space")
Meetup.create(name: "Donut Day", description: "Free donuts~!", location: "Everywhere.")
Meetup.create(name: "Apple Picking", description: "We got a new biodeck! Come pick some sweet synthetic apples.", location: "Spacestation 25-Q")
Meetup.create(name:"Super Duper Happy Fun Time", description: "Errrrrrmagawdddd", location: "Deep Space 9")
Meetup.create(name: "Sunglasses Party", description:"We wear them at night", location: "A dark sketchy park near you")

# Make some users
10.times do
  User.create(provider: "github", uid: "#{Faker::Number.number(7)}", username: "#{Faker::Internet.user_name}", email: "#{Faker::Internet.email}", avatar_url: "#{Faker::Avatar.image}")
end

# Make some memberships
Membership.create(user_id: 1, meetup_id: 1, owner: true)
Membership.create(user_id: 2, meetup_id: 2, owner: true)
Membership.create(user_id: 1, meetup_id: 3, owner: true)
Membership.create(user_id: 2, meetup_id: 4, owner: true)
Membership.create(user_id: 5, meetup_id: 5, owner: true)
Membership.create(user_id: 10, meetup_id: 6, owner: true)
Membership.create(user_id: 2, meetup_id: 1, owner: false)
Membership.create(user_id: 3, meetup_id: 1, owner: false)
Membership.create(user_id: 4, meetup_id: 1, owner: false)
Membership.create(user_id: 1, meetup_id: 2, owner: false)
Membership.create(user_id: 5, meetup_id: 2, owner: false)
Membership.create(user_id: 7, meetup_id: 2, owner: false)
Membership.create(user_id: 8, meetup_id: 2, owner: false)
Membership.create(user_id: 7, meetup_id: 3, owner: false)
Membership.create(user_id: 7, meetup_id: 4, owner: false)
Membership.create(user_id: 7, meetup_id: 5, owner: false)
Membership.create(user_id: 7, meetup_id: 6, owner: false)
