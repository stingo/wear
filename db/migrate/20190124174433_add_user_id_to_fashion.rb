class AddUserIdToFashion < ActiveRecord::Migration[5.2]
  def change
    add_column :fashions, :user_id, :integer
    add_index :fashions, :user_id
  end
end
