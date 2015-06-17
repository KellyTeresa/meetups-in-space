class AddTimestampsToMeetups < ActiveRecord::Migration
  def change
    change_table :meetups do |table|
      table.timestamps
    end
  end
end
