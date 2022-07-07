 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="generator" content="pandoc" />

<meta name="author" content="SHILADITYA BOSE" />




<div class="container-fluid main-container">


<div id="header">
<h1 class="title">OUTLINE OF THE PROJECT BASED ON EFFECTS OF THE MAJOR ECONOMICAL VARIABLES
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
<p>THE GOAL OF THIS PROJECT IS TO BUILD A MODEL BASED ON SEVERAL MACRO-ECONOMICAL VARIABLES TO PREDIT GNI IN EFFICIENT MANNER.</p>
</div>
<div id="PROJECT-DESCRIPTION" class="section level2">
<h2>PROJECT-DESCRIPTION</h2>
<li>Collected data on GNI (at current price) and on 20 other economic variables for past 40 years FROM RBI website and
performed Data Cleansing task.</li>
<li>Fitted an <b>MLR</b> model on the dataset and planning and working on checking for validation of basic
assumptions i.e. <b>NORMALITY</b>, <b>HETEROSCEDASTICITY</b> assumption of the errors and <b>PRESENCE</b> of <b>AUTOCORRELATION</b>
among the errors.</li>
<li>Also tried on to solve <b>MULTICOLLINEARITY</b> problems using <b>VIF</b> and </b>VARIANCE DECOMPOSITION</b> Method. Then apply <b>STEPWISE SELECTION</b>, <b>AIC</b> and then <b>RIDGE</b> regression to introduce bias and <b>REMOVE MULTICOLLINEARITY</b> problem.</li>
<li>Also applying <b>LASSO</b> technique to select regressors and compare the results obtained from both <b>RIDGE</b> and <b>LASSO</b> technique. Finally we will come to a decision to which model will be preferred most to serve our purpose.</li>
<li>We see <b>RIDGE</b> perfored well in terms of <b>LASSO</b> for <b>BETTER VARIABLE SELECTION</b> through both have same <b>R-SQUARED</b> value.</li>
</div>

<div id="VARIABLE DESCRIPTIONS" class="section level3">
<h2>VARIABLE DESCRIPTIONS</h2>
<p>For our analysis,</p>
<li><b>RESPONSE VARIABLE(Y)</b>: <b>GROSS NATIONAL INCOME</b> (in Current LCU) in Billion</li>
<p>and the <b>EXPLANATORY VARIABLES</b>:</p>
<li><b>AGRICULTURAL PRODUCTION OF FOOD GRAINS (X1)</b> In Million Metric Tonnes</li>
<li><b>AGRICULTURAL PRODUCTION OF COMMERCIAL PRODUCTS (X2)</b> in Million Metric</li>
<li><b>PRODUCTION OF CRUDE OIL AND PETROLEUM (X3)</b> in Million Metric tonnes</li>
<li><b>IMPORT-OF CRUDE OIL AND PETROLEUM (X4)</b> in Million Metric tonnes</li>
<li><b>GOLD PRICE IN MUMBAI(INDIA) (X5)</b> in Rupees</li>
<li><b>DIRECT AND INDIRECT TAX REVENUE (X6)</b> in Billion Rupees</li>
<li><b>TOTAL SAVING DEPOSITS IN COMMERCIAL BANKS (X7)</b> in Billion Rupees</li>
<li><b>GROSS FISCAL DEFICIT (X8)</b> in Billion Rupees</li>
<li><b>COMBINED NET BORROWING OF CENTRAL AND STATE GOVERNMENT (X9)</b> in Billion Rupees</li>
<li><b>CURRENCY WITH PUBLIC (X10)</b> in Billion Rupees</li>
<li><b>GOVERNMENT’S DEVELOPMENTAL AND NON-DEVELOPMENTAL EXPENDITURE (X11)</b> in Billion Rupees</li>
<li><b>NET BANK CREDITED TO GOVERNMENT (X12)</b> in Billion Rupees</li>
<li><b>INVESTMENT BY LIC (X13)</b> in Billion Rupees</li>
<li><b>COMBINED LIABILITIES OF THE CENTRAL AND STATE GOVERMENT (X14)</b> in Billion Rupees</li>
<li><b>EXPORT OF PRINCIPAL COMMODITIES (X15)</b> in Billion Rupees</li>
<li><b>IMPORT OF PRINCIPAL COMMODITIES (X16)</b> in Billion Rupees</li>
<li><b>FOREIGN DIRECT INVESTMENT INFLOWS (X17)</b> in Billion Rupees</li>
<li><b>FOREIGN EXCHANGE RESERVES IN TERMS OF GOLD, FOREIGN CURRENCY ASSETS, RESERVE TRANCHE POSITION (X18)</b> in Billion Rupees</li>
<li><b>NET INFLOWOF AID (X19)</b> in Crore Rupees</li>
<li><b>CURRENCY IN CIRCULATION (X20)</b> in Billion Rupees</li>
</body>
</html>
