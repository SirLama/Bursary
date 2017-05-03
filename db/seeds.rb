# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "malach",
             email: "malach@gmail.com",
             password:              "branson",
             password_confirmation: "branson",
             admin: true,)

10.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,)
  print '.'
end
users =User.order(:created_at).take (10)
3.times do
  fname= Faker::Name.name 
  lname= Faker::Name.name 
  mname= Faker::Name.name 
  id_no= Faker::Number.number(8) 
  telephone= Faker::PhoneNumber.cell_phone 
  gender=Faker::Name.prefix
  work= Faker::Company.profession
  school= Faker::University.name 
  amount=Faker::Number.between(1000,40000)
  users.each { |user| user.loans.create!(fname: fname, lname: lname, mname: mname, id_no: id_no, telephone: telephone, gender: gender,
                                         work: work, school: school, amount: amount)  }
end
