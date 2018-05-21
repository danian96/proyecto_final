class CreateDesignations < ActiveRecord::Migration[5.1]
  def change
    create_table :designations do |t|
      t.string :name
      t.references :departament, foreign_key: true

      t.timestamps
    end
  end
end
