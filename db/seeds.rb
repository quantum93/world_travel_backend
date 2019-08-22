# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all

195.times do |index|
  rand(5..25).times do |index2|
  Review.create!(user_name: Faker::Name.name,
                          country_id: index + 1,
                          rating: rand(1..10),
                          content: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false))
  end
end
p "Created #{Review.count} reviews."
