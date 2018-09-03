# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'neil', email: 'neil@aol.com', password_digest: 'password')
Galaxy.create(name: 'Milky_Way', user_id: 1)
System.create(name: 'Solar', star: 'sun', galaxy_id: 1, user_id: 1)
Planet.create(name: 'Earth', size: 100, life: true, system_id: 1, user_id: 1, galaxy_id: 1)