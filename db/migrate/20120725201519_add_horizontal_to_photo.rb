class AddHorizontalToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :horizontal, :boolean
  end
end
