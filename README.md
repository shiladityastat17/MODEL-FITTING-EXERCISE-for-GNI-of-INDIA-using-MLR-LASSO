# Model Fitting for GNI of INDIA using MLR
This is a model fitting exercise using MLR as the effects of the major Economical variables as regressors on the change in GROSS NATIONAL INCOME(GNI) (at current prices) of INDIA 
\documentclass[a4paper,12pt,twoside]{book}
\usepackage[subtle]{savetrees}
\usepackage{caption}
\usepackage{subfig}
\usepackage{subcaption}
\usepackage[letterpaper,top=2cm,bottom=2cm,left=3cm,right=3cm,marginparwidth=1.75cm]{geometry}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage[english]{babel}
\usepackage{fancyhdr}
\usepackage{amsmath}
\pagestyle{headings}
\pagestyle{fancy}
\fancyhf{}
\rhead{MLR Model}
\rfoot{Page \thepage}
\begin{document}
\section{ORDINARY LEAST SQUARE FITTING}
\subsection{TEST FOR SIGNIFICANCE OF THE REGRESSORS:}
\[H_0\::\:\beta_1\:=\;...\;=\:\beta_{20}\:=\:0\] \[against\]
\[H_1:\;at\;least\;\beta_j\;\neq\;0;\;at\;least\;one\;j\]\\
\includegraphics{a.jpg}\\
F statistics = 1.626e+04\\
p-value = 2.2e-16 $<$ 0.05,\\
So, we reject the null hypothesis at 5\% level of
significance and conclude on the basis of the given data that all the variables are not insignificant in explaining the GNI data.
\section{STANDARDIZED THE RESIDUALS \& INSPECTION OF THE NORMALITY ASSUMPTION OF ERRORS}
\subsection*{INSPECTION OF THE NORMALITY ASSUMPTION OF ERRORS}
\subsection{Q-Q Plot}
In this method we would plot the the ordered residuals $e_{(i)}$ against $\phi^{-1}(\frac{i-0.5}{n})$, for i=1,2,...,n.\\If the errors are truely from Normal Distribution then the plot will be nearly a straight line.\\
\begin{center}
\includegraphics{2.jpg}\\
\end{center}
The above Q-Q plot yields almost a straight line.So, it can be concluded that the residuals can be assumed to follow a Normal Distribution which supports our assumption. But we will use others methods to get check our assumption.
\subsection{HISTOGRAM APPROACH}
\begin{center}
\includegraphics{3.jpg}\\
\end{center}
The histogram of Residuals is not significantly different from a Normal Curve. From here we could have concluded that our normality assumption for errors hold, but we will apply Shapiro-Wilk Test for Normality to get the final conclusion.
\newpage
\subsection{SHAPIRO-WILK TEST FOR NORMALITY:}
Here the null hypothesis is,\\
$H_0$ : Errors are normally distributed\\
The Alternative hypothesis is\\
$H_1$ : $H_0$ is not true\\
The test Statistic is:
\[W\:=\:\frac{\sum_{i=1}^{n}a_i\hat{e_{(i)}}}{\sum_{i=1}^n(\hat{e_i}-\bar{e})^2}\]
Here, $\hat{e_i}$ are the $i^{th}$ fitted residual.\\
$\hat{e_{(i)}}$ is the ith order statistic.\\
$\bar{e}$ is the sample mean\\
\[(a_1,a_2,...,a_n)\:=\:\frac{m^TV^{-1}}{C}\]
\[And\]\[\;C\:=\:(m^TV^{-1}V^{-1}m)^{\frac{1}{2}}\]\\ Here m is made of the expected values of the order statistics of independent and identically
distributed random variables sampled from the standard normal distribution; finally, V is the covariance matrix of those normal order statistics. If p-value is greater than chosen level of significance, null hypothesis is accepted(i.e.distribution of error is not significantly different from a normal population).
\begin{center}
\includegraphics{4.jpg}\\
\end{center}
Test statistic, \[W\;=\;0.96202\] \& the p-value is \[0.1962\;>\;0.05(\alpha)\]\\
So, we fail to reject the null hypothesis at 5\% level of significance and conclude on the basis of the given data that the distribution of errors is not significantly different from Normal Distribution. So, our assumption is true.
\newpage
\subsection*{INSPECTION OF HOMOSCEDASTIC ASSUMPTION OF ERRORS}
\subsection*{RESIDUAL VS FITTED PLOT}
Here we plot the residuals against the fitted responses. If the errors are homoscedastic then we
would expect a horizontal band and completely random pattern around $\hat{e_i}\:=\:0$ line. If any pattern is detected this will indicate that the variances may be non constant.
\begin{center}
\includegraphics{5.jpg}\\
\end{center}
We have plotted the Residuals against the Fitted responses. We obtained a more or less random pattern among the residuals about the horizontal band. So we can conclude that, the assumption based on homoscedasticity is true in our Model.
\subsection{RESIDUAL VS EACH REGRESSORS}
\begin{figure}
    \centering
    \subfloat[X1]{{\includegraphics[width=10cm]{6.jpg} }}
    \qduo
    \subfloat[X2]{{\includegraphics[width=10cm]{7.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X3]{{\includegraphics[width=10cm]{8.jpg} }}
    \qduo
    \subfloat[X4]{{\includegraphics[width=10cm]{9.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X5]{{\includegraphics[width=10cm]{10.jpg} }}
    \qduo
    \subfloat[X6]{{\includegraphics[width=10cm]{11.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X7]{{\includegraphics[width=10cm]{12.jpg} }}
    \qduo
    \subfloat[X8]{{\includegraphics[width=10cm]{13.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X9]{{\includegraphics[width=10cm]{14.jpg} }}
    \qduo
    \subfloat[X10]{{\includegraphics[width=10cm]{15.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X11]{{\includegraphics[width=10cm]{16.jpg} }}
    \qduo
    \subfloat[X12]{{\includegraphics[width=10cm]{17.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X13]{{\includegraphics[width=10cm]{18.jpg} }}
    \qduo
    \subfloat[X14]{{\includegraphics[width=10cm]{19.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X15]{{\includegraphics[width=10cm]{20.jpg} }}
    \qduo
    \subfloat[X16]{{\includegraphics[width=10cm]{21.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X17]{{\includegraphics[width=10cm]{22.jpg} }}
    \qduo
    \subfloat[X18]{{\includegraphics[width=10cm]{23.jpg} }}
\end{figure}
\begin{figure}
    \centering
    \subfloat[X19]{{\includegraphics[width=10cm]{24.jpg} }}
    \qduo
    \subfloat[X20]{{\includegraphics[width=10cm]{25.jpg} }}
\end{figure}

\newpage
Hence we can observe that the residual v/s regressor plot for each regressor exhibits random behaviour which supports our previous conlusion about homoscedasticity of errors.
\subsection{BREUSCH-PAGAN TEST FOR HETEROSCEDASTICITY}
The Breusch-Pagan-Godfrey Test (sometimes shorted to the Breusch-Pagan test) is a test for heteroscedasticity of errors in regression. Heteroscedasticity means “differently scattered”; this is opposite to homoscedastic, which means “same scatter.” Homoscedasticity in regression is an important assumption; if the assumption is violated, you won’t be able to use regression analysis.\\
The test statistic for the Breusch-Pagan-Godfrey test is:\\
N * $R^2$ (with k degrees of freedom)
Where:\\
n = sample size\\
$R^2$ = (Coefficient of Determination) of the regression of squared residuals from the original regression.\\
k = number of independent variables.\\
The test statistic approximately follows a chi-square distribution.\\

The null hypothesis for this test is that the error variances are all equal.\\
The alternate hypothesis is that the error variances are not equal. More specifically, as Y increases, the variances increase (or decrease).\\
A small chi-square value (along with an associated small p-value) indicates the null hypothesis is true (i.e. that the variances are all equal).\\

Note that the Breush-Pagan test measures how errors increase across the explanatory variable, Y. The test assumes the error variances are due to a linear function of one or more explanatory variables in the model. That means heteroskedasticity could still be present in your regression model, but those errors (if present) are not correlated.
\begin{center}
\includegraphics{100.jpg}\\
\end{center}
So, p-value is 0.2011\\
So, we fail to reject the null hypothesis at 5\% level of significance and conclude on the basis of the given data the distribution of errors is not heteroscedastic. So, our assumption is true. 
\newpage
\section{INSPECTION OF AUTOCORRELATION AMONG THE ERRORS}
For our dataset, n=40, p=20, $\alpha$ = 0.05\\
Hence we would like to test,\\
\[H_0\;:\;\rho\;=\;0\]\[against\] \[H_A\;:\;\rho\;>\;0\] using Durbin-Watson test to check the existance of serial correlation in the data.
\begin{center}
\includegraphics{101.jpg}\\
\end{center}
In our model the value of Durbin-Watson Statistic is \[d=2.5148\]. It indicates that there may exist a small negative correlation among the errors as \[2\;<2\;.5148\;<\;4\].\\
From the DURBIN-WATSON table, we get, Durbin-Watson Statistic for  5 Per Cent Significance Points of $d_L$ and $d_U$ for n = 40 and p = 20 is
 \[d_L\;=\;0.430\;\:\&\:\;d_U\;=\;2.974\]
 \begin{center}
\includegraphics{130.png}\\
\end{center}
Remedy:
We will fit the model with usual error assumption
= + + … + +γ + , i=2(1)n
In this case to detect the presence of 'AUTOCORRELATION', we need to use Durbin's-h Alternative Test.
\[H_0:\rho\:=0\:\]\[against\]\[H_A\::\:Not\:H_0\]
The test statistic is given by,
\[h\:=\:\hat{\rho}\sqrt{\frac{n}{1-(n*Var(\hat{\gamma}))}}\]
We will reject the Null hypothesis at 5\% level of significance, if the observed h<-1.9596 orh>1.95996
Now,
So, h=-0.033
Hence the absolute value of h is less that 1.95996, So we accept the Null Hypothesis at 5% levelof Significance and conclude on the bais of the given data that the errors in our new model areindependent.\\
But the p-value of the test is 0.5369 $>$ 0.05($\alpha$), so we fail to reject the null hypothesis and conclude on the basis of the given data that the errors in our new model are independent.
\newpage
\section{MULTICOLLINEARITY}
Multicollinearity refers to a situation in which more than two explanatory variables in a multiple regression model are highly linearly related. There can be more than one reason behind multicollinearity, such as:
\begin{itemize}
\item The data collection method employed\\
\item Model specification using too many regressors\\
\item An over-defined model etc.\\
\end{itemize}
The consequences of multicollinearity being present in the model can be severe. When one or more regressors are linearly related with each other, the design matrix becomes ill-conditioned producing regression coefficients with large standard errors which can potentially damage the prediction capability of the model. There can be other problems like significant variable becoming insignificant one or regression coefficients appearing with wrong signs from what is expected.
\subsection*{DETECTION}
There are several methods for knowing the presence of multicollinearity in the model. One such method is to calculate the VIFs of the model.\\
VIF or Variance Inflation Factor for the j-th regressor is defined as:\\
\[VIF_j\:=\:\frac{1}{1-R_j^2}, j=1(1)p\]
Where $R_j^2$ is the multiple $R_j^2$ obtained from regressing $X_j$ on other regressors. The VIF value of 5 or more is an indicator of multicollinearity. Large values of VIF indicate multicollinearity leading to poor estimates of associated regression coefficients.\\
We started our initial analysis with 20 regressors. So there is a high likelihood of multicollinearity being present the preliminary model.
\begin{center}
\includegraphics[width=16cm]{28.jpg}\\
\end{center}
\subsection{MULTICOLLINEARITY DIAGONISTIC WITH VARIANCE DECOMPOSITION}
After knowing the presence of multicollinearity in our model, we would like to know the group(s) of variables responsible for it. For doing this we can use Variance Decomposition Method.\\
Variance Decomposition Method is a method to identify subsets that are involved in multi-collinearity. Variance decomposition proportions, defined as\\
\[\pi_{kj}\:=\:\frac{\frac{v_{kj}^2}{l_k}}{\sum_{k=1}^p\frac{v_{kj}^2}{l_k}}\:,\:\forall k, j=1(1)p\]
where, $l_1,l_2,...,l_p$ are eigen values of $X^TX$ and $v_1,v_2,...,v_p$ are corresponding orthonormal eigen vectors and $v_j\:=\:(v_{j1},v_{j2},...,v_{jp})^T$, j=1(1)p.\\
Now a variance decomposition table is formed with the $\pi_{kj}$ values along with a column containing the corresponding condition indices arranged in ascending order. So, large proportion in a row corresponding to the maximum condition index indicates the presence of multicollinearity among the corresponding regressors.
\subsection*{STEP 1:}
\begin{center}
\includegraphics{201.jpg}\\
\end{center}
\begin{itemize}
\item So the subsets (X11) and (X20) are involved in Multicollinearity.\\
\item In the first subset VIF of X11 is the highest and in the second subset the VIF of X20 is highest.\\
\item We drop the variables X11 and X20 and again fit a model.\\
\end{itemize}
\subsection*{STEP 2:}
\begin{center}
\includegraphics{202.jpg}\\
\end{center}
\begin{itemize}
\item So the subsets (X4,X8,X12) and (X5,X14,X18) are involved in Multicollinearity.\\
\item In the first subset VIF of X4 is the highest and in the second subset the VIF of X14 is highest.\\
\item We drop the variables X4 and X14, and again fit a model.\\
\end{itemize}
\subsection*{STEP 3:}
\begin{center}
\includegraphics{203.jpg}\\
\end{center}
\begin{itemize}
\item So the subsets (X8), (X6,X7) and (X12,X13) are involved in Multicollinearity.\\
\item In the first subset VIF of X8 is the highest, in the second subset the VIF of X7 is highest and in the third subset the VIF of X13 is highest\\
\item We drop the variables X8, X7 and X13, and again fit a model.\\
\end{itemize}
\subsection*{STEP 4:}
\begin{center}
\includegraphics{204.jpg}\\
\end{center}
\begin{center}
\begin{itemize}
\item So the subsets (X10), (X1,X2) and (X12,X15,X16) are involved in Multicollinearity.\\
\item In the first subset VIF of X10 is the highest, in the second subset the VIF of X2 is highest and in the third subset the VIF of X15 is highest\\
\item We drop the variables X2, X10 and X15, and again fit a model.\\
\end{itemize}
\subsection*{STEP 5:}
\begin{center}
\includegraphics{205.jpg}\\
\end{center}
\begin{itemize}
\item So the subsets (X1), (X5,X18) and (X6,X12) are involved in Multicollinearity.\\
\item In the first subset VIF of X1 is the highest, in the second subset the VIF of X5 is highest and in the third subset the VIF of X6 is highest\\
\item We drop the variables X1, X5 and X6, and again fit a model.\\
\end{itemize}
\subsection*{STEP 6:}
\begin{center}
\includegraphics{206.jpg}\\
\end{center}
\end{center}
\begin{itemize}
\item So the subsets (X9) and (X12,X17,X18) are involved in Multicollinearity.\\
\item In the first subset VIF of X9 is the highest, and in the second subset the VIF of X18 is highest\\
\item We drop the variables X9 and X18, and again fit a model.\\
\end{itemize}
\subsection*{STEP 7:}
\begin{center}
\includegraphics{207.jpg}\\
\end{center}
\begin{itemize}
\item So the subsets (X9) and (X12,X17,X18) are involved in Multicollinearity.\\
\item In the first subset VIF of X9 is the highest, and in the second subset the VIF of X18 is highest\\
\item We drop the variables X9 and X18, and again fit a model.\\
\end{itemize}
\subsection*{STEP 8:}
\begin{center}
\includegraphics{208.jpg}\\
\end{center}
In this way to remove the variables contributing Multicollinearity, we almost end up all important variables for our model building exercise. Still the proportion of variability of X12,X16,X17 and X19 are much higher than 0.5. So, we decided to go for stepwise selection method to get better subset model.
\newpage
\section{VARIABLE SELECTION}
When we fit a MLR model, we use the p-value in the ANOVA table to determine whether the model, as a whole, is significant. A natural question arises which regressors, among a larger set of all potential regressors, are important. We could use the individual p-values of the regressors and refit the model with only significant terms. But the p-values of the regressors are adjusted for the other terms in the model. So, picking out the subset of significant regressors can be somewhat challenging. This procedure of identifying the best subset of regressors to include in the model, among all possible subsets of regressors, is referred to as variable selection.\\
One approach is to start with a model containing only the intercept. Then using some chosen model fit criterion we slowly add terms to the model, one at a time, whose inclusion gives the most statistically significant improvement of the the model, and repeat this process until none improves the model to a statistically significant extent. This procedure is referred to as forward selection.\\
Another alternative is backward elimination. Here we start with the full model, then based on some model fit criterion we slowly remove variables one at a time, whose deletion gives the most statistically insignificant deterioration of the model fit, and repeat this process until no further variables can be deleted without a statistically insignificant loss of fit.\\
A third classical approach is stepwise selection. This is a combination of forward selection (FS) and backward elimination (BE). We start with FS, but at each step we recheck all regressors already entered, for possible deletion by BE method, this is because of the fact that regressor added at an earlier step may now be unnecessary in presence of new regressor.\\
Here we use stepwise selection method based on partial F-test \& AIC criterions to determine the best subset model.
\newpage
\subsection*{ON THE BASIS OF THE PAIRED F-TEST}
On the basis of the Step-wise Selection method:
\begin{center}
\includegraphics{42.jpg}\\
\end{center}
As we can see from the above stepwise selection summary we are losing most of our important variables, hence we go for stepwise selection based on Information Theoretic Criterion to obtain a better model.
\newpage
\subsection*{ON THE BASIS OF INFORMATION THEORETIC CRITERION(ITC)}
Our MLR model is\\
\[Y\:=\:X\beta\:+\:\epsilon\]
Where we assume that $\epsilon \sim$ N(0,$\sigma^2$) and Y$\sim N_n(X\beta,\sigma^2I_n)$\\\\
The likelihood function given by,
\[L(\beta,\sigma^2|y)\:=\:(2\pi)^{-\frac{n}{2}}(\sigma^2)^{-\frac{n}{2}}e^{-\frac{(y-X\beta)^T(y-X\beta)}{2}}\]
So, the general form of the penalized likelihood function is given by,
\[-2ln\hat{L} + penalty term\]
\[= nln(SSRes)+ penalty term\]
Where,
\[\hat{L}\:=\:max_{\beta,\sigma^2}L(\beta,\sigma^2|y)\:=\:L(\hat{\beta_{mle}},\hat{\sigma^2}_{mle})\]
\subsection{AKAIKE INFORMATION CRITERION(AIC)}
The Akaike information criterion (AIC) is a measure of the relative quality of statistical models for a given dataset. Given a collection of models for the data, AIC estimates the quality of each model, relative to each of the other models. Hence, AIC provides a means for model selection.\\
AIC is founded on information theory: it offers a relative estimate of the information lost when a given model is used to represent the process that generates the data. In doing so, it deals with the trade-off between the goodness of fit of the model and the complexity of the model.\\
AIC does not provide a test of a model in the sense of testing a null hypothesis, so it can tell nothing about the absolute quality of the model.If all the candidate models fit poorly, AIC will not give any warning of that.
\subsection*{DEFINITION}
Suppose that we have a statistical model of some n data. Then the AIC value of the model is the given by,\\
\[AIC\:=\:-2ln(\hat{L})\:+\:2k\]
Where,\\
K = The number of estimated parameters in the model\\
$\hat{L}$ = The maximized value of the likelihood function for the model\\
At first we consider all the subset models excluding one regressor at a time, and calculate the AIC value for each of those subset models. Then we discard the variable for which the subset model has the minimum AIC value.\\
Firstly, the method considered the Full 20 parameter model in the first step.\\\\
\begin{center}
\includegraphics{300.jpg}\\
\end{center}
The AIC corresponding to the Full Model is 544.84.\\
In this step this method compares the AICs by discarding each variable from the full model with the AIC of the full model.\\
From the table it can be observed that, the AIC corresponding to the model with 19 regressors after discarding the X17 variable is lower than the full model and also it is minimum among all 19 regressor model.\\\\
\begin{center}
\includegraphics{301.jpg}\\
\end{center}
In the next step considers the subset model by discarding X17 from the full model. The AIC corresponding to that model is 542.87.\\
AIC will be calculated after discarding each of the variable from the current subset model. The AIC corresponding to the model after discarding X1 from the current subset model is minimum, and in the next step this variable will be deleted from the model.\\
\begin{center}
\includegraphics{302.jpg}\\
\end{center}
In the next step considers the subset model by discarding X1 and X17 from the full model. The AIC corresponding to that model is 541.08.\\
AIC will be calculated after discarding each of the variable from the current subset model. The AIC corresponding to the model after discarding X4 from the current subset model is minimum, and in the next step this variable will be deleted from the model.\\
\begin{center}
\includegraphics{303.jpg}\\
\end{center}
In the next step considers the subset model by discarding X1,X4 and X17 from the full model. The AIC corresponding to that model is 539.44.\\
AIC will be calculated after discarding each of the variable from the current subset model.The AIC corresponding to the model after discarding X19 from the current subset model is minimum, and in the next step this
variable will be deleted from the model.\\
\begin{center}
\includegraphics{304.jpg}\\
\end{center}
In the next step considers the subset model by discarding X1,X4,X17 and X19 from the full model.\\
The AIC corresponding to that model is 539.09.\\
AIC will be calculated after discarding each of the variable from the current subset model.The AIC corresponding to the model after discarding X5 from the current subset model is minimum, and in the next step this
variable will be deleted from the model.\\
\begin{center}
\includegraphics{305.jpg}\\
\end{center}
In the next step considers the subset model by discarding X1,X4,X17,X5 and X19 from the full model.\\
The AIC corresponding to that model is 538.95.\\
AIC will be calculated after discarding each of the variable from the current subset model.The AIC corresponding to the model after discarding X6 from the current subset model is minimum, and in the next step this
variable will be deleted from the model.\\
\begin{center}
\includegraphics{307.jpg}\\
\end{center}
Finally considers the subset model by discarding X1,X4,X5,X6,X17 and X19 from the full model.\\
The AIC corresponding to that model is 537.54. AIC will be calculated after discarding each of the variable from the current subset model.\\
If any one of the variables is discarded from the current subset model the AIC is higher than the current model. So, no variable will be discarded any more, the current model is our final model.\\
\begin{center}
\includegraphics{308.jpg}\\
\end{center}
So, our best subset model chosen by AIC is given by,\\
\begin{center}
\includegraphics{309.jpg}\\
\end{center}
As we can observe from the above summary, the adjusted R-squared of the model is 0.999. Now, we want to keep all the regressors in our selected model but their may be presence of multicollinearity.\\
So, we check for the presence of Multicollinearity by looking at the corresponding VIFs.
\subsection*{Multicollinearity Detection after AIC}
\begin{center}
\begin{tabular}{||c c||} 
 \hline
 Variable & VIF\\ [0.5ex] 
 \hline\hline
 X2 & 64.53264\\ 
 \hline
 X3 & 92.16279\\
 \hline
 X7 & 2151.69969\\
 \hline
 X8 & 792.78979\\
 \hline
 X9 & 414.69627\\ 
 \hline
 X10 & 2646.14101\\ 
 \hline
 X11 & 6898.62211\\
 \hline
 X12 & 2795.07020\\
 \hline
 X13 & 4554.24417\\
 \hline
 X14 & 2036.14923\\
 \hline
 X15 & 1464.04974\\
 \hline
 X16 & 546.00801\\
 \hline
 X18 & 480.16478\\
 \hline
 X20 & 1453.39455\\[1ex] 
 \hline
\end{tabular}
\end{center}
As all the VIFs are higher than 5, we can say that the selected Subset model is also suffering from Multicollinearity.\\
Now as we obtained the best subset by AIC, we will keep all the variables in our model. For removal of multicollinearity we will use Ridge Regression.
\newpage
\section{RIDGE REGRESSION}
Ridge regression is a model tuning method that is used to analyze any data that suffers from multicollinearity. This method performs L2 regularization. L2 regularization adds an L2 penalty, which equals the square of the magnitude of coefficients. coefficients are shrunk by the same factor (so none are eliminated).\\
A tuning parameter ($\lambda$) controls the strength of the penalty term. When $\lambda$ = 0, ridge regression equals least squares regression. If $\lambda$ = $\inf$, all coefficients are shrunk to zero. The ideal penalty is therefore somewhere in between 0 and $\inf$.\\
Ridge estimators theoretically produce new estimators that are shrunk closer to the “true” population parameters.\\
The ridge function fitting the ridge regression is given by,
\begin{center}
$R(\beta)\:=\:min_{\beta}(Y-X\beta)^T(Y-X\beta)\:+\:\lambda(\beta)^T(\beta)$
\end{center}
OLS regression uses the following formula to estimate coefficients:\\
\begin{center}
$\hat{\beta}\:=\:(X^TX)^{-1}X^TY$
\end{center}
Ridge regression adds a product of ridge parameter & the identity matrix to the cross product matrix $(X^TX)$, forming a new matrix $(X^TX\:+\:\lambda I)$. The new formula is used to find the coefficients:
\begin{center}
$\tilde{\beta}\:=\:(X^TX+\lambda I)^{-1}X^TY$
\end{center}
To choose the value of $\lambda$, we have used a graphical method called ridge trace plot, a plot of estimated coefficients against a shrinkage parameter, to determine a favorable trade-off of bias against precision(inverse variance) of the estimates.
\begin{center}
\includegraphics{400.jpg}\\
\end{center}
From the above plot it seems that the estimates of coefficients stabilizes for some value of λ between 0.025 and 0.035.\\
From the ridge trace plot we choose that value of $\lambda$ for which VIFs all get stabilized (i.e. $<$ 5). The estimate of λ obtained by this method is 0.031. Hence we fit a new model with this value of λ and inspect its adjusted R-squared value.
\begin{center}
\includegraphics{500.jpg}\\
\end{center}
VIFs for the new fitted model are:
\begin{center}
\includegraphics{501.jpg}\\
\end{center}
\subsection*{Observation:}
\begin{itemize}
\item We observe that after fitting ridge regression model the VIFs have decreased significantly.\\
\item The adjusted R-square is 98.42%.\\
\end{itemize}
Now we perform residual analysis on our newly fitted model.
\section{INSPECTION OF PROPERTIES OF FITTED MODEL AFTER RIDGE REGRESSION}
\subsection{CHECK FOR HOMOSCEDASTICITY ASSUMPTION OF ERRORS}
\begin{center}
\includegraphics{502.jpg}\\
\end{center}
The correlation between fitted values and residuals is 0.1161798.
\begin{center}
\includegraphics{503.jpg}\\
\end{center}
From the plot we cannot find any systematic behavior and the correlation between fitted values and residuals is nearly 0. Hence our assumption of homoscedasticity holds true. For more concrete evidence we perform Breusch-Pagan Test for heteroscedasticity.
\begin{center}
\includegraphics{60.jpg}\\
\end{center}
As p-value=0.05028$>$0.05. \\
Hence, we conclude that there is no violation of homoscedasticity  assumption in our model
\subsection*{TEST FOR NORMALITY ASSUMPTION OF ERRORS}
\begin{center}
\includegraphics{62.jpg}\\
\end{center}
As we can see majority of points lies on the straight line. Hence no evidence of violation of normality assumption is found. To strengthen our judgement we further perform Shapiro-Wilk Test for normality.\\\\
\includegraphics{506.jpg}\\\\
As we can see p-value= 0.2238 $>$ 0.05, hence Normality Assumption of error holds.\\
Now we compare between observed and fitted responses.\\\\
\includegraphics{600.jpg}\\\\
The correlation between fitted and observed response is 0.9992524, which indicates a good fit of the observed responses.
\section{GRAPH BETWEEN OBSERVED AND FITTED RESPONSE}
\begin{center}
\includegraphics{700.jpg}\\
\end{center}
From the above graph, we conclude that our fitted values are approximately equal to observed values of response variable (GNI at Current Prices).\\
\section*{FINAL FITTED MODEL USING RIDGE REGRESSION}
Our final model after Ridge regression is given by,\\\\
$y-fitted\:=\:(-6.6368e+03)+(6.7110e+00)*X2+(1.5757e+01)*X3+
  (8.0400e-01)*X7+(-2.2440e-01)*X8+(-1.6076e+00)*X9+
  (5.4510e-01)*X10+(4.7750e-01)*X11+(4.2570e-01)*X12+
  (9.6460e-01)*X13+(1.9040e-01)*X14+(6.6090e-01)*X15+
  (4.4430e-01)*X16+(2.5200e-01)*X18+(5.5850e-01)*X20$
\section{CONCLUSION ABOUT THE RIDGE MODEL}
$R^2$ and Adjusted $R^2$ are used to explain the overall adequacy of the model, where,
\[R^2\:=\:1\:-\:\frac{SSRes}{SST}\]
\[and\]
\[R^2_{Adj}\:=\:1\:-\:\frac{n-1}{n-p-1}\frac{SSRes}{SST}\]
As adjusted R-squared value is 0.9842, we can conclude that 98.42\% variability of our response variable (GNI at current prices) can be explained by the regressors we included in the model.\\
Finally, from our analysis we come to conclude that agricultural production of commercial products , production of crude oil and petroleum , total savings deposit in commercial banks, gross fiscal deficit, combined net borrowing of both state and central government, Currency with public, total developmental and non-developmental expenditures of government, net bank credited to government, invested by LIC, combined liabilities of Central and State government, Export of principle commodities, Import of principle commodities, Foreign Exchange reserve in gold, foriegn currency assests etc and Currency in circulation these economical variables have effects on the change of Indian GNI at current prices. By optimizing these variables we can optimize the Indian GNI at current prices. We also see that gross fiscal deficit & combined net borrowing of both state and central government have negative impacts on GNI.\\
Now, we visualize our fitted and observed responses for the time period 1981-2021.
\section{GRAPHICAL OVERVIEW OF THE MODEL}
\begin{center}
\includegraphics{1000.jpg}\\
\end{center}
We can see from the figure that our model is satisfactorily efficient in explaining the change in Indian GNI at current prices.\\
We are satisfied with our model, but we also furthur want to use LASSO technique if we get a better model or not than the previous one.  
\newpage
\section{LASSO REGRESSION}
\subsection{LASSO Meaning}
The word “LASSO” stands for Least Absolute Shrinkage and Selection Operator. It is a statistical formula for the regularisation of data models and feature selection.\\
\subsection{REGULARIZATION}
Regularization is an important concept that is used to avoid overfitting of the data, especially when the trained and test data are much varying.\\
Regularization is implemented by adding a “penalty” term to the best fit derived from the trained data, to achieve a lesser variance with the tested data and also restricts the influence of predictor variables over the output variable by compressing their coefficients.\\
In regularization, what we do is normally we keep the same number of features but reduce the magnitude of the coefficients. We can reduce the magnitude of the coefficients by using different types of regression techniques which uses regularization to overcome this problem.\\ 
Lasso regression is a type of Regularization that uses shrinkage. Shrinkage is where data values are shrunk towards a central point, like the mean. The lasso procedure encourages simple, sparse models (i.e. models with fewer parameters). This particular type of regression is well-suited for models showing high levels of multicollinearity or when you want to automate certain parts of model selection, like variable selection/parameter elimination. \\
In other words, Lasso regression performs L1 regularization technique, which adds a penalty equal to the absolute value of the magnitude of coefficients. Larger penalties result in coefficient values closer to zero, which is the ideal for producing simpler models. On the other hand, L2 regularization (e.g. Ridge regression) doesn’t result in elimination of coefficients or sparse models. This makes the Lasso far easier to interpret than the Ridge.\\
\subsection{What is L1 Regularization}
Lasso regression performs L1 regularization, which adds a penalty equal to the absolute value of the magnitude of coefficients. This type of regularization can result in sparse models with few coefficients; Some coefficients can become zero and eliminated from the model. Larger penalties result in coefficient values closer to zero, which is the ideal for producing simpler models. On the other hand, L2 regularization (e.g. Ridge regression) doesn’t result in elimination of coefficients or sparse models. This makes the Lasso far easier to interpret than the Ridge.\\
\subsection{Performing the Regression}
Lasso solutions are quadratic programming problems, which are best solved with software . The goal of the algorithm is to minimize:\\
\[\sum_{i=1}^n(y_i-\sum_{j}x_{ij}\beta_{j})^2\:+\:\lambda\sum_{j=1}^p|\beta_j|\]
Which is the same as minimizing the sum of squares with constraint $\sum |\beta_j| \leq s $ Some of the $\beta$ s are shrunk to exactly zero, resulting in a regression model that’s easier to interpret.\\
A tuning parameter, $\lambda$ controls the strength of the L1 penalty. $\lambda$ is basically the amount of shrinkage:\\
\begin{itemize}
\item When $\lambda$ = 0, no parameters are eliminated. The estimate is equal to the one found with linear regression.\\
\item As $\lambda$ increases, more and more coefficients are set to zero and eliminated (theoretically, when $\lambda$ = $\infty$, all coefficients are eliminated).\\
\item As $\lambda$ increases, bias increases.\\
$\lambda$ As $\lambda$ decreases, variance increases.
\end{itemize}
if an intercept is included in the model, it is usually left unchanged.\\
\subsection{Analyze Final Model in LASSO}
we analyze the final model produced by the optimal lambda value.\\
To determine what value to use for lambda, we’ll perform k-fold cross-validation and identify the lambda value that produces the lowest test mean squared error (MSE).\\
Generally for coding, automatically performs k-fold cross validation using k = 10 folds.\\
The lambda value that minimizes the test MSE turns out to be 155.7381
\begin{center}
\includegraphics{70.jpg}\\
\end{center}
\begin{center}
\includegraphics{71.jpg}\\
\end{center}
No coefficient is shown for the predictor X1,X5,X8,X12,X13,X14,X17,X18 and X20, because the lasso regression shrunk the coefficient all the way to zero. This means it was completely dropped from the model because it wasn’t influential enough.
\begin{center}
\includegraphics{72.jpg}\\
\end{center}
Lastly, we can calculate the R-squared of the model on the dataset
\begin{center}
\includegraphics{73.jpg}\\
\end{center}
Here \textbf{red} dots represent fitted and \textbf{lightblue} dots represent observed values of Y.\\
The R-squared turns out to be 0.9987745. That is, the best model was able to explain 99.87 \% of the variation in the response values of our dataset.
\section*{Final Fitted Model}
Our final model after LASSO regression is given by,
\begin{center}
$\hat{Y}= (-1.302346e+03)+(7.596611e-01)X2+(7.729990e+00)X3+(7.684219e+01)X4+(3.690882e00)X6+(6.081934e-01)X7+(-3.099209e-01)X9+(1.968277e-02)X11+(7.631350e-01)X15+(4.947532e-02)X16+(-2.091705e-01)X19$
\end{center}
\begin{center}
\includegraphics{75.jpg}\\
\end{center}

  Note that this is a key difference between ridge regression and lasso regression. Ridge regression shrinks all coefficients towards zero, but lasso regression has the potential to remove predictors from the model by shrinking the coefficients completely to zero.
\subsection*{FINAL CONCLUSION ON LASSO REGRESSION}
  Finally, from our analysis we come to conclude that agricultural production of commercial products , production of crude oil and petroleum , Import of crude oil and petroleum, direct and indirect tax revenue, total savings deposit in commercial banks, combined net borrowing of both state and central government, total developmental and non-developmental expenditures of government, Export of principle commodities, Import of principle commodities &  Net inflow of aid these economical variables have effects on the change of Indian GNI at current prices. By optimizing these variables we can optimize the Indian GNI at current prices. We also see that combined net borrowing of both state and central government & Net inflow of aid have negative impacts on GNI.\\
\subsection{FINAL CONCLUSION}
we see that the adjusted R-square for the which we get previously through ridge regression is 0.9884 which is less than the adjusted R-square obtained from the LASSO technique. This difference is very small. So both of our model fitting exercises are quite satisfactory.  
Now, we visualize our fitted and observed responses for the time period 1980-2021.
\newpage
\section*{BIBLIOGRAPHY}
\begin{itemize}
    \item Lectures and lecture notes of MTH 416A Regression Analysis class of Dr. Sharmistha Mitra, Associate professor, Department of Mathematics and Statistics, IIT Kanpur
    \item Introduction to Linear Regression Analysis: D.C. Montgomery, Peck , Vinning
    \item An Introduction to the Statistical Learning with R (ISLR), Hastie, Tibshirani
    \item different materials from internet for our project
\end{itemize}
\end{document}
