# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

att  ={name: "Furst user", institution_name: "abc"},{name: "Seco user", institution_name: "xyz"},{name: "third Student", institution_name: "abc"}
att.each do |attribute|
  Student.create(attribute)
end
