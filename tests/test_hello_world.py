"""Tests for hello_world function."""

from sample_package import hello_world


def test_hello_world() -> None:
    """Test the hello_world function.

    This test verifies that hello_world() returns a string "Hello, World!".
    """
    result = hello_world()

    assert result == "Hello, World!"
