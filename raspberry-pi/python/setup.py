import os
import glob
from setuptools import setup
from distutils.core import Extension

setup(
    name = "RPI.icestick",
    version = "0.0.0",
    author = "John Emmons",
    author_email = "emmons.john@gmail.com",
    packages = ['RPI_icestick'],
    ext_modules = [Extension('RPI_ice40',
                             sources = glob.glob('RPI_icestick/module/*.c'),
                             libraries = ['wiringPi'])]
)
