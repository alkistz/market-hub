# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Market.destroy_all

markets = Market.create([
  {
    name: 'African store',
    address: 'Place Fernand Cocq 9, Brussels',
    category: 'African'
  },

  {
    name: 'Bordel store',
    address: 'Boulevard du regent 47, Brussels',
    category: 'Bulgarian'
  }
])
