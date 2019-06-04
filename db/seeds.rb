# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Klass.create(name: "YaBoi")
Klass.create(name: "Guillamoure")
Klass.create(name: "Warlock")
KlassFeature.create(name: "Patron Spells", klass_id: 3, level_learned: 1)
KlassFeature.create(name: "Pact", klass_id: 3, level_learned: 1)
KlassFeature.create(name: "AutoKill", klass_id: 1, level_learned: 1)
KlassFeature.create(name: "N-v-r Die", klass_id: 1, level_learned: 2)
KlassFeature.create(name: "Mega-Destroi", klass_id: 1, level_learned: 4, description: "Once per round, when you deal damage to a creature, you can choose to gain 1d4 hit points to deal an additional 10d6 unholy damage.")
