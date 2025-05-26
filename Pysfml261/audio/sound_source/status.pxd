

cdef extern from "SFML/Audio/SoundSource.hpp" namespace "sf::SoundSource":
	
	cdef enum Status:

		Stopped
		Paused
		Playing