from libcpp.string cimport string

from graphics.shader.type cimport Type

from system.non_copyable.non_copyable cimport NonCopyable

from window.gl_resource.gl_resource cimport GlResource


cdef extern from "SFML/Graphics/Shader.hpp" namespace "sf":
	
	cdef cppclass Shader(GlResource, NonCopyable):

		Shader()

		bint loadFromFile(const string& filename, Type type)

		void setUniform(const string& name, float x)

		@staticmethod
		bint isAvailable()