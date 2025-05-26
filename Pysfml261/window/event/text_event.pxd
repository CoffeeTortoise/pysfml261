cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":

	cdef struct TextEvent:
		unsigned int unicode
		