-- ========================================
-- CUSTOMER DATA ANALYSIS PROJECT
-- Author: Toluwani Yemiola
-- ========================================

-- Create Database
CREATE DATABASE customer_analysis;
USE customer_analysis;

-- ========================================
-- Create Table
-- ========================================
CREATE TABLE customers (
    customer_id INT,
    region VARCHAR(50),
    age INT,
    subscription_type VARCHAR(50),
    monthly_spend DECIMAL(10,2),
    tenure INT
);

-- ========================================
-- Insert Data
-- ========================================
INSERT INTO customers VALUES
(1, 'North', 25, 'Basic', 50, 12),
(2, 'South', 34, 'Premium', 120, 24),
(3, 'East', 29, 'Standard', 80, 18),
(4, 'West', 45, 'Premium', 150, 36),
(5, 'North', 31, 'Basic', 60, 10),
(6, 'South', 40, 'Standard', 90, 20),
(7, 'East', 38, 'Premium', 130, 30),
(8, 'West', 27, 'Basic', 55, 8),
(9, 'North', 50, 'Premium', 160, 40),
(10, 'South', 33, 'Standard', 95, 22);

-- ========================================
-- ANALYSIS QUERIES
-- ========================================

-- 1. Total Revenue by Region
SELECT region, SUM(monthly_spend) AS total_revenue
FROM customers
GROUP BY region
ORDER BY total_revenue DESC;

-- 2. Average Spend by Subscription Type
SELECT subscription_type, AVG(monthly_spend) AS avg_spend
FROM customers
GROUP BY subscription_type;

-- 3. Top 5 Customers by Spend
SELECT customer_id, monthly_spend
FROM customers
ORDER BY monthly_spend DESC
LIMIT 5;

-- 4. Customer Loyalty (Average Tenure by Region)
SELECT region, AVG(tenure) AS avg_tenure
FROM customers
GROUP BY region;