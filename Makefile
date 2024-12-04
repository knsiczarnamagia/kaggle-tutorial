COMPETITION = "titanic"
FILE = "gender_submission.csv"
MESSAGE = "Submittion of Kaggle Titanic!"

ifeq ($(OS),Windows_NT)
    MKDIR := powershell -Command "if (!(Test-Path './data/$(COMPETITION)')) { New-Item -ItemType Directory -Path './data/$(COMPETITION)' }"
    RM := del /q
    UNZIP := powershell -Command "Expand-Archive -Path"
    DEST := -DestinationPath
else
    MKDIR := mkdir -p ./data/$(COMPETITION)
    RM := rm -f
    UNZIP := unzip
    DEST := -d
endif

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
	$(MKDIR)
	$(UNZIP) $(COMPETITION).zip $(DEST) ./data/$(COMPETITION)
	$(RM) $(COMPETITION).zip

kaggle-submit:
	kaggle competitions submit -c $(COMPETITION) -f ./data/$(COMPETITION)/$(FILE) -m $(MESSAGE)