class Game < ApplicationRecord
  validates :username, presence: true
  belongs_to :user
  has_many :game_questions
  after_initialize :set_default_score, :create_and_or_associate_new_user

  @@high_score = 0

  def create_and_or_associate_new_user
    self.user ||= self.create_new_user
  end

  def create_new_user
    User.create(username: self.username)
  end

  def set_default_score
    self.score = 0
  end

  def self.high_score
    @@high_score
  end

  def self.set_high_score(new_score)
    new_score > self.high_score ? @@high_score = new_score : self.high_score
  end

  def update_score(total_points)
    self.score += total_points
  end
end
