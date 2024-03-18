PACKAGE_NAME := sample_package
DOCKER_IMAGE := sample_package
DOCKER_TAG := latest

.PHONY: all

all: build tests lint

build:
	@echo -----------
	@echo BUILD IMAGE
	@echo -----------
	@echo
	docker build -q -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

tests: build
	@echo ---------
	@echo RUN TESTS
	@echo ---------
	@echo
	docker run $(DOCKER_IMAGE):$(DOCKER_TAG) poetry run pytest -v --cov $(PACKAGE_NAME)

lint: build
	@echo ----------
	@echo RUN LINTER
	@echo ----------
	@echo
	docker run $(DOCKER_IMAGE):$(DOCKER_TAG) poetry run ruff check
