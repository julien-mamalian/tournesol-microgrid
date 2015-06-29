class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :string
      t.integer :votes

      t.timestamps null: false
    end
  end
end
