# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories_seed = YAML::load_file(Rails.root.join('db', 'seeds', 'categories.yml'))
categories_seed.each do |_, values|
  Category.create!(values)
end
