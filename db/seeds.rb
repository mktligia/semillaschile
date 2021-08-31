# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all

require "open-uri"

#los usuarios no se registran al realizar el rails db:seed
#Se pueden crear por la pagina con Login
user = User.create([
{ first_name: "Ligia", last_name:"Peña",  email: "mktligia@gmail.com", password: "1234", username: "mktligia"}, 
{ first_name: "Bruno", last_name:"Perez",  email: "bperez@gmail.com", password: "3321", username: "bruno"}, 
{ first_name: "Diego", last_name:"Obando",  email: "dobando@gmail.com", password: "5678", username: "diego"}, 
{ first_name: "Jhonatan", last_name:"Mejias",  email: "jmejias@gmail.com", password: "5689", username: "Jhonatan"}
])


semilla = Product.create([
{ name: "Flores", content:"Ramos de Rosas, Liliums, Tulipanes y otros",  address: "merida", country: "Venezuela", price_cents: 2000}, 
{ name: "Canastas y Arreglos Florales", content:"Diseños especiales",  address: "Chillen", country: "Chile", price_cents: 2500},
{ name: "Regalos", content:"Sorprende a los que amas",  address: "Angol", country: "Chile", price_cents: 1000},
{ name: "Saludos con Intencion", content:"Dia de la Madre, Cumpleaños, Aniversario, Agradecimientos, Felicitaciones",  address: "Cartagena", country: "Colombia", price_cents: 1500},
{ name: "Condolencias", content:"Para que estes presente",  address: "Cartagena", country: "Colombia", price_cents: 1500}
])



file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
product = Product.new(name: "Flores", content:"Ramos de Rosas, Liliums, Tulipanes y otros",  address: "merida", country: "Venezuela", price_cents: 2000)
product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


puts "Semillas insertadas"
