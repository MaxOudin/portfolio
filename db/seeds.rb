# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

Project.destroy_all
puts 'Former projects deleted.'

surf = Project.new(
  title: 'Surf.Ai',
  description: "Surf.Ai is a user-friendly platform revolutionizing surfboard rentals. It connects surf enthusiasts, allowing easy searches by type and location, with detailed descriptions and pricing. Renters can review previous customer ratings, ensuring informed choices. The intuitive booking process lets users reserve surfboards for specific dates. SurfSpot offers a recap of bookings and a centralized hub for managing reservations, fostering community engagement through post-rental ratings and reviews, enhancing the surfing experience.",
  date: '2023-08-20',
  ghrepo: 'https://github.com/MaxOudin/surf-ai',
  tool: 'Ruby, Rails, JavaScript, Stimulus, Mapbox, Cloudinary, SQL, Flatpickr, Bootstrap, Devise, Star-rating, Tom Select, Github, Heroku, Trello, Slack'
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
  surf.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
end

surf.save!
puts 'Project "Surf Ai" created with images.'

surviv = Project.new(
  title: 'Surviv.Ai',
  description: "Surviv.ai is a revolutionary invoicing and payment management app that transforms unpaid invoices into cash effortlessly. It's designed for startups, SMEs, and professionals grappling with delayed payments, a common problem in French business landscape. By intervening early in the invoicing process, it streamlines operations, allowing users to upload PDF invoices for automated extraction of crucial details. This includes efficient tracking and management of invoices, even through email attachments. Surviv.ai prioritizes an exceptional user experience, freeing up time for business growth while ensuring healthy cash flow. Experience the future of invoice management with Surviv.ai. A video was done and will be uploaded as soon as it is available",
  date: '2023-09-08',
  ghrepo: 'https://github.com/MaxOudin/-surviv-ai',
  tool: 'Ruby, Rails, JavaScript, Stimulus, Redis, Zapier, Mindee API, SQL, Flatpickr, Bootstrap, Devise, Github, Heroku, Trello, Slack'
)

photo_urls = [
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696418999/Home_surviv.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696418998/Creation_surviv.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696419392/Robot_surviv.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696419032/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.32.06_jwjcda.png",
  "https://res.cloudinary.com/dyleaesxc/image/upload/v1696418999/Capture_d_e%CC%81cran_2023-10-03_a%CC%80_14.34.18_kfmcly.png",
]

surf.save!

photo_urls.each do |url|
  file = URI.open(url)
  surviv.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
end

surviv.save!
puts 'Project "Surviv Ai" created with images.'
puts 'Seed done.'
