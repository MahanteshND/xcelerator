# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do
  TopicOfInterest.find_or_create_by(
      topic_name: Faker::Game.unique.title,
        short_desc: Faker::Game.genre)
  end