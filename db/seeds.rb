# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

# ProjectImage.destroy_all
Project.destroy_all
puts 'Former projects deleted.'

surf = Project.new(
  title: 'Surf Ai',
  description: 'Plateforme de mise en relation pour location de planches de surf',
  date: 'August 2023',
  ghrepo: 'https://github.com/MaxOudin/surf-ai',
  tool: 'Ruby On Rails, JavaScript, Devise, Mapbox, Flatpickr'
)

photo_urls = [
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Home_surf.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Show_board_surf.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Confirmation_booking_surf.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Index_booking_surf.png"
]

surf.save!

photo_urls.each do |url|
  file = URI.open(url)
  # project_image = ProjectImage.new
  surf.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
  # surf.project_images << project_image
end

# project_image.save!
surf.save!
puts 'Project "Surf Ai" created with images.'
puts 'Seed done.'
