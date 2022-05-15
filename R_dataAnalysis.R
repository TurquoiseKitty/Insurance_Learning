library(polycor)

df = read.csv("datasets/ausdata_amount.csv")
# print(polychor(df$DrivAge,df$VehAge))

# model <- glm(ClaimNb ~  VehAge + VehBody + DrivAge + offset(log(Exposure)), data = df, family=poisson)
# model <- MASS::glm.nb(ClaimNb ~  VehAge + VehBody + DrivAge + offset(log(Exposure)), data = df)
model <- glm(ClaimAmount ~ VehAge + DrivAge, data = df, family=inverse.gaussian)

print(summary(model))