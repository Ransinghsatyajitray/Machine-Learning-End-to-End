# Plot Factor

# load the library
library(mlbench)
# load the dataset
data(BreastCancer)
# create a bar plot of each categorical attribute
par(mfrow=c(2,4))
for(i in 2:9) {
	counts <- table(BreastCancer[,i])
	name <- names(BreastCancer)[i]
	barplot(counts, main=name)
}



#DataExplorer Package, ggcharts are also wonderful packages that can be used

library(DataExplorer)
library(help="DataExplorer")
library(dplyr)

BreastCancer%>%plot_bar()


data(CO2)
glimpse(CO2)


CO2 %>% plot_bar()


CO2 %>% plot_histogram()
CO2 %>% plot_intro()
CO2 %>% plot_boxplot(by="Plant")
CO2 %>% plot_scatterplot(by="Type")
CO2 %>% plot_missing()

