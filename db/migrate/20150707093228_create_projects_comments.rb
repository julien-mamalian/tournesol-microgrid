class CreateProjectsComments < ActiveRecord::Migration
  def change
    create_table :projects_comments do |t|
      t.string :description
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps null: false
    end
  end
end
