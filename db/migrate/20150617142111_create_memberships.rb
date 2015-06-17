class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |table|
      table.belongs_to :user, index: true
      table.belongs_to :meetup, index: true
      table.boolean :owner, null: false

      table.timestamps
    end
  end
end
