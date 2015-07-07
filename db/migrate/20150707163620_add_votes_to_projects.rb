class AddVotesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :votes, :integer
  end
end
