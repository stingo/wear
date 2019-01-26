class Fashion < ApplicationRecord
	belongs_to :user
	has_many :posts


	extend FriendlyId
  friendly_id :name, use: :slugged

   def should_generate_new_friendly_id?
   name_changed?
  end
  
end
