.PHONY: refresh
refresh: clean build install

.PHONY: build
build:
	python -m build

.PHONY: install
install:
	pip install .

.PHONY: release
release:
	python -m twine upload dist/*

.PHONY: release_verbose
release_verbose:
	python -m twine upload dist/* --verbose

.PHONY: test
test:
	python -m unittest

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf tests/__pycache__
	rm -rf src/anyparse/__pycache__
	rm -rf build
	rm -rf dist
