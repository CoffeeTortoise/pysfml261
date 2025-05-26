from window.gl_resource.gl_resource cimport GlResource
from window.window_base.window_base cimport WindowBase
from window.video_mode.video_mode cimport VideoMode

from system.string.string cimport String


cdef extern from "SFML/Window/Window.hpp" namespace "sf":
	
	cdef cppclass Window(WindowBase, GlResource):

		Window()

		Window(VideoMode mode, const String& title, unsigned int style)

		void close()

		void setVerticalSyncEnabled(bint enabled)

		void setFramerateLimit(unsigned int limit)

		void display()