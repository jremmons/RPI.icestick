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
    package_dir = {'RPI_icestick' : 'python'},
    ext_modules = [Extension('RPI_icestick_spi',
                             sources = glob.glob('python/ext_module/*.c'),
                             libraries = ['wiringPi'])]
)
