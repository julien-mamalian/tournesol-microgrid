class AddVotesToProjectComments < ActiveRecord::Migration
  def change
    add_column :projects_comments, :votes, :integer
  end
end
