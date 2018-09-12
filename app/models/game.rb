class Game < ApplicationRecord
  validates :username, presence: true
  belongs_to :user
  has_many :game_questions
end
