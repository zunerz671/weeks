# Exercise:
# Instructions:
# Define a class of your choice
# Create one method that isn't private, that calls the private methods you will be creating.
# Use the 'private' method to make 2-3 private methods
# Instantiate an object of your class and test it

# class Profile
#   def person(name)
#     puts "Name: #{name}"
#   end

#   def full_profile
#     ssn
#     address
#     date_of_birth
#     return "This is the full profile."
#   end

#   private

#   def ssn
#     puts "SSN: 111-22-3333"
#   end

#   def address
#     puts "Address: 123 Yigo, Guam"
#   end

#   def date_of_birth
#     puts "DOB: mm-dd-yyyy"
#   end
# end

# person1 = Profile.new

# person1.person("Junior")
# person1.full_profile

# -------------

# Exercise: MusicPlayer — Abstraction
#  Create a MusicPlayer class with a single public method play(track) that triggers several hidden steps. Suggested private methods: open_file(track), decode(track), start_stream, and log_play(track). The public method should print a short workflow and a final “Now playing…” message.

# class MusicPlayer
#   def play(track)
#     open_file(track)
#     decode(track)
#     start_stream
#     log_play(track)
#   end

#   private

#   def open_file(track)
#     puts "Would you like to open #{track}? (y or n)"
#     answer = gets.chomp.downcase
#     if answer == 'y'
#       puts "Opening #{track}..."
#     end
#   end

#   def decode(track)
#     puts "Decoding #{track}..."
#   end

#   def start_stream
#     puts "Starting stream..."
#   end

#   def log_play(track)
#     puts "Now playing #{track}..."
#   end
# end

# newtrack1 = MusicPlayer.new

# newtrack1.play("Enter Sandman")

# ------

# Exercise: Movie Watchlist CLI — Abstraction + Encapsulation + File I/O
# Goal:
# - Build a CLI to manage a list of movies in a JSON "database".
# - Keep file I/O and ID generation hidden behind private methods.
# - The CLI should ONLY use the class's public methods.

# require 'json'

# class MovieWatchlist
#   def initialize(file_name = "watchlist.json")
#     @file_name = file_name
#     @movies = []     # structure: [{ id: 1, title: "Inception", watched: false }, ...]
#     load_database    # TODO: implement this as a private method
#   end

#   # ---------------- Public API (abstraction) ----------------

#   # Add a new movie by title.
#   def add_movie(title)
#     movie
#     # TODO:
#     # - Build a new movie hash: { id: next_id, title: title, watched: false }
#     # - Append it to @movies
#     # - Print a confirmation message
#     # - Save to disk by calling a private save_database
#   end

#   # Remove a movie by its numeric ID.
#   def remove_movie_by_id(id)
#     # TODO:
#     # - Find the movie with matching :id
#     # - Remove it from @movies (if found) and print a message
#     # - If not found, print "Movie not found."
#     # - Save changes to disk
#   end

#   # Mark a movie as watched by its ID.
#   def mark_watched(id)
#     # TODO:
#     # - Find the movie
#     # - Set its :watched to true (or toggle if you want)
#     # - Print a message
#     # - Save changes to disk
#   end

#   # List all movies with their status.
#   def list_movies
#     # TODO:
#     # - If empty, print "No movies yet."
#     # - Otherwise print lines like: "1. #3 - Inception [watched: false]"
#   end

#   # ---------------- Private helpers (encapsulation) ----------------
#   private

#   # Load existing movies from JSON if it exists.
#   def load_database
#     # TODO:
#     if File.exist?(@file_name):
#     #     - Read the file and JSON.parse with symbolize_names: true
#     #     - Assign to @movies
#     #     - Print "Movies loaded."
#     else:
#     #     - Leave @movies as []
#     #     - Print "No database found. Starting fresh."
#     # - Add basic error handling with begin/rescue to avoid crashing on bad JSON
#   end

#   # Save current @movies to the JSON file (pretty-printed).
#   def save_database
#     # TODO:
#     # - Open @file_name in write mode
#     # - Write JSON.pretty_generate(@movies)
#     # - Print "Saved."
#     # - Add basic error handling with begin/rescue
#   end

#   # Return the next integer ID (1 if no movies yet).
#   def next_id
#     # TODO:
#     # - If @movies is empty, return 1
#     # - Else return max existing :id + 1
#     #   (hint: @movies.map { |m| m[:id] }.max)
#   end
# end

# # ---------------- CLI (uses only the public API) ----------------
# watchlist = MovieWatchlist.new

# loop do
#   puts "\nMovie Watchlist Menu:"
#   puts "1. Add movie"
#   puts "2. Remove movie by ID"
#   puts "3. Mark movie as watched"
#   puts "4. View movies"
#   puts "5. Exit"
#   print "Enter your choice: "
#   choice = gets.to_i

#   case choice
#   when 1
#     print "Movie title: "
#     title = gets.chomp
#     watchlist.add_movie(title)
#   when 2
#     print "ID to remove: "
#     id = gets.to_i
#     watchlist.remove_movie_by_id(id)
#   when 3
#     print "ID to mark watched: "
#     id = gets.to_i
#     watchlist.mark_watched(id)
#   when 4
#     puts "\nYour Movies:"
#     watchlist.list_movies
#   when 5
#     puts "Goodbye!"
#     break
#   else
#     puts "Invalid choice."
#   end
# end

# require 'json'
# class MovieWatchlist
#   def initialize(file_name = "watchlist.json")
#     @file_name = file_name
#     @movies = []
#     load_database
#   end
#   # Add a new movie by title
#   def add_movie(title)
#     # Build a new movie hash:
#     movie = {id: next_id, title: title, watched: false}
#     # - Append it to @movies
#     @movies << movie
#     # - Print a confirmation message
#     print "Added movie: #{title} (ID: #{movie[:id]})"
#     # - Save to disk by calling a private save_database
#     save_database
#   end
#    # Remove a movie by its numeric ID.
#   def remove_movie_by_id(id)
#     # TODO:
#     # - Find the movie with matching :id
#     movie = @movies.find{|m| m[:id] == id}
#     # - Remove it from @movies (if found) and print a message
#     if movie
#       @movies.delete(movie)
#       print "Removed movie: #{movie[:title]}"
#     else
#       puts "Movie not found"
#     end
#     # - Save changes to disk
#     save_database
#   end
#   # Mark a movie as watched by its ID.
#   def mark_watched(id)
#     # TODO:
#     # - Find the movie
#     movie = @movies.find{|m| m[:id] == id}
#     # - Set its :watched to true (or toggle if you want)
#     movie[:watched] = true
#     # - Print a message
#     print "Marked as watched #{movie[:title]}"
#     # - Save changes to disk
#     save_database
#   end
#   # List all movies with their status.
#   def list_movies
#     # TODO:
#     # - If empty, print "No movies yet."
#     if @movies.empty?
#       puts "No movies added"
#     else
#       @movies.each_with_index do |movie, i|
#         puts "#{i + 1}. #{movie[:id]} - #{movie[:title]} [watched: #{movie[:watched]}]"
#       end
#     end
#     # - Otherwise print lines like: "1. #3 - Inception [watched: false]"
#   end
#   # ---------------- Private helpers (encapsulation) ----------------
#   private
#   # Load existing movies from JSON if it exists.
#   def load_database
#     # TODO:
#      if File.exist?(@file_name)
#       begin
#         file = File.open(@file_name, "r")
#         @movies = JSON.parse(file.read, symbolize_names: true)
#         puts "Movies loaded..."
#       rescue
#         puts "Error no file"
#       ensure
#         file.close if file
#       end
#     else
#       puts "No file exists, but we are going to continue."
#       @movies = []
#     end
#   end
#   # Save current @movies to the JSON file (pretty-printed).
#   def save_database
#     # TODO:
#     # - Open @file_name in write mode
#     begin
#       file = File.open(@file_name, "w")
#       file.write(JSON.pretty_generate(@movies))
#       puts "Data saved into @movies"
#     rescue => e
#       puts "Error occured: #{e}"
#     ensure
#       file.close if file
#     end
#   end
#   # Return the next integer ID (1 if no movies yet).
#   def next_id
#     something = @movies.length + 1
#     # TODO:
#     # - If @movies is empty, return 1
#     # - Else return max existing :id + 1
#     #   (hint: @movies.map { |m| m[:id] }.max)
#   end
# end
# watchlist = MovieWatchlist.new
# loop do
#   puts "\nMovie Watchlist Menu:"
#   puts "1. Add movie"
#   puts "2. Remove movie by ID"
#   puts "3. Mark movie as watched"
#   puts "4. View movies"
#   puts "5. Exit"
#   print "Enter your choice: "
#   choice = gets.to_i
#   case choice
#   when 1
#     print "Movie title: "
#     title = gets.chomp
#     watchlist.add_movie(title)
#   when 2
#     print "ID to remove: "
#     id = gets.to_i
#     watchlist.remove_movie_by_id(id)
#   when 3
#     print "ID to mark watched: "
#     id = gets.to_i
#     watchlist.mark_watched(id)
#   when 4
#     puts "\nYour Movies:"
#     watchlist.list_movies
#   when 5
#     puts "Goodbye!"
#     break
#   else
#     puts "Invalid choice."
#   end
# end (edited) 