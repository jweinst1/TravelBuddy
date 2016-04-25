# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#%w(Christine).each do |name|
#	User.create name: name, email: name+"fsognslg", password: 'password'
#end

User.create!(email: 'papp@berkeley.edu', password: 'wrwfwfgw', name: 'Christine')
User.create!(email: 'vt@berkeley.edu', password: 'password', name: 'Vicky')

Trip.create!(name: 'North California', start: "11/25/2016", end: "11/26/2016")
Trip.create!(name: 'Korea', start: "12/25/2016", end: "12/26/2016")

Location.create!(name: 'Berkeley')
Location.create!(name: 'Seoul')
Location.create!(name: 'Bushan')