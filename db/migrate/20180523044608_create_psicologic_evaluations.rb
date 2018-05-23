class CreatePsicologicEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :psicologic_evaluations do |t|
      t.string :observations
      t.string :recomendations
      t.references :appli_detail, foreign_key: true

      t.timestamps
    end
  end
end
