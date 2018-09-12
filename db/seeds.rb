require 'csv'
require 'pry'
seed_csv = './seed_questions.csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Question.destroy_all
Game.destroy_all
GameQuestion.destroy_all

# byebug
pablo = User.create(username: "Pablo")
erika = User.create(username: "Erika")
stephen = User.create(username: "Stephen")

pablo_game = Game.create(user: pablo, username: "Pablo", score: 0)
erika_game = Game.create(user: erika, username: "Erika", score: 0)
stephen_game = Game.create(user: stephen, username: "Stephen", score: 0)

CSV.foreach(seed_csv, headers: true) do |row|
  Question.create({
    category: row["Category"],
    difficulty_level: row["Difficulty Level"],
    content: row["Question Text (Temporary)"],
    answer: row["Answer Text"],
    option1: row["Option 1"],
    option2: row["Option 2"],
    option3: row["Option 3"]
  })
end

GameQuestion.create(game: pablo_game, question: Question.all.first)
GameQuestion.create(game: erika_game, question: Question.all.second)
GameQuestion.create(game: stephen_game, question: Question.all.last)
