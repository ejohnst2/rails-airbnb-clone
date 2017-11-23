# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# bunkers = Bunker.create

# class Bunker < ApplicationRecord
#   belongs_to :location, dependent: :destroy
#   belongs_to :user
#   # has_one :location, dependent: :destroy
#   accepts_nested_attributes_for :location
#   has_many :trips, dependent: :destroy
#   validates :price, :size, presence: true, allow_blank: false
#   # don't forget to add user
# end
Bunker.destroy_all
Location.destroy_all
User.destroy_all

urls = [
  'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzL2RlZTY5ZDAyMzg4OWY0YTYxZTRkMTc1YmExZTY4YjJkY2JhZWY2ZTcuanBnIl0sWyJwIiwidGh1bWIiLCJ4MzkwPiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/dee69d023889f4a61e4d175ba1e68b2dcbaef6e7.jpg',
  'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzLzNhZmI0YzNlYTNjNzFiMjYwYzBjYWQwMzNmNGNiM2IwZjViMTBkMGIuanBnIl0sWyJwIiwidGh1bWIiLCJ4MzkwPiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/3afb4c3ea3c71b260c0cad033f4cb3b0f5b10d0b.jpg'
]

new_user = User.new(email: 'admin@gmail.com', password: 'admin123')
new_user.save!
new_location = Location.new(number: "1109", street_name: "E 93 street", city: "Brooklyn", country: "United States")
new_location.save!
bunker = Bunker.new(name: 'Survival Center', description: "Thick walls and steel reinforcement", price: 500, size: 500, location: new_location, user: new_user)
bunker.photo_urls = urls
bunker.save!

puts "======> created #{new_user.email} and #{bunker.name}"

urls = [
  'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzL2JiOThjYzAzYTVmNzgxODc0Yl9EYXktMTUyLmpwZyJdLFsicCIsInRodW1iIiwieDM5MD4iXSxbInAiLCJjb252ZXJ0IiwiLXF1YWxpdHkgODEgLWF1dG8tb3JpZW50Il1d/bb98cc03a5f781874b_Day-152.jpg'
]

new_user = User.new(email: 'admin1@gmail.com', password: 'admin123')
new_user.save!
new_location = Location.new(number: "16", street_name: "ladeira da gloria", city: "Rio de Janeiro", country: "Brazil")
new_location.save!
bunker = Bunker.new(name: 'Desert Abode', description: "Cryopreservation tanks included", price: 500, size: 500, location: new_location, user: new_user)
bunker.photo_urls = urls
bunker.save!


puts "======> created #{new_user.email} and #{bunker.name}"

urls = [
  'https://i.ytimg.com/vi/_vmZeB3wVZQ/hqdefault.jpg'
]

new_user = User.new(email: 'admin2@gmail.com', password: 'admin123')
new_user.save!
new_location = Location.new(number: "16", street_name: "Villa Gaudlet", city: "Paris", country: "France")
new_location.save!
bunker = Bunker.new(name: 'Strongest Bunker from WWII', description: "Certified inpenetrable", price: 500, size: 500, location: new_location, user: new_user)
bunker.photo_urls = urls
bunker.save!

puts "======> created #{new_user.email} and #{bunker.name}"

urls = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Damaged_bunker_in_Valbona.jpg/800px-Damaged_bunker_in_Valbona.jpg']

new_user = User.new(email: 'admin3@gmail.com', password: 'admin123')
new_user.save!
new_location = Location.new(number: "267", street_name: "9th street", city: "Brooklyn", country: "United States")
new_location.save!
bunker = Bunker.new(name: 'Discount Damaged Bunker', description: "Push upright and good to go", price: 500, size: 500, location: new_location, user: new_user)
bunker.photo_urls = urls
bunker.save!

puts "======> created #{new_user.email} and #{bunker.name}"

urls = [
'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i4o1LCJhHjxk/v1/800x-1.jpg']

new_user = User.new(email: 'admin4@gmail.com', password: 'admin123')
new_user.save!
new_location = Location.new(number: "33", street_name: "Pheng Geck Avenue", city: "Singapore", country: "Singapore")
new_location.save!
bunker = Bunker.new(name: 'Sunken House', description: "Underground luxury", price: 500, size: 500, location: new_location, user: new_user)
bunker.photo_urls = urls
bunker.save!

puts "======> created #{new_user.email} and #{bunker.name}"

# urls = [
# 'https://thespaces.com/wp-content/uploads/2017/05/Hamburg-bunker-Hilldegarden-3-1050x680.jpg']

# new_user = User.new(email: 'admin5@gmail.com', password: 'admin123')
# new_user.save!
# new_location = Location.new(longitude: 100, latitude: 100, country: 'US')
# new_location.save!
# bunker = Bunker.new(name: 'Ecofriendly Design', description: "Trees supply oxygen", price: 500, size: 500, location: new_location, user: new_user)
# bunker.photo_urls = urls
# bunker.save!

# puts "======> created #{new_user.email} and #{bunker.name}"

# urls = [
# 'http://www.floornature.com/media/photos/30/6586/7_bunker-599-from-architecture-to-monument_popup.jpg']

# new_user = User.new(email: 'admin6@gmail.com', password: 'admin123')
# new_user.save!
# new_location = Location.new(longitude: 100, latitude: 100, country: 'US')
# new_location.save!
# bunker = Bunker.new(name: 'Home of the Hobbits', description: "Live your LOTR fantasies", price: 500, size: 500, location: new_location, user: new_user)
# bunker.photo_urls = urls
# bunker.save!

# puts "======> created #{new_user.email} and #{bunker.name}"

# urls = [
# 'https://www.vinschgau.net/media/edbad06f-a3ce-4139-86cf-02ca59e2f542/735_x_440/p=8/sehenswuerdigkeiten-bunker-reschenpass-vinschgau-ks.jpg']

# new_user = User.new(email: 'admin7@gmail.com', password: 'admin123')
# new_user.save!
# new_location = Location.new(longitude: 100, latitude: 100, country: 'US')
# new_location.save!
# bunker = Bunker.new(name: 'Piercing Design', description: "Protects against squatters", price: 500, size: 500, location: new_location, user: new_user)
# bunker.photo_urls = urls
# bunker.save!

# puts "======> created #{new_user.email} and #{bunker.name}"

# urls = [
# 'https://flavorwire.files.wordpress.com/2012/09/villa-vars-1-1.jpeg']

# new_user = User.new(email: 'admin8@gmail.com', password: 'admin123')
# new_user.save!
# new_location = Location.new(longitude: 100, latitude: 100, country: 'US')
# new_location.save!
# bunker = Bunker.new(name: 'James Bond Bunker', description: "Stock of ICBMs included", price: 500, size: 500, location: new_location, user: new_user)
# bunker.photo_urls = urls
# bunker.save!

# puts "======> created #{new_user.email} and #{bunker.name}"

