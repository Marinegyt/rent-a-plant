class BookingsController < ApplicationController
  before_action :set_plant, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plant = @plant
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
