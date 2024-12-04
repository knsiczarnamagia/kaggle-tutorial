COMPETITION = "titanic"
FILE = "gender_submission.csv"
MESSAGE = "Submittion of Kaggle Titanic!"

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
	kaggle competitions download -c $(COMPETITION)
	mkdir -p ./data/titanic
	unzip temp.zip -d ./data/$(COMPETITION)
	rm temp.zip

kaggle-submit:
	kaggle competitions submit -c $(COMPETITION) -f ./data/$(COMPETITION)/$(FILE) -m $(MESSAGE)