class CreateAssignDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :assign_details do |t|
      t.integer :quantity
      t.references :stock, foreign_key: true
      t.references :assignation_stock, foreign_key: true

      t.timestamps
    end
  end
end
