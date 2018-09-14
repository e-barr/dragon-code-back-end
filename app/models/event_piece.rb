class EventPiece < ApplicationRecord
  belongs_to :grid_space
  belongs_to :question
  delegate :game, to: :grid_space
  delegate :level, to: :grid_space
  after_initialize :set_name

  EVENTS_SETUP = {
    "treasure chest" => {
      topic: "Ruby",
      image_src: "assets/eventpieces",
      file_name: "closed_chest.png"
      },
    "wizard" => {
      topic: "Linux",
      image_src: "assets/eventpieces",
      file_name: "wizard.gif"
      },
    "dragon" => {
      topic: "Javascript",
      image_src: "assets/eventpieces",
      file_name: "dragon.gif"
      },
    "minotaur" => {
      topic: "HTML/CSS",
      image_src: "assets/eventpieces",
      file_name: "minotaur.gif"
      },
    "ox" => {
      topic: "Coding History",
      image_src: "assets/eventpieces",
      file_name: "wizard.gif"
      }
  }

  def set_name
    self.save
    name = EVENTS_SETUP.keys.sample
    self.name = name
    self.save
  end

  def pull_question
    category = EVENTS_SETUP[self.name][:topic]
    self.question = self.game.pull_one_question(category)
    self.img_src = EVENTS_SETUP[self.name][:image_src]
  end

  def format_one_event_piece
    formatted_one = {
      id: self.id,
      name: self.name,
      question_id: self.question_id,
      img_src: self.img_src,
      x_coor: self.x_coor,
      y_coor: self.y_coor,
      file_name: self.file_name
    }

  end
end
