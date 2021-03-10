class DrinksController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]
  before_action :set_drink, only: %i[ show edit update destroy ]

  # GET /drinks or /drinks.json
  def index
    @drinks = Drink.all
  end

  # GET /drinks/1 or /drinks/1.json
  def show
  end

  # GET /drinks/new
  def new
    @drink = Drink.new
  end

  # GET /drinks/1/edit
  def edit
  end

  # POST /drinks or /drinks.json
  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink, notice: "Drink was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drinks/1 or /drinks/1.json
  def update
    if @drink.update(drink_params)
      redirect_to @drink, notice: "Drink was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /drinks/1 or /drinks/1.json
  def destroy
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
      params.require(:drink).permit(:name, :description, :price, :available, :quantity, :brewer_id, :photo)
    end
end
