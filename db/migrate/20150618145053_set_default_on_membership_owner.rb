class SetDefaultOnMembershipOwner < ActiveRecord::Migration
  def up
    change_column :memberships, :owner, :boolean, default: false
  end

  def down
    change_column :memberships, :owner, :boolean, null: false
  end
end
