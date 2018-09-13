class CreateEventPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :event_pieces do |t|
      t.string :name
      t.integer :question_id
      t.string :img_url
      t.integer :grid_space_id
    end
  end
end
