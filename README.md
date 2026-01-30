# Bank Customer Churn Analysis (SQL)

## Project Overview
This project analyzes a dataset of 10,000+ bank customers to identify key indicators of churn (attrition). The goal was to determine *who* is leaving and *why*, to propose data-driven retention strategies.

**Tech Stack:** MySQL, Data Analysis
**Key Techniques:** `CASE` statements, Aggregations, Conditional Logic

## Key Findings
1.  **High Net Worth Churn:** Customers earning $120K+ have the highest churn rate (**17.3%**), contradicting the assumption that low-income customers are the primary risk.
2.  **The "Disengagement" Signal:** Churners show a **35% drop in transaction count** (45 vs 69 avg) before leaving.
3.  **The "Safety Net" Product Count:** Churn risk drops by **~50%** when a customer holds 4 or more products.

## Strategic Recommendations
* **Target the Wealthy:** The high churn in the $120K+ bracket suggests a lack of premium service or competitive perks for high-value clients.
* **The "Cross-Sell" Defense:** Incentivize front-line staff to cross-sell a 3rd or 4th product (e.g., Savings, CD), as this is the statistical tipping point for retention.

## Code Structure
The SQL script (`Bank_Churn_Analysis.sql`) contains queries for:
* Demographic segmentation (Income, Age)
* Behavioral analysis (Transaction volume, Product holding)
* Churn rate calculation using `CASE` logic
