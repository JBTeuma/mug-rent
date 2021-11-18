class PagesController < ApplicationController
  def home
    @mugs = Mug.first(15).sample(3)
  end
end
