class ShelterController < ApplicationController

  def index
  end

  def profile
    @animals = Animal.all
    @animal = Animal.new
  end

  def show
    render :json @animal
  end
end
