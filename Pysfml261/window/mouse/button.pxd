cdef extern from "SFML/Window/Mouse.hpp" namespace "sf::Mouse":

	cdef enum Button:
		Left,
		Right,
		Middle,
		XButton1,
		XButton2,
		ButtonCount