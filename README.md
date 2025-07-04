
# ✈️ Airline Loyalty Program: SQL from Data to Insight

##  Project Overview

This project explores customer behavior in an airline loyalty program using relational databases and SQL. Our goal is to uncover why customers leave the program, understand what drives long-term value, and recommend strategies that improve retention. This end-to-end project involves data modeling, database creation, SQL querying, insight generation, and Python-based data visualization.

- 🛠 GitHub Repository: [proj-sql-data-insight](https://github.com/Ironhack-DA-Course/proj-sql-data-insight)
- 📋 Trello Board: [Project Tasks & Timeline](https://trello.com/invite/b/6862cd04ae8d9f159eaf33e0/ATTI18f392f79ff5bd69e44eaf450742b66229C7C8D7/airline-canadaroyalty) 
- 🖼 ERD Diagram: `erd/airline_loyalty_ERD.png`
- Presentation:[Air Canada Loyalty](https://docs.google.com/presentation/d/1Hqo7kqqzuMMcIIki_kKuiHLjNlK-uO-ejXNlIs0ey2Q/edit?usp=sharing) 

---

##  Business Problem & Hypothesis

**Problem**  
> The airline loyalty program is losing customers, especially low-engagement ones. Management wants to understand why this is happening and how to reduce churn.

**Group Hypothesis**  
> "We have identified that the majority of the people leaving the program had accumulated low miles in the previous months before they left."



##  Proposed Solution – The "Explorer Tier"

To tackle early churn and grow long-term engagement, we propose a new **loyalty entry tier**:

 **Explorer Tier Benefits**:
- Free **priority boarding** for new and returning customers
- €10 **voucher** for every 6 trips completed within 6 months
- Vouchers redeemable with **Booking.com or Avis Rental Car**

 **Why it works**:
- Encourages short-term flight activity
- Reduces early program drop-offs
- Vouchers bring value to partners too, who share the cost and gain new users



##  Datasets Used

| Dataset Name                | Description |
|----------------------------|-------------|
| `Customer_Flight_Activity` | Monthly-level flight behavior (flights, distance, points) |
| `Customer_Loyalty_History` | Customer profile data, CLV, loyalty status |
| `Calendar`                 | Supports date alignment with quarters/months |
| `Data Dictionary`          | Metadata reference for the full dataset |
| `Customer`                 | Metadata reference for the full dataset |




##  Database Schema & ERD

We modeled a relational database with key tables and derived tables connected via `Loyalty Number`.  
Refer to the ERD in `erd/airline_loyalty_ERD.png`. 

1. `Customer_Loyalty_History`   
2. `Customer_Flight_Activity`  
3. `Calendar`
4. `Customer` 
5. `Address`    
6. `Loyalty`  
7. `Loyalty Card` 


## 🔄 ETL Process

- **Extract**: Loaded .CSV files into Python
- **Transform**: Cleaned column names, handled missing values, created new metrics (e.g. average miles)
- **Load**: Created SQL schema and imported into MySQL using `LOAD DATA`



##  SQL Queries Performed

- Total flights, points, redemptions by customer
- CLV vs. enrollment type and education
- Loyalty drop-offs filtered by distance flown and points earned
- Monthly trends in program cancellations
- Gender and marital status influence on CLV



##  Python Visualizations

-  Line plot of cancellations vs. distance flown
-  Boxplot of CLV by gender and education
-  Bar chart: Enrollment type vs. retention
-  Geographic plot: Loyalty scores by province



##  Key Insights

- *Majority of dropouts had low engagement: fewer flights, lower distance, minimal redemptions*
- Customers with higher salaries and stable marital status had longer program duration
- *Most point redemption happens within the first 18 months of enrollment*
- High-value customers rarely cancel and redeem more points consistently



##  Conclusions & Business Recommendations

The data supports our hypothesis: **low-mileage customers are more likely to cancel**.  
To address this, we recommend launching the **Explorer Tier** to encourage initial engagement and offer value from day one.

**Benefits of Explorer Tier:**
- Improves engagement in the first 6 months
- Promotes partner loyalty ecosystem
- Boosts flight frequency and potential upgrades to higher tiers



##  Repository Structure

```
proj-sql_data_insight/
├── data/                        # Raw and cleaned CSV files
├── sql/                         # SQL scripts and queries
├── notebooks/                   # Python notebooks with analysis
├── erd/                         # ERD image
├── README.md                    # This file
└── airline_loyalty_schema.sql   # SQL database schema
```



##  Tools Used

- MySQL  
- Python (Pandas, Seaborn, Matplotlib)  
- Jupyter Notebooks  
- Git & GitHub  
- Trello (for task planning)  
- Draw.io (for ERD)
- Visual Studio Code IDE & plugins
---

## 👥 Team Members
 __*Guilherme, Jesus, Robert, Egbe*__

