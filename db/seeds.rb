# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
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
user7 = User.create(email: "user7@gmail.com", password: "123456")
user9 = User.create(email: "user8@gmail.com", password: "123456")
user10 = User.create(email: "user9@gmail.com", password: "123456")
user11 = User.create(email: "user10@gmail.com", password: "123456")

beautician = Beautician.create(description: "Quality haircuts from yours truely!", location: "Shoreditch", name: "Anna Haircuts", user: user)
beautician2 = Beautician.create(description: "Manicures from the one and only MIMI.", location: "Shoreditch", name: "Mimi Manicures", user: user2)
beautician3 = Beautician.create(description: "Hair done the right way.", location: "Hackney", name: "Zara's extensions", user: user3)
beautician4 = Beautician.create(description: "Best value work on your nails  in london.", location: "Stratford", name: "Sandy Nails", user: user4)
beautician5 = Beautician.create(description: "Hair, nails, eyes, everything available", location: "Camden", name: "Lulu Services", user: user5)
beautician6 = Beautician.create(description: "Prettiest lashes in town.", location: "Croydon", name: "Polly's Eyes", user: user6)
beautician7 = Beautician.create(description: "Specialist for your eyes.", location: "Fulham", name: "Eyes by Linda", user: user7)
beautician8 = Beautician.create(description: "Coming to you for the best service.", location: "Harrow", name: "Garland's Anywhere", user: user8)
beautician9 = Beautician.create(description: "Treatments right in the city", location: "Liverpool Street", name: "Bella's City Treatments", user: user9)
beautician10 = Beautician.create(description: "Nail treatments anytime, anywhere.", location: "Brixton", name: "Rachel's Nails", user: user10)
beautician11 = Beautician.create(description: "All services available on the go", location: "Shoreditch", name: "Susie's Stylings", user: user11)



file = Rails.root.join("app/assets/images/image1.jpg").open
file2 = Rails.root.join("app/assets/images/image2.jpg").open
file3 = Rails.root.join("app/assets/images/image3.jpg").open
file4 = Rails.root.join("app/assets/images/image4.jpg").open
file5 = Rails.root.join("app/assets/images/image5.jpg").open
file6 = Rails.root.join("app/assets/images/image6.jpg").open
file7 = Rails.root.join("app/assets/images/dave-francis-bVQSBKF9Ci4-unsplash.jpg").open
file8 = Rails.root.join("app/assets/images/shari-sirotnak-oM5YoMhTf8E-unsplash.jpg").open
file9 = Rails.root.join("app/assets/images/element5-digital-ooPx1bxmTc4-unsplash.jpg").open
file10 = Rails.root.join("app/assets/images/aw-creative-WXmHwPcFamo-unsplash.jpg").open
file11 = Rails.root.join("app/assets/images/aw-creative-HEde-a_T4E8-unsplash.jpg").open
file12 = Rails.root.join("app/assets/images/designecologist-r-Ej0NQmFlQ-unsplash.jpg").open

file13 = Rails.root.join("app/assets/images/allie-89k7poPsypk-unsplash.jpg").open
file14 = Rails.root.join("app/assets/images/antonika-chanel-jmRbgqXLCI0-unsplash.jpg").open
file15 = Rails.root.join("app/assets/images/aw-creative-FkAZqQJTbXM-unsplash.jpg").open
file16 = Rails.root.join("app/assets/images/candice-picard-1dwRuFgDr0o-unsplash.jpg").open
file17 = Rails.root.join("app/assets/images/emiliano-vittoriosi-qTu9DppC3mM-unsplash.jpg").open
file18 = Rails.root.join("app/assets/images/fernanda-prado-amr8fdAVhtg-unsplash.jpg").open
file19 = Rails.root.join("app/assets/images/freestocks-YGmk9UZMdZg-unsplash.jpg").open
file20 = Rails.root.join("app/assets/images/hayley-kim-design-sRSRuxkOuzI-unsplash.jpg").open
file21 = Rails.root.join("app/assets/images/jayakody-anthanas-Kh4rHhHhk5o-unsplash.jpg").open
file22 = Rails.root.join("app/assets/images/korie-cull-ggtdbP92hf8-unsplash.jpg").open
file23 = Rails.root.join("app/assets/images/kris-atomic-Xa8fX8bQCgs-unsplash.jpg").open
file24 = Rails.root.join("app/assets/images/raphael-lovaski-Pe9IXUuC6QU-unsplash.jpg").open
file25 = Rails.root.join("app/assets/images/rashid-khreiss-pVw3XzhdKJg-unsplash.jpg").open
file26 = Rails.root.join("app/assets/images/rune-enstad-cowLgyb63c4-unsplash").open
file27 = Rails.root.join("app/assets/images/rune-enstad-qeuJczNo54w-unsplash.jpg").open
file28 = Rails.root.join("app/assets/images/saskia-fairfull-7ZaBZ543oo8-unsplash.jpg").open
file29 = Rails.root.join("app/assets/images/theme-photos-SYXxlEP5KAA-unsplash.jpg").open
file30 = Rails.root.join("app/assets/images/estetica-2901096_1920.jpg").open
file31 = Rails.root.join("app/assets/images/hair-salons-1479257_1920.jpg").open
file32 = Rails.root.join("app/assets/images/manicure-1365552_1920.jpg").open
file33 = Rails.root.join("app/assets/images/people-2583493_1920.jpg").open
file34 = Rails.root.join("app/assets/images/people-2587157_1920.jpg").open


beautician.banner_photo.attach(io: file7, filename: 'beauty1.png', content_type: 'image/jpg')
beautician2.banner_photo.attach(io: file8, filename: 'beauty2.png', content_type: 'image/jpg')
beautician3.banner_photo.attach(io: file9, filename: 'beauty3.png', content_type: 'image/jpg')
beautician4.banner_photo.attach(io: file10, filename: 'beauty4.png', content_type: 'image/jpg')
beautician5.banner_photo.attach(io: file11, filename: 'beauty5.png', content_type: 'image/jpg')
beautician6.banner_photo.attach(io: file12, filename: 'beauty6.png', content_type: 'image/jpg')
beautician7.banner_photo.attach(io: file13, filename: 'beauty7.png', content_type: 'image/jpg')
beautician8.banner_photo.attach(io: file14, filename: 'beauty8.png', content_type: 'image/jpg')
beautician9.banner_photo.attach(io: file15, filename: 'beauty9.png', content_type: 'image/jpg')
beautician10.banner_photo.attach(io: file16, filename: 'beauty10.png', content_type: 'image/jpg')
beautician11.banner_photo.attach(io: file17, filename: 'beauty11.png', content_type: 'image/jpg')


beautician.portfolio_photos.attach(io: file, filename: 'beauty1.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file2, filename: 'beauty2.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file3, filename: 'beauty3.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file4, filename: 'beauty4.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file5, filename: 'beauty5.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file6, filename: 'beauty6.png', content_type: 'image/jpg')
beautician7.portfolio_photos.attach(io: file13, filename: 'beauty7.png', content_type: 'image/jpg')
beautician8.portfolio_photos.attach(io: file14, filename: 'beauty8.png', content_type: 'image/jpg')
beautician9.portfolio_photos.attach(io: file15, filename: 'beauty9.png', content_type: 'image/jpg')
beautician10.portfolio_photos.attach(io: file16, filename: 'beauty10.png', content_type: 'image/jpg')
beautician11.portfolio_photos.attach(io: file17, filename: 'beauty11.png', content_type: 'image/jpg')
beautician.portfolio_photos.attach(io: file18, filename: 'beauty12.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file19, filename: 'beauty13.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file20, filename: 'beauty14.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file21, filename: 'beauty15.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file22, filename: 'beauty16.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file23, filename: 'beauty17.png', content_type: 'image/jpg')
beautician7.portfolio_photos.attach(io: file24, filename: 'beauty18.png', content_type: 'image/jpg')
beautician8.portfolio_photos.attach(io: file25, filename: 'beauty19.png', content_type: 'image/jpg')
beautician9.portfolio_photos.attach(io: file26, filename: 'beauty20.png', content_type: 'image/jpg')
beautician10.portfolio_photos.attach(io: file27, filename: 'beauty21.png', content_type: 'image/jpg')
beautician11.portfolio_photos.attach(io: file28, filename: 'beauty22.png', content_type: 'image/jpg')
beautician.portfolio_photos.attach(io: file29, filename: 'beauty23.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file30, filename: 'beauty24.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file31, filename: 'beauty25.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file32, filename: 'beauty26.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file33, filename: 'beauty27.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file34, filename: 'beauty28.png', content_type: 'image/jpg')



Treatment.create(name: "Ladies' Haircuts", cost: 30, description: "Trendy Haircuts for Women", category: "Hair", beautician: beautician)
Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal", beautician: beautician)
Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage", beautician: beautician)
Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails", beautician: beautician)
Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face", beautician: beautician)

BeauticianTreatment.create(beautician: ,treatment: )