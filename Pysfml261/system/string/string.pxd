from libcpp.string cimport string


cdef extern from "SFML/System/String.hpp" namespace "sf":

	cdef cppclass String:

		String()

		String(const char* ansiString)

		void clear()

		bint isEmpty() const

		string toAnsiString() const