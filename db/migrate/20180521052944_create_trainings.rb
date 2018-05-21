class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :description
      t.date :init_date
      t.date :finish_date

      t.timestamps
    end
  end
end
