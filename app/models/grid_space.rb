class GridSpace < ApplicationRecord
  belongs_to :level
  has_one :event_piece
  delegate :game, to: :level
  has_one :question, through: :event_piece

  def format_grid_spaces
    formatted = []

    
  end
end
