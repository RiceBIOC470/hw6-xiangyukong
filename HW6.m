%HW6

% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.

x = sort(10*rand(10,1));
y = -1*x.^3+4*x.^2+3*x-6+(rand(10,1)-0.5);
plot(x,y,'r.','MarkerSize',16)
% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data. 

[coeff1,s1] = polyfit(x,y,1);
[coeff2,s2] = polyfit(x,y,2);
[coeff3,s3] = polyfit(x,y,3);
[coeff4,s4] = polyfit(x,y,4);
[coeff5,s5] = polyfit(x,y,5);
[coeff6,s6] = polyfit(x,y,6);
[coeff7,s7] = polyfit(x,y,7);
[coeff8,s8] = polyfit(x,y,8);
[coeff9,s9] = polyfit(x,y,9);
plot(x,y,'r.','MarkerSize',16);
hold on;
plot(x,polyval(coeff1,x),'b-');hold on;
plot(x,polyval(coeff2,x),'b--');hold on;
plot(x,polyval(coeff3,x),'r-');hold on;
plot(x,polyval(coeff4,x),'r--');hold on;
plot(x,polyval(coeff5,x),'g-');hold on;
plot(x,polyval(coeff6,x),'g--');hold on;
plot(x,polyval(coeff7,x),'y-');hold on;
plot(x,polyval(coeff8,x),'y--');hold on;
plot(x,polyval(coeff9,x),'m');
% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial.

[fit_out1,fit_metric1] = fit(x(:),y(:),'poly1');
[fit_out2,fit_metric2] = fit(x(:),y(:),'poly2');
[fit_out3,fit_metric3] = fit(x(:),y(:),'poly3');
[fit_out4,fit_metric4] = fit(x(:),y(:),'poly4');
[fit_out5,fit_metric5] = fit(x(:),y(:),'poly5');
[fit_out6,fit_metric6] = fit(x(:),y(:),'poly6');
[fit_out7,fit_metric7] = fit(x(:),y(:),'poly7');
[fit_out8,fit_metric8] = fit(x(:),y(:),'poly8');
[fit_out9,fit_metric9] = fit(x(:),y(:),'poly9');
poly_order = 1:9;
Rsquare = [fit_metric1.rsquare,fit_metric2.rsquare,fit_metric3.rsquare,fit_metric4.rsquare,fit_metric5.rsquare,fit_metric6.rsquare,fit_metric7.rsquare,fit_metric8.rsquare,fit_metric9.rsquare];
Rsquare_adjusted = [fit_metric1.adjrsquare,fit_metric2.adjrsquare,fit_metric3.adjrsquare,fit_metric4.adjrsquare,fit_metric5.adjrsquare,fit_metric6.adjrsquare,fit_metric7.adjrsquare,fit_metric8.adjrsquare,fit_metric9.adjrsquare];
plot(poly_order,Rsquare,'r-');hold on;
plot(poly_order,Rsquare_adjusted,'b-');


% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 

y = -1*x.^3+4*x.^2+3*x-6+10*(rand(10,1)-0.5);
y = -1*x.^3+4*x.^2+3*x-6+1000*(rand(10,1)-0.5);
%adding random noise to the equation cause difficulty for fitting, the
%larger the noise the data will be more askew, which cause the system to
%generate more parameter to fit properly, which in turn cause adjusted R^2
%to increase.

% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 

x = sort(10*rand(100,1));
y = -1*x.^3+4*x.^2+3*x-6+(rand(100,1)-0.5);
%according to the caculation of R^2 adjust, if the number of data point is
%large, the impact of the number of parameters will be neutralized as
%p/n-p-1 become so close to zero, as the fiting curve is best fit at the
%third order which is the expected.

% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.
% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.

[is_sig1,pval1] = compare_Gau_1(100);

% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 

compare_Gau_2(100);
%it will be similar with the first distribution

% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  

compare_Gau_4(3000)
%the change in variation make distribution 1 very specific and distribution
%2 very tolerant, so when we chose a small smaple is small there is some chance that they
%have similar mean 0 is not that far from 1 if we consider how spread out
%distribution 2 is. However as the sample size grow, it will represent its distribution
%more accurately, which in turn make the pvalue plummet.
