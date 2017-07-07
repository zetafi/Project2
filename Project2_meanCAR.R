# Table 5 Winning Bids
mean_CAR_Win <- read_csv("~/data/mean_CAR.xlsx - Winner.csv", skip = 4)
mean_CAR_Win <- as.data.frame(mean_CAR_Win)

## Small cities
smallcities_w<-mean_CAR_Win[mean_CAR_Win[,"City Size"]=="Small", 8:16]

### meanCAR
#### 0.002518750 -0.003167500 -0.002528750 -0.006040000 -0.002530000 -0.001352375 0.001173750 0.000611250
meanCAR_Win_small<-colSums(smallcities_w[, 2:9])/nrow(smallcities_w)
meanCAR_Win_small
### SD(meanCAR)
#### 0.006164039 0.007549375 0.010676428 0.013783210 0.009746201 0.014455952 0.009746201 0.006164039
sdmCAR_Win_small<-sqrt(c(2,3,6,10,5,11,5,2))*(sqrt(sum(smallcities_w[,1]))/nrow(smallcities_w))
sdmCAR_Win_small
### test statistic
#### 0.40862007 -0.41957116 -0.23685355 -0.43821432 -0.25958832 -0.09355143 0.12043154 0.09916388 
meanCAR_Win_small/sdmCAR_Win_small


## Big cities
bigcities_w<-mean_CAR_Win[mean_CAR_Win[,"City Size"]=="Big", 8:16]

### meanCAR
#### 0.005861818 0.014630000 0.014853636 0.007874545 0.013611818 -0.001562727 -0.016413636 -0.001028182
meanCAR_Win_big<-colSums(bigcities_w[, 2:9])/nrow(bigcities_w)
meanCAR_Win_big
### SD(meanCAR)
#### 0.005631592 0.006897263 0.009754203 0.012592622 0.008904329 0.013207254 0.008904329 0.005631592
sdmCAR_Win_big<-sqrt(c(2,3,6,10,5,11,5,2))*(sqrt(sum(bigcities_w[,1]))/nrow(bigcities_w))
sdmCAR_Win_big
### test statistic
#### 1.0408812 2.1211312 1.5227934 0.6253301 1.5286743 -0.1183234 -1.8433323 -0.1825739
meanCAR_Win_big/sdmCAR_Win_big





# Table 7 Losing Bids
mean_CAR_Lose <- read_csv("~/data/mean_CAR.xlsx - Loser.csv", skip = 3)
mean_CAR_Lose <- as.data.frame(mean_CAR_Lose)

## Small cities
smallcities_l<-mean_CAR_Lose[mean_CAR_Lose[,"City Size"]=="Small", 8:16]

### meanCAR
#### 0.0043806136 0.0026393136 -0.0001500545 -0.0022626227 0.0023125000 0.0030001545 0.0031502136 -0.0003268273
meanCAR_Lose_small<-colSums(smallcities_l[, 2:9])/nrow(smallcities_l)
meanCAR_Lose_small
### SD(meanCAR)
#### 0.004130483 0.005058788 0.007154206 0.009236040 0.006530867 0.009686841 0.006530867 0.004130483
sdmCAR_Lose_small<-sqrt(c(2,3,6,10,5,11,5,2))*(sqrt(sum(smallcities_l[,1]))/nrow(smallcities_l))
sdmCAR_Lose_small
### test statistic
#### 1.06055728 0.52172849 -0.02097431 -0.24497757 0.35408776 0.30971444 0.48235766 -0.07912568    
meanCAR_Lose_small/sdmCAR_Lose_small


## Big cities
bigcities_l<-mean_CAR_Lose[mean_CAR_Lose[,"City Size"]=="Big", 8:16]

### meanCAR
#### 0.0028768400 0.0025202143 0.0021368600 0.0051610514 -0.0003821714 -0.0071351629 -0.0092720171 -0.0029023857
meanCAR_Lose_big<-colSums(bigcities_l[, 2:9])/nrow(bigcities_l)
meanCAR_Lose_big
### SD(meanCAR)
#### 0.004056497 0.004968174 0.007026059 0.009070603 0.006413885 0.009513329 0.006413885 0.004056497
sdmCAR_Lose_big<-sqrt(c(2,3,6,10,5,11,5,2))*(sqrt(sum(bigcities_l[,1]))/nrow(bigcities_l))
sdmCAR_Lose_big
### test statistic
#### 0.70919319 0.50727176 0.30413352 0.56898659 -0.05958502 -0.75001749 -1.44561641 -0.71549067 
meanCAR_Lose_big/sdmCAR_Lose_big