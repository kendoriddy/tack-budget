class RemoveUserIdAndAddAuthorIdToCategories < ActiveRecord::Migration[7.0]
  def change
    def change
      change_table :categories do |t|
        t.remove :user_id
        t.bigint :author_id
      end
    end
  end
end
