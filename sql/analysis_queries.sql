USE [Bank marketing];
GO

-- View all the data
SELECT * FROM bank;

-- Total number of customers
SELECT COUNT(*) AS total_customers
FROM bank;

-- Number of customers who said yes (subscribed to deposit)
SELECT COUNT(*) AS subscribed
FROM bank
WHERE deposit = 'yes';

-- Number of customers who said no
SELECT COUNT(*) AS not_subscribed
FROM bank
WHERE deposit = 'no';

-- Total customers grouped by job type
SELECT job, COUNT(*) AS total_customers
FROM bank
GROUP BY job;

-- Customers who said yes, grouped by job type
SELECT job,  COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY job;

-- Average balance for yes vs no customers
SELECT 
    deposit,
    AVG(balance) AS average_balance
FROM bank
GROUP BY deposit;

-- Average call duration for yes vs no customers
SELECT 
    deposit,
    AVG(duration) AS average_duration
FROM bank
GROUP BY deposit;

-- Total customers contacted, grouped by month
SELECT  month, COUNT(*) AS total_customers
FROM bank
GROUP BY month
ORDER BY total_customers DESC;

-- Total customers grouped by previous campaign outcome
SELECT  poutcome,
COUNT(*) AS total_customers
FROM bank
GROUP BY poutcome
ORDER BY total_customers DESC;

-- Customers who said yes this time, grouped by previous campaign outcome
SELECT 
    poutcome,
    COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY poutcome;

-- Customers with a housing loan who said yes
SELECT  housing,
COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY housing;

-- Total customers grouped by education level
SELECT  education,
    COUNT(*) AS total_customers
FROM bank
GROUP BY education;

-- Customers who said yes, grouped by education level
SELECT education,
COUNT(*) AS yes_count
FROM bank
WHERE deposit = 'yes'
GROUP BY education;

-- Total customers grouped by marital status
SELECT 
    marital,
    COUNT(*) AS total_customers
FROM bank
GROUP BY marital;

-- Customers who said yes, grouped by marital status
SELECT marital,
COUNT(*) AS total_customer
FROM bank 
WHERE deposit='yes'
GROUP BY marital;

-- Customers with a personal loan who said yes
SELECT loan,
COUNT(*) AS total_customers
FROM bank
WHERE deposit= 'yes'
GROUP BY loan

-- Average age for yes vs no customers
SELECT deposit,
AVG(age) AS average_age
FROM bank
GROUP BY deposit;

-- Top 10 customers with the highest balance
SELECT TOP 10 
    age, job, balance, deposit
FROM bank
ORDER BY balance DESC;

-- Number of customers under age 30
SELECT COUNT(*) AS young_customers
FROM bank
WHERE age < 30;

-- The youngest customer in the dataset
SELECT TOP 1 
    age, job, marital, deposit
FROM bank
ORDER BY age ASC;
