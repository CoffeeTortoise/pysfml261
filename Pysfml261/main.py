from pysfml261 import sfRenderWindow, sfEvent, sfColor, sfVideoMode, sfImage, sfTexture, sfSprite
from pysfml261 import TransformSfSprite, sfRenderStates, sfShader, sfKeyboard, sfMouse
from pysfml261 import sfFont, sfString, sfText, sfRectangleShape, sfCircleShape, sfClock
from pysfml261 import sfSoundBuffer, sfSound, sfMusic
from pysfml261_constants import sfEventType, sfScancode, sfKey, sfMouseButton, sfWindowStyle, sfShaderType, sfTextStyle


def main():

	width, height = 800, 800
	title = 'Hello SFML'
	fps = 30
	wnd = sfRenderWindow(width, height, title=title, style=sfWindowStyle.Default)
	wnd.set_framerate_limit(fps)
	img_path = 'aqua1.png'
	icon_image = sfImage(img_path)
	wnd.set_icon(icon=icon_image)
	wnd.set_position(100, 100)
	print(f'Window pos: {wnd.get_position()}')

	color = sfColor(0, 191, 255)
	w, h, _ = sfVideoMode.get_desktop_mode()
	print(f'Resolution:{w}x{h}')

	text_image_path = 'aqua5.png'
	texture = sfTexture(text_image_path)
	width = 400
	left, top = 50, 50
	aqua = sfSprite(texture, width, left=left, top=top, keep_w=True)
	aqua_speed = 5

	rect_w, rect_h = 300, 100
	rect_left, rect_top = 500, 100
	rect_clr = sfColor(153, 50, 204)
	rect_shape = sfRectangleShape(rect_clr, rect_w, rect_h, rect_left, rect_top)
	# rect_pos = rect_shape.get_position()
	rect_shape.set_size(200, 400)
	rect_shape.set_alpha(128)
	# rect_size = rect_shape.get_size()
	# print(f'{rect_pos=}\n{rect_size=}')
	# r_clr = rect_shape.get_fill_color()
	# print(f'{r_clr.r=}\n{r_clr.g=}\n{r_clr.b=}\n{r_clr.a=}')

	c_r = 50
	c_left, c_top = 650, 600
	c_clr = sfColor(62, 180, 137)
	circle_shape = sfCircleShape(c_clr, c_r, c_left, c_top)

	# shader_path = 'green.hlsl'
	# shader = sfShader(shader_path, sfShaderType.Fragment)
	# render_state = sfRenderStates(shader)

	# x, y = 54, 91
	# pixel_coords = wnd.map_coords_to_pixel(x, y)
	# coords = wnd.map_pixel_to_coords(x, y)
	# print(f'{pixel_coords=}\n{coords=}')

	text = 'LOL! Somehow it works!'
	fnt_path = 'Molodo-font.otf'
	fnt_clr = sfColor(0, 255, 255)
	fnt = sfFont(fnt_path)
	sf_txt = sfString.from_pystring(text)
	f_size = 40
	t_x, t_y = 60, 750
	sf_text = sfText(fnt)
	sf_text.set_string(sf_txt)
	sf_text.set_character_size(f_size)
	sf_text.set_position(t_x, t_y)
	sf_text.set_style(sfTextStyle.Bold)
	sf_text.set_fill_color(fnt_clr)
	# out_str = sf_text.as_pystring()
	# print(f'{out_str=}')

	sound_path = 'laserShoot.ogg'
	sound_buffer = sfSoundBuffer(sound_path)
	sound = sfSound(sound_buffer)

	music_path = 'Forest1.ogg'
	music = sfMusic(music_path)
	music.set_loop(True)
	music.play()

	clock = sfClock()
	fps_lst = list()

	event = sfEvent()
	running = wnd.is_open()
	while running:

		while wnd.poll_event(event):
			evt = event.get_type()
			if evt == sfEventType.Closed:
				running = False
				break
			elif evt == sfEventType.KeyPressed:
				key = event.get_key_code()
				if key == sfKey.F:
					TransformSfSprite.flip(aqua, flipX=True, local=False)
				elif key == sfKey.G:
					TransformSfSprite.flip(aqua, flipY=True, local=False)
				elif key == sfKey.Z:
					TransformSfSprite.set_rotation_around_center(aqua, local=False)
				elif key == sfKey.X:
					TransformSfSprite.rotate_around_center(aqua, degrees=18, local=False)
				else:
					sound.play()
			elif evt == sfEventType.MouseButtonPressed:
				btn = event.get_mouse_button()
				if btn == sfMouseButton.Left:
					print('Left button pressed')
				elif btn == sfMouseButton.Right:
					print('Right button pressed')
				else:
					print('Unknown button')

		if sfKeyboard.is_key_pressed(sfKey.W):
			aqua.move(dy=-aqua_speed)
		if sfKeyboard.is_key_pressed(sfKey.A):
			aqua.move(dx=-aqua_speed)
		if sfKeyboard.is_key_pressed(sfKey.S):
			aqua.move(dy=aqua_speed)
		if sfKeyboard.is_key_pressed(sfKey.D):
			aqua.move(dx=aqua_speed)

		# m_pos = sfMouse.get_position()
		# print(f'Mouse pos: {m_pos=}')
		# rel_pos = sfMouse.relative_pos(wnd)
		# print(f'Relative pos: {rel_pos=}')

		wnd.clear(color)
		wnd.draw_sprite(aqua)
		wnd.draw_text(sf_text)
		wnd.draw_rect_shape(rect_shape)
		wnd.draw_circle_shape(circle_shape)
		# wnd.draw_sprite_use_state(aqua, render_state)
		wnd.display()

		secs = clock.restart_asseconds()
		fps = 1 / secs
		fps_lst.append(fps)

	avg_fps = sum(fps_lst) / len(fps_lst)
	print(f'{avg_fps=}')
	wnd.close()


if __name__ == '__main__':
	main()