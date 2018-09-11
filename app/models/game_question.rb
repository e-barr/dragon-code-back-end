class GameQuestion < ApplicationRecord
  belongs_to :game
  belongs_to :question

  def update_score(user_response)
    question.correct_answer?(user_response) ? score += question.difficulty_level : score
  end
end
