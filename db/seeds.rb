# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

# categories = ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.create!([{
  name: "chinese Restaurant ",
  address: "#{rand(1..2000)} Street, Montreal",
  phone_number: "1 - #{rand(100..999)} #{rand(1000..9999)}",
  category: "chinese"
},
{
  name: "italian Restaurant ",
  address: "#{rand(1..2000)} Street, Montreal",
  phone_number: "1 - #{rand(100..999)} #{rand(1000..9999)}",
  category: "italian"
},
{
  name: "japanese Restaurant ",
  address: "#{rand(1..2000)} Street, Montreal",
  phone_number: "1 - #{rand(100..999)} #{rand(1000..9999)}",
  category: "japanese"
},
{
  name: "french Restaurant ",
  address: "#{rand(1..2000)} Street, Montreal",
  phone_number: "1 - #{rand(100..999)} #{rand(1000..9999)}",
  category: "french"
},
{
  name: "belgian Restaurant ",
  address: "#{rand(1..2000)} Street, Montreal",
  phone_number: "1 - #{rand(100..999)} #{rand(1000..9999)}",
  category: "belgian"
}])
puts "Finished! Created #{Restaurant.count} restaurants."
