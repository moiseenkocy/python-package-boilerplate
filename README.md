# Python Package Boilerplate

This project provides a template for quickly starting a Python package development.

## Overview

This template is designed to streamline the setup process for creating a Python package. It includes configurations for testing, linting, and distribution, enabling developers to focus on writing code rather than setting up project structures.

It uses:

* Python 3.12;
* `pytest` for testing;
* `ruff` for linting;
* `poetry` for package distribution.

## Running Tests Locally
If you want to run tests and linting locally, a Makefile is provided for this purpose. Run the `make` command, and the project will be built inside a Docker container, where tests and linting will be executed. Please ensure that [Docker Engine](https://docs.docker.com/engine/install/) is installed on your local machine.

## License

This project is licensed under the [Unlicense License](https://unlicense.org/). This means that all the code in this project is released into the public domain, and anyone can freely use, modify, distribute, and build upon it without any restrictions.
