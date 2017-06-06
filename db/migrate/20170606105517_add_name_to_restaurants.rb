class AddNameToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :name, :string, index: true, null: false, unique: true
    add_column :restaurants, :phonenumber, :string, null: false, unique: true
    add_column :restaurants, :budget, :integer,null: false
  end
end
