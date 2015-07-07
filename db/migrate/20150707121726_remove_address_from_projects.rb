class RemoveAddressFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :address
    remove_column :projects, :zipcode
  end
end
