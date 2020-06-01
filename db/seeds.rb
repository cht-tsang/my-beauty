# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Booking.destroy_all
Treatment.destroy_all
Beautician.destroy_all
User.destroy_all

require "open-uri"

user = User.create(email: "user@gmail.com", password: "123456")
user2 = User.create(email: "user2@gmail.com", password: "123456")
user3 = User.create(email: "user3@gmail.com", password: "123456")
user4 = User.create(email: "user4@gmail.com", password: "123456")
user5 = User.create(email: "user5@gmail.com", password: "123456")
user6 = User.create(email: "user6@gmail.com", password: "123456")

beautician = Beautician.create(description: "Haircuts", location: "London", name: "Anna Haircuts", user: user)
beautician2 = Beautician.create(description: "Manicures", location: "London", name: "Mimi Manicures", user: user2)
beautician3 = Beautician.create(description: "Haircuts", location: "London", name: "Zara's extensions", user: user3)
beautician4 = Beautician.create(description: "Haircuts", location: "London", name: "Sandy Nails", user: user4)
beautician5 = Beautician.create(description: "Haircuts", location: "London", name: "Lulu cuticles", user: user5)
beautician6 = Beautician.create(description: "Haircuts", location: "London", name: "polly's Eyes", user: user6)

file = Rails.root.join("app/assets/images/image1.jpg").open
file2 = Rails.root.join("app/assets/images/image2.jpg").open
file3 = Rails.root.join("app/assets/images/image3.jpg").open
file4 = Rails.root.join("app/assets/images/image4.jpg").open
file5 = Rails.root.join("app/assets/images/image5.jpg").open
file6 = Rails.root.join("app/assets/images/image6.jpg").open

beautician.banner_photo.attach(io: file, filename: 'beauty1.png', content_type: 'image/jpg')
beautician2.banner_photo.attach(io: file2, filename: 'beauty2.png', content_type: 'image/jpg')
beautician3.banner_photo.attach(io: file3, filename: 'beauty3.png', content_type: 'image/jpg')
beautician4.banner_photo.attach(io: file4, filename: 'beauty4.png', content_type: 'image/jpg')
beautician5.banner_photo.attach(io: file5, filename: 'beauty5.png', content_type: 'image/jpg')
beautician6.banner_photo.attach(io: file6, filename: 'beauty6.png', content_type: 'image/jpg')

file = Rails.root.join("app/assets/images/image1.jpg").open
file2 = Rails.root.join("app/assets/images/image2.jpg").open
file3 = Rails.root.join("app/assets/images/image3.jpg").open
file4 = Rails.root.join("app/assets/images/image4.jpg").open
file5 = Rails.root.join("app/assets/images/image5.jpg").open
file6 = Rails.root.join("app/assets/images/image6.jpg").open

beautician.portfolio_photos.attach(io: file, filename: 'beauty1.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file2, filename: 'beauty2.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file3, filename: 'beauty3.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file4, filename: 'beauty4.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file5, filename: 'beauty5.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file6, filename: 'beauty6.png', content_type: 'image/jpg')

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician)

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician2)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician2)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician2)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician2)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician2)

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician3)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician3)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician3)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician3)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician3)

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician4)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician4)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician4)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician4)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician4)

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician5)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician5)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician5)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician5)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician5)

Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician6)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician6)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician6)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician6)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician6)
