class Fantasy < Film # class inheritance

	def epic_music
		puts "Flight of the Valkyrie"
		a_protected_method
	end
	# override method
	def output_film_properties
		puts "This is a fantasy film with the name #{film_name}"
	end

	def to_s
		"Fantasy class that inherits from class Film"
	end
end