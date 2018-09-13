class CreateGridSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :grid_spaces do |t|
      t.integer :question_id, null: true
      t.integer :event_piece_id, null: true
      t.integer :level_id
    end
  end
end
