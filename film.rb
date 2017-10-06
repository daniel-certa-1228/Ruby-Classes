# global variables are delineated with the $
# they are not recmmended

$warning = "Global variables are not recommended."

class Film
	#class variables are shared within the class
	@@total_number_of_films = 0

	def initialize(film_name, genre, year_released)
		#initializing arguments are initialized on creation
		#instance variables begin with the ampersand '@' and are scoped to the instance of the class
		@film_name = film_name 
		@film_genre = genre
		@film_year_released = year_released
		add_to_total_films
	end

	def say_hello
		# local variable can start with small letter or underscore
		_hello_string = "Hello"
		puts "#{_hello_string}, #{@film_name}. You are a #{@film_genre} film from the year #{@film_year_released}."
	end

	def current_total_number_of_films
		puts "Current total_number_of_films: #{@@total_number_of_films}"
	end

	def add_to_total_films
		@@total_number_of_films += 1
		# current_total_number_of_films
	end

end
