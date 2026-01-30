/*
Project: Credit Card Churn Analysis
Author: Vaibhav
Date: Jan 2026
Goal: Identify key indicators of customer attrition.
*/

-- 1. Churn Rate by Income Category
-- Finding: High Net Worth ($120k+) customers have the highest churn rate (17.3%).
SELECT 
    Income_Category,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 ELSE 0 END) AS Churned_Count,
    (SUM(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Churn_Rate
FROM bank_churners
GROUP BY Income_Category
ORDER BY Churn_Rate DESC;

-- 2. Engagement Analysis (Transactions & Products)
-- Finding: Churners make 24 fewer transactions/year and hold fewer products.
SELECT 
    Attrition_Flag, 
    AVG(Total_Trans_Ct) AS Avg_Transactions, 
    AVG(Total_Relationship_Count) AS Avg_Products
FROM bank_churners 
GROUP BY Attrition_Flag;

-- 3. Product Stickiness Analysis
-- Finding: Churn risk drops by 50% when a customer holds 4+ products.
SELECT 
    Total_Relationship_Count, 
    COUNT(*) AS Total_Customers,
    (SUM(CASE WHEN Attrition_Flag = 'Attrited Customer' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Churn_Rate
FROM bank_churners
GROUP BY Total_Relationship_Count
ORDER BY Total_Relationship_Count;