class ChangeStringToTextForContentArticle < ActiveRecord::Migration
  def up
    change_column :articles, :content, :text
  end

  def down
    change_column :articles, :content, :string
  end
end
