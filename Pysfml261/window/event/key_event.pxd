from window.keyboard.keyboard cimport Key, Scancode


cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":
	
	cdef struct KeyEvent:

		Key code
		Scancode scancode
		bint alt
		bint control
		bint shift
		bint system