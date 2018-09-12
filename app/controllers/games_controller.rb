class GamesController < ApplicationController
  def index
    games = Games.all
    render json: games
  end

  def create
    # byebug
    new_game = Game.new(username: game_params[:username])
    game_user = User.new(username: game_params[:username])
    new_game.score = 0
    new_game.user = game_user

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
