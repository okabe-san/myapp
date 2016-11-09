class AnimalsController < ApplicationController

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

  private

  def animal_params
    params.require(:animal).permit(:name, :age, :gender, :description, :url)
  end
  # def edit
  #   @animal = Animal.find(params[:id])
  # end
  #
  # def update
  #   params.permit!
  #   @animal = Animal.update(params[:id])
  # end
  #
  # def destroy
  # end

end
