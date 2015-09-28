class AddSlugToBuilders < ActiveRecord::Migration
  def change
    add_column :builders, :slug, :string
    add_index :builders, :slug
  end
end
