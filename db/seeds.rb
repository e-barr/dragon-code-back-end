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
