# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create([
{ first_name: "Ligia", last_name:"Peña",  email: "mktligia@gmail.com", password: "1234", username: "mktligia"}, { first_name: "Bruno", last_name:"Perez",  email: "bperez@gmail.com", password: "3321", username: "bruno"}, 
{ first_name: "Diego", last_name:"Obando",  email: "dobando@gmail.com", password: "5678", username: "diego"}, 
{ first_name: "Jhonatan", last_name:"Mejias",  email: "jmejias@gmail.com", password: "5689", username: "Jhonatan"}
])


semilla = Product.create([
{ name: "Arreglo Floral", content:"Florero Rosas Maules y Liliums",  address: "merida", country: "Venezuela", price_cents: 2000}, 
{ name: "Garbanzos", content:"Garbanzus peligrations",  address: "Chillen", country: "Chile", price_cents: 2500},
{ name: "Tomate", content:"Tomates green",  address: "Angol", country: "Chile", price_cents: 1000},
{ name: "Rosa", content:"Rosa puntiaguda",  address: "Cartagena", country: "Colombia", price_cents: 1500}
])
puts "Semillas insertadas"
