class BookingsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  # def new
  #   @booking = Booking.new
  #   @mug = Mug.find(params[:mug_id])
  #   @booking.mug = @mug
  # end

  def create
    @booking = Booking.new(booking_params)
    @mug = Mug.find(params[:mug_id])
    @user = current_user
    @booking.mug = @mug
    @booking.user = @user
    @booking.cost = (((@booking.end_date - @booking.start_date) / 24 / 60 / 60 / 1_000) + 1) * @mug.price_by_day
    if @booking.save
      flash[:notice] = "La demande de location a bien était prise en compte"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
