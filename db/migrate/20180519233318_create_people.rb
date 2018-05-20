class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.date :birthday
      t.string :sex
      t.integer :ci
      t.text :address
      t.integer :cellphone
      t.references :user, foreign_key: true
      t.references :civil_state, foreign_key: true

      t.timestamps
    end
  end
end
