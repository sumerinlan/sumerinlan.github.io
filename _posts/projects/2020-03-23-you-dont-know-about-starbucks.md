---
# basic info
layout: post
title: You Don't Know About Starbucks
date: 2020-03-23 -0800
# page info
site: portfolio
type: Project
categories: [Data Visualization]
tags: [HTML5, CSS, JavaScript, D3]
# project info
role: Designer, Web Developer
website: https://sumerinlan.github.io/stanford-cs448b-project/
demo: https://youtu.be/qx2opXwJcM4
# content info
excerpt: Data Visualization Project for Starbucks' Menu and Nutrition Facts
---

Americans consume **400 million** cups of coffee per day, making the United States the leading consumer of coffee in the world. On average, **250 cups** of espresso and coffee drinks are sold per day at almost any espresso drive-thru business with a great visible location. [Coffee statistics](https://www.google.com/url?q=http://www.e-importz.com/coffee-statistics.php){:target="\_blank"} shows that among coffee drinkers, the average consumption in the United States is 3 cups of coffee per day.

Founded in 1971, the largest coffeehouse chain around the globe - Starbucks has successfully made itself one of the symbols of the modern American lifestyle. For quite a few people, Starbucks is their routine. They get up, get dressed, leave for work, and go to Starbucks before anything else gets done that day.

Of course, they care about the **nutrition facts** of the drinks and food produced by Starbucks, which are available on its [official website](https://www.google.com/url?q=https://www.starbucks.com/menu){:target="\_blank"} or mobile app. However, since not designed especially for inspecting nutrition facts, the menu is inefficient when it comes to some demands:

-   It is difficult to search for a specific item as well as its nutritional indicators under different preparations, for example, different sizes, especially on the app.
-   It is time-consuming to browse the nutritional information, given that the website and app require clicking and jumping to another page to read the content.
-   On top of that, it is infeasible to make efficient comparisons between two or more products, as users have to switch items back and forth and memorize the numbers.

To better demonstrate and analyze the nutritional information of Starbucks' drinks, as well as to discover the hidden patterns behind the statistics, we have pulled out and analyzed **all the data of the current Starbucks menu** on the table. The dataset contains **148 unique drinks**, each with various size options and nutritional information, such as calories, sugars, fat, caffeine, etc.

## ALL ABOUT CALORIES

### BASIC FACTS OF DRINKS

A handful of springtime drinks have arrived and joined the holiday lineup. Starbucks currently has 148 drinks on its menu, and there are infinite ways to customize them. We leverage the nutrition information a lot when we order drinks, but it is tedious to go back and forth and check out each drink. Therefore, we started our exploration with the basic question: **Is there a more convenient way to know detailed nutritional information based on drinks?**

According to the FDA, for an average person, buying meals away from home once per week will gain you about 2 extra pounds per year. Labeling calorie data on the menus help customers make healthier decisions about foods and drinks. Aimed to unveil the most valuable information with limited space, we selected two indicators that we think people care most about when they order a drink: calories and sugars.

Here we displayed the full menu using an image-based visualizer, where you can easily hover on a drink to see its calories and sugars data without being redirected to another page. The numbers are calculated based on the standard recipes: grande size (for most drinks) or doppio size (for espresso), and the default milk choice indicated in the app. These numbers are represented in colored bars, with longer bars indicating larger amounts.

Drinks are categorized based on the menu to help people better find drinks. To support searching and filtering functionalities, we have added a search bar to allow users to search for drinks by keywords. The full menu is long, so we also created tabs to divide the list.

By discovering we can find that many drinks among a sub-category share a similar trend. For example, under "Hot Coffees", **americanos** are low-calories, while mochas contain more calories and sugars. Also, when a drink is high in calories, the sugars contents are often simultaneously high.

**How to play 🍵:** **Hover** above the drinks to inspect detailed nutrition information. **Select** a tab to the change type. **Type** in the search bar to filter drinks.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image1.png)

### CALORIES OF DRINKS with DIFFERENT SIZES

It is much easier to browse the information now, but that's only when we have a specific drink in mind. It still takes time if we want to see what type of drinks contains higher calories in general, and making these comparisons still takes effort. Meanwhile, there is no information about customized drinks. **Can we acquire all the calorie data at a single glance?**

In the following visualization, each drink occupies a single line, with the start and end points indicating the range of calories customers can get in various sizes. The exact data points are visible upon hovering. The drinks are sorted by the maximum calorie value, so it is easy to see which drinks contain lower or higher calories in general. Lines are colored based on the drinks' sub-categories, and the categorizing and comparisons are more obvious if you type in the search bar and filter the drinks by their types.

We can easily see the detailed calories for each type of drink. For example, coffees, espresso, and americanos contain low calories while mochas are high-calorie drinks. Teas are low-calorie in general except for milk or lemonade-added options. Frappuccinos are high-calorie drinks.

The ranges of calories vary from drink to drink. The general trend is that the higher the maximum calories go, the longer the bar is. This quite makes sense: if cold brews have lower calories for their maximum size, it has less room to decrease for reduced sizes. A drink with a wider range of choices can satisfy different customer needs; for example, if I don't care about calories, I can order a Venti or even Trenta size, but if I care about my weight, I can have a healthier choice with a small size, but that's still the same flavor that I want.

**How to play 🍵:** **Hover** above the lines to see the exact range. Type in the search bar to filter drinks.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image2.png)

### DOES TEMPERATURE MATTER

Even when we have a specific drink in mind, sometimes we still need to choose whether to order a hot or a cold one. We then start wondering if there is any difference between those two options, and **in general, does temperature matter in terms of calories?**

We categorized the drinks based on temperature first for better comparisons between hot and cold drinks. The vertical positions are twisted a little bit to avoid overlapping. We used the x-axis and colors to represent different types of drinks. We highlighted the chosen (hovered) drink and its corresponding hot/cold option by muting the colors of other drinks if such an option is available. The horizontal bars on the right indicate total calories.

Each type of drink has distinct characteristics. Take coffees as an example. Whether hot or cold, there are several beverages (**americanos, brew coffees, and espressos**) clustered in the low-calorie area, with the rest scattered between 100 and 450 calories. Overall, **hot teas, cold teas, and cold drinks** are low in calories, and hot drinks and **Frappuccinos** are high-calorie drinks.

Generally speaking, for drinks with hot and cold options, hot ones contain higher calories than cold drinks. At the same time, the numbers are equal for some drinks with low calories already, such as americano and espresso.

**How to play 🍵:** **Hover** to highlight the current drink and its corresponding hot/cold option. **Hover** on any empty space to reset the graph.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image6.png)

### BEST STARBUCKS DRINKS

Starbucks' recipes are ever-changing, but some beverages have won the favor of customers and have always occupied a place on the menu. What are the characteristics of the most popular drinks? **Do people go for drinks with high calories or is health their top concern?** 

With the ranking data from [Thrillist](https://www.google.com/url?q=https://www.thrillist.com/drink/nation/best-coffee-drinks-starbucks-menu){:target="\_blank"}, we are interested to see how these top-ranked items are distributed by calories and sugars. Similar to the above sections, the information is based on standard grande or doppio sizes.

Top drinks are plotted in a scatter plot with calories as x-axis and sugars as y-axis, with size indicating the number of entries at that spot. To better compare the calories and sugar data between top drinks and the rest of the drinks, we put all drinks in the plot in light-yellow dots as well. Users can toggle top drinks on and off to better see the full data.

From the chart, we can see the positive correlation between calories and sugars. However, while we initially supposed that the most popular drinks are among those high-calorie and high-sugar sections, the data points turn out to be quite evenly distributed at first glance. There are still three weak clusters from the chart, from which we infer three patterns of people visiting Starbucks:

-   There is a large cluster of low-calorie, sugar-free products, including **brewed coffees** and **americanos**, which are suitable for customers who care about those indicators in their drinks intake.
-   Beverages are gathered at 150-calories 20g-sugars region, including classic coffee with milk, such as **lattes** and **flat whites**, as well as cold drinks. Customers who choose these products may leverage both flavor and health.
-   High-calorie products, such as **Frappuccinos** and **mochas**, are also very popular, as shown in a cluster at the top-right corner.

**How to play 🍵:** **Toggle** on or off the checkbox to show or hide top-ranked drinks. **Hover** on the green dots to see top drinks and their nutritional information.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image4.png)

### DONUT CHART

With such a wide range of drinks provided at Starbucks, the chain has also realized that an aspiring customer cannot subsist on flat whites and caramel alone. These days, the mermaid emporium has just about as many food items as it does drinks, ranging from hot sandwiches to cold parfaits. Undoubtedly, we are also curious about the best items on the [ever-expanding Starbucks menu](https://www.google.com/url?q=https://www.thrillist.com/drink/nation/best-drinks-at-starbucks-best-coffee-at-starbucks){:target="\_blank"}.

Often, the total constitution of calories that a nutritionist recommends for daily intake is as follows:

-   50%-55% comes from **carbohydrates**, and there are 4 calories per gram of carbohydrate, which is the main energy source of the human body under normal conditions
-   20%-35% comes from **protein**, and there are 4 calories per gram of protein
-   35% or less comes from **fat**, and there are 9 calories per gram of fat
-   Daily calories from saturated fat should be less than 10%

From the perspective of fitness and reasonable nutrition intake, a diet ratio of **40% (carbohydrate) : 40% (protein) : 20% (fat)** is recommended.

As a result, we visualized these three important indicators: calories from carbohydrates, calories from protein, and calories from fat, for both the top drinks and food leaderboards of Starbucks. Results show that top food options usually contain much higher calories than compared with drinks (300-500 cal). But in general, calories from carbohydrates and fat constitute a great proportion, both in drinks and in food.

Moreover, when focusing on the distribution among these three indicators, you may like to consider something like **Caffè Latte** to drink and **Spinach, Feta & Cage-Free Egg White Wrap** to eat, since they both have a relatively balanced distribution compared with the other options.

**How to play 🍵:** The axis and dots represent the calories distribution of the top items, respectively. **Hover** on the following donut graph to see the position of a specific item on the calories axis.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image3.png)

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image5.png)

### FOOD RECOMMENDER

Keeping one meal of the day under 500 calories is considered one of the regular options for fitness people. Many people also choose to make up their options (food + drink) directly at Starbucks. Here, we have provided a food recommender, where the calories of the drink are provided based on your choice for the item and its size; meanwhile, it helps you screen out a list of food you can choose from, to limit the total calories within 500.

**How to play 🍵:** The navigator on the very left can guide you through the types of drink options at Starbucks. **Click** on the sorted drinks directly, as well as the size options. We would automatically provide you with a list of food on the right from which you can choose from, in the meantime maintaining the overall calories under 500.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image7.png)

## AND CAFFEINE

### THE PERFECT EFFICIENT DRINK?

To a certain extent, people's addiction to coffee is also related to the caffeine contained in coffee. The benefits of caffeine consumption include physical endurance, reduction of fatigue and enhancing mental alertness and concentration. Therefore, under reasonable intake circumstances, caffeine has a positive effect on improving work efficiency and productivity.

But at the same time, we may want to consider calories as an indicator: for example, espresso with low calories and super high caffeine content will be the perfect key for many people to start a new day. We would like to see more of these drinks as we produced the following caffeine-calories graph.

As can be seen from the scatter plot

-   Most Starbucks coffee clusters between the 150-250mg level, while **Frappuccinos**, **teas**, and **refreshers** are generally clustered at &lt; 100mg level.
-   If you would like to try some "efficient drink" with high caffeine and low calories, **cold brew series** and **blonde roast series** are good options.
-   Although tea is also considered to be able to provide sufficient caffeine thus bringing an invigorating effect, **tea beverages** at Starbucks are generally clustered in areas with low caffeine contained (&lt; 50mg).
-   The popular **Frappuccinos** series turns out to be the most "sleepy" option --- low caffeine and high calories make them not a good choice for "efficient" drink, but potential risks that make people more sleepy. But it's not necessarily true, since the large proportion of ice contained may also have a refreshing effect :)

**How to play 🍵:** **Hover** on the color dots to see drinks and their information on calories and caffeine.

![](/assets/posts/2020-03-23-you-dont-know-about-starbucks/image8.png)

## Reference

Our data mainly came from Starbucks' official website. We also referred to Thrillist.com for its drinks' and food's rankings.

-   [https://www.starbucks.com/menu](https://www.google.com/url?q=https://www.starbucks.com/menu){:target="\_blank"}
-   [https://www.thrillist.com/drink/nation/best-coffee-drinks-starbucks-menu](https://www.google.com/url?q=https://www.thrillist.com/drink/nation/best-coffee-drinks-starbucks-menu){:target="\_blank"} 
-   [https://www.thrillist.com/eat/nation/every-starbucks-food-item-ranked-starbucks-food-menu](https://www.google.com/url?q=https://www.thrillist.com/eat/nation/every-starbucks-food-item-ranked-starbucks-food-menu){:target="\_blank"} 

Our visual design is inspired by two posts in The Pudding.

-   [https://pudding.cool/2017/03/elections/](https://www.google.com/url?q=https://pudding.cool/2017/03/elections/){:target="\_blank"} 
-   [https://pudding.cool/2017/03/miles/index.html](https://www.google.com/url?q=https://pudding.cool/2017/03/miles/index.html){:target="\_blank"}
