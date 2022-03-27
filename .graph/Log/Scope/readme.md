# DecideRuleSequence Logging
Enable FINEST logging on the class org.archive.crawler.deciderules.DecideRuleSequence to watch each DecideRule’s evaluation of the processed URI. This can be done in the logging.properties file:

`org.archive.modules.deciderules.DecideRuleSequence.level = FINEST`
in conjunction with the -Dsysprop VM argument,
[- doc](https://heritrix.readthedocs.io/en/latest/configuring-jobs.html#deciderulesequence-logging)


# Discussion
How to debug decideRules:  
https://stackoverflow.com/questions/32016535/heritrix-content-filtering

>One good thing to debug such issue, is to enable the logging of the scope decisions. (Uncomment line with logToFile and make it true. This will provide your for every URI the rule that made the decision to include or to reject it. Thus you will be able to see which of your rule is not properly configured and accepts URI that should have been rejected.
