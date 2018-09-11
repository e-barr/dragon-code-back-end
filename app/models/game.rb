class Game < ApplicationRecord
  validates :username, presence: true
  belongs_to :user
  has_many :game_questions

  def initialize(username)
    @username = username
    @score = 0
  end

end
