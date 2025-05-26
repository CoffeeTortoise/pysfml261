cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":

		cdef struct SizeEvent:
			unsigned int width
			unsigned int height
		