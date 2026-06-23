import pytest

def suma(n1, n2):
    """Funcion que suma dos numeros"""
    return n1 + n2

def test_suma():
    assert suma(1,3) == 4
    assert suma(7,5) == 12
    assert suma(0,0) == 0

def test_suma_fail():
    assert suma(1,2) == 2

