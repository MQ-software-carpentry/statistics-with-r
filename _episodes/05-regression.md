---
title: "Regression"
author: "Dr Tania Prvan"
teaching: 60
exercises: 30
questions:
- ""
objectives:
- ""
keypoints:
- ""
source: "Rmd"
mathjax: true
---






### 2.1 HYPOTHESIS TESTS

We wish to test whether the overall regression is significant; i.e., are all the predictors
taken together useful in the prediction of $Y$?

Should a particular predictor be in the regression model?

Should a set of predictors be added to the regression model? (This situation arises when a group
of predictors belong together.)

In general, we have a null model (reduced model), in which some or all of the predictors are
left out of the model (i.e. some or all of $\beta_i$'s are hypothesised to be zero) and a full
model which has all the predictors in the model (i.e. all $\beta_i$'s present). The general form
of the test statistic is:

$$F=\frac{\hat{\sigma}_0^2}{\hat{\sigma}^2}$$

where $\hat{\sigma}^2$ is the usual estimate of $\sigma^2$ under the full model and
$\hat{\sigma}_0^2$ is the estimate of $\sigma^2$ under the null model (reduced model). If the
null model holds $\hat{\sigma}_0^2$ equals $\sigma^2$ and if the null model does not hold then
it is greater than $\sigma^2$.	Having more parameters in the model will always reduce the
residual variation. Therefore $\sigma^2\le\hat{\sigma}_0^2$.If the null model holds we would
expect $F$ to be approximately equal to 1 and if the full model holds we would expect $F$ to be
greater than 1. If $F$ is large the full model has reduced the residual variation substantially,
the additional predictors are useful in the prediction of the $y$  whereas if $F$ is close to 1
then the additional predictors in the full model have not reduced the residual variation by much
so we would use the null model.

#### 2.1.1 Test for overall significance of the regression

If we had $p$ predictors the full model would be

$$y_i=\beta_0+\beta_1x_{i1}+\beta_2x_{i2}+\cdots+\beta_{ip}x_p+\varepsilon_i,   i=1,\cdots,n.$$

If we are interested in testing whether the regression is significant or not we are interested
in testing whether some of the predictors ($X_i$'s) are useful or not. 
The null model would be that none of the predictors are useful:

$$y_i=\beta_0+\varepsilon_i,   i=1,\cdots,n.$$

We test the hypothesis $H_0:\beta_1=\beta_2=\cdots=\beta_p=0$ against
$H_1:$ at least one $\beta_i\neq0$. In matrix notation
	
$$H_0:\left(\begin{matrix}\beta_1\\\beta_2\\\vdots\\\beta_p\\\end{matrix}\right)=\left(\begin{matrix}0\\0\\\vdots\\0\\\end{matrix}\right) \mbox{ versus } H_1:\left(\begin{matrix}\beta_1\\\beta_2\\\vdots\\\beta_p\\\end{matrix}\right)\neq\left(\begin{matrix}0\\0\\\vdots\\0\\\end{matrix}\right).$$

Here the regression mean square would be used to estimate $\sigma^2$ under the full model and
the residual mean square would be used to estimate $\sigma^2$ under the null model. 
	The test statistic is 

$$F=\frac{MSR}{MSE}=\frac{SSR/p}{SSE/(n-p-1)}$$

which under the null hypothesis has a $F_{p,n-p-1}$ distribution. 
We reject $H_0$ in favour of $H_1$ if $F$ lies in the upper tail of this distribution. 

Computations can be summarised in the ANOVA table:
$$ \begin{array}{l|llll}\hline
\mbox{Source} & df & SS & MS & F\\ \hline
\mbox{Regression} & p & SSR & MSR=\frac{SSR}{p} & F=\frac{MSR}{MSE}\\
\mbox{Residual} & n-p-1 & SSE & MSE=\frac{SSE}{n-p-1}=\hat{\sigma}^2 & \\ \hline
\mbox{Total} & n-1 & SST & & \\ \hline
\end{array} $$

where $SST$, $SSR$ and $SSE$ are defined as before. We have exactly the same decomposition as
before that 

SST = SSR + SSE

Now, $R^2=\frac{SSR}{SST}$ is the proportion of the variance explained by the regression.

We can show that

$$F=\frac{R^2/p}{(1-R^2)/(n-p-1)}.$$

A small value of $R^2$ will result in a small value of $F$ and we will not reject $H_0$ in
favour of $H_1$. A value of $R^2$ close to 1 will result in a large value of $F$ and we will
reject $H_0$ in favour of $H_1$.
 
We already have seen an example of testing whether the regression is significant.

#### 2.1.2 Selecting the "best" model

There is no unique criterion for choosing the "best" model. We want as simple a model as
possible that adequately explains what is going on ("principle of parsimony"). The more
parameters in the model, the closer the fitted values will be to the observed data and the
higher $R^2$ will be but the standard errors of the estimates ${\hat{\beta}}_i$ will increase
because we are estimating more parameters on the same amount of information. We trade off
between

1. Few $X$'s (small $p$): lower $R^2$ but more precise $\beta_i$'s and
1. Many $X$'s (large $p$): higher $R^2$ but less precise $\beta_i$'s.

We try to find that set of predictors
which give an acceptable model fit, or $R^2$. If a predictor does not add to the model's
explanation of the variation of $Y$  in a significant way, it is not added to the model, even
though it would have reduced $R^2$.

##### Comparing two models

The **reduced model** is the model with the smallest number of parameters. We want to test
$H_0:$ reduced model is appropriate against $H_1:$ full model is appropriate. To formally test
this we need to fit the reduced model and record from the output the Residual (Error) Sum of
Squares and its associated degrees of freedom, which we denote by $SSE_{RM}$ and $DF_{RM}$
respectively. The same information is required from fitting the full model, label the residual
sum of squares and its associated degrees of freedom by $SSE_{FM}$ and $DF_{FM}$.  The
appropriate test statistic is

$$T=\frac{\left(SSE_{RM}-SSE_{FM}\right)/(DF_{RM}-DF_{FM})}{SSE_{FM}/DF_{FM}}.$$

We reject $H_0$ in favour of $H_1$ at the $100\alpha\%$ significance level if
$T>F_{DF_{RM}-DF_{FM},DF_{FM};\alpha}$.	This is only valid if the model assumptions hold. We
will look at regression diagnostics in detail the next section.

##### Partial F-tests

Assume that we have $n$ observations. The full model has all the $p$ predictors in it. 
The reduced model has one predictor removed, say the i'th predictor. We use the same test
statistic as above and reject $H_0:\beta_i=0$ in favour of $H_1:\beta_i\neq0$ at the
$\alpha100\%$ significance level if $T>F_{1,n-p-1;\alpha}$. You can think of the partial F tests
as assessing variables as if they were the last being added to the model.

An equivalent way of testing $H_0:\beta_i=0$ versus $H_1:\beta_i\neq 0$ is using
$t=\frac{\hat{\beta}_i}{S.E.(\hat{\beta}}_i)}$
which has a $t_{n-p-1}$ distribution if $H_0$ is true.
The R function `lm` gives you the partial F-tests in this way. 
The disadvantage of partial F-tests is that they are not independent tests. 

##### EXAMPLE: Heat Flux revisited


~~~
summary(heatflux_fit)
~~~
{: .language-r}



~~~
Error in summary(heatflux_fit): object 'heatflux_fit' not found
~~~
{: .error}

The Partial F-tests p-values are given in the Pr(>|t|) column. You only look at these if the
model assumptions hold. Suppose they do, then you would conclude at the 5% significance level
that the predictors `Insulation` and `South` are significant.

##### Sequential F tests

Assume that we have $Sn$ observations. Variables are added to the model in a particular order
and at each step the most recent predictor being entered into the model is tested for
significance. 

R function `lm` can provide the output. All you need do is divide the sequential sum of squares
by the residual mean sum of squares for the full model and compare with $F_{1,n-p-1}$. 
The advantage of the sequential $F$ tests are that they are independent tests. 
The disadvantage is that the tests may be highly dependent on the order in which the
predictors enter the model. 


~~~
fit5 <- lm(HeatFlux ~ Insulation + East + South + North + Time, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
fit4 <- lm(HeatFlux ~ Insulation + East + South + North, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
fit3 <- lm(HeatFlux ~ Insulation + East + South, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
fit2 <- lm(HeatFlux ~ Insulation + East, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
fit1 <- lm(HeatFlux ~ Insulation, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
fit0 <- lm(HeatFlux ~ 1, data = heat_flux)
~~~
{: .language-r}



~~~
Error in is.data.frame(data): object 'heat_flux' not found
~~~
{: .error}



~~~
anova(fit0, fit1, fit2, fit3, fit4, fit5, test = "F")
~~~
{: .language-r}



~~~
Error in anova(fit0, fit1, fit2, fit3, fit4, fit5, test = "F"): object 'fit0' not found
~~~
{: .error}

East, South and North are significant (at 1\% significance level or 0.5\% significance level)
according to the Sequential F Test.

**EXERCISE** Try different orderings of the predictors. There are 5 ways you can choose the
first predictor, 4 ways for the second predictor, 3 ways of choosing the third predictor,
2 ways of choosing the fourth predictor, and only one way to choose the fifth predictor giving
$5 \times 4 \times 3 \times 2 \times 1 = 120$ combinations.

##### Using R Square ($R^2$)

When a linear regression model is fitted using function `lm` in R you can extract $R^2$. 


~~~
summary(heatflux_fit)$r.squared
~~~
{: .language-r}



~~~
Error in summary(heatflux_fit): object 'heatflux_fit' not found
~~~
{: .error}













































































































