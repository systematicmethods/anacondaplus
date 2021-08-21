
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

settings https://www.jetbrains.com/help/pycharm/pytest.html#enable-pytest

## Tests
right click on tests -> Run Python tests
## Run
right click on main.py -> Run main.py
