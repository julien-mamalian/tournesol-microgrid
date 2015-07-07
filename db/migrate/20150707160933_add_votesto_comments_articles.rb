class AddVotestoCommentsArticles < ActiveRecord::Migration
  def change
    add_column :comments_articles, :votes, :integer
  end
end
