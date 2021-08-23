from .subpackage.submoduleclass import SubModuleClass


class AModClass:

    def __init__(self, url):
        self.sub_mod = SubModuleClass(f'{url}_sub')
        self.url = url

    def get_url(self) -> str:
        print(f'AModClass {self.url}')
        return self.url

    def get_submod_url(self) -> str:
        return self.sub_mod.get_url()
