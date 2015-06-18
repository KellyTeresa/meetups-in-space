class MakeTimestampsRequired < ActiveRecord::Migration
  def up
    tables = [:meetups, :memberships, :users]
    tables.each do |table|
      change_column table, :created_at, :datetime, null: false
      change_column table, :updated_at, :datetime, null: false
    end
  end

  def down
    tables = [:meetups, :memberships, :users]
    tables.each do |table|
      change_column table, :created_at, :datetime
      change_column table, :updated_at, :datetime
    end
  end

end
