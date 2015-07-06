class CreateCommentsArticles < ActiveRecord::Migration
  def change
    create_table :comments_articles do |t|

      t.timestamps null: false
      t.references :articles, index: true
      t.references :users, index: true
      t.string :description
      t.date :date_creation
    end
  end
end
