class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user = User.all
  end

  def show
    @plant = Plant.find(params[:id])
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

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :price, :photo)
  end
end
