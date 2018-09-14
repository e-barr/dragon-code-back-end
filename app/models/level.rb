class Level < ApplicationRecord
  belongs_to :game
  has_many :grid_spaces

  def populated_question_grid
    populate_grid_with_grid_spaces
    add_event_pieces_to_grid
    self.save
  end

  def create_empty_grid
    Array.new(22) { Array.new(22) }
  end

  def populate_grid_with_grid_spaces
    empty_grid = create_empty_grid

    empty_grid.each.each_with_index do |row,row_idx|
      row.each_with_index do |el, col_idx|
        if (col_idx == 0 || row_idx == 0) || (col_idx == 21 || row_idx == 21)
          pass_through = false
          file_name = 'brick_gray0.png'
        else
          pass_through = true
          file_name = 'dirt0.png'
        end
        GridSpace.create(level: self, x_coor: col_idx, y_coor: row_idx, pass_through: pass_through, file_name: file_name)
      end
    end

  end

  def add_event_pieces_to_grid
    grid_spaces = inner_grid_spaces.sample(10)

    grid_spaces.each do |gs|
      gs.pass_through = false
      ep = EventPiece.new(grid_space: gs, x_coor: gs.x_coor, y_coor: gs.y_coor)
      ep.pull_question
      ep.save
    end

  end

  def inner_grid_spaces
    grid_spaces.select { |gs| (gs.x_coor != 0 && gs.x_coor != 21) && (gs.y_coor != 0 && gs.y_coor != 21) }
  end

end
