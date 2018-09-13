class CreateGridSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :grid_spaces do |t|
      t.integer :event_piece_id, null: true
      t.integer :level_id
      t.boolean :pass_through, default: true
      t.integer :x_coor
      t.integer :y_coor
      t.string :image_src, default: 'dirt'
    end
  end
end
