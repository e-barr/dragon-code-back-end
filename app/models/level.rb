class Level < ApplicationRecord
  belongs_to :game
  has_many :grid_spaces

  def populated_question_grid
    populate_grid_with_grid_spaces
    add_event_pieces_to_grid
    self.save
  end

  def create_empty_grid
    Array.new(10) { Array.new(10) }
  end

  def populate_grid_with_grid_spaces
    empty_grid = create_empty_grid

    empty_grid.each.each_with_index do |row,row_idx|
      row.each_with_index do |el, col_idx|
        GridSpace.create(level: self, x_coor: row_idx, y_coor: row_idx)
      end
    end

  end

  def add_event_pieces_to_grid
    grid_spaces = self.grid_spaces.sample(10)

    grid_spaces.each do |gs|
      gs.pass_through = false
      ep = EventPiece.new(grid_space: gs, x_coor: gs.x_coor, y_coor: gs.y_coor)
      ep.pull_question
      ep.save
    end
  end

end
