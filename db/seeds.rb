#, This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Mission.destroy_all
User.destroy_all
Participation.destroy_all

user1 = User.create!(fullname: "Rémi", city: "city", description: "salut mdr", email: "remi@admin.com", password: "password", admin: false)
farouk = User.create!(fullname: "Farouk", city: "la cité", description: "wesh", email: "farouk@admin.com", password: "password", admin: true)
claire = User.create!(fullname: "Claire", city: "la villa", description: "cc", email: "claire@admin.com", password: "password", admin: true)
luc = User.create!(fullname: "Luc", city: "ici", description: "je suis le chef", email: "luc@admin.com", password: "password", admin: true)
rebec = User.create!(fullname: "Rebec", city: "avec les enfants", description: "onjour c moi", email: "rebec@admin.com", password: "password", admin: true)
thomas = User.create!(fullname: "Thomas", city: "à la maison", description: "j'aime lke bénévolat", email: "thomas@admin.com", password: "password", admin: false)


puts "created #{User.count} users"


mission1 = Mission.create!(title: "ramassage de déchets sur la plage", location: "Plage de Nice", description: "A l'occasion de la journee mondiale de l'environnement, nous organisons une collecte de déchets a la plage de Nice et nous cherchons plusieurs benevoles. Rendez-vous a 10h a la plage de Nice. ", user: user1, quota: 25, start_time: DateTime.new(2020,12,11,10,0,0), end_time: DateTime.new(2020,12,11,14,0,0))
mission2 = Mission.create!(title: "distribution de repas pour les sans-abris", location: "Place Jean-Medecin", description: "Nous organisons une distribution de repas pour les sans-abris et nous avons beoin de benevoles pour nous aider dans la logistique.", user: user1, quota: 10, start_time: DateTime.new(2020,11,28,14,00,0), end_time: DateTime.new(2020,11,28,19,30,0))
mission3 = Mission.create!(title: "Maraude", location: "Vieux-port de Marseille", description: "Nous organisons une maraude pour les sans-abris et nous avons beoin de benevoles pour nous aider dans la logistique.", user: user1, quota: 3, start_time: DateTime.new(2020,11,25,14,00,0), end_time: DateTime.new(2020,11,26,19,30,0), done: true)


puts "created #{Mission.count} missions"

