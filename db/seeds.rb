# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
kid_higg = User.create(first_name: 'Ryan', last_name: 'Higgins', email: 'ryanhigs@gmail.com', password: 'higgins')
landlord_denise = User.create(first_name: 'Denise', last_name: 'Carlos', email: 'denise@gmail.com', password: 'carlos', role: 'landlord')
tenant_jake = User.create(first_name: 'Jake', last_name: 'Thrun', email: 'jake@gmail.com', password: 'thrun', role: 'tenant')
admin_yihao = User.create(first_name: 'Yihao', last_name: 'Mao', email: 'yihao@gmail.com', password: 'mao', role: 'admin' )



paradise_valley_estates = Apartment.create(address: '2442 Piedmont Avenue')
mickey_mansion = Apartment.create(address: '1 Disney Way')
gamer_house = Apartment.create(address: '1337 Headshot Lane')
monk_village = Apartment.create(address: '1000 Prayer Circle')