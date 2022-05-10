class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :location
      t.float :price_per_day, precision: 6, scale: 2
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
