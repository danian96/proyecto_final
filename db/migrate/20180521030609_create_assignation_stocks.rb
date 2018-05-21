class CreateAssignationStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :assignation_stocks do |t|
      t.date :assign_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
