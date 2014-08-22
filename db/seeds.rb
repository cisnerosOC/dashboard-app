# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
# 100.times do
#   Customer.create(:first_name => Faker::Name.first_name,
#                 :last_name => Faker::Name.last_name,
#                 :address => Faker::Address.street_address,
#                 :city => Faker::Address.city,
#                 :state => Faker::Address.state_abbr,
#                 :zip_code => Faker::Address.zip_code,
#                 :email => Faker::Internet.email,
#                 :phone1 => Faker::PhoneNumber.phone_number)
# end

10.times do
  Employee.create(:first_name => Faker::Name.first_name,
                :middle_name => Faker::Name.first_name,
                :last_name => Faker::Name.last_name,
                :address => Faker::Address.street_address,
                :city => Faker::Address.city,
                :state => Faker::Address.state_abbr,
                :zip_code => Faker::Address.zip_code,
                :email => Faker::Internet.email,
                :phone1 => Faker::PhoneNumber.phone_number)
end

