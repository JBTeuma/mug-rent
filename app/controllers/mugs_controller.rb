class MugsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index
    @mugs = Mug.all
  end
end
