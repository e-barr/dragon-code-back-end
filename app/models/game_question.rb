class GameQuestion < ApplicationRecord
  belongs_to :game
  belongs_to :question

  def update_score(user_response)
    question.correct_answer?(user_response) ? game.score += question.difficulty_level : game.score
  end

  def get_new_question
    asked_questions = GameQuestion.all.select { |gq| gq.game_id == self.game_id }.map{ |gq2| gq2.id }

    new_question = false

    until new_question
      question = Question.all.sample

      unless asked_questions.include?(question.id)
        new_question = true
        self.question_id = question.id
        return question
      end
    end
  end
end
