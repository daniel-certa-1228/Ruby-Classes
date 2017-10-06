#when a file is required it's loaded into memory.  Require will intelligently look in memory ans see if it's there.
# load "./film.rb"  #load will refresh each time
# require_relative "film" #will always look in the same directory

require "./film"
require "./book"
require "./fantasy"

film1 = Film.new("Harry Potter 1: Sorcerer", "fantasy", 2001)
# film1.say_hello
# class methods and constants use the '::'
Film::current_total_number_of_films
Film::COUNTRY

puts "Class Constant #{Film::COUNTRY}"

puts "Film 1 name: #{film1.film_name}"

film1.film_name = "Rocky"
film1.film_genre = "Sports"
film1.film_year_released = 1990

puts "FILM 1 AFTER ACCR METHODS: #{film1.film_name}, #{film1.film_genre}, year: #{film1.film_year_released}"

# film1.current_total_number_of_films

film2 = Film.new("Harry Potter 2: Chamber", "fantasy", 2003)
# film2.say_hello
Film::current_total_number_of_films


book1 = Book.new
book1.give_me_global_var #accessing the global variable

fantasy1 = Fantasy.new("Tron", "SciFi", 1982)
fantasy1.epic_music
fantasy1.output_film_properties













