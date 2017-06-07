class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text         :body, null: false
      t.string       :image
      t.integer      :rate, null: false
      t.references   :user ,foreign_key: true
      t.references   :restaurant ,foreign_key: true
      t.timestamps
    end
  end
end
