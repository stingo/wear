class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :slug, :string
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :displayname, :string
  	add_column :users, :phone_number, :string
  	add_column :users, :agreed_with_terms, :boolean, default: false
  	add_column :users, :verified, :string 
  	add_column :users, :longitude, :float
  	add_column :users, :latitude, :float
  	add_column :users, :local_area, :string
  	add_column :users, :area_code, :string
  	add_column :users, :town, :string
  	add_column :users, :country, :string
  	add_column :users, :currency, :string
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :gender, :string
  	add_column :users, :pesnavatar, :string
  	add_column :users, :admin, :boolean, default: false
  	add_column :users, :summary, :text
  	add_column :users, :facebookurl, :string
  	add_column :users, :twitterurl, :string
  	add_column :users, :youtubeurl, :string
  	add_column :users, :pinteresturl, :string
  	add_column :users, :instagramurl, :string
  	add_column :users, :websiteurl, :string
  	add_column :users, :verificationphoto, :string


    add_index :users, :slug
  end
end
