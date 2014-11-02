# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "Code", tagline: "Learn to code to make history", url: "http://code.org")
Post.create(title: "NASA for Kids", tagline: "Discover the universe", url: "http://science.nasa.gov")
Post.create(title: "Useless WEB", tagline: "Dive into alternative useless WEB", url: "http://theuselessweb.com")
