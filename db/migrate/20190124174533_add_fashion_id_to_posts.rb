class AddFashionIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :fashion_id, :integer
    add_index :posts, :fashion_id
  end
end
