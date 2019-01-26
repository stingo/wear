class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :store_location #Redirect to previous page after sign in
  protect_from_forgery with: :exception

  include CurrentUserConcern

    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:first_name, :last_name, :email, :username, :password, :phone_number,
     :password_confirmation, :gender, :date_of_birth, :agreed_with_terms, 
     :longitude , :latitude, :local_area, :town , :region, :currency_id, :displayname, :country, :welcomecall )
  end

  devise_parameter_sanitizer.permit(:account_update) do |user_params|
    user_params.permit(:displayname, :first_name, :last_name, :username, :email,
     :password, :password_confirmation, :gender, :date_of_birth, :pesnavatar, :phone_number,
      :verified, :agreed_with_terms, :longitude , :latitude, :local_area, :town , :region, :currency_id,
      :facebookurl,  :twitterurl, :linkedinurl, 
        :youtubeurl, :pinteresturl, :instagramurl, :websiteurl, :displayname, :country, :verificationphoto, :welcomecall )
  end


end
end