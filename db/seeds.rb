# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |i|
  animal_breed = Faker::Name.dog
  animal_genre = Faker::Name.genre
  animal_castrated = Faker::Boolean.boolean
  animal_birth = Faker::Date.birthday(18, 65)
  animal_name = Faker::Cat.name
  animal_nameowner = Faker::Name.name
  animal_phoneowner = Faker::PhoneNumber.cell_phone
  animal_lastvisit = Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)

  puts "Cadastrando Animal #{i+1}"
  Animal.create(breed: animal_breed, genre: animal_genre,
                castrated: animal_castrated, birth: animal_birth,
                name: animal_name, nameowner: animal_nameowner,
                phoneowner: animal_phoneowner, lastvisit: animal_lastvisit)
end
