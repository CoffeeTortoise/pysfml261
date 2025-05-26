from audio.sound_source.sound_source cimport SoundSource
from audio.sound_source.status cimport Status
from audio.sound_buffer.sound_buffer cimport SoundBuffer


cdef extern from "SFML/Audio/Sound.hpp" namespace "sf":
	
	cdef cppclass Sound(SoundSource):

		Sound(const SoundBuffer& buffer)

		void play()

		void pause()

		void stop()

		void setBuffer(const SoundBuffer& buffer)

		void setLoop(bint loop)

		bint getLoop() const

		Status getStatus() const

		void resetBuffer()