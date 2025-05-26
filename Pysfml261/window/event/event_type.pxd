cdef extern from "SFML/Window/Event.hpp" namespace "sf::Event":
	
	cdef enum EventType:

		Closed
		Resized
		LostFocus
		GainedFocus
		TextEntered
		KeyPressed
		KeyReleased
		MouseWheelMoved
		MouseWheelScrolled
		MouseButtonPressed
		MouseButtonReleased
		MouseMoved
		MouseEntered
		MouseLeft

		Count
