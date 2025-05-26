from system.non_copyable.non_copyable cimport NonCopyable
from system.string.string cimport String
from system.vector.vector2u cimport Vector2u

from window.event.event cimport Event


cdef extern from "SFML/Window/WindowBase.hpp" namespace "sf":

	cdef cppclass Vector2i:

		int x
		int y
		
	
	cdef cppclass WindowBase(NonCopyable):

		WindowBase()

		void close()

		bint isOpen() const

		bint pollEvent(Event& event)

		Vector2i getPosition() const

		void setPosition(const Vector2i& position)

		void setSize(const Vector2u& size)

		void setTitle(const String& title)

		void setVisible(bint visible)

		void setMouseCursorVisible(bint visible)

		void setMouseCursorGrabbed(bint grabbed)

		void setKeyRepeatEnabled(bint enabled)

		void requestFocus()

		bint hasFocus() const