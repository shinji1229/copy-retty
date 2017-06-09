class CreateIntroductions < ActiveRecord::Migration[5.0]
  def change
    create_table :introductions do |t|
      t.string     :title
      t.text       :body
      t.text       :image
      t.references :restaurant ,foreign_key: true

      t.timestamps
    end
  end
end
