class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user = User.all
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = curent_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :desciption, :photo)
  end
end
