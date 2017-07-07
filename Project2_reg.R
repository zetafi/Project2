library(readr)
sgdp <- read_csv("~/CAR+shareGDP.csv")
sgdp <- as.data.frame(sgdp)

# 1.CAR regression without dummy for Summer Games
reg1<-lm(CAR~ShareGDP,data=sgdp)
summary(reg1)

##Calculate HC1 sd
proj2_X <- as.matrix(cbind(rep(1,nrow(sgdp)), sgdp[,5]))
HC1 <- (nrow(sgdp)/(nrow(sgdp)-2))*solve(t(proj2_X)%*%proj2_X)%*%(t(proj2_X)%*%diag(reg1$residuals^2)%*%proj2_X)%*%solve(t(proj2_X)%*%proj2_X)

## ShareGDP -0.06510142(0.06583529) p-value 0.3227351
ShareGDP_value<-reg1$coefficient[2]
ShareGDP_value
ShareGDP_hcsd<-sqrt(HC1[2,2])
ShareGDP_hcsd
2*(1-pnorm(abs(ShareGDP_value/ShareGDP_hcsd)))

## Intercept 0.01161214(0.009023675) p-value 0.1981456  
Intercept_value<-reg1$coefficient[1]
Intercept_value
Intercept_hcsd<-sqrt(HC1[1,1])
Intercept_hcsd
2*(1-pnorm(abs(Intercept_value/Intercept_hcsd)))

## R square 0.03529741
summary(reg1)$r.squared



#2.CAR regression with dummy for Summer Games
sgdp[,3]<-factor(sgdp[,3])
reg2<-lm(CAR~ShareGDP+`Olympic Season`,data=sgdp)
summary(reg2)

##Calculate HC1 sd
proj2_Xd <- as.matrix(cbind(rep(1,nrow(sgdp)), sgdp[,5], 2-as.numeric(sgdp[,3])))
HC1d <- (nrow(sgdp)/(nrow(sgdp)-3))*solve(t(proj2_Xd)%*%proj2_Xd)%*%(t(proj2_Xd)%*%diag(reg2$residuals^2)%*%proj2_Xd)%*%solve(t(proj2_Xd)%*%proj2_Xd)

## ShareGDP -0.060373797(0.06352069) p-value 0.3418792
ShareGDP_value2<-reg2$coefficient[2]
ShareGDP_value2
ShareGDP_hcsd2<-sqrt(HC1d[2,2])
ShareGDP_hcsd2
2*(1-pnorm(abs(ShareGDP_value2/ShareGDP_hcsd2)))


## dummy_Summer -0.006946086(0.01176082) p-value 0.5547803
dummyS_value<-reg2$coefficient[3]
dummyS_value
dummyS_hcsd<-sqrt(HC1d[3,3])
dummyS_hcsd
2*(1-pnorm(abs(dummyS_value/dummyS_hcsd)))

## Intercept 0.008025792(0.007249417) p-value 0.2682529  
Intercept_value2<-reg2$coefficient[1]+reg2$coefficient[3]
Intercept_value2
Intercept_hcsd2<-sqrt(HC1d[1,1])
Intercept_hcsd2
2*(1-pnorm(abs(Intercept_value2/Intercept_hcsd2)))

## R square 0.05545364
summary(reg2)$r.squared











sgdp <- read_csv("~/CAR+shareGDP.csv")
sgdp <- as.data.frame(sgdp)
tCAR<-sgdp[,6]/sgdp[,7]
sgdp<-cbind(sgdp, tCAR)

# 1.CAR/Sigma regression without dummy for Summer Games
regt1<-lm(tCAR~ShareGDP,data=sgdp)
summary(regt1)

##Calculate HC1 sd
proj2_X <- as.matrix(cbind(rep(1,nrow(sgdp)), sgdp[,5]))
HCt1 <- (nrow(sgdp)/(nrow(sgdp)-2))*solve(t(proj2_X)%*%proj2_X)%*%(t(proj2_X)%*%diag(regt1$residuals^2)%*%proj2_X)%*%solve(t(proj2_X)%*%proj2_X)

## ShareGDP -0.2232692(2.147288) p-value 0.9171874 
ShareGDPt_value<-regt1$coefficient[2]
ShareGDPt_value
ShareGDPt_hcsd<-sqrt(HCt1[2,2])
ShareGDPt_hcsd
2*(1-pnorm(abs(ShareGDPt_value/ShareGDPt_hcsd)))



## Intercept 0.2398471(0.2628825) p-value 0.361572 
Interceptt_value<-regt1$coefficient[1]
Interceptt_value
Interceptt_hcsd<-sqrt(HCt1[1,1])
Interceptt_hcsd
2*(1-pnorm(abs(Interceptt_value/Interceptt_hcsd)))

## R square 0.0004891025
summary(regt1)$r.squared



#2.CAR/Sigma  regression with dummy for Summer Games
regt2<-lm(tCAR~ShareGDP+`Olympic Season`,data=sgdp)
summary(regt2)

##Calculate HC1 sd
sgdp[,3]<-factor(sgdp[,3])
proj2_Xd <- as.matrix(cbind(rep(1,nrow(sgdp)), sgdp[,5], 2-as.numeric(sgdp[,3])))
HC1td <- (nrow(sgdp)/(nrow(sgdp)-3))*solve(t(proj2_Xd)%*%proj2_Xd)%*%(t(proj2_Xd)%*%diag(regt2$residuals^2)%*%proj2_Xd)%*%solve(t(proj2_Xd)%*%proj2_Xd)

## ShareGDP -0.06188296(2.185919) p-value 0.9774151 
ShareGDPt_value2<-regt2$coefficient[2]
ShareGDPt_value2
ShareGDPt_hcsd2<-sqrt(HC1td[2,2])
ShareGDPt_hcsd2
2*(1-pnorm(abs(ShareGDPt_value2/ShareGDPt_hcsd2)))


## dummy_Summer -0.2371178(0.3440595) p-value 0.4907121
dummySt_value<-regt2$coefficient[3]
dummySt_value
dummySt_hcsd<-sqrt(HC1td[3,3])
dummySt_hcsd
2*(1-pnorm(abs(dummySt_value/dummySt_hcsd)))

## Intercept 0.1174203(0.2083771) p-value 0.5730953
Interceptt_value2<-regt2$coefficient[1]+regt2$coefficient[3]
Interceptt_value2
Interceptt_hcsd2<-sqrt(HC1td[1,1])
Interceptt_hcsd2
2*(1-pnorm(abs(Interceptt_value2/Interceptt_hcsd2)))

## R square 0.02816092
summary(regt2)$r.squared