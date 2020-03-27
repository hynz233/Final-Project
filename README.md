# Final-Project
Summary:

Adequate social mobility is essential for the healthy development of a society. A large number of studies have shown that social mobility is related to multiple factors, and education is one of the most concerned. To study the relationship between education level and social mobility, we analyzed 12 US cities. We designed a scoring algorithm to evaluate the education level and social mobility of each city. We found that, overall, social mobility is positively related to education level.


Industry question: Can better education lead to higher social mobility?

Data question: 1. How do we evaluate education level and social mobility of a city? 2. What is the relationship between education level and social mobility?

Data answer: 

To avoid bias, we independently designed the evaluation methods of education level and social mobility, and used these methods to evaluate 12 US cities. Finally, we compare the evaluation results and draw the relationship between education level and social mobility.

1. educatin level:

2. social mobility: Take Baltimore as an example. I first downloaded Baltimore's household income data by parental income level (high, medium, low). The data is then mixed and the household income is also divided into three categories (high, medium, and low). Then calculate the number of categories crossed by each sample (for example: if parental income is low and household income is high, then it cross two categories and get two points; if parental income is high and household income is medium, it cross one category and get one point). Finally, the average score of each sample is calculated, which is the social mobility score of Baltimore. I wrote a function in R to perform this calculation. The source code is ‘Score of Social Mobility.R’.

3. the relationship between education level and social mobility:
![](https://github.com/hynz233/Final-Project/blob/master/Final_plot.png)
On the whole, there is a clear positive correlation between social mobility and education. But Boston and Detroit do not follow this pattern. Boston has a high education score, but its social mobility is low. Detroit, on the other hand, has a lower education score but higher social mobility. We are unable to give a reasonable explanation for this at the moment, and further analysis is needed.


Industry answer:There is a positive correlation between education level and social mobility. We can increase social mobility by improving education. Because our evaluation of education level focuses more on the fairness and availability of education, we cannot blindly improve the level of elite education when improving education, but we need to make as many people as possible get a high level of education. At the same time, we also see that education level does not completely determine social mobility, so we need to do a more extensive analysis of the factors that affect social mobility.



https://www.opportunityatlas.org/
