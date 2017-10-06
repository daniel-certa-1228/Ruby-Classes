#when a file is required it's loaded into memory.  Require will intelligently look in memory ans see if it's there.
# load "./film.rb"  #load will refresh each time
# require_relative "film" #will always look in the same directory

require "./film"
require "./book"


film1 = Film.new("Harry Potter 1: Sorcerer", "fantasy", "2001")
film1.say_hello
film1.current_total_number_of_films

# film1.current_total_number_of_films

film2 = Film.new("Harry Potter 2: Chamber", "fantasy", "2003")
film2.say_hello
film2.current_total_number_of_films

# puts $warning

book1 = Book.new
book1.give_me_global_var #accessing the global variable
