
poetry add $(cat requirements-app.txt)
poetry add --dev $(cat requirements-dev.txt)

poetry export -f requirements.txt --output requirements.txt
