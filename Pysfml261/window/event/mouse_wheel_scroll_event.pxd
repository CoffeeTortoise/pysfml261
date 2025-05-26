from window.mouse.wheel cimport Wheel


cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":
	
	cdef struct MouseWheelScrollEvent:
		Wheel wheel
		float delta
		int x
		int y