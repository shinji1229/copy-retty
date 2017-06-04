class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string      :name, index: true, null: false, unique: true
      t.integer     :phonenumber, null: false, unique: true
      t.integer     :budget, null: false
      t.timestamps
    end
  end
end
