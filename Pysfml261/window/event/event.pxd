from window.event.event_type cimport EventType
from window.event.key_event cimport KeyEvent
from window.event.size_event cimport SizeEvent
from window.event.text_event cimport TextEvent
from window.event.mouse_move_event cimport MouseMoveEvent
from window.event.mouse_button_event cimport MouseButtonEvent
from window.event.mouse_wheel_event cimport MouseWheelEvent
from window.event.mouse_wheel_scroll_event cimport MouseWheelScrollEvent


cdef extern from "SFML/Window/Event.hpp" namespace "sf":
	
	cdef cppclass Event:

		Event()
		
		EventType type
		KeyEvent key
		SizeEvent size
		TextEvent text
		MouseMoveEvent mouseMove
		MouseButtonEvent mouseButton
		MouseWheelEvent mouseWheel
		MouseWheelScrollEvent mouseWheelScroll
