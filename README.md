 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="generator" content="pandoc" />

<meta name="author" content="Shiladitya Bose" />




<div class="container-fluid main-container">


<div id="header">
<h1 class="title">EFFECTS OF THE MAJOR ECONOMICAL VARIABLES
ON THE CHANGE IN GROSS NATIONAL
INCOME(GNI) (AT CURRENT PRICES) OF INDIA
(1981-2021)</h1>
<h4 class="author"><em>Shiladitya Bose</em></h4>
<h4 class="date"><em><ol start="10" style="list-style-type: decimal">
<li>May 2022</li>
</ol></em></h4>
</div>


<div id="synopsis" class="section level2">
<h2>Synopsis</h2>
<p><b>GROSS NATIONAL INCOME(GNI)</b> is the total amount of money earned by a nation’s people and businesses. It is used to measure and track a nation’s wealth from year to year. The number includes the nation’s <b>GROSS DOMESTIC PRODUCT (GDP)</b> plus the income it receives from overseas sources. The more widely known term GDP is an estimate of the total value of all goods and services produced within a nation for a set period, usually a year.</p>
<p>GNI is an alternative to GDP as a means of measuring and tracking a nation’s wealth and is considered a more accurate indicator for some nations. GNI is an alternative to GDP as a measure of wealth. It calculates income instead of output.</p>
<p>GNI can be calculated by adding income from foreign sources to GDP. Nations that have substantial foreign direct investment, foreign corporate presence, or
foreign aid will show a significant difference between GNI and GDP.</p>
<p>GNI calculates the total income earned by a nation’s people and businesses, including investment income, regardless of where it was earned. It also covers money received from abroad such as foreign investment and economic development aid.</p>
<p>For nations, like the US, there is little difference between GDP and GNI, since the difference between income received versus payments made to the rest of the world does not tend to be significant. For some countries, however, the difference is significant. Conversely, it can be much lower if foreigners control a large
proportion of a country’s production, as is the case with Ireland, a low-tax jurisdiction where the European and U.S. subsidiaries of a number of multinational companies nominally reside.</p>
<p>The formula of GNI is:</p>
<b>GNI = C + I + G + X</b>
<p>where : <b>PERSONAL CONSUMPTION(C)</b>, <b>BUSINESS INVESTMENT(I)</b>, <b>GOVERNMENT SPENDING(G)</b>, <b>EXPORTS - IMPORTS(X)</b>.</p>
<p>The goal of this project is to predict the manner in which they did the exercise. This is the <code>classe</code> variable in the training set.</p>
</div>
<div id="data-description" class="section level2">
<h2>Data description</h2>
<p>The outcome variable is <code>classe</code>, a factor variable with 5 levels. For this data set, participants were asked to perform one set of 10 repetitions of the Unilateral Dumbbell Biceps Curl in 5 different fashions:</p>
<ul>
<li>exactly according to the specification (Class A)</li>
<li>throwing the elbows to the front (Class B)</li>
<li>lifting the dumbbell only halfway (Class C)</li>
<li>lowering the dumbbell only halfway (Class D)</li>
<li>throwing the hips to the front (Class E)</li>
</ul>
</div>
<div id="initial-configuration" class="section level2">
<h2>Initial configuration</h2>
<p>The initial configuration consists of loading some required packages and initializing some variables.</p>

<pre class="r"><code>#Data variables
dat <- read.csv('C:/Users/bose1/Downloads/Final_Reg.csv')
sum(is.na(dat))</code></pre>

<pre class="r"><code>sum(duplicated(dat))</code></pre>

<pre class="r"><code>#Showing the dimension of the dataset 
dim(dat)</code></pre>

<pre class="r"><code>#Showing the data types of the different variables 
str(dat)
</code></pre>

<pre class="r"><code>regression_data<-dat
data1<-lm(Y~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16+X17+X18+X19+X20,data=regression_data)
summary(data1)</code></pre>

<pre class="r"><code>data1.stdres = rstandard(data1) 
qqnorm(data1.stdres)
abline(-0.1,1.16)
</code></pre>

<pre class="r"><code>h<-hist(data1.stdres,breaks=10,col='lightblue',xlab='Residuals',main='Histogram with Normal Curve',freq=TRUE) 
xfit<-seq(min(data1.stdres),max(data1.stdres),length=40) 
yfit<-dnorm(xfit,mean=mean(data1.stdres),sd=sd(data1.stdres)) 
yfit<-yfit*diff(h$mids[1:2])*length(data1.stdres) 
lines(xfit, yfit, col='blue', lwd=2)
</code></pre>

<pre class="r"><code>shapiro.test(data1.stdres) 
</code></pre>

<pre class="r"><code>plot(fitted(data1),data1.stdres,ylab='Standardized Residuals',xlab='Fitted values',ylim=c(-1,1.5),xlim=c(0, 30000),main='Residuals vs Fitted', pch=20) 
abline(0,0,lty=4)
</code></pre>

<pre class="r"><code>par(mfrow=c(2,2))
plot(regression_data$X1,data1.stdres,ylab='Standardized Residuals',xlab='X1',main='Residuals vs X1',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X2,data1.stdres,ylab='Standardized Residuals',xlab='X2',main='Residuals vs X2',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X3,data1.stdres,ylab='Standardized Residuals',xlab='X3',main='Residuals vs X3',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X4,data1.stdres,ylab='Standardized Residuals',xlab='X4',main='Residuals vs X4',pch=20) 
abline(0,0,lty=4)
par(mfrow=c(2,2))
plot(regression_data$X5,data1.stdres,ylab='Standardized Residuals',xlab='X5',main='Residuals vs X5',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X6,data1.stdres,ylab='Standardized Residuals',xlab='X6',main='Residuals vs X6',pch=20) 
abline(0,0,lty=4)
plot(regression_data$X7,data1.stdres,ylab='Standardized Residuals',xlab='X7',main='Residuals vs X7',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X8,data1.stdres,ylab='Standardized Residuals',xlab='X8',main='Residuals vs X8',pch=20) 
abline(0,0,lty=4)
par(mfrow=c(2,2))
plot(regression_data$X9,data1.stdres,ylab='Standardized Residuals',xlab='X9',main='Residuals vs X9',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X10,data1.stdres,ylab='Standardized Residuals',xlab='X10',main='Residuals vs X10',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X11,data1.stdres,ylab='Standardized Residuals',xlab='X11',main='Residuals vs X11',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X12,data1.stdres,ylab='Standardized Residuals',xlab='X12',main='Residuals vs X12',pch=20) 
abline(0,0,lty=4) 
par(mfrow=c(2,2))
plot(regression_data$X13,data1.stdres,ylab='Standardized Residuals',xlab='X13',main='Residuals vs X13',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X14,data1.stdres,ylab='Standardized Residuals',xlab='X14',main='Residualsvs X14',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X15,data1.stdres,ylab='Standardized Residuals',xlab='X15',main='Residuals vs X15',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X16,data1.stdres,ylab='Standardized Residuals',xlab='X16',main='Residuals vs X16',pch=20) 
abline(0,0,lty=4) 
par(mfrow=c(2,2)) 
plot(regression_data$X17,data1.stdres,ylab='Standardized Residuals',xlab='X17',main='Residuals vs X17',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X18,data1.stdres,ylab='Standardized Residuals',xlab='X18',main='Residuals vs X18',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X19,data1.stdres,ylab='Standardized Residuals',xlab='X19',main='Residuals vs X19',pch=20) 
abline(0,0,lty=4) 
plot(regression_data$X20,data1.stdres,ylab='Standardized Residuals',xlab='X20',main='Residuals vs X20',pch=20) 
abline(0,0,lty=4) 
par(mfrow=c(2,2))
</code></pre>

<pre class="r"><code>library(lmtest) 
bptest(data1)</code></pre>

<pre class="r"><code>dwtest(data1,order.by=NULL,alternative=c('two.sided'),iterations=20,exact=NULL,tol=1e-10,data = list())</code></pre>

<pre class="r"><code>library(car) 
vif(data1)</code></pre>

<pre class="r"><code>library(mctest)
eigprop(data1) </code></pre>

<pre class="r"><code>olsreg_1<-lm(Y~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X12+X13+X14+X15+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_1)</code></pre>

<pre class="r"><code>olsreg_2<-lm(Y~X1+X2+X4+X5+X7+X8+X9+X10+X12+X13+X15+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_2)</code></pre>

<pre class="r"><code>olsreg_3<-lm(Y~X1+X2+X4+X5+X8+X9+X10+X13+X15+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_3)</code></pre>

<pre class="r"><code>olsreg_4<-lm(Y~X1+X4+X5+X8+X9+X10+X13+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_4)</code></pre>

<pre class="r"><code>olsreg_5<-lm(Y~X4+X9+X10+X13+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_5)</code></pre>

<pre class="r"><code>olsreg_6<-lm(Y~X4+X9+X16+X17+X18+X19,regression_data) 
eigprop(olsreg_6)</code></pre>

<pre class="r"><code>olsreg_7<-lm(Y~X9+X16+X17+X19,regression_data) 
eigprop(olsreg_7)</code></pre>

<pre class="r"><code>library(olsrr)
Step <- ols_step_both_p(data1,pent=0.05,prem=0.05) 
Step</code></pre>

<pre class="r"><code>library(MASS) 
AIC<-stepAIC(data1,direction='both') 
AIC</code></pre>

<pre class="r"><code>summary(AIC)
</code></pre>

<pre class="r"><code>vif(AIC)
</code></pre>

<pre class="r"><code>library(tidyverse) 
df <- regression_data %>% select(4:5, 9:18, 20, 22) 
library(lmridge) 
ridge_mod = lmridge(regression_data$Y~.,df, K = seq(0, 0.1, 0.001),scaling='sc') </code></pre>

<pre class="r"><code>plot(ridge_mod, type = 'ridge')
model1=lmridge(regression_data$Y~.,df, K=0.031) 
summary(model1) 
summary(model1)$summaries[[1]]$stats</code></pre>

<pre class="r"><code>vif(model1)</code></pre>

<pre class="r"><code>res<-residuals(model1) 
yhat<-fitted(model1) 
cor(res,yhat)</code></pre>

<pre class="r"><code>plot(res,yhat,xlab='Residual',ylab='Fitted',main='Residual Vs Fitted Plot',pch=20) 
abline(h=0)</code></pre>

<pre class="r"><code>library(lmtest) 
bptest(model1)</code></pre>

<pre class="r"><code>shapiro.test(res) 
qqnorm(res) 
abline(0,2000)</code></pre>

<pre class="r"><code>cor(regression_data$Y,yhat)</code></pre>

<pre class="r"><code>par(mfrow=c(2,1))
plot(regression_data$Y,yhat) 
plot(regression_data$Y,yhat,type='l',col='lightblue',lwd=10,xlab='y',ylab='yhat',main='Observed vs Fitted Graph')
lines(regression_data$Y,yhat,col='red',lwd=2) 
lines(regression_data$Y,yhat,type='b',col="red",lwd=2,pch=19)</code></pre>

<pre class="r"><code>library(caret)
library(glmnet)
C<- regression_data[,3:22]
Y_var <- regression_data[,2 ]
lasso_model = train(x = C,y = Y_var,method = "glmnet") 
lasso_model</code></pre>

<pre class="r"><code>#R squared scores 
data.frame(as.data.frame.matrix(coef(lasso_model$finalModel, lasso_model$bestTune$lambda)))</code></pre>

<pre class="r"><code>Y_var <- regression_data[,2 ]
yhat<-fitted(lasso_model)
resid<-residuals(lasso_model)
cor(Y_var,resid)
#cor(Y_var,yhat)</code></pre>

<pre class="r"><code>Y_var <- regression_data[,2 ]
yhat<-fitted(lasso_model)
resid<-residuals(model1)
cor(Y_var,resid)
cor(Y_var,yhat)</code></pre>

<pre class="r"><code>#Make the predictions 
predictions_lasso <- lasso_model %>% predict(regression_data) 
R_sq<-data.frame(Lasso_R2 = R2(predictions_lasso, Y_var))
Q<-R_sq$Lasso_R2 
Adj_R_sq<-(1-(39/19)*(1-Q))
Adj_R_sq</code></pre>

<pre class="r"><code>par(mfrow=c(2,1))
plot(Y_var,yhat)
plot(Y_var,yhat, type="l", col="light blue", lwd=10, xlab="y", ylab="yhat", main="Observed vs Fitted Graph (LASSO)") 
lines(Y_var, yhat, col="red", lwd=2) 
lines(Y_var, yhat, type="b", col="red", lwd=2, pch=19)</code></pre>





</div>
<div id="data-processing" class="section level2">
<h2>Data processing</h2>
<p>In this section the data is downloaded and processed. Some basic transformations and cleanup will be performed, so that <code>NA</code> values are omitted. Irrelevant columns such as <code>user_name</code>, <code>raw_timestamp_part_1</code>, <code>raw_timestamp_part_2</code>, <code>cvtd_timestamp</code>, <code>new_window</code>, and <code>num_window</code> (columns 1 to 7) will be removed in the subset.</p>
<p>The <code>pml-training.csv</code> data is used to devise training and testing sets. The <code>pml-test.csv</code> data is used to predict and answer the 20 questions based on the trained model.</p>

</div>
<div id="cross-validation" class="section level2">
<h2>Cross-validation</h2>
<p>In this section cross-validation will be performed by splitting the training data in training (75%) and testing (25%) data.</p>

</div>
<div id="expected-out-of-sample-error" class="section level2">
<h2>Expected out-of-sample error</h2>
<p>The expected out-of-sample error will correspond to the quantity: 1-accuracy in the cross-validation data. Accuracy is the proportion of correct classified observation over the total sample in the subTesting data set. Expected accuracy is the expected accuracy in the out-of-sample data set (i.e. original testing data set). Thus, the expected value of the out-of-sample error will correspond to the expected number of missclassified observations/total observations in the Test data set, which is the quantity: 1-accuracy found from the cross-validation data set.</p>
</div>
<div id="exploratory-analysis" class="section level2">
<h2>Exploratory analysis</h2>
<p>The variable <code>classe</code> contains 5 levels. The plot of the outcome variable shows the frequency of each levels in the subTraining data.</p>
<pre class="r"><code>plot(subTraining$classe, col=&quot;orange&quot;, main=&quot;Levels of the variable classe&quot;, xlab=&quot;classe levels&quot;, ylab=&quot;Frequency&quot;)</code></pre>

<p><img src=" https://github.com/shiladityastat17/Machine_Learning_Random_Forest_Coursera_Project/blob/main/exploranalysis-1.png”/></p>
<p>The plot above shows that Level A is the most frequent classe. D appears to be the least frequent one.</p>
</div>
<div id="prediction-models" class="section level2">
<h2>Prediction models</h2>
<p>In this section a decision tree and random forest will be applied to the data.</p>
<div id="decision-tree" class="section level3">
<h3>Decision tree</h3>

![alt text]( https://github.com/shiladityastat17/Machine_Learning_Random_Forest_Coursera_Project/blob/main/decisiontree-1.png?raw=true)


  
<p>Following confusion matrix shows the errors of the prediction algorithm.</p>

 <pre><code>## Confusion Matrix and Statistics
## 
##           Reference
## Prediction    A    B    C    D    E
##          A 1266  208   25   91   29
##          B   33  535   71   30   67
##          C   28   90  676  130   94
##          D   45   72   59  501   43
##          E   23   44   24   52  668
## 
## Overall Statistics
##                                          
##                Accuracy : 0.7435         
##                  95% CI : (0.731, 0.7557)
##     No Information Rate : 0.2845         
##     P-Value [Acc &gt; NIR] : &lt; 2.2e-16      
##                                          
##                   Kappa : 0.6738         
##  Mcnemar's Test P-Value : &lt; 2.2e-16      
## 
## Statistics by Class:
## 
##                      Class: A Class: B Class: C Class: D Class: E
## Sensitivity            0.9075   0.5638   0.7906   0.6231   0.7414
## Specificity            0.8994   0.9492   0.9155   0.9466   0.9643
## Pos Pred Value         0.7820   0.7269   0.6640   0.6958   0.8237
## Neg Pred Value         0.9607   0.9007   0.9539   0.9276   0.9431
## Prevalence             0.2845   0.1935   0.1743   0.1639   0.1837
## Detection Rate         0.2582   0.1091   0.1378   0.1022   0.1362
## Detection Prevalence   0.3301   0.1501   0.2076   0.1468   0.1654
## Balanced Accuracy      0.9035   0.7565   0.8531   0.7849   0.8528</code></pre>
</div>
<div id="random-forest" class="section level3">
<h3>Random forest</h3>

<p>Following confusion matrix shows the errors of the prediction algorithm.</p>
</div>
</div>
<div id="conclusion" class="section level2">
<h2>Conclusion</h2>
<div id="result" class="section level3">
<h3>Result</h3>
<p>The confusion matrices show, that the Random Forest algorithm performens better than decision trees. The accuracy for the Random Forest model was 0.995 (95% CI: (0.993, 0.997)) compared to 0.739 (95% CI: (0.727, 0.752)) for Decision Tree model. The random Forest model is choosen.</p>
</div>
<div id="expected-out-of-sample-error-1" class="section level3">
<h3>Expected out-of-sample error</h3>
<p>The expected out-of-sample error is estimated at 0.005, or 0.5%. The expected out-of-sample error is calculated as 1 - accuracy for predictions made against the cross-validation set. Our Test data set comprises 20 cases. With an accuracy above 99% on our cross-validation data, we can expect that very few, or none, of the test samples will be missclassified.</p>
</div>
</div>
<div id="submission" class="section level2">
<h2>Submission</h2>
<p>In this section the files for the project submission are generated using the random forest algorithm on the testing data.</p>

</div>

</div>


</body>
</html>
