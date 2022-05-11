library(polycor)

df = read.csv("datasets/ausdata_ordinal.csv")
# print(summary(df))
print(polychor(df$DrivAge,df$VehAge))