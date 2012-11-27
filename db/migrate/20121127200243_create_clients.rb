class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :url
      t.integer :sequence

      t.timestamps
    end
  end
end
