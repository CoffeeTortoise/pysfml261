from graphics.color.color cimport Color
from graphics.texture.texture cimport Texture
from graphics.drawable.drawable cimport Drawable
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


	cdef cppclass Sprite(Drawable, Transformable):

		Sprite()

		void setTexture(const Texture& texture, bint resetRect)

		void setColor(const Color& color)

		const Texture* getTexture() const

		const Color& getColor() const

		FloatRect getLocalBounds() const

		FloatRect getGlobalBounds() const

		void setPosition(float x, float y)