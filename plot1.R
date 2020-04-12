## ====================
## PROJECT DESCRIPTION:
## ====================
## Script for plot1.png

# This project performs the following steps:
# - Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
# - Name each of the plot files as plot1.png, plot2.png, etc.
# - Create a separate R code file plot1.R, plot2.R that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png. 
#   Your code file should include code for reading the data so that the plot can be fully reproduced. 
#   You must also include the code that creates the PNG file.
# - Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)

# Read dateset
if(!exists("NEI")){
  NEI <- readRDS("./data/summarySCC_PM25.rds")
}
if(!exists("SCC")){
  SCC <- readRDS("./data/Source_Classification_Code.rds")
}
# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years'))
dev.off()