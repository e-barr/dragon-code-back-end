class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.integer :difficulty
      t.integer :game_id
    end
  end
end
