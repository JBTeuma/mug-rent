class MugsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def new
    @mug = Mug.new
  end

  def create
    @mug = Mug.new(mug_params)
    @mug.user = current_user
    if @mug.save
      flash[:notice] = "Mug was successfully created"
      redirect_to mug_path(@mug)
    else
      render :new
    end
  end

  def show
    @mug = Mug.find(params[:id])
    @booking = Booking.new
    @booking.mug = @mug
  end

  def index
    @mugs = Mug.all
    @markers = @mugs.map do |mug|
      {
        lat: mug.latitude,
        lng: mug.longitude
      }
    end
  end

  private

  def mug_params
    params.require(:mug).permit(:color, :description, :size, :price_by_day, :photo)
  end
end
