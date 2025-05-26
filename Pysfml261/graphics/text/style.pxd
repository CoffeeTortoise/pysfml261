

cdef extern from "SFML/Graphics/Text.hpp" namespace "sf::Text":
	
	cdef enum Style:

		Regular	  
		Bold
		Italic 
		Underlined 
		StrikeThrough  