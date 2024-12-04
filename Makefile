install:
	poetry install --no-root

kaggle-download:
	kaggle competitions download -c titanic
	mkdir -p ./data/titanic
	unzip titanic.zip -d ./data/titanic
	rm titanic.zip
