class GameQuestion < ApplicationRecord
  belongs_to :game
  belongs_to :question

  def get_new_question(difficulty, category)
    asked_questions = find_asked_questions
    find_new_question(asked_questions, difficulty, category)
  end

  private

  def find_asked_questions
    GameQuestion.all.select { |game_question| game_question.game == self.game }
  end

  def find_new_question(asked_questions_array, difficulty, category)
    all_questions_array = Question.all.select { |question| question.difficulty_level == difficulty && question.category == category }
    unasked = all_questions_array - asked_questions_array
    unasked.first
  end
end
