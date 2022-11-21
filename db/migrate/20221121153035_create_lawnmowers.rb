class CreateLawnmowers < ActiveRecord::Migration[7.0]
  def change
    create_table :lawnmowers do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.integer :speed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
