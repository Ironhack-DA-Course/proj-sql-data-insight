USE sql_data_insight;
show tables;

SELECT  * -- 'Start of Year', 'Start of Month', 'Start of Quarter'
FROM sql_data_insight.calendar;

SELECT DISTINCT *
FROM sql_data_insight.flight_activity;

SELECT *
FROM sql_data_insight.flight_activity
WHERE LoyaltyNumber = 100590;

SELECT DISTINCT *
FROM sql_data_insight.loyal_dict;

SELECT DISTINCT *
FROM sql_data_insight.loyal_hist;

SELECT DISTINCT `LoyaltyNUmber`,`Loyalty Card`, CLV
FROM sql_data_insight.loyal_hist
ORDER BY `LoyaltyNUmber`;

SELECT DISTINCT `LoyaltyNUmber`,`Enrollment Type`, `Enrollment Year`, `Enrollment Month`
FROM sql_data_insight.loyal_hist
ORDER BY `LoyaltyNUmber`;

SELECT DISTINCT `LoyaltyNUmber`,Country, Province, City, `Postal Code`
FROM sql_data_insight.loyal_hist
ORDER BY `LoyaltyNUmber`;

SELECT DISTINCT `LoyaltyNUmber`,Gender, Education, Salary, `Marital Status`
FROM sql_data_insight.loyal_hist
ORDER BY `LoyaltyNUmber`;

SELECT COUNT(DISTINCT LoyaltyNumber)
FROM sql_data_insight.loyal_hist;



