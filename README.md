### **Peer-graded Assignment: Exploratory Data Analysis Course Project 2**

------
This repository is a submission of *Aisa Mijeno* for Exploratory Data Analysis course project 2.
<br>

#### **Project Description**
****
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the [EPA National Emissions Inventory web site](https://www3.epa.gov/ttn/chief/eiinformation.html).

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

#### **Dataset**
****
The data for this assignment are available from the course web site as a single zip file:

* [Data for Peer Assessment](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip) [29Mb]

The zip file contains two files:

PM2.5 Emissions Data (**summarySCC_PM25.rds**): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of **tons** of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

* `fips`: A five-digit number (represented as a string) indicating the U.S. county

* `SCC`: The name of the source as indicated by a digit string (see source code classification table)

* `Pollutant`: A string indicating the pollutant

* `Emissions`: Amount of PM2.5 emitted, in tons

* `type`: The type of source (point, non-point, on-road, or non-road)

* `year`: The year of emissions recorded

Source Classification Code Table (**Source_Classification_Code.rds**): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

You can read each of the two files using the `readRDS()` function in R. For example, reading in each file can be done with the following code:

#### **Files in GitHub Repository**
****
`README.md` - a readme file that explain about the project.

`plot1.PNG` and `plot1.R` - a PNG and script to generate the file for the first graph.

`plot2.PNG` and `plot2.R` - a PNG and script to generate the file for the second graph.

`plot3a.PNG` and `plot3a.R` - a PNG and script to generate the file for the third graph.

`plot3b.PNG` and `plot3b.R` - a PNG and script to generate the file for the third graph.

`plot4.PNG` and `plot4.R` - a PNG and script to generate the file for the fourth graph.

`plot5.PNG` and `plot5.R` - a PNG and script to generate the file for the fifth graph.

`plot6.PNG` and `plot6.R` - a PNG and script to generate the file for the sixth graph.

#### **Project Description**
****
You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

2. Have total emissions from PM2.5 decreased in the *Baltimore City*, Maryland (**fips=="24510"**) from 1999 to 2008? Use the *base* plotting system to make a plot answering this question.

3. Of the four types of sources indicated by the **type** (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for *Baltimore City*? Which have seen increases in emissions from 1999–2008? Use the *ggplot2* plotting system to make a plot answer this question.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

5. How have emissions from motor vehicle sources changed from 1999–2008 in *Baltimore City*?

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in *Los Angeles County*, California (**fips=="06037"**). Which city has seen greater changes over time in motor vehicle emissions?

#### **Final Output**
****

**PLOT 1**

![PLOT 1](https://i.ibb.co/W2kBSyK/plot1.png)

**PLOT 2**

![PLOT 2](https://i.ibb.co/hg0yYbs/plot2.png)

**PLOT 3a**

![PLOT 3a](https://i.ibb.co/QP113Sh/plot3.png)

**PLOT 3b**

![PLOT 3b](https://i.ibb.co/g4gvkHT/plot3b.png)

**PLOT 4**

![PLOT 4](https://i.ibb.co/1dYNdsF/plot4.png)

**PLOT 5**

![PLOT 5](https://i.ibb.co/WnJxH5b/plot5.png)

**PLOT 6**

![PLOT 6](https://i.ibb.co/LDKw0ZQ/plot6.png)


