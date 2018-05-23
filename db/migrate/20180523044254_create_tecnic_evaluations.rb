class CreateTecnicEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :tecnic_evaluations do |t|
      t.string :observations
      t.string :qualification
      t.references :appli_detail, foreign_key: true

      t.timestamps
    end
  end
end
