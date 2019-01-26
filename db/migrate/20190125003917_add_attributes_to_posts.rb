class AddAttributesToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :video_link, :string
  	add_column :posts, :listing_token, :string
  	add_column :posts, :stock, :string
  	add_column :posts, :website_url, :string
  	add_column :posts, :currency, :string

  end
end
