class DrinksController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :random]
  before_action :set_drink, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /drinks
  def index
    # @drinks = Drink.all
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
    # @drink = Drink.find(params[:id])
    @drink.destroy
      redirect_to drinks_url, notice: "Drink was successfully deleted."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_drink
    @drink = Drink.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def drink_params
    params.require(:drink).permit(:name, :description, :price, :available, :quantity, :cidery_id, :style_id, :sugar_content_id, :prod_method_id, :photo)
  end
end
