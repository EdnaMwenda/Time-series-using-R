#LOAD THE PACKAGES#
library(tidyverse)
library(fBasics)
library(tseries)
library(ggplot2)
library(stats)
library(forecast)
library(fGarch)
#READ/CALL THE DATA #
data("EuStockMarkets");View(EuStockMarkets)
#INITIALISE/ GIVE VARIABLE NAMES TO THE STOCK/COLUMNS#
stock<-EuStockMarkets
stock1<-EuStockMarkets[,1]
stock2<-EuStockMarkets[,2]
stock3<-EuStockMarkets[,3]
stock4<-EuStockMarkets[,4]
#STRUCTURE OF THE EUSTOCKMARKET DATA SET#
str(stock)
#CONVERT TO A TIMESERIES#
tsstock<-ts(stock,start=c(1),end=1860,frequency =260 )
view(tsstock)
plot.ts(data=tsstock,(stock[,1:4]), col(1:4), plot.type = "single")
plotly::ggplotly(p=ggplot2::last_plot(data=stock))
basicStats(stock)
options(digits = 5)
decomstock<-decompose(tsstock)
decomstock

# Check whether eu_stocks is a ts object
is.ts(stock)

# View the start, end, and frequency of eu_stocks
start(stock)
end(stock)
frequency(stock)

# Generate a simple plot of eu_stocks
plot(stock)
# Use ts.plot with eu_stocks
ts.plot(stock, col = 1:4, xlab = "Year", ylab = "Index Value", main = "Major European Stock Indices, 1991-1998")

# Add a legend to your ts.plot
legend("topleft", colnames(stock), lty = 1, col = 1:4, bty = "n")

#Forecasting#
forecasted<-forecast(stock,5)
forecasted
echo "# Time-series-using-R" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/edthecodess/Time-series-using-R.git
git push -u origin master

