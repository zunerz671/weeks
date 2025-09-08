# Short Mini-Exercise
# Goal:
# Choose a small, free public API, fetch data, and display a piece of that data in the console.
# Possible APIs:
# JSONPlaceholder (test posts, users, etc.):
# https://jsonplaceholder.typicode.com/posts
# https://jsonplaceholder.typicode.com/users
# PokeAPI (Pokémon data):
# https://pokeapi.co/api/v2/pokemon/1
# Rick and Morty API:
# https://rickandmortyapi.com/api/character/1
# Or any other small, public API.


require 'net/http'
require 'json'

url = URI("https://rickandmortyapi.com/api/character/1")
response = Net::HTTP.get(url)

data = JSON.parse(response)

# pp data

# puts "Status: #{data['status']}"
# puts "Location: #{data['location']}"

i = 0 

data['episode'].each_with_index do |item, index|
  
  if index % 2 == 0
    puts "episode #{i + 1}: #{item}"
    # puts "#{item}"  
  end
  
  i += 1
end

# p data['episode'][0]