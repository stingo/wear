class FashionsController < ApplicationController
  before_action :set_fashion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :show]

  # GET /fashions
  # GET /fashions.json
  def index
    @fashions = Fashion.all
  end

  # GET /fashions/1
  # GET /fashions/1.json
  def show
  end

  # GET /fashions/new
  def new
    @fashion = Fashion.new
  end

  # GET /fashions/1/edit
  def edit
    @fashion = Fashion.friendly.find(params[:id])
  end

  # POST /fashions
  # POST /fashions.json
  def create
    @fashion = Fashion.new(fashion_params)
    @fashion.user_id = current_user.id

    respond_to do |format|
      if @fashion.save
        format.html { redirect_to @fashion, notice: 'Fashion was successfully created.' }
        format.json { render :show, status: :created, location: @fashion }
      else
        format.html { render :new }
        format.json { render json: @fashion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashions/1
  # PATCH/PUT /fashions/1.json
  def update
    respond_to do |format|
      if @fashion.update(fashion_params)
        format.html { redirect_to @fashion, notice: 'Fashion was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion }
      else
        format.html { render :edit }
        format.json { render json: @fashion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashions/1
  # DELETE /fashions/1.json
  def destroy
    @fashion.destroy
    respond_to do |format|
      format.html { redirect_to fashions_url, notice: 'Fashion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion
      @fashion = Fashion.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_params
      params.require(:fashion).permit(:name, :slug, :description)
    end
end
