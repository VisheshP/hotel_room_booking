# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["Taj", "BayLeaf", "LA Meredian", "Mayfair"].each do |genre_name|
    Hotel.find_or_create_by!(name: genre_name, total_rooms: 5)
end

["Vishesh"].each do |name|
    User.find_or_create_by!(name: name)
end