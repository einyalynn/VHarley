class AddPortfolioToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :portfolio, :string
  end
end
