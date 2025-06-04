#!/usr/bin/env Rstudio

library(tidyverse)
library(dplyr)

translocon <- read_csv("translocon_riboseq.csv") %>% mutate('foldchange' = `fold change`) %>% 
  select(-c('fold change'))


model <- lm(foldchange ~ SEC61 + SEC62 + SEC63 + SEC66 + SEC72 + SBH1 + SBH2 + SSH1 + SSS1,
            data = translocon)
summary(model)
