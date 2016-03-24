# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

todos = Todo.create([
  {title: "Buy Groceries", description: "Go to Safeway, don't forget the coupons.", priority: 1},

  {title: "Wash the Car", description: "Have a date this Saturday.", priority: 3},

  {title: "Clean my room", description: "It's that time of year again.", priority: 2},

  {title: "Do the Laundry", description: "Don't forget the bleach!", priority: 3},

  {title: "Work on Mini-Project", description: "What are Happy Tails anyway?", priority: 1},

  {title: "Walk the Dog", description: "Take Fido around the block.", priority: 2}

   ])