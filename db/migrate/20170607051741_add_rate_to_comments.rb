class AddRateToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :rate, :integer
    add_column :comments, :scene, :integer
  end
end
