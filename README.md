# Project2
Project2 of Jerry@UWOSH

## Overview
This project contained data file and regression code to replicate the regression in the Table 2 of Dick & Wang's paper.


## Datas
* __Tables.xlsx__ contains the CAR values for each application catagorized in Winners/ Losers/Losers
* __HistoricalGDPSharesValues.xls__ contains ShareGDP datas from https://www.ers.usda.gov/data-products/international-macroeconomic-data-set/ (Historical Data Files\GDP Shares by Country and Region Historical)  (obtained on July 06 2017)
* __Olympic cities split on size.xlsx__ contains the categorized data that split the cities into Small/Big
* __CAR+shareGDP.csv__ is the dataset that combine CAR in Tables and ShareGDP in HistoricalGDPSharesValues to do the regression
* __mean_CAR.xlsx - Winner.csv__ is the csv file to add the new calculation of the mean-CAR based on city size in Table 5
* __mean_CAR.xlsx - Loser.csv__ is the csv file to add the new calculation of the mean-CAR based on city size in Table 7



## Papers
* __Dick Wang - The Economic Impact of Olympic Games - Evidence from Stock Markets__ is the paper of Dick & Wang

## Codes
* __Project2_reg.R__ contains code to calculate the regression result in Table2
* __Project2_meanCAR.R__ contains code to calculate the mean of CAR based on city size to enrich the Table5&7


## Result for the regression
__Table 2__ _CAR~ShareGDP_ , Model(1) without dummy variable and Model(2) with dummy variable. 


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


__Table 2__ _CAR/Sigma~ShareGDP_ , Model(1) without dummy variable and Model(2) with dummy variable. 


Variable | Model(1) | Model(2)
-|-|-
Share of GDP|-0.2232692|-0.06188296
\_\_\_\_\_\_HC1 SD|2.147288|2.185919
\_\_\_\_\_\_p-value|0.9171874|0.9774151
Summer Game||-0.2371178
\_\_\_\_\_\_HC1 SD||0.3440595
\_\_\_\_\_\_p-value||0.4907121
Constant|0.2398471|0.1174203
\_\_\_\_\_\_HC1 SD|0.2628825|0.2083771
\_\_\_\_\_\_p-value|0.361572|0.5730953 
R-squared|0.0004891025|0.02816092

## Result for the mean CAR based on different city size
### __Table 5__ Average Cumulative Abnormal Returns: Winning Bids

_Small cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|0.002518750|-0.003167500|-0.002528750|-0.006040000|-0.002530000|-0.001352375|0.001173750|0.000611250
SD(Mean CAR)|0.006164039|0.007549375|0.010676428|0.013783210|0.009746201|0.014455952|0.009746201|0.006164039
test statistic|0.40862007|-0.41957116|-0.23685355|-0.43821432|-0.25958832|-0.09355143|0.12043154|0.09916388

_Big cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|0.005861818|0.014630000|0.014853636|0.007874545|0.013611818|-0.001562727|-0.016413636|-0.001028182
SD(Mean CAR)|0.005631592|0.006897263|0.009754203|0.012592622|0.008904329|0.013207254|0.008904329|0.005631592
test statistic|1.0408812|2.1211312|1.5227934|0.6253301|1.5286743|-0.1183234|-1.8433323|-0.1825739

### __Table 7__ Average Cumulative Abnormal Returns: Losing Bids

_Small cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|0.0043806136|0.0026393136|-0.0001500545|-0.0022626227|0.0023125000|0.0030001545|0.0031502136|-0.0003268273
SD(Mean CAR)|0.004130483|0.005058788|0.007154206|0.009236040|0.006530867|0.009686841|0.006530867|0.004130483
test statistic|1.06055728|0.52172849|-0.02097431|-0.24497757|0.35408776|0.30971444|0.48235766|-0.07912568

_Big cities_

Event Window([T1,T2])|[0,1]|[0,2]|[0,5]|[0,9]|[-2,2]|[-5,5]|[-5,-1]|[-2,-1]
-|-|-|-|-|-|-|-|-
Mean CAR|0.0028768400|0.0025202143|0.0021368600|0.0051610514|-0.0003821714|-0.0071351629|-0.0092720171|-0.0029023857
SD(Mean CAR)|0.004056497|0.004968174|0.007026059|0.009070603|0.006413885|0.009513329|0.006413885|0.004056497
test statistic|0.70919319|0.50727176|0.30413352|0.56898659|-0.05958502|-0.75001749|-1.44561641|-0.71549067
