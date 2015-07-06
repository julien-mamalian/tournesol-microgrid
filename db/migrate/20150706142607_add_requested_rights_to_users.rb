class AddRequestedRightsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :requested_rights, :string, null: false, default: "Not sent"
  end
end
