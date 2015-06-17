class Meetup < ActiveRecord::Base
  has_many :memberships

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
