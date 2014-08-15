# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

#Create Main Categories
Category.create([{name: 'New Arrivals'},{name: 'Earrings'},{name: 'Rings'},{name: 'Bracelets'},{name: 'Necklaces'},{name: 'Hair'},{name: 'Gifts'}])

#Create Other Categories
Category.create([{name: 'Gold'},{name: 'Silver'},{name: 'Leather'},{name: 'Diamond'},{name: 'Small'},{name: 'Large'},{name: 'Shiny'},{name: 'Colorful'},{name: 'Simple Design'},{name: 'Clasic'}])


