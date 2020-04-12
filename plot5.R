## ====================
## PROJECT DESCRIPTION:
## ====================
## Script for plot5.png

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
# merge the two data sets 
if(!exists("NEISCC")){
  NEISCC <- merge(NEI, SCC, by="SCC")
}

library(ggplot2)

# How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

# 24510 is Baltimore, see plot2.R
# Searching for ON-ROAD type in NEI
# Don't actually know it this is the intention, but searching for 'motor' in SCC only gave a subset (non-cars)
subsetNEI <- NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD",  ]

aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum)

png("plot5.png", width=840, height=480)
g <- ggplot(aggregatedTotalByYear, aes(factor(year), Emissions))
g <- g + geom_bar(stat="identity") +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from motor vehicle (type = ON-ROAD) in Baltimore City, Maryland (fips = "24510") from 1999 to 2008')
print(g)
dev.off()
