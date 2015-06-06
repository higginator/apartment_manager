# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
kid_higg = User.create(first_name: 'Ryan', last_name: 'Higgins', email: 'ryanhigs@gmail.com', password: 'higgins')


paradise_valley_estates = Apartment.create(address: '2442 Piedmont Avenue')
mickey_mansion = Apartment.create(address: '1 Disney Way')
gamer_house = Apartment.create(address: '1337 Headshot Lane')
monk_village = Apartment.create(address: '1000 Prayer Circle')