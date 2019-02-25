# Prediction of Attrition





## Created by: 
- [Lavonnia Newman](mailto:lavonnian@mail.smu.edu)
- [Joseph Caguioa](mailto:jcaguioa@mail.smu.edu)
- [Jeff Washburn](mailto:washburnj@mail.smu.edu)

# DDSAnalytics

Talent management analytics company DDSAnalytics wants to use data science to identify factors contributing to turnover. This repository contains the data science team's code and step-by-step process to meet this need.
 

# Objective 
DDSAnalytics is an analytics company that specializes in talent management solutions for Fortune 1000 companies. Talent management is defined as the iterative process of developing and retaining employees. It may include workforce planning, employee training programs, identifying high-potential employees and reducing/preventing voluntary employee turnover (attrition). To gain a competitive edge over its competition, DDSAnalytics is planning to leverage data science for talent management. The executive leadership has identified predicting employee turnover as its first application of data science for talent management. Before the business green lights the project, they have tasked your data science team to conduct an analysis of existing employee data.


# Requirement
Your team has been given a dataset (CaseStudy2-Data.xlsx) to conduct exploratory data analysis (EDA) to determine factors that lead to attrition.  You should identify (at least) the top three factors that contribute to turnover


# Code Book 
The Code Book can be found [here](CaseStudy2_Codebook.Rmd)


## Approach of the Analysis

We took the dataset provided, [DDSAnalytics_Data.xlsx](./Data/DDSAnalytics_Data.xlsx) and did the necessary exploratory data analysis and apply statistical analysis to determine
1. Identify at least the top 3 factors that contribute to attrition 
2. Also identifty any job role specific trends that may exist in the data set and provide any other interesting trends and observations from your analysis


## Data Sources

The following data source was used for the analysis:
* [DDSAnalytics_Data.xlsx](./Data/DDSAnalytics_Data.xlsx)

## Analysis 

The complete analysis has been created in R and RMarkdown
* The source file is: [Analysis.Rmd](./Analysis.Rmd)
* The resulting RMardkown output is: [Analysis.html](./Analysis.html)
* All source code can be found in the following github repository: [MSDS6306_CaseStudy2](https://github.com/J-Caguioa/MSDS6306_CaseStudy2)


# Summary of Findings

## Top factors that contribute to turnover:
1. Overtime
   * Those employees that worked overtime led to attrition
2. Job Level 
   * The employees that had lower job level (1, 2) most likely the ones to leave 
3. Stock Option Level 
   * Those employees with stock options at level 0,1 contributed to attrition
4. Job Satisfaction
   * Those employees that rated their job satisfaction level 0, 1 most likely to leave
5. Age
   * The younger aged employees fit the profile of those employees leaving
6. Monthly Income
   * Employees that make a lower income are contributing to attrition

## Job role specific trends that may exist in the data set 
1. Sales Representatives, Laboratory Technicians, and Human Resources had the largest attrition percentages
2. Sales Representatives are some of the youngest employees.
3. Sales representative also have the lowest total working years, years in current role, years at current company and years with current manager


# Other Considerations 

## Insights

1. Component that we discovered during our analysis is that was that overtime was quite high among those employees that left.

2. The employees that had lower job level (1, 2) most likely the ones to leave

3. Those employees with stock options at level (0, 1) contributed to attrition

4. Those employees that rated their job satisfaction level 0, 1 most likely to leave

5. The younger aged employees fit the profile of those employees leaving

6. Employees that make a lower income are contributing to attrition


## Recommendations

1. Our recommendation is to reduce the amount of overtime and offer other incentives for having to work overtime - like extended holiday time, gift cards for family dinner

2. In relation to job level, still need to have entry level positions.  However, create career tracks for the entry level positions like lab technicians.  There needs to be a career development path so new and existing employees can see their long term potential in the company

3. For stock options, our recommendation is to invest in your employees by offering higher option level.  One aspect to this that has been successful in the past is to offer stock options to employees with a 4 year vesting period and have yearly refresh grants based on performance.  This will ensure vested interested by employees by seeing a direct correlation in the success of the business will have a positive financial impact for them as well

4. Our recommendation to increase job satisfaction is to become a more inclusive company by offering a workplace that offers creative development.  Folks should desire to come to work.  Offering meal compensations and for employees with long commutes, offering toll tag incentives.  

5. Fresh, new talent is the future and lifeblood of your company - introducing them and having them start off in other parts of the company will only reinforce the idea of inclusion and make them feel they are a part of something and we recommend starting young employees off in other parts of the business so they can grow, learn and feel they are apart of the bigger picture

6. The low pay in young, new talent is causing attrition.  Our recommendation is to increase the starting salary of employees. In the long run this will cost you less as you are not having to train and ramp new talent up and then have them leave the company


## Improvements

1. Provide concrete definition for Life Satisfaction so that it can be included in future analysis
2. Define the Stock Option levels in more detail and what that means

