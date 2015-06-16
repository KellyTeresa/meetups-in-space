class Meetup < ActiveRecord::Base
  has_one :creator
  has_many :attendees

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
