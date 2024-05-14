# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "delete bookings"
Booking.destroy_all
puts "finish"
puts "delete plants"
Plant.destroy_all
puts "finish"
puts "delete users"
User.destroy_all
puts "finish"

puts "create users"
@user_marine = User.create!(first_name: "Marine",
                            last_name: "Gayet",
                            address: "68 Mail François Mitterrand, 35000 Rennes",
                            email: "marine@mail.com",
                            password: "123456")
@user_perrine = User.create!(first_name: "Perrine",
                             last_name: "Guerrapin",
                             address: "2 Rue de la Mabilais, 35000 Rennes",
                             email: "perrine@mail.com",
                             password: "123456")
@user_cedric = User.create!(first_name: "Cédric",
                            last_name: "Mingam",
                            address: "6 Rue des Portes Mordelaises, 35000 Rennes",
                            email: "cedric@mail.com",
                            password: "123456")
@user_ben = User.create!(first_name: "Ben",
                         last_name: "Boubou",
                         address: "1 Esp. Charles de Gaulle, 35000 Rennes",
                         email: "ben@mail.com",
                         password: "123456")
puts "finish"

puts "create plants"
@plant1 = Plant.new(user: @user_cedric,
                    name: "Pansy",
                    description: "Superbes fleurs",
                    price: 5)
file = URI.open('https://res.cloudinary.com/dkm0qrvny/image/upload/v1711559353/pansies-in-pots-crop_0_eu391j.jpg')
@plant1.photo.attach(io: file, filename: 'elegant.jpg', content_type: 'image/jpg')
@plant1.save!
@plant2 = Plant.new(user: @user_cedric,
                    name: "Daisy",
                    description: "Très belle au printemps",
                    price: 4)
file = URI.open('https://images.freeimages.com/images/large-previews/c5b/texture-flower-daisy-1185638.jpg')
@plant2.photo.attach(io: file, filename: 'daisy.jpg', content_type: 'image/jpg')
@plant2.save!
@plant3 = Plant.new(user: @user_marine,
                    name: "Monstera Deliciosa",
                    description: "Parfaite pour égailler un intérieur. Plante rare",
                    price: 8)
file = URI.open('https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_monstera_variant_medium_hyde_cream_50145be1-5183-4692-80ed-a927d5625fc8.jpg?v=1712850427')
@plant3.photo.attach(io: file, filename: 'monstera_deliciosa.jpg', content_type: 'image/jpg')
@plant3.save!
@plant4 = Plant.new(user: @user_marine,
                    name: "Monstera Monkey",
                    description: "Plante drole, pour apporter un peu de joie.",
                    price: 7)
file = URI.open('https://www.reconciliationvegetale.com/le-blog/wp-content/uploads/2019/10/monstera-monkey-leaf-entret.jpg')
@plant4.photo.attach(io: file, filename: 'monstera_monkey.jpg', content_type: 'image/jpg')
@plant4.save!
@plant5 = Plant.new(user: @user_marine,
                    name: "Ficus elastica",
                    description: "Les nouvelles feuilles ont une teinte rose. Demande peu d'entretien.",
                    price: 5)
file = URI.open('https://i.etsystatic.com/22819811/r/il/fdf391/3249392681/il_570xN.3249392681_d4le.jpg')
@plant5.photo.attach(io: file, filename: 'ficus_elastica.jpg', content_type: 'image/jpg')
@plant5.save!
@plant6 = Plant.new(user: @user_perrine,
                    name: "Cactus Pilosocereus Azureus",
                    description: "Le Pilosocereus Azureus, communément appelé Cactus d'intérieur, est une plante fascinante qui apporte une touche d'exotisme à n'importe quel espace intérieur. Originaire du Brésil, ce cactus est apprécié pour son allure unique et son bleu saisissant qui lui a valu le surnom de Cactus Bleu.Cette plante gracieuse se distingue par sa colonne élancée et robuste qui peut atteindre jusqu'à 4 mètres de hauteur dans son habitat naturel, bien qu'elle soit généralement plus petite en intérieur. Sa couleur bleue argentée est due à une fine couche de cire qui protège la plante des rayons du soleil.",
                    price: 10)
file = URI.open('https://images.truffaut.com/media/catalog/product/7/f/7fa8c8bb5a69b1be.png?width=700&height=700&store=fr&image-type=image')
@plant6.photo.attach(io: file, filename: 'cactus_pilosocereus_azureus.jpg', content_type: 'image/jpg')
@plant6.save!
@plant7 = Plant.new(user: @user_perrine,
                    name: "Aloe Vera",
                    description: "Cette plante miracle a des qualités remarquables. On recueille le gel d'Aloe Vera dans les parties vertes des feuilles qui a des actions curatives aussi bien en usage externe qu'interne, plus efficace et moins onéreux que lorsqu'elle est transformée en crème ou en gélules. Pour cela couper la feuille avec un couteau bien aiguisé et presser la quantité de gel désirée. Placer la feuille au réfrigérateur où elle se conserve plus de 2 semaines. La rusticité de l'Aloé Vera est de 0°C.",
                    price: 8)
file = URI.open('https://lagreentouch.fr/cdn/shop/files/acheter-plante-aloe-vera-barbadensis-777686.jpg?v=1693983940&width=1200')
@plant7.photo.attach(io: file, filename: 'aloe_vera.jpg', content_type: 'image/jpg')
@plant7.save!
@plant8 = Plant.new(user: @user_perrine,
  name: "Yucca",
  description: "La Yucca Tres Cañas est une plante majestueuse et robuste, originaire des régions arides dAmérique du Nord. Elle se distingue par ses longues feuilles vertes, rigides et pointues, qui forment un bouquet dense et érigé. Sa tige, souvent ramifiée en trois, doù son nom Tres Cañas, donne à la plante une allure élancée et unique.La Yucca Tres Cañas est une plante de taille moyenne, pouvant atteindre jusquà deux mètres de hauteur. Elle est particulièrement résistante à la sécheresse et aux températures élevées, ce qui en fait une plante idéale pour les jardins secs et les rocailles. En été, la Yucca Tres Cañas produit de magnifiques inflorescences blanches qui contrastent avec le vert foncé de ses feuilles.Cette plante est non seulement belle, mais aussi facile à entretenir. Elle préfère les sols bien drainés et un emplacement ensoleillé. La Yucca Tres Cañas est une plante qui apportera une touche d'exotisme et de caractère à votre jardin ou votre intérieur. Son allure sauvage et son port majestueux en font un véritable atout décoratif.",
  price: 9)
file = URI.open('https://images.truffaut.com/media/catalog/product/5/c/5c6470ab55d22c37.jpg?width=700&height=700&store=fr&image-type=image')
@plant8.photo.attach(io: file, filename: 'yucca.jpg', content_type: 'image/jpg')
@plant8.save!
@plante9 = Plant.new(user: @user_ben,
  name: "Plante Oiseau du Paradis - Strelitzia reginea",
  description: "La Strelitzia Reginea, également connue sous le nom d'oiseau de paradis, crée une atmosphère tropicale dans n'importe quelle pièce. Cette plante est originaire d'Afrique du Sud, mais on la trouve aujourd'hui dans le monde entier. Le Strelitzia convient aussi bien à l'intérieur qu'à l'extérieur, à condition de le rentrer lorsque la température descend en dessous de 10 degrés.",
  price: 8)
file = URI.open('https://images.truffaut.com/media/catalog/product/8/2/822b9f965501f902.png?width=700&height=700&store=fr&image-type=image')
@plante9.photo.attach(io: file, filename: 'oiseau_paradis.jpg', content_type: 'image/jpg')
@plante9.save!
@plante10 = Plant.new(user: @user_ben,
  name: "Bonsaï Metasequoia Glyptostroboide",
  description: "Parfaite pour égailler un intérieur. Plante rare",
  price: 20)
file = URI.open('https://images.truffaut.com/media/catalog/product/0/6/06334cdbf643f136.jpg?width=700&height=700&store=fr&image-type=image')
@plante10.photo.attach(io: file, filename: 'bonsai.jpg', content_type: 'image/jpg')
@plante10.save!
