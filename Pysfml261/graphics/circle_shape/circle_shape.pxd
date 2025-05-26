from graphics.shape.shape cimport Shape


cdef extern from "SFML/Graphics/Sprite.hpp" namespace "sf":

	cdef cppclass Vector2f:

		float x
		float y


cdef extern from "SFML/Graphics/CircleShape.hpp" namespace "sf":
	
	cdef cppclass CircleShape(Shape):

		void setRadius(float radius)

		float getRadius() const