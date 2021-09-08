# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Product.destroy_all

# require "open-uri"


#los usuarios no se registran al realizar el rails db:seed
#Se pueden crear por la pagina con Login

# user = User.create([
# { first_name: "Ligia", last_name:"Peña",  email: "mktligia@gmail.com", password: "1234", username: "mktligia"}, 
# { first_name: "Bruno", last_name:"Perez",  email: "bperez@gmail.com", password: "3321", username: "bruno"}, 
# { first_name: "Diego", last_name:"Obando",  email: "dobando@gmail.com", password: "5678", username: "diego"}, 
# { first_name: "Jhonatan", last_name:"Mejias",  email: "jmejias@gmail.com", password: "5689", username: "Jhonatan"}
# ])


# semilla = Product.create([
# { name: "Ramos de flores", content:"Hermosas flores con Avellano",  address: "merida", country: "Venezuela", price_cents: 3000, image:"ramos.jpg"}, 
# { name: "Arreglos florales", content:"Arreglos para toda ocación",  address: "Chillen", country: "Chile", price_cents: 10000, image:"condolencias.png"},
# { name: "Canastos, centros y cubreurnas", content:"Ofrendas de todo tipo",  address: "Angol", country: "Chile", price_cents: 10000, image:"canasto.png"},
# { name: "Coronas", content:"Cojines y coronas florales personalizadas",  address: "Cartagena", country: "Colombia", price_cents: 60000, image:"corona.png"},
# { name: "Dias especiales", content:"Feliz día , Cumpleaños y San valentin",  address: "Cartagena", price_cents: 10000, image:"regalo.png"}
# ])


#file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
#product = Product.new(name: "Flores", content:"Ramos de Rosas, Liliums, Tulipanes y otros",  address: "merida", country: "Venezuela", price_cents: 2000)
#product.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



# puts "Semillas insertadas"
