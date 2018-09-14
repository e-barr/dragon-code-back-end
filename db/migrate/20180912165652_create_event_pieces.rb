class CreateEventPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :event_pieces do |t|
      t.string :name
      t.integer :question_id
      t.string :img_src
      t.integer :grid_space_id
      t.integer :x_coor
      t.integer :y_coor
      t.string :file_name
    end
  end
end
