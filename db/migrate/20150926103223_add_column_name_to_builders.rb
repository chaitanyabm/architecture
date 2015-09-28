class AddColumnNameToBuilders < ActiveRecord::Migration
  def change
    remove_column :builders, :buider_name, :string
      add_column :builders, :name, :string
  end
end
