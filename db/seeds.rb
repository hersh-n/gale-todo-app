# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

todos = Todo.create([
  {title: "Buy Groceries", description: "Go to Safeway, don't forget the coupons."},

  {title: "Wash the Car", description: "Have a date this Saturday."},

  {title: "Clean my room", description: "It's that time of year again."},

  {title: "Do the Laundry", description: "Don't forget the bleach!"},

  {title: "Work on Mini-Project", description: "What are Happy Tails anyway?"},

  {title: "Walk the Dog", description: "Take Fido around the block."}

   ])