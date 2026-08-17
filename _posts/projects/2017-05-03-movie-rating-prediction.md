---
# basic info
layout: post
title: Movie Rating Prediction
date: 2017-05-03 -0600
# page info
site: portfolio
type: Project
categories: [Machine Learning]
tags: [Python, Bernoulli Naive Bayes Classifier, One Hot Encoding]
# project info
role: Developer
report: https://github.com/lightmonster/Movie-Rating-Prediction/blob/master/report.pdf
source_code: https://github.com/lightmonster/Movie-Rating-Prediction
# content info
excerpt: An Application of Bernoulli Naive Bayes Classifier for High-Dimensional Dataset Prediction
---

This project is an application of Bernoulli Naive Bayes Classifier for High-dimensional Dataset Prediction.

This algorithm aims to use existing data as training data to train the Naive Bayes Classifier and predict unknown data. The training data includes `train.txt`, `user.txt`, `movie.txt` and `test.txt`. `user.txt` contains users’ attributes such as age, gender, occupation. `movie.txt` contains movies’ attributes including year and genres (one movie can have multiple genres). All attributes may have `N/A` type, which means that data is unknown or missing. `train.txt` is training data for the classifier. It contains two IDs of users and movies for identification and a rating from a specific user to a certain movie, i.e., namely, user id, movie id, and rating. `test.txt` is the data from predicting and it only consists of user id and movie id.

This algorithm will first integrate all the data into a DataFrame with matching attributes from `user.txt` and `movie.txt` to the `train.txt` and `test.txt`. Then preprocess the data by applying the One-Hot-Encoding method to convert categorical data into binary data. Finally, we use the processed data to train the Bernoulli Naive Bayes classifier, build a training model and predict the rating for the test data.
