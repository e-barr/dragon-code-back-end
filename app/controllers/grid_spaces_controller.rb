class GridSpacesController < ApplicationController
  def index
    grid_spaces = GridSpace.all
    render json: grid_spaces
  end

  def show
    grid_space = GridSpace.find(params[:id])
    render json: grid_space
  end
end
