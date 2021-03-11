class CideriesController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]
  before_action :set_cidery, only: %i[ show edit update destroy ]

  # GET /cideries
  def index
    @cidery = Cidery.all
  end

  # GET /cideries/1
  def show
  end

  # GET /cideries/new
  def new
    @cidery = Cidery.new
  end

  # GET /cideries/1/edit
  def edit
  end

  # POST /cideries
  def create
    @cidery = Cidery.new(cidery_params)
    if @cidery.save
      render :show, notice: "Cidery was successfully created."
      # redirect_to @cidery, notice: "Cidery was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cideries/1
  def update
    if @cidery.update(cidery_params)
      redirect_to @cidery, notice: "Cidery was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /cideries/1
  def destroy
    @cidery.destroy
      redirect_to cideries_url, notice: "Cidery was successfully deleted."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cidery
    @cidery = Cidery.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cidery_params
    params.require(:cidery).permit(:name, :description, :logo, :email, :origin_id)
  end
end
