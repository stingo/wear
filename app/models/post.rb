class Post < ApplicationRecord
	mount_uploaders :postimages, PostimagesUploader

	belongs_to :user
	belongs_to :fashion


 has_secure_token :listing_token
  require 'securerandom'
  SecureRandom.hex(2)

    def currency_name
    currency = self.currency
    ISO3166::Country[currency]
    end



extend FriendlyId
  friendly_id :name, use: :slugged

   def should_generate_new_friendly_id?
   name_changed?
  end




end
