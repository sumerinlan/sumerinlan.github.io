---
# basic info
layout: post
title: UI Courses
date: 2017-07-18 -0600
# page info
site: portfolio
type: Project
categories: [Web Development]
tags: [HTML5, CSS, JavaScript, Database Design]
# project info
role: Front-end Web Developer
report: https://github.com/sumerinlan/uicourses_v2/wiki
source_code: https://github.com/sumerinlan/uicourses_v2
# content info
excerpt: A Wordpress-based Website for Courses Reviews in U of I
---

## Overview

The second version of the UI Courses is made from scratch-redesigning and reimplementing the entire structure of the site, only using some highly modular codes from v1 such as chart generators and various spiders.

The major high-level differences between this version and the first version are:

-   In this version, all data are stored in a `MySQL` database, instead of a `JSON`-based pseudo-database implemented in Python.
-   In this version, all reviews are collected, proofread, and edited manually by us before being manually entered (by a team member) to the database. The entire data entry process is separated from data acquisition.
-   In this version, client requests are handled by a web-based API that runs on the server. The API responds to the client with the requested data, and the client parses the data into HTML with the JSON-Content-Importer Wordpress plugin. This process happens in real time, meaning that each time a page is accessed, we have the most updated info from the database.

Potential improvements include:

-   GUI design enhancement
-   Security improvement
-   Logging and notification of warnings and errors

## [Database Design](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design){:target="\_blank"}

There are six tables in the database, as listed below:

-   [`CourseExplorer`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#courseexplorer){:target="\_blank"} stores data directly pulled from [Course Explorer](http://courses.illinois.edu){:target="\_blank"}
-   [`CourseReview`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#coursereview){:target="\_blank"} stores individual course reviews submitted by users
-   [`Courses`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#courses){:target="\_blank"} stores initialized course information submitted by members of **UI Courses**
-   [`Professor`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#professor){:target="\_blank"} stores initialized professor information submitted by members of **UI Courses**
-   [`ProfReview`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#profreview){:target="\_blank"} stores individual professor reviews submitted by users
-   [`RateMyProfessorInfo`](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design/#ratemyprofessorinfo){:target="\_blank"} stores data directly pulled from [Rate My Professor](http://ratemyprofessors.com){:target="\_blank"}

Examples are below.

### `CourseExplorer`

    +-------------+---------------------+------+-----+---------+----------------+
    | Field       | Type                | Null | Key | Default | Extra          |
    +-------------+---------------------+------+-----+---------+----------------+
    | Id          | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | Subject     | varchar(4)          | NO   |     | NULL    |                |
    | Code        | varchar(10)         | NO   |     | NULL    |                |
    | Title       | varchar(100)        | NO   |     | NULL    |                |
    | Credit      | varchar(20)         | NO   |     | NULL    |                |
    | Description | text                | NO   |     | NULL    |                |
    | GenEd       | text                | YES  |     | NULL    |                |
    | Url         | varchar(200)        | NO   |     | NULL    |                |
    +-------------+---------------------+------+-----+---------+----------------+

### `CourseReview`

Rows are entered via the HTML form.

    +------------------+---------------------+------+-----+---------+----------------+
    | Field            | Type                | Null | Key | Default | Extra          |
    +------------------+---------------------+------+-----+---------+----------------+
    | Id               | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | Target           | varchar(20)         | NO   |     | NULL    |                |
    | Desc_Lecture     | mediumtext          | NO   |     | NULL    |                |
    | Desc_Discussion  | mediumtext          | NO   |     | NULL    |                |
    | Desc_Homework    | mediumtext          | NO   |     | NULL    |                |
    | Desc_Lab         | mediumtext          | NO   |     | NULL    |                |
    | Desc_Quiz        | mediumtext          | NO   |     | NULL    |                |
    | Desc_Midterm     | mediumtext          | NO   |     | NULL    |                |
    | Desc_Project     | mediumtext          | NO   |     | NULL    |                |
    | Desc_Final       | mediumtext          | NO   |     | NULL    |                |
    | Desc_ExtraCredit | mediumtext          | NO   |     | NULL    |                |
    | Desc_Other       | mediumtext          | NO   |     | NULL    |                |
    | Diff_Lecture     | int(11)             | YES  |     | 0       |                |
    | Diff_Discussion  | int(11)             | YES  |     | 0       |                |
    | Diff_Homework    | int(11)             | YES  |     | 0       |                |
    | Diff_Lab         | int(11)             | YES  |     | 0       |                |
    | Diff_Quiz        | int(11)             | YES  |     | 0       |                |
    | Diff_Midterm     | int(11)             | YES  |     | 0       |                |
    | Diff_Project     | int(11)             | YES  |     | 0       |                |
    | Diff_Final       | int(11)             | YES  |     | 0       |                |
    | Advice           | mediumtext          | NO   |     | NULL    |                |
    | AdviceForUs      | mediumtext          | NO   |     | NULL    |                |
    +------------------+---------------------+------+-----+---------+----------------+

### `Courses`

    +------------------+---------------------+------+-----+---------+----------------+
    | Field            | Type                | Null | Key | Default | Extra          |
    +------------------+---------------------+------+-----+---------+----------------+
    | Id               | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | Reviews          | longtext            | NO   |     | NULL    |                |
    | InitUid          | varchar(20)         | NO   |     | NULL    |                |
    | Subject          | varchar(4)          | NO   |     | NULL    |                |
    | Code             | varchar(3)          | NO   |     | NULL    |                |
    | Suffix           | varchar(20)         | NO   |     | NULL    |                |
    | Title            | varchar(60)         | NO   |     | NULL    |                |
    | Professor        | longtext            | NO   |     | NULL    |                |
    | Description      | longtext            | NO   |     | NULL    |                |
    | Knowledge        | longtext            | NO   |     | NULL    |                |
    | Resource         | longtext            | NO   |     | NULL    |                |
    | Tool             | longtext            | NO   |     | NULL    |                |
    | Letter_Ap        | float               | YES  |     | NULL    |                |
    | Letter_A         | float               | YES  |     | NULL    |                |
    | Letter_Am        | float               | YES  |     | NULL    |                |
    | Letter_Bp        | float               | YES  |     | NULL    |                |
    | Letter_B         | float               | YES  |     | NULL    |                |
    | Letter_Bm        | float               | YES  |     | NULL    |                |
    | Curve            | longtext            | NO   |     | NULL    |                |
    | Pct_Lecture      | float               | YES  |     | 0       |                |
    | Pct_Discussion   | float               | YES  |     | 0       |                |
    | Pct_Homework     | float               | YES  |     | 0       |                |
    | Pct_Lab          | float               | YES  |     | 0       |                |
    | Pct_Quiz         | float               | YES  |     | 0       |                |
    | Pct_Midterm      | float               | YES  |     | 0       |                |
    | Pct_Project      | float               | YES  |     | 0       |                |
    | Pct_Final        | float               | YES  |     | 0       |                |
    | Pct_ExtraCredit  | float               | YES  |     | 0       |                |
    | Pct_Other        | float               | YES  |     | 0       |                |
    | Desc_Lecture     | longtext            | NO   |     | NULL    |                |
    | Desc_Discussion  | longtext            | NO   |     | NULL    |                |
    | Desc_Homework    | longtext            | NO   |     | NULL    |                |
    | Desc_Lab         | longtext            | NO   |     | NULL    |                |
    | Desc_Quiz        | longtext            | NO   |     | NULL    |                |
    | Desc_Midterm     | longtext            | NO   |     | NULL    |                |
    | Desc_Project     | longtext            | NO   |     | NULL    |                |
    | Desc_Final       | longtext            | NO   |     | NULL    |                |
    | Desc_ExtraCredit | longtext            | NO   |     | NULL    |                |
    | Desc_Other       | longtext            | NO   |     | NULL    |                |
    | Diff_Lecture     | float               | YES  |     | NULL    |                |
    | Diff_Discussion  | float               | YES  |     | NULL    |                |
    | Diff_Homework    | float               | YES  |     | NULL    |                |
    | Diff_Lab         | float               | YES  |     | NULL    |                |
    | Diff_Quiz        | float               | YES  |     | NULL    |                |
    | Diff_Midterm     | float               | YES  |     | NULL    |                |
    | Diff_Project     | float               | YES  |     | NULL    |                |
    | Diff_Final       | float               | YES  |     | NULL    |                |
    | Honor            | longtext            | NO   |     | NULL    |                |
    +------------------+---------------------+------+-----+---------+----------------+

### `Professor`

    +-----------+---------------------+------+-----+---------+----------------+
    | Field     | Type                | Null | Key | Default | Extra          |
    +-----------+---------------------+------+-----+---------+----------------+
    | Id        | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | Reviews   | text                | NO   |     | NULL    |                |
    | RMP_index | text                | NO   |     | NULL    |                |
    | FirstName | varchar(30)         | NO   |     | NULL    |                |
    | LastName  | varchar(30)         | NO   |     | NULL    |                |
    | Course    | text                | NO   |     | NULL    |                |
    | Review    | text                | NO   |     | NULL    |                |
    +-----------+---------------------+------+-----+---------+----------------+

### `ProfReview`

    +----------+---------------------+------+-----+---------+----------------+
    | Field    | Type                | Null | Key | Default | Extra          |
    +----------+---------------------+------+-----+---------+----------------+
    | Id       | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | Target   | varchar(60)         | NO   |     | NULL    |                |
    | Review   | mediumtext          | NO   |     | NULL    |                |
    | Research | mediumtext          | NO   |     | NULL    |                |
    +----------+---------------------+------+-----+---------+----------------+

### `RateMyProfessorInfo`;

    +------------+---------------------+------+-----+---------+----------------+
    | Field      | Type                | Null | Key | Default | Extra          |
    +------------+---------------------+------+-----+---------+----------------+
    | Id         | bigint(20) unsigned | NO   | PRI | NULL    | auto_increment |
    | firstName  | text                | NO   |     | NULL    |                |
    | lastName   | text                | NO   |     | NULL    |                |
    | tags       | text                | NO   |     | NULL    |                |
    | url        | text                | NO   |     | NULL    |                |
    | difficulty | decimal(5,1)        | NO   |     | NULL    |                |
    | quality    | decimal(5,1)        | NO   |     | NULL    |                |
    +------------+---------------------+------+-----+---------+----------------+

## [Front End Template in WordPress](https://github.com/sumerinlan/uicourses_v2/wiki/Front-end-Template-in-Wordpress){:target="\_blank"}

We use a Wordpress plugin "JSON Content Importer" to display the `JSON` content generated by `dbutil.py`. This allows us to display live data in an HTML template.

~~We have a limited budget.~~ We use the free JCI Template.

### HTML Templates

Below is the structure of the HTML template we are using. There is a sample template at the very end.

#### Course Explorer

Data pulled from [Course Explorer](http://courses.illinois.edu){:target="\_blank"}. Additional `CSS` is used. In particular, we put `CE_Description` in `HTML` format to fully capture the anchor attributes.

#### Course Information

-   Course Introduction
-   Key Points
-   Resources
-   Tools

All are in `HTML` format.

#### Breakdown Descriptions and Reviews

-   Letter Grade

via an `HTML` Table.

-   Curves

in `HTML` format.

-   Breakdown
-   Difficulty

We use `iframe` to insert two new pages for [Google Charts](https://developers.google.com/chart/interactive/docs/gallery){:target="\_blank"} generated: [Pie chart](https://developers.google.com/chart/interactive/docs/gallery/piechart){:target="\_blank"} for **Breakdown**, and [Bar chart](https://developers.google.com/chart/interactive/docs/gallery/barchart){:target="\_blank"} for **Difficulty**.

Sample codes can be found in the links above. Here are the codes we are using, with variables `data` and `options` in JavaScript being modified, as well as attributes in `div` tag.

-   Description

in `HTML` format.

### Professor

-   (TODO) RateMyProfessor Data
-   Review
-   Research Opportunities

Here we use `subloop-array` to do a for loop among professors, each with the fields that we want to add.

Simple examples can be found [here](https://json-content-importer.com/?s=subloop){:target="\_blank"} (or just visit [JSON Content Importer website](https://json-content-importer.com/){:target="\_blank"} and search for "subloop").

#### Other Information

-   Honor Section
-   Advice

* * *

Read more documentations on:

-   [Overall workflow](https://github.com/sumerinlan/uicourses_v2/wiki/Introduction#overall-workflow){:target="\_blank"}
-   [Database Design](https://github.com/sumerinlan/uicourses_v2/wiki/Database-Design){:target="\_blank"}
-   [DB2JSON API](https://github.com/sumerinlan/uicourses_v2/wiki/DB2JSON-API){:target="\_blank"}
-   [Front end template in Wordpress](https://github.com/sumerinlan/uicourses_v2/wiki/Front-end-Template-in-Wordpress){:target="\_blank"}
-   [Data Insertion](https://github.com/sumerinlan/uicourses_v2/wiki/Data-Insertion){:target="\_blank"}
