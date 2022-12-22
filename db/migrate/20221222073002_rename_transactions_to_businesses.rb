class RenameTransactionsToBusinesses < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :transactions, :businesses
  end

  def self.down
    rename_table :businesses, :transactions
  end
end
