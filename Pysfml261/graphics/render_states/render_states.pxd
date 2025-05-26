from graphics.shader.shader cimport Shader


cdef extern from "SFML/Graphics/RenderStates.hpp" namespace "sf":
	
	cdef cppclass RenderStates:

		RenderStates()

		RenderStates(const Shader* theShader)


cdef extern from "SFML/Graphics/RenderStates.hpp" namespace "sf::RenderStates":
	
	const RenderStates Default