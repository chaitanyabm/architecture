class AddColumnToBuilderstoname < ActiveRecord::Migration
  
  def change
      remove_column :builders, :buider_name
      remove_column :builders, :name
      add_column  :builders, :bname, :string
    
  end
end
