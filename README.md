# Factors Affecting the Prices of Glass Artwork
Please read the following introduction as none of the resources in this repository have been uploaded as standalone files.

This was a project I did in my undergrad and decided to include it in my github as I have it listed on my resume.
It is a statistical analysis of independent variables of glass art (color, blown, vase, functional, sculpture, etc) 
and their affects on the price of sold glass art at auctions.

Unfortunately I am missing the entire written report but included in this readme are notes I have for the presentation.
Some slides were removed when I presented my findings at the 2016 Kentucky Economic Association, these slides include
more analysis and models that were done during the process of this project (notes below as well).

I saved my [.DTA](https://github.com/evamintz/Factors_Affecting_GlassArt_Price/blob/master/Glass%20project.dta) and [.DO](https://github.com/evamintz/Factors_Affecting_GlassArt_Price/blob/master/Glass%20project%20do-file.do)
files for Stata software which should document my overall process although I no longer have access to the program and haven't looked at the .DTA but the .DO looks quite incomplete.

[Excel Dataset](https://github.com/evamintz/Factors_Affecting_GlassArt_Price/blob/master/Glass%20auction%20price%20data.xlsx)



Note: The slides from powerpoint did not convert/upload well at all (I swear they were pretty!) but the pictures are fine and data should still be readable.

[Presentation Slides](https://github.com/evamintz/Factors_Affecting_GlassArt_Price/blob/master/Factors%20Affecting%20the%20Prices%20of%20Glass%20Artwork.pdf)

The blown glass mushrooms pictured in slide 2 are of my own making, they stand 2-16" tall.

Glass has been used as a manipulated material since pre-Roman times and has continued to develop not only as a 
functional substance but in pieces of artwork.  As this art advanced, the variables that affected its valued kept 
growing.  Handmade glasswork is a huge market today with a massive spectrum on the type of works produced.  This 
study looks at some of these variables in an attempt to explain their weight on the prices of glass artwork.  The 
study focuses on glass sold in recent years but produced between the 18th and 20th century.  All data collection 
is from Christies auction house sales.  

Slide 3: This is a beautiful example of Stephen Rolfe Powell’s (Gaffer/professor) bowls from his Echos series. I was honored enough to have the chance to assist him with many of his works following this. It was a blast. 

While there is not much alternative literature on the sales of glass artwork I talked to my Professor of glass about what could be affecting prices.  He gave me valuable input such as how much labor and skill can go into coldworking techniques and some other specifics of glassworking.  

Slide 4: One of the first things I realized through the study is that price increases tend to diminish as they continue to 
climb so I used the natural log of price in the regression to adjust for that.  While there a dozens of different 
potential variables for this study, the sample was fairly small and many of the independent variables are irrelevant 
and are taken out as the study progressed.  These are some of the variables that can help explain prices, as we continue 
we’ll see that some are cut for this study while other are very important.

The following slides are examples of the independent variables I thought most important.

Slide 17:
First variables are all expected to increase prices so the null hypothesis states that their coefficients will be 
less than or equal to zero while the alternative is greater than zero.

For Blown works(there may be an equally sized market and interest for blown pieces versus sculptural), set 
(more pieces, quality questionable?), and London (location of auction house where they were sold) are ambiguous 
because expectations are unknown.

Slide 18/19: Screenshots of where I gathered my data from

Slide 20: Summary stats of some of the more interesting variables

Slide 21:
Using a relatively small sample of data points collected from past sold auctions of Christie’s, 
models helped explain the significant variables affecting prices of glass artwork pieces.  Although 
many variables were omitted/removed from the model, they would theoretically be relevant in a much 
larger sample size with glass works that had a larger range of date created, origin, colors, type of
function, and technique used.  For future research, this would help create a model that could explain
even more for this topic.

[Additional Slides](https://github.com/evamintz/Factors_Affecting_GlassArt_Price/blob/master/Additional%20Tests.pdf)

Slide 2: Model 1 is based off the initial regression model.  Initial observations of the model include a low R^2 
indicating a poor fit, high coefficients with high standard errors leading to generally low t-stats and 
high p-values. As you can see this is prior to using the natural log of price.  

Slide 3: I ran a variance inflation factor test between French and Chinese to look for multicollinearity that 
negatively affects the results, both had extremely high VIFs (anything greater than 5 is potentially problematic).  
This prompted a joint test to get a better look at their connectedness and the null hypothesis of the variables 
jointly equaling zero (no multicollinearity) could not be rejected.  I also ran joint F-tests on other seemingly 
insignificant variables (based off of the model using natural log of price) None of the null hypothesis for these 
tests could be rejected and so they were dropped from the model for irrelevance.

Slide 4: This table shows the new regression after having dropped the irrelevant variables I discovered in the 
previous tests.  You’ll notice I skipped a table going from 2 to 4, table 3 simply shows a small increase in 
R-squared due to the employment of the natural log of price. R-squared goes from .2173 to .2927 and again to .2840 
in this regression after dropping irrelevant variables.  I ran the VIF test again and it shows that there is no 
multicollinearity, all variables are safely below a score of 5.  There are a couple unexpected signs on the origin 
variables (Italian and Chinese, Chinese not shown) which could be due to omitted variables and the small sample size.  
Another potential issue is an incomplete literature review due to the lack of studies done in this field.  Looking 
from a production and consumer perspective, the unexpected signs could stem from the fact that some areas tend to 
mass produce glass rather than create unique pieces.  These items are less sought after and will have much lower prices.  
I’ll revisit these possibilities later, keeping them in the model for now due to their significance.  

Slide 5:
Looking at possible heteroscedasticity, we can run the White’s test. Based off this test there is certainly 
heteroscedasticity as the p-value is .0000 (<.01) so the null hypothesis of homoskedasticity can be rejected.  
In order to correct for this we can use the robust standard errors. 

Slide 6: With the robust standard errors the t-stats of previously significant variables has increased with 
the exception of Chinesei and vasei, which dropped slightly.  Overall, there is little change in the results 
when adjusting for the heteroscedasticity within the previous model.

Slide 7: Table 6 runs the regression on the same model (robust standard errors) but after dropping all of the 
independent variables explaining origin of the pieces (frenchi, italiani, and chinesei).  Although two of these 
variables were found to be significant they also had unexpected signs.  We can potentially explain these signs 
but with high uncertainty so it makes sense to look how the model changes when excluding them for a theoretically 
more concise regression (although it could be simply that within this small sample French and Italian pieces sold 
for less than the non-Italian and non-French pieces).  While the fit of the R2 drops from .2840 to .2481 and coldi 
is no longer significant, the t-stat of artisti is notably significant even at the .5% level (one-way test).  There 
is also a decrease in multicollinearity with only one variable (vasei) being above the notable 5 VIF level however 
this will again be considered only as a minor problem.  


Feel free to comment, message, or email me if you have any questions or interests!!

Thanks for your time!
