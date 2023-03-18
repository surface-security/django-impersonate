lint:
	black .
	ruff --fix

build:
	pip install .