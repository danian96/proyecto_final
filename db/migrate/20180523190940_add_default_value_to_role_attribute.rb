class AddDefaultValueToRoleAttribute < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :role, :string, default: "postulante"
  end
end
