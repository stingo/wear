class User < ApplicationRecord
  #is_impressionable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


         has_many :posts, dependent: :destroy
         has_many :fashions



         #validates :displayname, :presence => true, :length => { :maximum => 50 }
          #validates :displayname, format: { with: /\A[a-zA-Z0-9]+\Z/ }, length: {minimum: 6, maximum: 50}, uniqueness: true
          #validates :agreed_with_terms, acceptance: true
          #validates :first_name, :presence => true, :length => { :maximum => 50 }
          #validates :town, :presence => true, :length => { :maximum => 200 }
          #validates :country, :presence => true
          #validates :last_name, :presence => true, :length => { :maximum => 50 }
            #mount_uploader :pesnavatar, PesnavatarUploader
            #mount_uploader :profilecover, ProfilecoverUploader




 def full_name
    "#{first_name} #{last_name}"
 end

    

  extend FriendlyId
  friendly_id :displayname, use: :slugged

   def should_generate_new_friendly_id?
   displayname_changed?
  end


end
