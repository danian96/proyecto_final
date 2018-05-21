class CreateConvocatories < ActiveRecord::Migration[5.1]
  def change
    create_table :convocatories do |t|
      t.string :title
      t.string :description
      t.date :stardate
      t.date :enddate
      t.integer :vacancy
      t.string :state
      t.references :designation, foreign_key: true

      t.timestamps
    end
  end
end
