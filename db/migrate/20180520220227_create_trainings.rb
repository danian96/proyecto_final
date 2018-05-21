class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :description
      t.date :init_date
      t.date :finish_day

      t.timestamps
    end
  end
end
