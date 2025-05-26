from system.non_copyable.non_copyable cimport NonCopyable

from graphics.color.color cimport Color
from graphics.drawable.drawable cimport Drawable
from graphics.render_states.render_states cimport RenderStates
from graphics.view.view cimport View


cdef extern from "SFML/Graphics/RenderTarget.hpp" namespace "sf":

	cdef cppclass Vector2f:

		float x
		float y


	cdef cppclass Vector2i:

		int x
		int y

	
	cdef cppclass RenderTarget(NonCopyable):

		void setView(const View& view)

		const View& getView() const

		void clear(const Color& color)

		void draw(const Drawable& drawable, const RenderStates& states)

		Vector2i mapCoordsToPixel(const Vector2f& point) const

		Vector2f mapPixelToCoords(const Vector2i& point) const