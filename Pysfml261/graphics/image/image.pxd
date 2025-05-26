from libcpp.string cimport string


cdef extern from "SFML/Graphics/Image.hpp" namespace "sf":
	
	cdef cppclass Image:

		Image()

		bint loadFromFile(const string& filename)

		const unsigned int* getPixelsPtr() const