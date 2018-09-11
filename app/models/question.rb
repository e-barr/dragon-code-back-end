class Question < ApplicationRecord
  has_many :game_questions

  def options
    [self.option1, self.option2, self.option3]
  end

  def correct_answer?(user_answer)
    user_response == self.answer
  end
end
