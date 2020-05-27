# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Treatment.destroy_all
Beautician.destroy_all
User.destroy_all

user = User.create(email: "anna@gmail.com", password: "1234567")
beautician = Beautician.create(description: "Haircuts", location: "London", name: "Anna Haircuts", user: user)
Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician)
Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician)
