# Kaggle-Titanic-Machine-Learning-from-Disaster
Competition on Kaggle in which this code will predict the survival outcome of passengers on the titanic

## General Info
This project uses R for the Kaggle's Data Science competition, Titanic Machine Learning From Disaster. The goal of this repository is to provide an example of supervised learning and in particular writing a classification model in R and making predictions. This serves as a simple intro to the Kaggle prediction competitions. 

## Kaggle Competition | Titanic Machine Learning from Disaster

### Introduction
The sinking of the RMS Titanic is one of the most infamous shipwrecks in history. On April 15, 1912, during her maiden voyage, the Titanic sank after colliding with an iceberg, killing 1502 out of 2224 passengers and crew. This sensational tragedy shocked the international community and led to better safety regulations for ships.
One of the reasons that the shipwreck led to such loss of life was that there were not enough lifeboats for the passengers and crew. Although there was some element of luck involved in surviving the sinking, some groups of people were more likely to survive than others, such as women, children, and the upper-class.
In this contest, we ask you to complete the analysis of what sorts of people were likely to survive. In particular, we ask you to apply the tools of machine learning to predict which passengers survived the tragedy.
This Kaggle Getting Started Competition provides an ideal starting place for people who may not have a lot of experience in data science and machine learning."

### variable explanation
Variable	Definition	Key
survival	Survival	0 = No, 1 = Yes
pclass	Ticket class	1 = 1st, 2 = 2nd, 3 = 3rd
sex	Sex	
Age	Age in years	
sibsp	# of siblings / spouses aboard the Titanic	
parch	# of parents / children aboard the Titanic	
ticket	Ticket number	
fare	Passenger fare	
cabin	Cabin number	
embarked	Port of Embarkation	C = Cherbourg, Q = Queenstown, S = Southampton
Variable Notes

pclass: A proxy for socio-economic status (SES)
1st = Upper
2nd = Middle
3rd = Lower

age: Age is fractional if less than 1. If the age is estimated, is it in the form of xx.5

sibsp: The dataset defines family relations in this way...
Sibling = brother, sister, stepbrother, stepsister
Spouse = husband, wife (mistresses and fiancés were ignored)

parch: The dataset defines family relations in this way...
Parent = mother, father
Child = daughter, son, stepdaughter, stepson
Some children travelled only with a nanny, therefore parch=0 for them.

From the competition homepage.

## This R script will show basic examples of: 

### Data Handling
Importing Data in R
Cleaning Data
Exploring Data through Visualizations for Univariate & Bivariate 

### Data Analysis
Supervised Machine learning Techniques:
Random Forest Model building with train data
Evaluate the model with confusion table

### Valuation of the Analysis
Make predictions with test data

### Output the results to Kaggle

Competition Website: http://www.kaggle.com/c/titanic-gettingStarted
