# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Customer.destroy_all
User.destroy_all

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
