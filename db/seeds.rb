# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(email: "prenomnom#{i}@tst.tst", password: '123456')
end

20.times do
  Article.create(
    title: Faker::Movies::BackToTheFuture.character,
    content: Faker::Movies::BackToTheFuture.quote,
    user: User.all.sample,
  )
end
