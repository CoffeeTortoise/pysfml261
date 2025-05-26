from audio.sound_source.sound_source cimport SoundSource
from audio.sound_source.status cimport Status


cdef extern from "SFML/Audio/SoundStream.hpp" namespace "sf":
	
	cdef cppclass SoundStream(SoundSource):

		void play()

		void pause()

		void stop()

		Status getStatus() const

		void setLoop(bint loop)

		bint getLoop() const