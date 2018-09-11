class CreateGameQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_questions do |t|
      t.integer :game_id
      t.integer :question_id
      t.integer :user_answer
    end
  end
end
