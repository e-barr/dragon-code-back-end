class Game < ApplicationRecord
  validates :username, presence: true
  belongs_to :user
  has_many :game_questions
  has_many :levels
  after_initialize :set_score, :current_user, :current_level

  @@high_score = 0

  def set_score
    self.score = 0
  end

  def current_user
    self.user ||= self.create_new_user
  end

  def create_new_user
    User.create(username: self.username)
  end

  def current_level
    self.levels.length > 0 ? self.levels.last : self.create_new_level
  end

  def create_new_level
    self.levels.push(Level.create(difficulty: 1, game: self))
    self.set_event_pieces
    # debugger
    self.save
    self.levels.last
  end

  def set_event_pieces
    # debugger
    current_level.populated_question_grid
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

  def pull_one_question(category=nil)
    categories = Question.all.map { |q| q.category }.uniq

    category ||= categories.sample

    gq = GameQuestion.new(game: self)
    gq.question = gq.get_new_question(self.current_level.difficulty, category)
    gq.save
    gq.question
  end

  def formatted_grid_spaces
    GridSpace.format_grid_spaces
  end

  def formatted_event_pieces
    EventPiece.format_event_pieces
  end

  def formatted_questions
    res = self.game_questions.map { |gq| gq.question.format_new_question_hash }
  end
end
