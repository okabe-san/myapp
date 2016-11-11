class AnimalsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
rescue_from Exception, :with => :handle_500

  def record_not_found
    render json: {error: 'not found 404'}, status: 404
  end

  def handle_500
    render json: {error: 'status 500'}, status: 500
  end

  def index
    @animals = Animal.all
    render json: @animals
  end

  def show
    @animal = Animal.find(params[:id])
    render json: @animal
  end

  def create
    @animal = Animal.create(animal_params)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update_attributes(animal_params)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :age, :gender, :description, :url)
  end

end
