Quote.destroy_all

10.times do
    Quote.create(
        text: Faker::TvShows::FamilyGuy.quote
    )
end

puts 'Quotes Seeded'

puts 'Seeding complete'