class GameQuestionsController < ApplicationController
  def index
    game_questions = GameQuestion.all
    render json: game_questions
  end
  
  def create
    game_id = params(:game_id)
    
    new_question = GameQuestion.new(game: game_id)
    new_question.get_new_question(game_id)
    new_question.save
    
    formatted_json = new_question.format_new_question_hash
    render json: formatted_json
    
  end
  
  private
  
  def game_question_params
    params.require(:game_question).permit(:game_id)
  end
end
