from graphics.shape.shape cimport Shape


cdef extern from "SFML/Graphics/Sprite.hpp" namespace "sf":

	cdef cppclass Vector2f:

		float x
		float y


cdef extern from "SFML/Graphics/RectangleShape.hpp" namespace "sf":
	
	cdef cppclass RectangleShape(Shape):

		void setSize(const Vector2f& size)

		const Vector2f& getSize() const