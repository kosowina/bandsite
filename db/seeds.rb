# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.create!(name: "wegetariańskie")
Tag.create!(name: "kurczak")
Tag.create!(name: "kaczka")
Tag.create!(name: "ryż")
Tag.create!(name: "makaron")
Tag.create!(name: "wołowina")
Tag.create!(name: "wieprzowina")
Tag.create!(name: "cielęcina")
Tag.create!(name: "owoce morza")
Tag.create!(name: "ryby")

Category.create!(name: "przystawki")
Category.create!(name: "dania główne")
Category.create!(name: "dodatki")
Category.create!(name: "zupy")
Category.create!(name: "desery")

Table.create!(capacity: "4")
Table.create!(capacity: "4")
Table.create!(capacity: "4")
Table.create!(capacity: "4")
Table.create!(capacity: "4")
Table.create!(capacity: "2")
Table.create!(capacity: "2")
Table.create!(capacity: "2")
Table.create!(capacity: "2")





