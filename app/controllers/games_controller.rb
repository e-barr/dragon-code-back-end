require 'csv'

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

    # stephens_grid_test = []
    # 
    # # note: trying to insert grid data for 21x21 grid here
    # level_grid_info = File.dirname(__FILE__)+'/level_grid_info.csv'
    # 
    # CSV.foreach(level_grid_info, headers: true) do |row|
    #   stephens_grid_test << {
    #     "id": row["id"],
    #     "event_piece_id": row["event_piece_id"],
    #     "level_id": row["level_id"],
    #     "pass_through": row["pass_through"],
    #     "x_coor": row["x_coor"],
    #     "y_coor": row["y_coor"],
    #     "image_src": row["image_src"],
    #     "file_name": row["file_name"]
    #   }
    #   end
    # 
    # returned_hash.grid_spaces = stephens_grid_test

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
