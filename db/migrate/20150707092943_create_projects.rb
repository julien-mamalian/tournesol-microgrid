class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :content
      t.string :address
      t.integer :zipcode
      t.string :city
      t.string :country
      t.integer :datecreation
      t.integer :area

      t.timestamps null: false
    end
  end
end
