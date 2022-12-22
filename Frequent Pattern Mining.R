library(arules)
library(arulesViz)
data ("Groceries")
summary("Groceries")
apriori(Groceries,parameter = list(support=0.002,confidence=0.5)) -> rule1
inspect(head(rule1,5))
apriori(Groceries,parameter = list(support=0.007,confidence=0.6)) -> rule2
inspect(head(rule3,4))