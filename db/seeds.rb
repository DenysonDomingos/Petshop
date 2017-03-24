# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  animal_breed = Faker::Name.animal_breed

  animal_castrated = Faker::Boolean.boolean
  animal_birth = Faker::Date.birthday(18, 65)

  animal_nameowner = Faker::Name.name
  animal_phoneowner = Faker::PhoneNumber.phone_number
  animal_lastvisit = Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)

  puts "Cadastrando Animal #{animal_nameowner}"
  Animal.create(breed: animal_breed,
                castrated: animal_castrated, birth: animal_birth,
                nameowner: animal_nameowner,
                phoneowner: animal_phoneowner, lastvisit: animal_lastvisit)
end
