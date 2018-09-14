class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    new_game = Game.new(username: game_params[:username])
    questions = new_game.questions
    returned_hash = new_game.returned_hash


    if new_game.save
      render json: returned_hash
    else
      render json: new_game.errors
    end
  end

  def update
    game = Game.find(params[:id])

    if game.update_attributes
      render json: game
    else
      render game.errors
    end
  end


  private

  def game_params
    params.require(:game).permit(:id, :username)
  end
end
