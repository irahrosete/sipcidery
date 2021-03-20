class DrinksController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :random]
  before_action :set_drink, only: %i[ show edit update destroy ]
  before_action :allow_cidery, only: [:new, :edit]
  load_and_authorize_resource

  # GET /drinks
  def index
    # to assist random method using index view
    @drinks = Drink.search(params[:search])
  end

  # GET /drinks/1
  def show
  end

  def random
    @drink = Drink.offset(rand(Drink.count)).first
    authorize! :random, @drink
  end

  # GET /drinks/new
  def new
    @drink = Drink.new
  end

  # GET /drinks/1/edit
  def edit
  end

  # POST /drinks
  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink, notice: "Drink was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drinks/1
  def update
    if @drink.update(drink_params)
      redirect_to @drink, notice: "Drink was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /drinks/1
  def destroy
    @drink.destroy
      redirect_to drinks_url, notice: "Drink was successfully deleted."
  end

  # allow saving and unsaving drinks
  def saved
    type = params[:type]
    if type == "saved"
      current_user.saved << @drink
      redirect_to drink_path, notice: "You saved #{@drink.name}"
    elsif type == "unsaved"
      current_user.saved.delete(@drink)
      redirect_to drink_path, notice: "Unsaved #{@drink.name}"
    end
  end

  def saved_drinks
    @drinks = current_user.saved
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_drink
    @drink = Drink.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def drink_params
    params.require(:drink).permit(:name, :description, :price, :available, :quantity, :cidery_id, :style_id, :sugar_content_id, :prod_method_id, :photo, :abv, :size, retailer_ids: [])
  end

  # limit Cidery available to rep users to only their Cidery. To be used on forms
  def allow_cidery
    if current_user.super?
      @cideries = Cidery.all
    elsif current_user.rep?
       @cideries = Cidery.where(id: current_user.cidery_id)
    end
  end
end
