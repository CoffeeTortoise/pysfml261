from window.mouse.button cimport Button


cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":
	
	cdef struct MouseButtonEvent:
		Button button
		int x
		int y