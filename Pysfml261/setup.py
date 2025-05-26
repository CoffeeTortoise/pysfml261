from setuptools import setup, Extension
from Cython.Build import cythonize
import os

from paths_ import INCLUDE, LIBS
from compile_args import MSVC


cwd = os.getcwd()

pysfml = [
	Extension(
		'pysfml261',
		language='c++',
		include_dirs=INCLUDE,
		sources=[
			os.path.join(cwd, 'pysfml261.pyx'),
		],
		library_dirs=LIBS,
		libraries=['sfml-graphics', 'sfml-window', 'sfml-system', 'sfml-audio'],
		extra_compile_args=MSVC
		)
]

setup(
	ext_modules=cythonize(
		pysfml
		)
	)