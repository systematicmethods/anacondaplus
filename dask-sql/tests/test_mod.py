# from apackage.subpackage import submodfunc
from apackage import modfunc


def func1(x):
    return x + 1


def test_answer():
    assert func1(3) == 4


def test_answer2():
    assert modfunc(3) == 4


