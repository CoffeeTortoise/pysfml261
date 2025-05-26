

cdef extern from "SFML/System/Time.hpp" namespace "sf":
	
	cdef cppclass Time:

		Time()

		float asSeconds() const

		int asMilliseconds() const

		long asMicroseconds() const


cdef extern from "SFML/System/Time.hpp" namespace "sf::Time":
	
	const Time Zero