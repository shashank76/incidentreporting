# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.create(name: "Lincoln High School", location: "New Delhi", details: "Lincoln High School", contact: "1234567890")
IncidentType.create([{name: "Alcohol"},{name: "Assault"},{name: "Bullying"},{name: "Hazing"},{name: "Drugs"},{name: "Graffiti"},{name: "Injury"},{name: "Suspicious Activity"},{name: "Trespassing"},{name: "Vandalism"},{name: "Weapons violation"},{name: "Technology Misuse"},{name: "Others"}])
