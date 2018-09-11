class GamesController < ApplicationController
  def index
    games = Games.all
    render json: games
  end
  
  def create 
    new_game = Game.new(game_params[:username])
    
    if new_game.save
      render json: new_game
    else
      render json: new_game.errors
    end
  end
  
  private
  
  def game_params
    params.require(:game).permit(:id, :username)
  end
end
