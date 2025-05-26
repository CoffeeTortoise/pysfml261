

cdef extern from "SFML/Graphics/View.hpp" namespace "sf":
	
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


	cdef cppclass View:

		View()

		void setCenter(float x, float y)

		void setSize(float width, float height)

		void setRotation(float degrees)

		const Vector2f& getCenter() const

		const Vector2f& getSize() const

		float getRotation() const

		const FloatRect& getViewport() const

		void move(float offsetX, float offsetY)

		void rotate(float degrees)

		void zoom(float factor)