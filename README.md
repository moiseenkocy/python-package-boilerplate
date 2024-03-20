# Python Package Boilerplate

This project provides a template for quickly starting a Python package development.

## Overview

This template is designed to streamline the setup process for creating a Python package. It includes configurations for testing, linting, and distribution, enabling developers to focus on writing code rather than setting up project structures.

It uses:

* `python 3.12`;
* `pytest` for testing;
* `ruff` for linting;
* `poetry` for package distribution.

## How to Start

To begin, you need to create the package skeleton. You can accomplish this by using the functionality provided by GitHub «Use this template» — «Create a new repository», or by creating an empty repository and copying the contents into it.

Once you've created the package skeleton, you will need to make changes in the following places:

* Update the `PACKAGE_NAME` and `DOCKER_IMAGE` variables in the `Makefile` to reflect your package's name and Docker image name respectively.
* Modify the `name`, `description`, and `authors` parameters in the `pyproject.toml` file to match your package details.
* Delete the implementation of the `hello_world` function in `sample_package/__init__.py` and its corresponding test.
* Rename the `sample_package` directory to the desired name for your package.
* In `.github/workflows/tests-and-linters.yaml`, replace `sample_package` with the name of the directory you've just renamed.

Once you've made these edits, you are ready to start developing your package. You can start by adding your own code, documentation, and tests to the package structure. Ensure that you follow best practices for Python packaging and documentation as you continue to build your project.

## Running Tests Locally

If you want to run tests and linting locally, a Makefile is provided for this purpose. Run the `make` command, and the project will be built inside a Docker container, where tests and linting will be executed. Please ensure that [Docker Engine](https://docs.docker.com/engine/install/) is installed on your local machine.

## License

This project is licensed under the [Unlicense License](https://unlicense.org/). This means that all the code in this project is released into the public domain, and anyone can freely use, modify, distribute, and build upon it without any restrictions.
