class GridSpace < ApplicationRecord
  belongs_to :level
  has_one :event_piece
  delegate :game, to: :level

end
