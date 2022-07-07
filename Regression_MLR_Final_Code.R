#Find Missing Value
dat <- read.csv('C:/Users/bose1/Downloads/Final_Reg.csv')
sum(is.na(dat))

#Find Duplicate value
sum(duplicated(dat))

#Showing the dimension of the dataset 
dim(dat)

#Showing the data types of the different variables 
str(dat)

#Fitting MLR model
regression_data<-read.csv('C:/Users/bose1/Downloads/Final_Reg.csv')
Z<-lm(Y~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16+X17+X18+X19+X20,data=regression_data)
summary(data1)

#Checking Normality using Q-Q Plot
library(MASS)
Z.stdres = stdres(Z)
qqnorm(Z.stdres)
qqline(Z.stdres)

#Histogram for checking Normality
h<-hist(Z1.studres, breaks=10, col="lightblue", xlab="Residuals",
        main="Histogram with Normal Curve")
xfit<-seq(min(Z1.studres),max(Z1.studres),length=39)
yfit<-dnorm(xfit,mean=mean(Z1.studres),sd=sd(Z1.studres))
yfit <- yfit*diff(h$mids[1:2])*length(Z1.studres)
lines(xfit, yfit, col="blue", lwd=2)

#Shapiro-Wilk Test for Normality
shapiro.test(Z.stdres)

#Residual Vs Fitted Plot
plot(fitted(Z), Z.stdres, ylab="Standardized Residuals", xlab="Fitted values", main="Residuals vs Fitted", pch=20)
abline(0,0,lty=4)

#Residual vs Fitted for Explanatory Variable
plot(regression_data$X1, Z.stdres, ylab="Standardized Residuals", 
     xlab="X1", main="Residuals vs X1",pch=20)
abline(0,0,lty=4)
plot(regression_data$X2, Z.stdres, ylab="Standardized Residuals", 
     xlab="X2", main="Residuals vs X2", pch=20)
abline(0,0,lty=4)
plot(regression_data$X3, Z.stdres, ylab="Standardized Residuals", 
     xlab="X3", main="Residuals vs X3", pch=20)
abline(0,0,lty=4)
plot(regression_data$X4, Z.stdres, ylab="Standardized Residuals", 
     xlab="X4", main="Residuals vs X4", pch=20)
abline(0,0,lty=4)
plot(regression_data$X5, Z.stdres, ylab="Standardized Residuals", 
     xlab="X5", main="Residuals vs X5", pch=20)
abline(0,0,lty=4)
plot(regression_data$X6, Z.stdres, ylab="Standardized Residuals", 
     xlab="X6", main="Residuals vs X6", pch=20)
abline(0,0,lty=4)
plot(regression_data$X7, Z.stdres, ylab="Standardized Residuals", 
     xlab="X7", main="Residuals vs X7", pch=20)
abline(0,0,lty=4)
plot(regression_data$X8, Z.stdres, ylab="Standardized Residuals", 
     xlab="X8", main="Residuals vs X8", pch=20)
abline(0,0,lty=4)
plot(regression_data$X9, Z.stdres, ylab="Standardized Residuals", 
     xlab="X9", main="Residuals vs X9", pch=20)
abline(0,0,lty=4)
plot(regression_data$X10, Z.stdres, ylab="Standardized Residuals", 
     xlab="X10", main="Residuals vs X10", pch=20)
abline(0,0,lty=4)
plot(regression_data$X11, Z.stdres, ylab="Standardized Residuals", 
     xlab="X11", main="Residuals vs X11", pch=20)
abline(0,0,lty=4)
plot(regression_data$X12, Z.stdres, ylab="Standardized Residuals", 
     xlab="X12", main="Residuals vs X12", pch=20)
abline(0,0,lty=4)
plot(regression_data$X13, Z.stdres, ylab="Standardized Residuals", 
     xlab="X13", main="Residuals vs X13", pch=20)
abline(0,0,lty=4)
plot(regression_data$X14, Z.stdres, ylab="Standardized Residuals", 
     xlab="X14", main="Residuals vs X14", pch=20)
abline(0,0,lty=4)
plot(regression_data$X15, Z.stdres, ylab="Standardized Residuals", 
     xlab="X15", main="Residuals vs X15", pch=20)
abline(0,0,lty=4)
plot(regression_data$X16, Z.stdres, ylab="Standardized Residuals", 
     xlab="X16", main="Residuals vs X16", pch=20)
abline(0,0,lty=4)
plot(regression_data$X17, Z.stdres, ylab="Standardized Residuals", 
     xlab="X17", main="Residuals vs X17", pch=20)
abline(0,0,lty=4)
plot(regression_data$X18, Z.stdres, ylab="Standardized Residuals", 
     xlab="X18", main="Residuals vs X18", pch=20)
abline(0,0,lty=4)
plot(regression_data$X19, Z.stdres, ylab="Standardized Residuals", 
     xlab="X19", main="Residuals vs X19", pch=20)
abline(0,0,lty=4)
plot(regression_data$X20, Z.stdres, ylab="Standardized Residuals", 
     xlab="X20", main="Residuals vs X20", pch=20)
abline(0,0,lty=4)

#perform Breusch-Pagan Test
library(lmtest)
bptest(Z)

#Durbin_Watson
dwtest(Z, order.by = NULL, alternative = c("two.sided"),
       iterations = 40, exact = NULL, tol = 1e-10, data = list())

#Checking VIF
library(car)
vif(Z)
library(mctest)

#Approach with variance Decomposition
eigprop(Z)
olsreg_1<-lm(Y~X1+X2+X3+X5+X6+X7+X8+X9+X12+X13+X16+X17+X18+X20,
             regression_data1)
eigprop(olsreg_1)
olsreg_2<-lm(Y~X1+X2+X3+X5+X7+X8+X9+X17+X18+X20,
             regression_data1)
eigprop(olsreg_2)
olsreg_3<-lm(Y~X1+X3+X5+X7+X8+X9+X17+X18+X20,regression_data1)
eigprop(olsreg_3)
olsreg_4<-lm(Y~X1+X3+X5+X7+X8+X9+X17+X20,regression_data1)
eigprop(olsreg_4)
olsreg_5<-lm(Y~X3+X5+X7+X8+X9,regression_data1)
eigprop(olsreg_5)
olsreg_6<-lm(Y~X5+X7+X8,regression_data1)
eigprop(olsreg_6)

#stepwise selection
library(olsrr)
Step <- ols_step_both_p(Z1,pent=0.05,prem=0.05)
Step

#AIC
library(MASS)
AIC<-stepAIC(Z1,direction="both")
summary(AIC)
vif(AIC)

#creation of new data frame
library(tidyverse)
df <- regression_data %>% select(3:8, 11, 15:18, 20, 22)
head(df)

#Ridge regression
library(lmridge)
ridge_mod = lmridge(regression_data$Y~.,df, K = seq(0, 0.1, 0.001),scaling="sc")
ridge_mod

#Ridge trace
plot(ridge_mod, type = "ridge")
model1=lmridge(regression_data$Y~.,df, K=0.033)
summary(model1)
summary(model1)$summaries[[1]]$stats
vif(model1)

#Residual Analysis of fitted model after Ridge regression
res<-residuals(model1)
yhat<-fitted(model1)

#covariance between fitted and residual
cor(res,yhat)

#Residual vs Fitted plot
plot(res,yhat,xlab = "Residual",ylab = "Fitted", main = "Residual Vs Fitted Plot", pch=20)
abline(h=0)

#Breusch-Pagan test for Heteroscedasticity
library(lmtest)
bptest(model1)

#Test for Normality Assumption of residuals
shapiro.test(res)
qqnorm(res)
qqline(res)

#Comparison between Fitted and Observed response
cor(regression_data$Y,yhat)

#Fitted vs Observed Graph
plot(regression_data$Y,yhat)
plot(regression_data$Y,yhat, type="l", col="light blue", lwd=10, xlab="y", ylab="yhat", main="Obderved vs Fitted Graph")
lines(regression_data$Y, yhat, col="red", lwd=2)
lines(regression_data$Y, yhat, type="b", col="red", lwd=2, pch=19)

#fit and visualization of final model
yfit= (-4.8370e+03)+(4.3612e+00)*regression_data$X2+(9.2753e+00)*regression_data$X3+
  (3.8313e+01)*regression_data$X4+(-1.0700e-02)*regression_data$X5+(8.6630e-01)*regression_data$X6+
  (7.2120e-01)*regression_data$X7+(-3.8400e-01)*regression_data$X8+(-1.5723e+00)*regression_data$X9+
  (6.7880e-01)*regression_data$X10+(4.6770e-01)*regression_data$X11+(4.3440e-01)*regression_data$X12+
  (9.6250e-01)*regression_data$X13+(1.7870e-01)*regression_data$X14+(9.5670e-01)*regression_data$X15
library(ggplot2)
library(dplyr)
library(hrbrthemes)
#observation of fitted vs observed data w.r.t. year
ggplot(Z, aes(x=regression_data$Year)) +
  geom_point(aes(y = yfit), color = "black") +
  geom_point(aes(y =regression_data$Y), color="lightblue", linetype="twodash") +
  scale_colour_manual("", 
                      breaks = c("Fitted", "Response"),
                      values = c("Fitted"="black", "Response"="lightblue")) +
  labs(x = "Year", y = "GNI at Current Prices",title = "Year vs GNI for RI",subtitle = "1981-2021")+ theme_ipsum()+ 
  theme(axis.text.x=element_text(angle=60, hjust=1))

#Training lasso regression model
library(glmnet)
C<- regression_data[,3:22]
Y_var <- regression_data[,2 ]
library(caret)
lasso_model = train(x = C,y = Y_var,method = "glmnet")
lasso_model
res<-residuals(lasso_model)
yhat<-fitted(lasso_model)
cor(res,yhat)
plot(Y_var,yhat)
plot(Y_var,yhat, type="l", col="light blue", lwd=10, xlab="y", ylab="yhat", main="Obderved vs Fitted Graph")
lines(Y_var, yhat, col="red", lwd=2)
lines(Y_var, yhat, type="b", col="red", lwd=2, pch=19)

#Make the predictions
predictions_lasso <- lasso_model %>% predict(regression_data)
library(dplyr)

#Print R squared scores
data.frame(Lasso_R2 = R2(predictions_lasso, Y_var))
V<-data.frame(as.data.frame.matrix(coef(lasso_model$finalModel, lasso_model$bestTune$lambda))) 

ggplot(NULL, aes(x=regression_data$Year)) +
  geom_point(aes(y = yhat), color = "red") +
  geom_point(aes(y =regression_data$Y), color="lightblue", linetype="twodash") +
  scale_colour_manual("", 
                      breaks = c("Fitted", "Response"),
                      values = c("Fitted"="black", "Response"="lightblue")) +
  labs(x = "Year", y = "GNI at Current Prices",title = "Year vs GNI for LASSO",subtitle = "1981-2021")+ theme_ipsum()+ 
  theme(axis.text.x=element_text(angle=60, hjust=1))
