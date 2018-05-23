class CreateAnnunments < ActiveRecord::Migration[5.1]
  def change
    create_table :annunments do |t|
      t.string :status
      t.string :title
      t.string :descripcion
      t.references :departament, foreign_key: true

      t.timestamps
    end
  end
end
