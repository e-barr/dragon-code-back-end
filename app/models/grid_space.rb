class GridSpace < ApplicationRecord
  belongs_to :level
  has_one :event_piece
  delegate :game, to: :level
  has_one :question, through: :event_piece

  def format_one_grid_space
    formatted_one = {
      id: self.id,
      event_piece_id: self.event_piece_id,
      level_id: self.level_id,
      pass_through: self.pass_through,
      x_coor: self.x_coor,
      y_coor: self.y_coor,
      image_src: self.image_src,
      file_name: self.file_name
    }

  end
end
