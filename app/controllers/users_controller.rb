class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :show]
  #impressionist actions: [:show,:index], unique: [:session_hash]
  #before_action :require_same_profile, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
        @user_postss = @user.posts.order("created_at DESC") #important! to enable profiles urbanterms on profile
        #impressionist(@user)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.friendly.find(params[:id])
  end

  # POST /users
  # POST /users.json


  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.friendly.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :displayname,
        :verificationphoto_cache, :phone_number, :slug, :longitude , :latitude, 
        :local_area, :town , :region, :country, :pesnavatar, :pesnavatar_cache, :gender, :date_of_birth, :profilecover, 
        :summary, :currency_id, :verified, :agreed_with_terms,  :facebookurl,  :twitterurl, :linkedinurl, 
        :youtubeurl, :pinteresturl, :instagramurl, :websiteurl, :displayname, :verificationphoto, :profilecover_cache )
    end
end

