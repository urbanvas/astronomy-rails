# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

neil = User.create(username: 'neil', email: 'neil@aol.com', password_digest: 'password')
spiral = Galaxy.create(name: 'starwars', user_id: 1)
og = System.create(name: 'solar', star: 'sun', galaxy_id: 1, user_id: 1)
rocky = Planet.create(name: 'pluto', size: 100, life: true, system_id: 1, user_id: 1, galaxy_id: 1)