class AddPostimagesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :postimages, :jsonb
  end
end
