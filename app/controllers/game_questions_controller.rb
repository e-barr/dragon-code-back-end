class GameQuestionsController < ApplicationController
  def index
    game_questions = GameQuestion.all
    render json: game_questions
  end

  def show
    game_question = GameQuestion.find(params[:id])
    render json: game_question
  end

  def update
    game_question = GameQuestion.find_by(id: params[:id])
    # note: not using strong params for id - could be potentially error prone
    game_question.update(user_answer: game_question_params[:user_answer])

    if game_question.question.correct_answer?(game_question_params[:user_answer])
      game_question.game.update_score(game_question.question.difficulty_level)
      game_question.game.save
    end

    render json: game_question.game
  end

  private

  def game_question_params
    params.require(:game_question).permit(:id, :game_id, :question_id, :user_answer, :difficulty_level)
  end
end
