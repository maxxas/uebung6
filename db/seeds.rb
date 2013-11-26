# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customers = Customer.create([{first_name: 'Alex', last_name: 'Jones'}, 
	{first_name: 'Mahatma', last_name: 'Ghandi'}])
accounts = Account.create([{number: 293842983, balance: 945.00, customer_id: 3}, 
	{number: 923484, balance: 876.90, customer_id: 4}, 
	{number:544321, balance: 76.01, customer_id: 1}])
