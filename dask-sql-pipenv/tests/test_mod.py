# from apackage.subpackage import submodfunc
from apackage import modfunc
from apackage import AModClass
from apackage.subpackage import SubModuleClass


def func1(x):
    return x + 1


def test_answer():
    assert func1(3) == 4


def test_answer2():
    assert modfunc(3) == 4


def test_classes():
    aclass = AModClass('http://some.com/where')
    assert aclass.get_url() == 'http://some.com/where'


def test_classes_sub():
    aclass = AModClass('http://some.com/where')
    assert aclass.get_submod_url() == 'http://some.com/where_sub'


def test_classesSubMod():
    aclass = SubModuleClass('http://some.com/where')
    assert aclass.get_url() == 'http://some.com/where'
