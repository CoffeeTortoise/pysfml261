from audio.al_resource.al_resource cimport AlResource


cdef extern from "SFML/Audio/SoundSource.hpp" namespace "sf":

	cdef cppclass Vector3f:

		float x
		float y
		float z

	
	cdef cppclass SoundSource(AlResource):

		void setVolume(float volume)

		void setPosition(float x, float y, float z)

		void setMinDistance(float distance)

		void setAttenuation(float attenuation)

		void setPitch(float pitch)

		float getPitch() const

		float getVolume() const

		Vector3f getPosition() const

		float getMinDistance() const

		float getAttenuation() const