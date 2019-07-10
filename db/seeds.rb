# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '020 7420 9320',
    category: 'chinese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '020 7729 1888',
    category: 'italian'
  },

  {
    name: 'Burger & Lobster',
    address: '6 Little Portland Street, London, W1W 7JE',
    phone_number: '0207 907 7760',
    category: 'belgian'
  },
  {
    name: 'Eat Tokyo',
    address: '58C Shoreditch High St, London E1 6PQ',
    phone_number: '020 7729 1788',
    category: 'japanese'
  },
  {
    name: 'French restaurant',
    address: '60 Shoreditch High St, London E1 6PQ',
    phone_number: '020 7729 1878',
    category: 'french'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
