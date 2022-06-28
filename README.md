# A Comparative Analysis of Covid-19 in Australia
---

This project involved 3 parts:
- Gathering Covid-19 data
- Visualizing the data to illustrate findings and perform exploratory data analysis
- Writing a report to explain findings

The purpose of the project is to examine the data about Covid-19 to understand how Covid-19 has spread and comparing Australia's efforts 
in controlling and minimizing the spread of the virus with other countries. To achieve this, data visualization techniques were  used to find
interesting trends in the data and highlight patterns.

You can read the full report here:\
[Visualization_Report.pdf](https://github.com/CalvinJohn99/Analysis-of-Covid-19-in-Australia/files/8992682/Visualization_Report.pdf)


The reason we are interested in Australia is because during the run of the Covid-19 pandemic, Australia enforced several rules that became the 
subject of much controversy and resulted in drastic differences in how Covid-19 was handled when compared to other countries. The spread of new
Covid-19 variants in Australia was also of concern.

The data collection and visualization process is detailed in the report. 

## The Data

The data used in this report comes from 3 separate sources:
- Our World in Data (OWID) website (they have sourced their data from John Hopkins University)
- Hum Data (HDX) website (this is also sourced from John Hopkins University)
- Australian Government Department of Health website

The below image is an example of OWID data. 
![image](https://user-images.githubusercontent.com/40469219/176102683-c94884c5-e89b-4354-bb1b-d2b27b8a99cd.png)

The data is a CSV file, with no erroneous data. Data cleansing/processing techniques were not applied to the data, as it was already in a usable format. Plotting some of the data did cause errors however, as some inputs were recorded as NaN (Not a number). These inputs were converted to 0 to work with the data.

The following image is an example of the data from HDX, that further correlates new daily cases to a particular location via the addition of corresponding Longitude and Latitude data.
 ![image](https://user-images.githubusercontent.com/40469219/176102961-68da3141-3f96-480d-874c-df5085c5aadb.png)

This is also a CSV file, already presented in usable format.

The third data source is from the Australian Government website, and it shows statistics about the cases in Australia and its states, illustrating the source of those cases (i.e., whether it was acquired overseas, locally acquired, and more).
 ![image](https://user-images.githubusercontent.com/40469219/176102997-b4007f02-c6ee-4bce-b4bb-3e3142c59d7b.png)


## The Visualizations

Read the report to understand the visualizations, or you can briefly
overview the various visualizations below:\
*Note: The visualizations were made in MATLAB.*

&nbsp;
### Average Cases & Deaths per Day
The first visualizations made were bar graphs of the average reported cases per day, and the average reported deaths per day respectively. These univariate statistics are intended to provide an overall feel of the data, give quick visual insights from the large amount of data available, and illustrate the spread of COVID-19 among different countries:
![spread1](https://user-images.githubusercontent.com/40469219/175962594-505bd1c9-e114-4a6c-9873-76e557459761.jpg)

&nbsp;


![spread2](https://user-images.githubusercontent.com/40469219/175962612-594b33c9-7662-4a14-9036-51df5a3ce5b7.jpg)


&nbsp;
### Covid-19 Spread Comparison
The second set of visualizations were bivariate area plots comparing the number of the daily reported cases among different countries. These plots are intended to dive a little deeper into the data, to better understand the spread of COVID-19 cases and compare the statistics of the spread in different countries:
![spread5](https://user-images.githubusercontent.com/40469219/175962647-f6392126-452b-41ef-b7f2-e126024f46dc.jpg)

&nbsp;


![spread6](https://user-images.githubusercontent.com/40469219/175962670-ad2bb083-42b2-4dba-ad64-677a6a0cfdcc.jpg)


&nbsp;
### Australia's Covid-19 Spread
The following figures are bar graphs visualizing only Australia’s daily reported cases, to focus on the COVID-19 spread in Australia. The aim of these bivariate visualizations is to highlight trends in the relationship between the date and the number of new cases reported. Bar graphs were chosen here because it made the trend easy to visualize:
![spread7](https://user-images.githubusercontent.com/40469219/175962685-f8d1259e-b873-462c-9224-e58e5e0ff4ff.jpg)

&nbsp;


![spread8](https://user-images.githubusercontent.com/40469219/175962696-a1f00138-48f1-439c-83c1-1b43c7e8e0b2.jpg)


&nbsp;
### Australia's Covid-19 Sources
To further explore the impacts of international border restrictions, the restrictions on public gatherings within Australia, and other rules that had been put in place restricting mobility within Australia, the transmission sources of COVID-19 cases were explored. Based on the dataset collected, cases were classified based on whether the transmission of COVID-19 occurred via an ‘Overseas’ contact, ‘Locally acquired – Contact of Confirmed Case’, ‘Locally acquired – Unknown Contact’, and the rest were ‘Under Investigation’.
![sources2](https://user-images.githubusercontent.com/40469219/175962719-f5487ff7-1bac-41a5-936f-c3b43c491e93.jpg)

&nbsp;


![sources1](https://user-images.githubusercontent.com/40469219/175962737-ff313688-6cbc-427a-bfd5-dbd0f659ef96.jpg)


&nbsp;
### World Map View of The Spread
The following figure is a World map view of the spread of COVID-19 cases. The visualization was made to give a strong visual overview of the spread of COVID-19, and thereby make comparisons of the spread in different countries with Australia. 
![map](https://user-images.githubusercontent.com/40469219/175962747-07bf59e1-d51b-4188-b01a-9c619e65eed4.jpg)


&nbsp;

![map2](https://user-images.githubusercontent.com/40469219/175962762-bdd5aea1-60f5-415a-8f16-dfe06ed44908.jpg)

&nbsp;

## Conclusion & Limitations of The Results & Findings Outlined in The Report
The daily average COVID-19 cases and deaths in Australia and the trend of COVID-19 in Australia were compared, and the factors that correlate with that trend and  the geographical spread of the COVID-19 cases worldwide were explored. It is important to note that the visualizations that compared Australia, compared it with countries with the most confirmed cases. Australia may appear to have certain minimal statistics with regards COVID-19, but there are other countries that we have not compared Australia with that do have lower COVID-19 cases among other statistics. \
However, It is found that Australia has done relatively well in controlling the spread of the virus, despite the controversy surrounding their actions throughout the pandemic. But this was already apparent. What was interesting to see were the reasons and events that contributed to it. We see how Australia’s rules and guidelines (to combat COVID-19), the spread of different COVID-19 variants, and introduction of vaccines have impacted the trend of COVID-19 in Australia by matching the timeline of the events. But causal inferences of the events cannot be made here as these are complex topics that require more research and analysis. 

