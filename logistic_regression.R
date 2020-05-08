#Logistic Regression

# Load the dataset
data(PimaIndiansDiabetes)
# fit model
fit <- glm(diabetes~., data=PimaIndiansDiabetes, family=binomial(link='logit'))
# summarize the fit
print(fit)
# make predictions
probabilities <- predict(fit, PimaIndiansDiabetes[,1:8], type='response')
predictions <- ifelse(probabilities > 0.5,'pos','neg')
# summarize accuracy
table(predictions, PimaIndiansDiabetes$diabetes)


library(pROC)

#Plotting the Reciever operating characteristic curve
roc(PimaIndiansDiabetes$diabetes,fit$fitted.values,plot=TRUE)

#Finding the area under the curve
auc(PimaIndiansDiabetes$diabetes,fit$fitted.values,plot=TRUE)
