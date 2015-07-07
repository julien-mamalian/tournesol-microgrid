class AddDescriptionAndProjectAdvancementToProject < ActiveRecord::Migration
  def change
    add_column :projects, :description, :string
    add_column :projects, :project_advancement, :string
  end
end
