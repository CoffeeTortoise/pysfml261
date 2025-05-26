from graphics.drawable.drawable cimport Drawable
from graphics.color.color cimport Color
from graphics.transformable.transformable cimport Transformable


cdef extern from "SFML/Graphics/Sprite.hpp" namespace "sf":

	cdef cppclass Vector2f:

		float x
		float y


	cdef cppclass FloatRect:

		FloatRect()

		FloatRect(float rectLeft, float rectTop, float rectWidth, float rectHeight)

		bint contains(float x, float y) const

		bint contains(Vector2f& point) const

		bint intersects(FloatRect& rectangle) const

		Vector2f getPosition() const

		Vector2f getSize() const

		float left
		float top
		float width
		float height


cdef extern from "SFML/Graphics/Shape.hpp" namespace "sf":
	
	cdef cppclass Shape(Drawable, Transformable):

		void setFillColor(const Color& color)

		const Color& getFillColor() const

		void setPosition(float x, float y)

		FloatRect getGlobalBounds() const

		FloatRect getLocalBounds() const