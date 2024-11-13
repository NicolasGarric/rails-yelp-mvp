# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Destroying restaurants...'
Restaurant.destroy_all

Restaurant.create!(name: 'Chez Justine', address: '1 rue Ménilmontant', phone_number: '01 25 26 24 26', category: 'french')
Restaurant.create!(name: 'Chez Beber', address: '1 rue de Béber', phone_number: '01 35 36 34 36', category: 'belgian')
Restaurant.create!(name: 'Maxi Tacos 3.0', address: '3 rue du Tacos', phone_number: '01 65 66 64 66', category: 'japanese')
Restaurant.create!(name: 'Tokyo food', address: '3 avenue de Tokyo', phone_number: '01 00 00 00 01', category: 'italian')
Restaurant.create!(name: 'Roma Pizza', address: '3 rue de Rome', phone_number: '01 66 66 66 66', category: 'chinese')
puts 'Creating restaurants...'

Restaurant.count
puts "#{Restaurant.count} restaurants created :)"
