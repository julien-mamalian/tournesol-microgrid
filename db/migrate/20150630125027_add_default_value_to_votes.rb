class AddDefaultValueToVotes < ActiveRecord::Migration
  def change
    change_column :articles, :votes, :integer, :default => 0
  end
end
