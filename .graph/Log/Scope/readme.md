# Discussion
How to debug decideRules:  
https://stackoverflow.com/questions/32016535/heritrix-content-filtering

>One good thing to debug such issue, is to enable the logging of the scope decisions. (Uncomment line with logToFile and make it true. This will provide your for every URI the rule that made the decision to include or to reject it. Thus you will be able to see which of your rule is not properly configured and accepts URI that should have been rejected.
