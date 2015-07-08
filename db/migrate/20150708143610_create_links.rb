class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :article, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
