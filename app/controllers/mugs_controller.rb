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
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def mug_params
    params.require(:mug).permit(:color, :description, :size, :price_by_day, :photo)
  end
end
