class GameQuestionsController < ApplicationController
  def index
    game_questions = GameQuestion.all
    render json: game_questions
  end
  
  def create
    game_id = game_question_params(params[:game_id])
    
    new_question = GameQuestion.new(game: game_id)
    new_question.get_new_question(game_id)
    new_question.save
    
    formatted_json = new_question.format_new_question_hash
    render json: formatted_json
  end
  
  def update
    updated_data = game_question_params(params)
    
    game = GameQuestion.find_by(id: updated_data[:id])
    game.update(user_answer: updated_data[:user_answer])
    
  end
  
  private
  
  def game_question_params
    params.require(:game_question).permit(:id, :game_id, :question_id, :user_answer)
  end
end
