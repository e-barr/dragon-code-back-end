class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :difficulty
      t.string :description
      t.string :answer
      t.string :option1
      t.string :option2
      t.string :option3

      t.timestamps
    end
  end
end

