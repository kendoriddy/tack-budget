class ChangeUserIdToAuthorIdInCategories < ActiveRecord::Migration[7.0]
  def change
    change_table :categories do |t|
      # t.index :author_id
      t.references :author, null: false, foreign_key: { to_table: :users }
    end
  end
end
