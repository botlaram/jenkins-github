import pytest
from main import add, subtract, multiply, divide

def test_add():
    assert add(3, 2) == 5
    assert add(-1, 1) == 0

def test_subtract():
    assert subtract(3, 2) == 1
    assert subtract(2, 3) == -1

def test_multiply():
    assert multiply(3, 2) == 6
    assert multiply(0, 5) == 0

def test_divide():
    assert divide(6, 2) == 3
    with pytest.raises(ValueError):
        divide(5, 0)
