# sch:
- https://www.google.com/search?q=heritrix+negative+surts
- https://www.google.com/search?q=heritrix+negative-surts.txt

# Example
https://webarchive.jira.com/wiki/pages/viewpage.action?pageId=148439045

The Heritrix configuration is a complex combination of XML syntax and Java bean names. The choices depend on how wide and deep your crawl should be, whether to check duplicate files, and so on. This example is a fairly constrained crawl.

Edit the values shown below, and leave the other lines as is:
```
# (editable settings in blub_test.cxml)
  
# these will be displayed on the crawl dashboard:
metadata.jobName = blub_test
metadata.description = mediacloud_crawl
  
# output WARC file name prefix, by convention <= 6 chars, ALL CAPS:
warcwriter.prefix = MCLOUD
  
# Java write threads:
warcwriter.poolMaxActive = 6
  
# the "seed" file of URLs:
<property name="path" value="mcloud.seeds.txt">
  
# include this to enable deduplication:
<import resource="hq-beans.xml">
  
# set the hop count (how far to crawl):
<bean class="org.archive.modules.deciderules.TooManyHopsDecideRule">
    <property name="maxHops" value="1" />
</bean>
  
# SURTs (normalized URLs) to avoid (this was one of the copied files):
<bean class="org.archive.modules.deciderules.surt.SurtPrefixedDecideRule">
      <property name="surtsSourceFile" value="negative-surts.txt">
```
