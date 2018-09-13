class EventPiece < ApplicationRecord
  belongs_to :grid_space
  belongs_to :question
  delegate :game, to: :grid_space
  delegate :level, to: :grid_space
  after_initialize :set_name

  EVENTS_SETUP = {
    "treasure chest" => {
      topic: "Ruby",
      image_url: "https://repo.openpandora.org/files/pnd/ruby_and_gems/ruby.png"
      },
    "wizard" => {
      topic: "Linux",
      image_url: "http://allvectorlogo.com/img/2016/06/linux-logo-2.png"
      },
    "dragon" => {
      topic: "Javascript",
      image_url: "https://3.bp.blogspot.com/-PTty3CfTGnA/TpZOEjTQ_WI/AAAAAAAAAeo/KeKt_D5X2xo/s1600/js.jpg"
      },
    "zombie" => {
      topic: "HTML/CSS",
      image_url: "https://dhirajkumarsingh.files.wordpress.com/2012/05/css3-html5-logo.png"
      },
    "ogre" => {
      topic: "Coding History",
      image_url: "https://www.pmb.ox.ac.uk/sites/default/files/styles/feature_box_standard/public/history1_1.jpg?itok=-JtkjG47"
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
    self.img_url = EVENTS_SETUP[self.name][:image_url]
  end
end
