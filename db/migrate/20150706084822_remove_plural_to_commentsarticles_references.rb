class RemovePluralToCommentsarticlesReferences < ActiveRecord::Migration
  def change
    change_table :comments_articles do |t|
      t.references :article, index: true
      t.references :user, index: true
    end

    remove_reference :comments_articles, :articles
    remove_reference :comments_articles, :users
  end
end
