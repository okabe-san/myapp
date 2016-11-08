class AnimalsController < ApplicationController

  def show
  end

  def create
    params.permit!
    @animal = Animal.create(params[:animal])
  end

  def edit
    params.permit!
    @animal = Animal.find(params[:id])
  end

  def update
    params.permit!
    @animal = Animal.update(params[:id])
  end

end
