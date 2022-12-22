class RemoveUserIdFromCategories < ActiveRecord::Migration[7.0]
  def change
    change_table :categories do |t|
      t.remove :user_id
    end
  end
end
