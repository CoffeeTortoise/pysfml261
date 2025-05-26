

cdef extern from "SFML/Window/VideoMode.hpp" namespace "sf":
	
	cdef cppclass VideoMode:

		VideoMode()

		VideoMode(unsigned int modeWidth, unsigned int modeHeight, unsigned int modeBitsPerPixel)

		@staticmethod
		VideoMode getDesktopMode()
		
		bint isValid() const

		unsigned int width
		unsigned int height
		unsigned int bitsPerPixel