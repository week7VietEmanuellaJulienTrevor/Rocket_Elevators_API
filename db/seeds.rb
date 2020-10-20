# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'codeboxx@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nicolas.genest@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'nadya.fortier@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'martin.chantal@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'mathieu.houde@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'david.boutin@codeboxx.biz', password: 'password', password_confirmation: 'password') 
AdminUser.create!(email: 'mathieu.lortie@codeboxx.biz', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'thomas.carrier@codeboxx.biz', password: 'password', password_confirmation: 'password')


Employee.create(first_name:"Nicolas", last_name:"Genest", title:"CEO", email:"nicolas.genest@codeboxx.biz")
Employee.create(first_name:"Nadya", last_name:"Fortier", title:"Director", email:"nadya.fortier@codeboxx.biz")
Employee.create(first_name:"Martin", last_name:"Chantal", title:"Director Assistant", email:"martin.chantal@codeboxx.biz")
Employee.create(first_name:"Mathieu", last_name:"Houde", title:"Captain", email:"mathieu.houde@codeboxx.biz")
Employee.create(first_name:"David", last_name:"Boutin", title:"Engineer", email:"david.boutin@codeboxx.biz")
Employee.create(first_name:"Mathieu", last_name:"Lortie", title:"Engineer", email:"mathieu.lortie@codeboxx.biz")
Employee.create(first_name:"Thomas", last_name:"Carrier", title:"Engineer", email:"thomas.carrier@codeboxx.biz")

Column.create(type_of_building:"Residential", number_of_floors_served:"18", status:"offline", information:"test", notes:"this is a test")

Building.create(address_of_the_building:"test Address", full_name_of_the_building_administrator:"john Smith", email_of_the_administrator_of_the_building:"XXX@XXX.x", phone_number_of_the_building_administrator:"123-456-7890", full_name_of_the_technical_contact_for_the_building:"John Doe", technical_contact_email_for_the_building:"YYY@YYY.Y", technical_contact_phone_for_the_building:"098-765-4321")

Battery.create(building_id:1, type_of_building:"Residential", status:"online", employee_id:1, commissioning_date:'2010-11-20', last_inspection_date:'2020-10-16', operations_certificate:"functional", information:"test", notes:"test note")
Battery.create(building_id:1, type_of_building:"Residential", status:"online", employee_id:1, commissioning_date:'2010-11-20', last_inspection_date:'2020-10-16', operations_certificate:"functional", information:"test", notes:"test note")