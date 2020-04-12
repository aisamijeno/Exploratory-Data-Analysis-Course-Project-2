## ====================
## PROJECT DESCRIPTION:
## ====================
## Script for plot4.png

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

# Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

# fetch all NEIxSCC records with Short.Name (SCC) Coal
coalMatches  <- grepl("coal", NEISCC$Short.Name, ignore.case=TRUE)
subsetNEISCC <- NEISCC[coalMatches, ]

aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEISCC, sum)

png("plot4.png", width=640, height=480)
g <- ggplot(aggregatedTotalByYear, aes(factor(year), Emissions))
g <- g + geom_bar(stat="identity") +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions from coal sources from 1999 to 2008')
print(g)
dev.off()
