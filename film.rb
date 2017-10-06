# global variables are delineated with the $
# they are not recmmended

$warning = "Global variables are not recommended."

class Film

	#class constant ALL CAPS
	COUNTRY = "U.S.A."

	#class variables are shared within the class
	@@total_number_of_films = 0

	# accessor methods need to be symbols
	# attr_reader 
	# attr_writer 
	attr_accessor :film_name, :film_genre, :film_year_released

	def initialize(film_name, genre, year_released)
		#initializing arguments are initialized on creation
		#instance variables begin with the ampersand '@' and are scoped to the instance of the class
		@film_name = film_name 
		@film_genre = genre
		@film_year_released = year_released
		add_to_total_films
	end

	#getter and setters
	#getter
	# def film_name
	# 	@film_name
	# end
	# #setter
	# def film_name=(name)
	# 	@film_name = name
	# end
	# #getter
	# def film_genre
	# 	@film_genre
	# end
	# #setter
	# def film_genre=(genre)
	# 	@film_genre = genre
	# end
	# #getter
	# def film_year_released
	# 	@film_year_released
	# end
	# #setter
	# def film_year_released=(year)
	# 	@film_year_released = year
	# end

	def say_hello
		# local variable can start with small letter or underscore
		_hello_string = "Hello"
		puts "#{_hello_string}, #{film_name}. You are a #{film_genre} film from the year #{film_year_released}."
	end
	#CLASS methods are prepended by self
	def Film.current_total_number_of_films
		puts "Current total_number_of_films: #{@@total_number_of_films}"
	end

	def add_to_total_films
		@@total_number_of_films += 1
		#class methods can be called from within the class with self.class
		self.class.current_total_number_of_films
	end

	def output_film_properties
		puts "Name: #{film_name}, Genre: #{film_genre}, Year #{film_year_released}"
	end

	### a protected method can be called by instance objects
	def a_protected_method
		puts "This is a protected method"
	end

	def to_s
		"Film Class with properties: film_name, film_genre, film_year_released"
	end

	private :say_hello
	public :add_to_total_films
	protected :a_protected_method

end
