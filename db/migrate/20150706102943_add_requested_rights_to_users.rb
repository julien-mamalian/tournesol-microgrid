class AddRequestedRightsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :requested_rights, :boolean, null: false, default: false
  end
end
