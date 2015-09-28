class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
      t.string :builder_name
      t.string :location
      t.string :project
      t.string :bhk_details

      t.timestamps null: false
    end
  end
end
