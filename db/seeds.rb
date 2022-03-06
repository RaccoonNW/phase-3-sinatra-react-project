puts "🌱 Seeding spices..."


    40.times do
        Actor.create(
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name
            )
    end
        
    80.times do
        Pet.create(
            name: Faker::Creature::Cat.name,
            creature: Faker::Creature::Animal.name,
            actor_id: rand(1..20)
        )
    end
        
    60.times do 
        Movie.create(
            title: Faker::Movie.title,
            genre: Faker::Book.genre
        )
    end


    80.times do
        Role.create(
            name: Faker::Name.name,
            gender: Faker::Gender.binary_type,
            lead: [true, false].sample,
            actor_id: rand(1..40),
            movie_id: rand(1..60)
        )
    end
                
                
                
                
puts "✅ Done seeding!"
                