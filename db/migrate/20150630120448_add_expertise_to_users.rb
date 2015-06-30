class AddExpertiseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expertise, :boolean
  end
end
