class PagesController < ApplicationController
  def home
    @mugs = Mug.all.limit(3)
  end
end
