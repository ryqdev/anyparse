refresh: clean build install

build:
	python -m build

install:
	pip install .

release:
	python -m twine upload dist/*

release_verbose:
	python -m twine upload dist/* --verbose

test:
	python -m unittest

clean:
	rm -rf __pycache__
	rm -rf tests/__pycache__
	rm -rf src/objprint/__pycache__
	rm -rf build
	rm -rf dist