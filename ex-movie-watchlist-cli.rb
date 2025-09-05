# Exercise: Movie Watchlist CLI — Abstraction + Encapsulation + File I/O
# Goal:
# - Build a CLI to manage a list of movies in a JSON "database".
# - Keep file I/O and ID generation hidden behind private methods.
# - The CLI should ONLY use the class's public methods. 


require 'json'

class MovieWatchlist
  def initialize(file_name = "watchlist.json")
    @file_name = file_name
    @movies = []
    
    load_database
  end

  def add_movie(title)
    puts 
  end
end

watchlist = MovieWatchlist.new

loop do
  puts "/Movie Watchlist Menu:"
  puts "1. Add movie"
  puts "2. Remove movie by ID"
  puts "3. Mark movie as watched"
  puts "4. View movies"
  puts "5. Enter your choice: "

  choice = gets.chomp.to_i

when 1
  print "Movie title: "
  title = gets.chomp
  watchlist.add_movie(title)
end