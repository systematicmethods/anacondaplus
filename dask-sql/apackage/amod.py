
# import pymongo
from .subpackage import module


def modfunc(x):
    print('Hello World')
    print(f'Hello from apackage {x}')
    module.submodfunc(x)
    return x + 1


def main():
    modfunc(1)

