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

PM2.5 Emissions Data (\color{red}{\verb|summarySCC_PM25.rds|}summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

* fips: A five-digit number (represented as a string) indicating the U.S. county
\color{red}{\verb|SCC|}

* SCC: The name of the source as indicated by a digit string (see source code classification table)
\color{red}{\verb|Pollutant|}

* Pollutant: A string indicating the pollutant
\color{red}{\verb|Emissions|}

* Emissions: Amount of PM2.5 emitted, in tons
\color{red}{\verb|type|}

* type: The type of source (point, non-point, on-road, or non-road)
\color{red}{\verb|year|}

* year: The year of emissions recorded

Source Classification Code Table (\color{red}{\verb|Source_Classification_Code.rds|}Source_Classification_Code.rds): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

You can read each of the two files using the \color{red}{\verb|readRDS()|}readRDS() function in R. For example, reading in each file can be done with the following code:


#### **Files in GitHub Repository**
****
`README.md` - a readme file that explain about the project.

`plot1.PNG` and `plot1.R` - a PNG and script to generate the file for the first graph.

`plot2.PNG` and `plot2.R` - a PNG and script to generate the file for the second graph.

`plot3.PNG` and `plot3.R` - a PNG and script to generate the file for the third graph.

`plot4.PNG` and `plot4.R` - a PNG and script to generate the file for the fourth graph.

#### **Project Description**
****
The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

* `Date:` Date in format dd/mm/yyyy

* `Time:` time in format hh:mm:ss

* `Global_active_power:` household global minute-averaged active power (in kilowatt)

* `Global_reactive_power:` household global minute-averaged reactive power (in kilowatt)

* `Voltage:` minute-averaged voltage (in volt)

* `Global_intensity:` household global minute-averaged current intensity (in ampere)

* `Sub_metering_1:` energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

* `Sub_metering_2:` energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

* `Sub_metering_3:` energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

#### **Final Output**
****

**PLOT 1**

![PLOT 1](https://i.ibb.co/mcscHSt/plot1.png)

**PLOT 2**

![PLOT 2](https://i.ibb.co/JvB9MYL/plot2.png)

**PLOT 3**

![PLOT 3](https://i.ibb.co/1J1xVC7/plot3.png)

**PLOT 4**

![PLOT 4](https://i.ibb.co/8mrVDFR/plot4.png)

