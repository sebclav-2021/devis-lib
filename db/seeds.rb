# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Category.destroy_all
Customer.destroy_all
User.destroy_all
Product.destroy_all
Service.destroy_all

User.create!(
  name: 'Mario Bros MultiServices',
  email: 'mbms@gmail.com',
  password: 'azerty',
  status: 'Pro',
  address: '100 rue St Jean du Désert, 13005 Marseille',
  phone: '0491395098',
  siret: '51881894300020'
)

10.times do
  customer = Customer.new(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number_with_country_code
  )
  customer.save!
end

Category.create!(name: "Pose d'une douche à l'italienne")
Category.create!(name: "Remplacement d'un lavabo")
Category.create!(name: "Pose d'un chauffe-eau")
Category.create!(name: "Révision canalisations sanitaires")
Category.create!(name: "Recherche de fuite")

Product.create!(name: "Baignoire rectangulaire L.170x l.75 cm blanc", unite: "Pièce", price: "358.50", workforce: false)
Product.create!(name: "Baignoire bain douche rectangulaire L.140x l.90 cm blanc", unite: "Pièce", price: "698.10", workforce: false)
Product.create!(name: "Baignoire asymétrique gauche L.150x l.90 cm blanc", unite: "Pièce", price: "765.30", workforce: false)
Product.create!(name: "Baignoire d'angle L.135x l.135 cm blanc", unite: "Pièce", price: "364.10", workforce: false)
Product.create!(name: "Carrelage mur forte pierre ivoire l.20 x L.50 cm, Travertin", unite: "m²", price: "44.60", workforce: false)
Product.create!(name: "Carrelage mur forte blanc cassé l.10 x L.10 cm", unite: "m²", price: "32.40", workforce: false)
Product.create!(name: "Carrelage sol et mur forte noir émaillé l.17.5 x L.20 cm", unite: "m²", price: "28.60", workforce: false)
Product.create!(name: "Carrelage sol/mur forte effet patchwork bois", unite: "m²", price: "24.50", workforce: false)
Product.create!(name: "Joint WC pour soupape SIAMP l.7.2 x H.0.1 x P.2.4 cm", unite: "Pièce", price: "1.10", workforce: false)
Product.create!(name: "Joint WC pour sortie de cuvette l.11 x H.0.9 x P.7 cm", unite: "Pièce", price: "2.20", workforce: false)
Product.create!(name: "Joint WC pour soupape SAS l.9.5 x H.15 x P.1 cm", unite: "Pièce", price: "3.40", workforce: false)
Product.create!(name: "Lavabo colonne en céramique, blanc", unite: "Pièce", price: "39.40", workforce: false)
Product.create!(name: "Lavabo Rétro CELESTE PASTELLO 60cm", unite: "Pièce", price: "157.10", workforce: false)
Product.create!(name: "Main d'oeuvre", unite: "Forfait", price: "150.00", workforce: false)
Product.create!(name: "Mitigeur thermostatique de baignoire chromé", unite: "Pièce", price: "125.10", workforce: false)
Product.create!(name: "Mitigeur thermostatique de baignoire noir mat", unite: "Pièce", price: "150.10", workforce: false)
Product.create!(name: "Mitigeur mécanique de baignoire chromé", unite: "Pièce", price: "99.00", workforce: false)
Product.create!(name: "Pipe de WC extensible souple Diam.10 cm", unite: "Pièce", price: "12.40", workforce: false)
Product.create!(name: "Pipe de WC Diam.100 cm", unite: "Pièce", price: "16.20", workforce: false)
Product.create!(name: "Pipe de WC Diam.93", unite: "Pièce", price: "15.10", workforce: false)
Product.create!(name: "Plan vasque double Max Céramique blanc l.121 x P.46 cm", unite: "Pièce", price: "87.70", workforce: false)
Product.create!(name: "Plan vasque simple Essential Céramique blanc l.61 x P.46 cm", unite: "Pièce", price: "15.10", workforce: false)
Product.create!(name: "Plan vasque simple Perla Résine de synthèse blanc l.81.8 x P.48 cm", unite: "Pièce", price: "77.80", workforce: false)
Product.create!(name: "Receveur de douche, résine, blanc L.120 x l.80 cm", unite: "Pièce", price: "124.60", workforce: false)
Product.create!(name: "Receveur de douche, résine, noir L.140 x l.90 cm", unite: "Pièce", price: "174.60", workforce: false)
Product.create!(name: "Robinet de baignoire à 2 poignées et déviateur de douche Chrome", unite: "Pièce", price: "197.10", workforce: false)
Product.create!(name: "Robinet de baignoire à 2 poignées et déviateur de douche Chrome", unite: "Pièce", price: "154.60", workforce: false)
Product.create!(name: "Vasque à poser céramique rectangulaire", unite: "Pièce", price: "89.50", workforce: false)
Product.create!(name: "Vasque à poser porcelaine rond Studio l.37 x P.37 cm Diam.37 cm", unite: "Pièce", price: "68.10", workforce: false)
Product.create!(name: "Siphon extra-plat, sortie verticale, H.11 cm x l.14 cm", unite: "Pièce", price: "35.10", workforce: false)
Product.create!(name: "Siphon de cour en pvc", unite: "Pièce", price: "25.50", workforce: false)
Product.create!(name: "Siphon sol ABS gris", unite: "Pièce", price: "32.10", workforce: false)
Product.create!(name: "Siphonnette grille+ cadre inox 10x10", unite: "Pièce", price: "22.20", workforce: false)
