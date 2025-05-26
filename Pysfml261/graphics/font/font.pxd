from libcpp.string cimport string


cdef extern from "SFML/Graphics/Font.hpp" namespace "sf":
	
	cdef cppclass Font:

		Font()

		bint loadFromFile(const string& filename)

		void setSmooth(bint smooth)

		bint isSmooth() const