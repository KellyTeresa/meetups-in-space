class AddCreatorAndAttendeesToMeetups < ActiveRecord::Migration
  def change
    add_column :meetups, :creator_id, :integer
    add_column :meetups, :attendee_id, :integer
  end
end
