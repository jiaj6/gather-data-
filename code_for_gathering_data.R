### Preamble ###
# Purpose: gather data using Twitter API built around R
# Author: Jia Jia Ji
# Email: jiajia.ji@mail.utoronto.ca
# Date: Feb.01, 2021
# To do: load `rtweet` package and gather data using functions in the package


### workspace set up ###
# install and load packages
#install.packages('rtweet')
library(rtweet)
library(tidyverse)

# checked that the gathered data is permitted under the terms of Twitter

# search the tweets with the hashtag 'UofT'
uni_tweet <- search_tweets(q = '#UofT')
# look at the columns
names(uni_tweet)

# select some specific columns and get the data 
twitter_data <- uni_tweet %>%
  select(retweet_count, is_retweet, media_type, text)
# look at the first few lines of the data
twitter_data %>%
  head()

# convert the data into the tibble format
twitter_data <- tibble(data = twitter_data)
twitter_data 
