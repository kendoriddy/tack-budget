class RenameCategoriesTransactionsToBusinessesCategories < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :categories_transactions, :businesses_categories
  end

  def self.down
    rename_table :businesses_categories, :categories_transactions
  end
end
