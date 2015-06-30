class AddEntrepriseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :entreprise, :string
  end
end
