# 🌊 Kaggle Tutorial 🚢
> Welcome to the **Kaggle Titanic Tutorial**! This repository is designed as a starter guide for Kaggle competitions, created by **Świta Znachora** for WAVE 3 Workshops. 🚀

The Titanic Competition is a great way to start with Kaggle and machine learning. Your goal is to predict which passengers survived the Titanic tragedy based on various attributes such as age, class, and gender.

Helpful links:
- [How to Use Kaggle](https://www.kaggle.com/docs/api#getting-started-installation-&-authentication) - official guide
  how to use Kaggle via API.
- [Titanic Competition](https://www.kaggle.com/competitions/titanic/overview/evaluation)

### 📋 Prerequisites

**Kaggle Account**: Make sure you have a Kaggle account. Sign up [here](https://www.kaggle.com/account/login) if you don’t already have one.

**Kaggle API Token**: 
- Go to [Account Settings](https://www.kaggle.com/account).
- Scroll to "API" and click "Create New API Token."
- Save the `kaggle.json` file in the folder: `~/.kaggle/`.

**Install Poetry**:
Poetry is used to manage dependencies. Follow the installation instructions [here](https://python-poetry.org/docs/).

### ⭐ Repository Setup

**Star and Fork the Repository**:  
- Click the "Star" button at the top of this repository. 🌟  
- Click the "Fork" button to create your own copy of the repository.  

**Clone Your Fork**:
 Once you've forked the repository, clone it to your local machine:
 ```shell
 git clone https://github.com/knsiczarnamagia/kaggle-tutorial.git
````
Install dependencies
```shell
make install 
```
### 🚀 Using the Repository
Download the Titanic Dataset
Run the following command to download and prepare the dataset:
```shell
make kaggle-download
```
Submit Your Solution
Once you've prepared your solution (e.g., edited gender_submission.csv), you can submit it to Kaggle:
```shell
make kaggle-submit
```