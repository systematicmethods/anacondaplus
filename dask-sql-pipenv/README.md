
# Build and Run on a PC or Mac
Requires Python

Install poetry
```python
pip install poetry
poetry install
```
Then
```python
poetry shell
poetry run pytest
```
# Run main
```python
python main.py
```

# Docker
## Build Local
./build.sh
## Run Local
docker run -it --rm smr/dask-sql:0.3.9 

# PyCharm - I used Professional
## Setup
apackage = source

tests = test source
install poetry plugin


settings https://www.jetbrains.com/help/pycharm/pytest.html#enable-pytest

## Tests
right click on tests -> Run Python tests
## Run
right click on main.py -> Run main.py

# Docker Tests

```shell
docker run -it --rm smr/dask-sql_env:0.3.9
Hello World
Hello from apackage 1
Hello from subpackage 1
AModClass anyAModClass
SubModuleClass anyAModClass_sub
SubModuleClass anySubModuleClass
```

```shell
ocker run -it --rm smr/dask-sql_env:0.3.9 pipenv run python main.py
Hello World
Hello from apackage 1
Hello from subpackage 1
AModClass anyAModClass
SubModuleClass anyAModClass_sub
SubModuleClass anySubModuleClass
```

```shell
docker run -it --rm smr/dask-sql_env:0.3.9 python main.py
Traceback (most recent call last):
  File "main.py", line 2, in <module>
    import pymongo
ModuleNotFoundError: No module named 'pymongo'
```

```shell
docker run -it --rm smr/dask-sql_env:0.3.9 poetry run python main.py
docker: Error response from daemon: OCI runtime create failed: container_linux.go:367: starting container process caused: exec: "poetry": executable file not found in $PATH: unknown.
```