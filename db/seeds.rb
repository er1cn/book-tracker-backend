c1 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c2 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c3 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c4 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c5 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c6 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c7 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c8 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c9 = Character.create(name: Faker::TvShows::FamilyGuy.character)
c10 = Character.create(name: Faker::TvShows::FamilyGuy.character)


10.times do
Quote.new(
    text: Faker::TvShows::FamilyGuy.quote,
    rating: (0..10).to_a.sample,
    character: [c1, c2, c3, c4].sample
)
end

puts 'Quotes Seeded'

puts 'Seeding complete'