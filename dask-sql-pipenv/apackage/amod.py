# import pymongo
from .amodclass import AModClass
from .subpackage import module
from .subpackage.submoduleclass import SubModuleClass


def modfunc(x):
    print('Hello World')
    print(f'Hello from apackage {x}')
    module.submodfunc(x)
    a_mod_class = AModClass("anyAModClass")
    a_mod_class.get_url()
    a_mod_class.get_submod_url()
    a_sub_mod_class = SubModuleClass("anySubModuleClass")
    a_sub_mod_class.get_url()
    return x + 1


def main():
    modfunc(1)

