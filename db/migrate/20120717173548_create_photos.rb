class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string  :title
      t.string  :url
      t.text  :description
      t.integer  :sequence
      t.boolean :visible

      t.timestamps
    end
  end
end
