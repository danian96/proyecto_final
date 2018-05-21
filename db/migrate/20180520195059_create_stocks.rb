class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.date :buying_date
      t.string :item_name
      t.integer :quantity
      t.references :stock_category, foreign_key: true

      t.timestamps
    end
  end
end
