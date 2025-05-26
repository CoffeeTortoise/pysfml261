from audio.al_resource.al_resource cimport AlResource
from libcpp.string cimport string


cdef extern from "SFML/Audio/SoundBuffer.hpp" namespace "sf":
	
	cdef cppclass SoundBuffer(AlResource):

		SoundBuffer()

		bint loadFromFile(const string& filename)