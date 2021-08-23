class SubModuleClass:

    def __init__(self, url):
        self.url = url

    def get_url(self) -> str:
        print(f'SubModuleClass {self.url}')
        return self.url
