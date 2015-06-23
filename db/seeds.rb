# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
kid_higg = User.create!(first_name: 'Ryan', last_name: 'Higgins', email: 'ryanhigs@gmail.com', password: 'higgins')
landlord_denise = User.create!(first_name: 'Denise', last_name: 'Carlos', email: 'denise@gmail.com', password: 'carlos', role: 'landlord')
tenant_jake = User.create!(first_name: 'Jake', last_name: 'Thrun', email: 'jake@gmail.com', password: 'thrun', role: 'tenant')
admin_yihao = User.create!(first_name: 'Yihao', last_name: 'Mao', email: 'yihao@gmail.com', password: 'mao', role: 'admin' )

# Addresses

berkeley_address = Address.create!(line1: '2442 Piedmont Avenue', line2: 'Apartment 13', city: 'Berkeley', state: 'CA', zip: '94704')
disneyland_address = Address.create!(line1: '1313 Disneyland Drive', city: 'Anaheim', state: 'CA', zip: '92802')
team3d_address = Address.create!(line1: '1337 Headshot Lane', city: 'Miami', state: 'FL', zip: '33101')
newyork_address = Address.create!(line1: '11 East 17th Street', line2: '#5', city: 'New York', state: 'NY', zip: '10003')

paradise_valley_estates = Apartment.create!(address: berkeley_address)
mickey_mansion = Apartment.create!(address: disneyland_address)
gamer_house = Apartment.create!(address: team3d_address)
yuppie_land = Apartment.create!(address: newyork_address)

landlord_denise.apartments.push(paradise_valley_estates)
landlord_denise.apartments.push(gamer_house)