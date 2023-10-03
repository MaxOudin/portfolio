# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

surf = Project.new(
  title: 'Surf Ai',
  description: 'Plateforme de mise en relation pour location de planches de surf',
  date: 'August 2023',
  ghrepo: 'https://github.com/MaxOudin/surf-ai',
  tool: 'Ruby On Rails, JavaScript, Devise, Mapbox, Flatpickr'
)
