

cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":
	
	cdef struct MouseWheelEvent:
		int delta
		int x
		int y