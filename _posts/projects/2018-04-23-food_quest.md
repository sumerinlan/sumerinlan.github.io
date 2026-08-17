---
# basic info
layout: post
title: Food Quest
date: 2018-04-23 -0600
# page info
site: portfolio
type: Project
categories: [Web Development]
tags: [HTML5, CSS, JavaScript, Bootstrap, Database Design]
# project info
role: Front-end Web Developer
demo: https://www.youtube.com/watch?v=mypaFLsoPyk
report: https://wiki.illinois.edu/wiki/display/cs411sp18/UpVersion+-+Final+Report
source_code: https://github.com/Ruiqian-Yao/cs411-project
# content info
excerpt: Website of Dish Recommendations
---

## Overview

Our project aims to assist users in making choices on where to eat out. Our project aggregates information about dishes from various restaurants and presents it in a user-friendly way. More specifically our application takes a keyword that a user has put in and recommends most relevant dishes and restaurants that are ranked by the weighted score function we designed based on the number of likes and number of times viewed by all the users. It has specific filters for the dishes that a user can choose conveniently. The website also allows a user to log in and have a personal log of what food and how many calories they eat on different days.

Our application is primarily focused on restaurants near Urbana-Champaign, which will provide detailed information for people who live on this regional scale. We have gathered the restaurant menu information and user’s rating system to provide a comprehensive application for browsing, selecting and personalizing user’s taste on various dishes.

## Details

### Database

We have three tables in the database, which are `Dish`, `Restaurant`, and `History` table. `Dish` table stores all the information about dish entries including name, restaurant, price, nutrition fact and so on. This relation plays an important role in the main functionality of our application, making it easier for users to explore meal options and being able to see aggregated dish information at various restaurants is crucial. The `Restaurant` relation stores information about restaurants including location, category, and so on. The `History` relation is used to keep track of user activities. All user comments and meal records are stored in this relation. We implemented various web crawlers to fetch real data from various restaurant websites and insert them into our database of the use of our application. There are hundreds of dishes currently in our database.

#### ER Diagram

![](/assets/posts/2018-04-23-food-quest/er-design.png)

#### Schema

    Dish (DIN, name, description, ingredient, category, calorie, price, img,
          score, num_like, RIN, restaurant_name)
    Restaurant (RIN, name, category, address, website, img, latitude, longitude)
    History (HIN, date, comment, DIN, user)

### Data Source

All of our data come from websites of restaurants in the Urbana-Champaign area. We wrote different scripts for every restaurant that contains a large number of dishes. For the scripts that we used to crawl data online, we used a python package called `BeautifulSoup`. We manually crawled and inserted data into the database as well. We have over 300 dishes in our database which composes a variety of choices for users.

### Functionality

-   The home page shows the top 51 dishes that are ranked by the weighted score function we designed based on the number of likes and number of times viewed by all the users.
-   A user can enter a specific keyword (i.e., steak) in the search bar and get all the relevant dishes in the order specified by our ranking function.
-   When a user clicks a specific dish, a detailed page will show up with a picture, a short description, price, calories, restaurant name, restaurant location (both in text and in google map), restaurant website, and top choices from that restaurant.
-   If a user is already in a detailed page of a dish, he/she can also take a detailed look at other top-choice dishes from the same restaurant by clicking the pictures on the right under “Top Choices.”
-   If a user is already in a detailed page of a dish, he/she can like and add the dish to history with a comment if he/she has eaten the dish that day.
-   There is a filter block on the right of the homepage. A user can quickly filter and get a specific category of dishes by clicking the options in the filter block.
-   A user can sign in and sign out with Google.
-   If a user has successfully signed in, he/she has a history page that contains what dishes he/she has added to history, and how many calories he/she has eaten on a specific day.
-   Only an administrator can delete a dish in the detailed dish page.

## Example of a User Flow

If a user has signed in, he/she has a personal history page.

![](/assets/posts/2018-04-23-food-quest/flow-1.png)

He/She can add a dish to history with a comment.

![](/assets/posts/2018-04-23-food-quest/flow-2.png)

Then, his/her history page will update.

![](/assets/posts/2018-04-23-food-quest/flow-3.png)
