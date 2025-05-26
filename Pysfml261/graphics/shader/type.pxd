

cdef extern from "SFML/Graphics/Shader.hpp" namespace "sf::Shader":
	
	cdef enum Type:

		Vertex
		Geometry
		Fragment