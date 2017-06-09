class AddColumnToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column    :restaurants, :budget_lunch ,  :integer
    add_column    :restaurants, :budget_dinner, :integer
    remove_column :restaurants, :budget       , :integer
    add_column    :restaurants, :country      , :string
    add_column    :restaurants, :address      , :string
  end
end
