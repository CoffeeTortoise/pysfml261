from window.mouse.window_base cimport WindowBase
from window.mouse.button cimport Button
from window.mouse.wheel cimport Wheel


cdef extern from "SFML/Window/Mouse.hpp" namespace "sf":
	
	cdef cppclass Vector2i:

		int x
		int y


cdef extern from "SFML/Window/Mouse.hpp" namespace "sf::Mouse":
	
	bint isButtonPressed(Button button)

	Vector2i getPosition()

	Vector2i getPosition(const WindowBase& relativeTo)

	void setPosition(const Vector2i& position)

	void setPosition(const Vector2i& position, const WindowBase& relativeTo)