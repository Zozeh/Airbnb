# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

30.times do 
	Citie.create!(city_name: Faker::Nation.capital_city)

end

i=0
20.times do 
	i+=1
	Dog.create!(dog_name: Faker::Dota.player, citie_id: i)
	if(i==17)
		i=5
	
	end

end

i=0
20.times do 
	i+=1
	Dogsitter.create!(sitter_name: Faker::Dota.hero, citie_id: i)
	if(i==10)
		i=2
	end

end


prng = Random.new
20.times do 
	
	Stroll.create!(event_name: Faker::Dota.team, dog_id: prng.rand(1..20), dogsitter_id: prng.rand(1..20))

end
