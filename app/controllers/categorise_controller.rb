class CategoriseController < ApplicationController
  def index
  	@categorise = Room.all
  end

  def show
  end
end
