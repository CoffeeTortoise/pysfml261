

cdef extern from "SFML/Graphics/Sprite.hpp" namespace "sf":

	cdef cppclass Vector2f:

		float x
		float y


cdef extern from "SFML/Graphics/Transformable.hpp" namespace "sf":
	
	cdef cppclass Transformable:

		Transformable()

		void setRotation(float angle)

		void setScale(float factorX, float factorY)

		const Vector2f& getPosition() const

		float getRotation() const

		const Vector2f& getScale() const

		void move(float offsetX, float offsetY)

		void rotate(float angle)