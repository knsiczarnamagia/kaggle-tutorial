install:
	poetry install --no-root

test:
	poetry run pytest ./tests -vv

update:
	poetry update

format:
	poetry run ruff format .
	poetry run ruff check . --fix

check:
	poetry run ruff format --check .

kaggle-download:
	kaggle competitions download -c titanic
	mkdir -p ./data/titanic
	unzip titanic.zip -d ./data/titanic
	rm titanic.zip
