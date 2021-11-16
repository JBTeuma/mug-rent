class MugsController < ApplicationController

  def new
    @mug = Mug.new
  end

  def create
  end

  private

  def mug_params
    params.require(:mugs).permit(:color, :description, :size, :price_by_day, photo: [])
  end
end
