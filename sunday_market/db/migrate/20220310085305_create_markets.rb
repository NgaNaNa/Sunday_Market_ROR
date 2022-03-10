class CreateMarkets < ActiveRecord::Migration[6.1]
  def change
    create_table :markets do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :sold

      t.timestamps
    end
  end
end
