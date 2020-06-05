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
BeauticianTreatment.destroy_all

Treatment.destroy_all
Beautician.destroy_all
User.destroy_all

puts "deleted db"

require "open-uri"

# worker accounts
user = User.create(email: "marco@gmail.com", password: "123456")
user2 = User.create(email: "mimi@gmail.com", password: "123456")
user3 = User.create(email: "zara@gmail.com", password: "123456")
user4 = User.create(email: "sandynail@gmail.com", password: "123456")
user5 = User.create(email: "lulu@gmail.com", password: "123456")
user6 = User.create(email: "polly@gmail.com", password: "123456")
user7 = User.create(email: "linda@gmail.com", password: "123456")
user8 = User.create(email: "garland@gmail.com", password: "123456")
user9 = User.create(email: "bella@gmail.com", password: "123456")
user10 = User.create(email: "rachel@gmail.com", password: "123456")
user11 = User.create(email: "susie@gmail.com", password: "123456")

# customer
brad = User.create(email: "bradleyscott@yahoo.com", password: "123456")
kiera = User.create(email: "kiera90@gmail.com", password: "123456")
hailey = User.create(email: "haileybieber@gmail.com", password: "123456")
petre = User.create(email: "petra@gmail.com", password: "123456")
gwenda = User.create(email: "gwenda@gmail.com", password: "123456")
maryjane = User.create(email: "maryjane@gmail.com", password: "123456")


beautician = Beautician.create(description: "Quality haircuts from yours truely!", location: "Shoreditch, London", name: "Marco's Beauties", user: user)
beautician2 = Beautician.create(description: "Manicures from the one and only MIMI.", location: "Shoreditch, London", name: "Mimi Manicures", user: user2)
beautician3 = Beautician.create(description: "Hair done the right way.", location: "Hackney, London", name: "Zara's extensions", user: user3)
beautician4 = Beautician.create(description: "Best value work on your nails  in london.", location: "Stratford, London", name: "Sandy Nails", user: user4)
beautician5 = Beautician.create(description: "Hair, nails, eyes, everything available", location: "Camden, London", name: "Lulu Services", user: user5)
beautician6 = Beautician.create(description: "Prettiest lashes in town.", location: "Croydon, London", name: "Polly's Eyes", user: user6)
beautician7 = Beautician.create(description: "Specialist for your eyes.", location: "Fulham, London", name: "Eyes by Linda", user: user7)
beautician8 = Beautician.create(description: "Coming to you for the best service.", location: "Greenwich, London", name: "Garland's Anywhere", user: user8)
beautician9 = Beautician.create(description: "Treatments right in the city", location: "Liverpool Street, London", name: "Bella's City Treatments", user: user9)
beautician10 = Beautician.create(description: "Nail treatments anytime, anywhere.", location: "Brixton, London", name: "Rachel's Nails", user: user10)
beautician11 = Beautician.create(description: "All services available on the go", location: "Shoreditch, London", name: "Susie's Stylings", user: user11)

puts "created user & beautician"

file = Rails.root.join("app/assets/images/portfolio2/hair-scissors-and-tools.jpg").open
file2 = Rails.root.join("app/assets/images/portfolio2/woman-getting-makeup-applied.jpg").open
file3 = Rails.root.join("app/assets/images/portfolio2/painting-nails.jpg").open
file4 = Rails.root.join("app/assets/images/portfolio2/makeup-395044_1920.jpg").open
file5 = Rails.root.join("app/assets/images/portfolio2/haircut-4019676_1920.jpg").open
file6 = Rails.root.join("app/assets/images/portfolio2/ease-3106604_1920.jpg").open
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
file26 = Rails.root.join("app/assets/images/rune-enstad-cowLgyb63c4-unsplash.jpg").open
file27 = Rails.root.join("app/assets/images/rune-enstad-qeuJczNo54w-unsplash.jpg").open
file28 = Rails.root.join("app/assets/images/saskia-fairfull-7ZaBZ543oo8-unsplash.jpg").open
file29 = Rails.root.join("app/assets/images/theme-photos-SYXxlEP5KAA-unsplash.jpg").open
file30 = Rails.root.join("app/assets/images/estetica-2901096_1920.jpg").open
file31 = Rails.root.join("app/assets/images/hair-salons-1479257_1920.jpg").open
file32 = Rails.root.join("app/assets/images/manicure-1365552_1920.jpg").open
file33 = Rails.root.join("app/assets/images/people-2583493_1920.jpg").open
file34 = Rails.root.join("app/assets/images/people-2587157_1920.jpg").open

puts "opened photos"


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

puts "photos for banners attached"

file13 = Rails.root.join("app/assets/images/allie-89k7poPsypk-unsplash.jpg").open
file14 = Rails.root.join("app/assets/images/antonika-chanel-jmRbgqXLCI0-unsplash.jpg").open
file15 = Rails.root.join("app/assets/images/aw-creative-FkAZqQJTbXM-unsplash.jpg").open
file16 = Rails.root.join("app/assets/images/candice-picard-1dwRuFgDr0o-unsplash.jpg").open
file17 = Rails.root.join("app/assets/images/emiliano-vittoriosi-qTu9DppC3mM-unsplash.jpg").open

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

file35 = Rails.root.join("app/assets/images/portfolio/client-in-a-beauty-salon-3997379.jpg").open
file36 = Rails.root.join("app/assets/images/portfolio/client-in-beauty-salon-3736287.jpg").open
file37 = Rails.root.join("app/assets/images/portfolio/crop-unrecognizable-beautician-applying-clay-mask-to-clients-3985349.jpg").open
file38 = Rails.root.join("app/assets/images/portfolio/person-cutting-hair-2799609.jpg").open
file39 = Rails.root.join("app/assets/images/portfolio/person-holding-artificial-nail-samples-3997377.jpg").open
file40 = Rails.root.join("app/assets/images/portfolio/person-in-black-gloves-massaging-fingers-3997383.jpg").open
file41 = Rails.root.join("app/assets/images/portfolio/person-in-black-leather-jacket-holding-red-textile-3997378.jpg").open
file42 = Rails.root.join("app/assets/images/portfolio/person-using-hair-razor-on-man-s-hair-3356174.jpg").open
file43 = Rails.root.join("app/assets/images/portfolio/person-wearing-black-gloves-3738377.jpg").open
file44 = Rails.root.join("app/assets/images/portfolio/person-wearing-black-gloves-making-nails-3997390.jpg").open
file45 = Rails.root.join("app/assets/images/portfolio/person-wearing-black-gloves-massaging-a-person-s-hand-3738375.jpg").open
file46 = Rails.root.join("app/assets/images/portfolio/person-with-black-and-white-manicure-3738369.jpg").open
file47 = Rails.root.join("app/assets/images/portfolio/photo-of-person-applying-cream-to-woman-s-hands-3738365.jpg").open
file48 = Rails.root.join("app/assets/images/portfolio/photo-of-person-s-hairstyle-3065170.jpg").open
file49 = Rails.root.join("app/assets/images/portfolio/photo-of-person-s-hairstyle-3065209.jpg").open
file50 = Rails.root.join("app/assets/images/portfolio/photo-of-person-s-hand-soak-in-water-3738378.jpg").open
file51 = Rails.root.join("app/assets/images/portfolio/photo-of-woman-having-facial-care-4207234.jpg").open
file52 = Rails.root.join("app/assets/images/portfolio/photo-of-woman-s-hairstyle-3065171.jpg").open
file53 = Rails.root.join("app/assets/images/portfolio/selective-focus-photography-of-woman-manicuring-person-3422099.jpg").open
file54 = Rails.root.join("app/assets/images/portfolio/woman-getting-a-facial-treatment-3985329.jpg").open
file55 = Rails.root.join("app/assets/images/portfolio/woman-getting-her-hair-shampoo-3993444.jpg").open
file56 = Rails.root.join("app/assets/images/portfolio/woman-having-facial-care-3738345.jpg").open
file57 = Rails.root.join("app/assets/images/portfolio/woman-having-facial-care-3738349.jpg").open
file58 = Rails.root.join("app/assets/images/portfolio/woman-having-facial-care-3738355.jpg").open
file59 = Rails.root.join("app/assets/images/portfolio/woman-in-black-long-sleeve-shirt-dong-manicure-3997350.jpg").open
file60 = Rails.root.join("app/assets/images/portfolio/woman-in-gray-crew-neck-t-shirt-holding-white-plastic-bottle-3997348.jpg").open
file61 = Rails.root.join("app/assets/images/portfolio/woman-in-white-tank-top-3985298.jpg").open
file62 = Rails.root.join("app/assets/images/portfolio/woman-in-white-tank-top-3985319.jpg").open
file63 = Rails.root.join("app/assets/images/portfolio/woman-lying-on-blue-textile-3997981.jpg").open

beautician7.portfolio_photos.attach(io: file35, filename: 'beauty29.png', content_type: 'image/jpg')
beautician8.portfolio_photos.attach(io: file36, filename: 'beauty30.png', content_type: 'image/jpg')
beautician9.portfolio_photos.attach(io: file37, filename: 'beauty31.png', content_type: 'image/jpg')
beautician10.portfolio_photos.attach(io: file38, filename: 'beauty32.png', content_type: 'image/jpg')
beautician11.portfolio_photos.attach(io: file39, filename: 'beauty33.png', content_type: 'image/jpg')
beautician.portfolio_photos.attach(io: file40, filename: 'beauty34.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file41, filename: 'beauty35.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file42, filename: 'beauty36.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file43, filename: 'beauty37.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file44, filename: 'beauty38.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file45, filename: 'beauty39.png', content_type: 'image/jpg')
beautician7.portfolio_photos.attach(io: file46, filename: 'beauty40.png', content_type: 'image/jpg')
beautician8.portfolio_photos.attach(io: file47, filename: 'beauty41.png', content_type: 'image/jpg')
beautician9.portfolio_photos.attach(io: file48, filename: 'beauty42.png', content_type: 'image/jpg')
beautician10.portfolio_photos.attach(io: file49, filename: 'beauty43.png', content_type: 'image/jpg')
beautician11.portfolio_photos.attach(io: file50, filename: 'beauty44.png', content_type: 'image/jpg')
beautician.portfolio_photos.attach(io: file51, filename: 'beauty45.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file52, filename: 'beauty46.png', content_type: 'image/jpg')
beautician3.portfolio_photos.attach(io: file53, filename: 'beauty47.png', content_type: 'image/jpg')
beautician4.portfolio_photos.attach(io: file54, filename: 'beauty48.png', content_type: 'image/jpg')
beautician5.portfolio_photos.attach(io: file55, filename: 'beauty49.png', content_type: 'image/jpg')
beautician6.portfolio_photos.attach(io: file56, filename: 'beauty50.png', content_type: 'image/jpg')
beautician7.portfolio_photos.attach(io: file57, filename: 'beauty51.png', content_type: 'image/jpg')
beautician8.portfolio_photos.attach(io: file58, filename: 'beauty52.png', content_type: 'image/jpg')
beautician9.portfolio_photos.attach(io: file59, filename: 'beauty53.png', content_type: 'image/jpg')
beautician10.portfolio_photos.attach(io: file60, filename: 'beauty54.png', content_type: 'image/jpg')
beautician11.portfolio_photos.attach(io: file61, filename: 'beauty55.png', content_type: 'image/jpg')
beautician.portfolio_photos.attach(io: file62, filename: 'beauty56.png', content_type: 'image/jpg')
beautician2.portfolio_photos.attach(io: file63, filename: 'beauty57.png', content_type: 'image/jpg')

lcut = Treatment.create(name: "Ladies' Haircut", cost: 30, description: "Trendy Haircuts for Women", category: "Hair")
fath = Treatment.create(name: "Facial Threading", cost: 10, description: "Threading allows for a more defined and precise shape and can create better definition for eyebrows", category: "Hair removal")
fama = Treatment.create(name: "Face Massage", cost: 35, description: "Face massage may be used to relieve tension and possibly control age-related phenomena, such as wrinkling.", category: "Massage")
mani = Treatment.create(name: "Manicure", cost: 20, description: "A manicure is a beauty treatment which uses special tools, creams, waxes and / or massage techniques to leave your nails and hands healthy", category: "Nails")
eyex = Treatment.create(name: "Eyelash Extensions", cost: 40, description: "Eyelash Extensions is a method used by eyelash technicians to enhance the length, thickness, and fullness of natural eyelashes", category: "Face")
mcut = Treatment.create(name: "Men's Haircut", cost: 25, description: "Fashionable Haircuts for Men", category: "Hair")
wax = Treatment.create(name: "Waxing", cost: 35, description: "Get rid of any unwanted hair leaving only the smoothest skin", category: "Hair removal")

BeauticianTreatment.create(beautician: beautician, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician2, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician2, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician3, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician3, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician4, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician4, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician5, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician5, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician6, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician6, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician7, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician7, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician8, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician8, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician9, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician9, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician10, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician10, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

BeauticianTreatment.create(beautician: beautician11, treatment: lcut, name: lcut.name, description: lcut.description, cost: lcut.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: fath, name: fath.name, description: fath.description, cost: fath.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: fama, name: fama.name, description: fama.description, cost: fama.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: mani, name: mani.name, description: mani.description, cost: mani.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: wax, name: wax.name, description: wax.description, cost: wax.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: eyex, name: eyex.name, description: eyex.description, cost: eyex.cost)
BeauticianTreatment.create(beautician: beautician11, treatment: mcut, name: mcut.name, description: mcut.description, cost: mcut.cost)

