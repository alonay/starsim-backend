# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gamer.create(name: "alonastar", password: "ilikecake")
Gamer.create(name: "briordie", password: "ilikecoding")
Gamer.create(name: "elisapizza", password: "ilikepizza")

Profile.create(game: "StarCraft", gamer_id:1, ranking:1 )
Profile.create(game: "StarCraft", gamer_id:2, ranking:2)
Profile.create(game: "StarCraft", gamer_id:3, ranking:3)

HotKey.create(gamer_id:1, keys: "c")
HotKey.create(gamer_id:2, keys: "r")
