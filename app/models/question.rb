class Question < ApplicationRecord
  has_many :game_questions
  all_options_hash = {}

  def correct_answer?(user_response)
    user_response == self.answer
  end

  def format_new_question_hash
    {
      q_id: self.id,
      question_text: self.content,
      answer: self.answer,
      options: {
        "1": self.option1,
        "2": self.option2,
        "3": self.option3
      }
    }
  end

end
