# Load CSV From a URL

# load the library
library(RCurl)

update.packages("RCurl")
library(help="RCurl")
# specify the URL for the Iris data CSV
urlfile <-'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'

#_________________________________This is giving some error_________________________________
# download the file
downloaded <- getURL(urlfile, ssl.verifypeer=FALSE)  #This is giving some error in SSL protocol
#Error in function (type, msg, asError = TRUE)  : 
#Unknown SSL protocol error in connection to archive.ics.uci.edu:443 

# treat the text data as a steam so we can read from it
connection <- textConnection(downloaded)
# parse the downloaded data as CSV
dataset <- read.csv(connection, header=FALSE)
# preview the first 5 rows
head(dataset)




#____________________________Alternative way of trying this________________________________________
downloaded <- readLines(urlfile)
head(downloaded)


