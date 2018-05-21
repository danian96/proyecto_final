class CreateAppliDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :appli_details do |t|
      t.string :state
      t.date :date
      t.references :convocatory, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
