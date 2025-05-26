from libcpp.string cimport string

from audio.sound_stream.sound_stream cimport SoundStream


cdef extern from "SFML/Audio/Music.hpp" namespace "sf":
	
	cdef cppclass Music(SoundStream):

		Music()

		bint openFromFile(const string& filename)