class PlantsController < ApplicationController
  before_action :set_plant, only: %i[show edit update destroy]

  def index
    @plants = Plant.all
    @user = User.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_plants
    @my_plants = current_user.plants
  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to @plant
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @plant.destroy
    redirect_to root_path
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :description, :price, :photo)
  end
end
