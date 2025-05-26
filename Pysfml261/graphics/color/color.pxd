

cdef extern from "SFML/Graphics/Color.hpp" namespace "sf":

	cdef cppclass Color:

		Color()

		Color(unsigned int red, unsigned int green, unsigned int blue, unsigned int alpha)

		unsigned int r
		unsigned int g
		unsigned int b
		unsigned int a