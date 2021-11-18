class BookingsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def create
    @booking = Booking.new(booking_params)
    @mug = Mug.find(params[:mug_id])
    @user = current_user
    @booking.mug = @mug
    @booking.user = @user
    @booking.cost = (((@booking.end_date - @booking.start_date) / 24 / 60 / 60 ) + 1) * @mug.price_by_day
    if @booking.save || verify_user?(@mug)
      flash[:notice] = "La demande de location a bien été prise en compte"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def validates
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.update(status: "accepted")

    redirect_to dashboard_path
  end

  def deny
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.update(status: "deny")

    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def verify_user?(mug)
    mug.user == current_user
  end

end
