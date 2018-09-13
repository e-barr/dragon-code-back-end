class Level < ApplicationRecord
  belongs_to :game
  has_many :grid_spaces

  def current_grid
    @current_grid
  end

  def populated_question_grid
    self.save

    new_grid = create_empty_grid
    grid_spaced_grid = populate_grid_with_grid_spaces(new_grid)
    event_pieced_grid = add_event_pieces_to_grid(grid_spaced_grid)
    @current_grid = event_pieced_grid
    self.save

    grid_spaced_grid
  end

  def create_empty_grid
    Array.new(10) { Array.new(10) }
  end

  def populate_grid_with_grid_spaces(new_grid)
    counter = 10

    until counter == 0
      location = [rand(10), rand(10)]

      if new_grid[location[0]][location[1]] == nil
        new_grid_space = GridSpace.create(level: self)
        new_grid[location[0]][location[1]] = new_grid_space
        counter -= 1
      end
    end

    new_grid
  end

  def add_event_pieces_to_grid(new_grid)
    new_grid.each_with_index do |grid_row, grid_row_idx|
      (0..9).to_a.each_with_index do |grid_col_idx|
        if new_grid[grid_row_idx][grid_col_idx] != nil

          gs = new_grid[grid_row_idx][grid_col_idx]
          ep = EventPiece.new(grid_space: gs)
          ep.pull_question
          ep.save
          gs.event_piece_id = ep.id
          gs.save
        end
      end
    end
    new_grid
  end

end
