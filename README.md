# Project2
Project2 of Jerry@UWOSH

### Overview
This project contained data file and regression code to replicate the regression in the Table 2 of Dick & Wang's paper.


### Datas
* __Tables.xlsx__ contains the CAR values for each application catagorized in Winners/ Losers/Losers
* __HistoricalGDPSharesValues.xls__ contains ShareGDP datas from https://www.ers.usda.gov/data-products/international-macroeconomic-data-set/ (Historical Data Files\GDP Shares by Country and Region Historical)  (obtained on July 06 2017)
* __Olympic cities split on size.xlsx__ contains the categorized data that split the cities into Small/Big
* __CAR+shareGDP.csv__ is the dataset that combine CAR in Tables and ShareGDP in HistoricalGDPSharesValues to do the regression
* __mean_CAR.xlsx - Winner.csv__ is the csv file to add the new calculation of the mean-CAR based on city size in Table 5
* __mean_CAR.xlsx - Loser.csv__ is the csv file to add the new calculation of the mean-CAR based on city size in Table 7



### Papers
* __Dick Wang - The Economic Impact of Olympic Games - Evidence from Stock Markets__ is the paper of Dick & Wang

### Codes
* __Project2_reg.R__ contains code to calculate the regression result in Table2
* __Project2_meanCAR.R__ contains code to calculate the mean of CAR based on city size to enrich the Table5&7


### Result for the regression
__Table 2__ _CAR~ShareGDP_ Model(1) without dummy variable and Model(2) with dummy variable. 


Variable | Model(1) | Model(2)
-|-|-
Share of GDP|-0.06510142|-0.060373797
\_\_\_\_\_\_HC1 SD|0.06583529|0.06352069
\_\_\_\_\_\_p-value|0.3227351|0.3418792
Summer Game||-0.006946086
\_\_\_\_\_\_HC1 SD||0.01176082
\_\_\_\_\_\_p-value||0.5547803
Constant|0.01161214|0.008025792
\_\_\_\_\_\_HC1 SD|0.009023675|0.007249417
\_\_\_\_\_\_p-value|0.1981456|0.2682529 
R-squared|0.03529741|0.05545364


__Table 2__ _CAR/Sigma~ShareGDP_ Model(1) without dummy variable and Model(2) with dummy variable. 


Variable | Model(1) | Model(2)
-|-|-
Share of GDP|-0.06510142|-0.060373797
\_\_\_\_\_\_HC1 SD|0.06583529|0.06352069
\_\_\_\_\_\_p-value|0.3227351|0.3418792
Summer Game||-0.006946086
\_\_\_\_\_\_HC1 SD||0.01176082
\_\_\_\_\_\_p-value||0.5547803
Constant|0.01161214|0.008025792
\_\_\_\_\_\_HC1 SD|0.009023675|0.007249417
\_\_\_\_\_\_p-value|0.1981456|0.2682529 
R-squared|0.03529741|0.05545364

### Result for the mean CAR based on different city size
__Table 5__ Average Cumulative Abnormal Returns: Winning Bids

_Small cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|1|1|1|1|1|1|1|1
SD(Mean CAR)|1|1|1|1|1|1|1|1
test statistic|1|1|1|1|1|1|1|1

_Big cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|1|1|1|1|1|1|1|1
SD(Mean CAR)|1|1|1|1|1|1|1|1
test statistic|1|1|1|1|1|1|1|1

__Table 7__ Average Cumulative Abnormal Returns: Losing Bids

_Small cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|1|1|1|1|1|1|1|1
SD(Mean CAR)|1|1|1|1|1|1|1|1
test statistic|1|1|1|1|1|1|1|1

_Big cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|1|1|1|1|1|1|1|1
SD(Mean CAR)|1|1|1|1|1|1|1|1
test statistic|1|1|1|1|1|1|1|1
