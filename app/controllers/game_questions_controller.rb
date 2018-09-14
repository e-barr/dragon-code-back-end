class GameQuestionsController < ApplicationController
  def index
    game_questions = GameQuestion.all
    render json: game_questions
  end

  def show
    game_question = GameQuestion.find(params[:id])
    render json: game_question
  end

  # def create
  #   game_object = Game.find(game_question_params[:game_id])
  #   new_game_question = GameQuestion.new(game: game_object)
  #   new_question = new_game_question.get_new_question(game_question_params[:difficulty_level])
  #   new_game_question.question = new_question
  #
  #   formatted_json = new_question.format_new_question_hash
  #
  #   if new_game_question.save
  #     render json: formatted_json
  #   else
  #     render json: new_game_question.errors
  #   end
  # end

  def update
    game = GameQuestion.find_by(id: params[:id])
    # note: not using strong params for id - could be potentially error prone
    game.update(user_answer: game_question_params[:user_answer])

    render json: game
  end

  private

  def game_question_params
    params.require(:game_question).permit(:id, :game_id, :question_id, :user_answer, :difficulty_level)
  end
end
