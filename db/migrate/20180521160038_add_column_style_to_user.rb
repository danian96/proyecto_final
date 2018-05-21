class AddColumnStyleToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :style, :string
  end
end
