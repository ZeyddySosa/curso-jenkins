import pytest

def multi(n1, n2):
    """Funcion que multiplica dos numeros"""
    return n1 * n2

def test_multi():
    assert multi(1,3) == 3
    assert multi(7,5) == 35
    assert multi(0,0) == 0

