class QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions
  end
  
  # requesting a question
    # expect a game id
end
