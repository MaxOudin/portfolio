# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
  'https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.24.04_zdsgwn.png',
  'https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.27.41_vjtbox.png',
  'https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.25.51_tdbjpy.png',
  'https://res.cloudinary.com/dyleaesxc/image/upload/v1696342844/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.26.38_cojluv.png'
]

photo_urls.each do |url|
  project_image = ProjectImage.new(url: url)
  surf.project_images << project_image
end

surf.save!
puts 'Project "Surf Ai" created with images.'
puts 'Seed done.'
