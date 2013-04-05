#/usr/bin/env python
import os
from setuptools import (
  setup,
  find_packages,
)
import avahi_aliases as app

def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

ROOT_DIR = os.path.dirname(__file__)
SOURCE_DIR = os.path.join(ROOT_DIR)

setup(
    name = "avahi-aliases",
    version = __import__('avahi_aliases').__version__,
    classifiers = (
        'Development Status :: 4 - Beta',
        'Environment :: Console',
        'Intended Audience :: Developers',
        'Intended Audience :: System Administrators',
        'License :: OSI Approved :: BSD License',
        'Operating System :: Linux :: Ubuntu',
        'Programming Language :: Python',
        'Topic :: System :: Networking',
    ),

    author='Zenobius Jiricek',
    author_email='airtonix@gmail.com',
    url='http://github.com/airtonix/avahi-aliases',

    description='''Simple python application that manages the announcement of multiple avahi aliases''',
    long_description = read('README'),
    install_requires = [
        'python-daemon',
    ],
    packages = find_packages(),
    scripts = [
        'avahi_aliases/bin/avahi-alias',
    ],
    data_files = [
        ('/etc/init/',              ['avahi_aliases/etc/init/avahi-aliases.conf'] ),
        ('/etc/avahi/',             ['avahi_aliases/etc/avahi/aliases']),
        ('/etc/avahi/aliases.d/',   ['avahi_aliases/etc/avahi/aliases.d/default']),
    ],
    zip_safe = False,
)
