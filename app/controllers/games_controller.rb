class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end

  def create
    #return questions and board
    #grid_spaces, event_pieces
    new_game = Game.new(username: game_params[:username])
    questions = new_game.questions
    # returned_hash = new_game.returned_hash


    if new_game.save
      # render json: returned_hash
      render json: questions
    else
      render json: new_game.errors
    end
  end

  private

  def game_params
    params.require(:game).permit(:id, :username)
  end
end
