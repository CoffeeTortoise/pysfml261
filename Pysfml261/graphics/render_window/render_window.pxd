from window.video_mode.video_mode cimport VideoMode
from window.style cimport Style
from window.window.window cimport Window

from system.string.string cimport String

from graphics.render_target.render_target cimport RenderTarget


cdef extern from "SFML/Graphics/RenderWindow.hpp" namespace "sf":
	
	cdef cppclass Vector2u:

		unsigned int x
		unsigned int y


cdef extern from "SFML/Graphics/RenderWindow.hpp" namespace "sf":
	
	cdef cppclass RenderWindow(Window, RenderTarget):
		
		RenderWindow()

		RenderWindow(VideoMode mode, const String& title, unsigned int style)

		void setIcon(unsigned int width, unsigned int height, const unsigned int* pixels)

		Vector2u getSize() const

		bint setActive(bint active)