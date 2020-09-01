# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

path = File.join(File.dirname(__FILE__), "./products.json")
products = JSON.parse(File.read(path))
products.each do | product |
  Product.create!(product)
end
puts "Products have been added to the database"

# User.create(first_name:"Henry", surname: "Barker", email: "hbarker@email.com")

# Product.create([
#   {
#     name: "Jockey Wheels",
#     color: "Orange",
#     size: "",
#     price: 15.39
#   },
#   {
#     name: "Chain Ring",
#     color: "",
#     size: "146mm",
#     price: 65.95
#   },
#   {
#     name: "Carbon Brake Pads",
#     color: "",
#     size: "",
#     price: 92.00
#   },
#   {
#     name: "Front Derailleur",
#     color: "",
#     size: "34.9mm",
#     price: 31.22
#   }
# ])