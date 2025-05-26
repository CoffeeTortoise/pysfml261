from libcpp.string cimport string

from window.gl_resource.gl_resource cimport GlResource


cdef extern from "SFML/Graphics/Texture.hpp" namespace "sf":
	
	cdef cppclass Vector2u:

		unsigned int x
		unsigned int y


cdef extern from "SFML/Graphics/Texture.hpp" namespace "sf":
	
	cdef cppclass Texture(GlResource):

		Texture()

		bint loadFromFile(const string& filename)

		Vector2u getSize() const

		void setSmooth(bint smooth)

		bint isSmooth() const

		void setSrgb(bint sRgb)

		bint isSrgb() const