cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":

	cdef struct MouseMoveEvent:
		int x
		int y