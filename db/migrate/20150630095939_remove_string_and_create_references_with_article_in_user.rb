class RemoveStringAndCreateReferencesWithArticleInUser < ActiveRecord::Migration
  def change
    remove_column :articles, :string
    add_reference :articles, :user, index: true
  end
end
