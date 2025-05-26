from system.time.time cimport Time


cdef extern from "SFML/System/Clock.hpp" namespace "sf":
	
	cdef cppclass Clock:

		Clock()

		Time getElapsedTime() const

		Time restart() const