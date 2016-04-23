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

