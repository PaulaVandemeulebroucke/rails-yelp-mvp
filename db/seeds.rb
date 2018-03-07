# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Marlon',
    address:      'Rue Grenelle, Paris',
    phone_number:  "0600000000",
    category:      'French'
  },
  {
    name:         'Pizza Pizza',
    address:      'Je ne sais pas où à Paris',
    phone_number:  "0600000000",
    category:      'Italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
