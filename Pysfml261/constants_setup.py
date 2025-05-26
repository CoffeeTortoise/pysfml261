from setuptools import setup, Extension
from Cython.Build import cythonize
import os

from compile_args import MSVC


cwd = os.getcwd()

pysfml_constants = [
	Extension(
		'pysfml261_constants',
		sources=[
			os.path.join(cwd, 'sf_constants.pyx'),
		],
		language='c++',
		extra_compile_args=MSVC
		)
]

setup(
	ext_modules=cythonize(
		pysfml_constants
		)
	)