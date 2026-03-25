# 🚀 Uber RideShare Data Analysis using SQL

## 📌 Objective
Performed end-to-end analysis of a ride-sharing dataset to identify key drivers of revenue, demand patterns, operational inefficiencies, and customer behavior using SQL.

---

## 📌 Project Highlights
- 15+ real-world SQL queries solving business problems  
- Multi-table joins, CTEs, and window functions used  
- End-to-end analysis from raw data to business insights

---

## 📊 Dataset Overview
The dataset simulates a ride-sharing platform and includes:

- Users (Drivers & Riders)
- Trips (core transactional data)
- Payments
- Locations (pickup/drop zones)
- Reviews & Cancellations

---

## 🔍 Key Business Insights

- 💰 **Total Revenue:** $604K (~₹5.0 Cr) generated from completed trips  
- 🌆 **Top Revenue City:** Houston (~$188K) despite not having highest demand  
- 📊 **Demand Leader:** New York (5694 trips) → demand ≠ revenue mismatch  
- ⏰ **Peak Hours:** 8 AM, 2 PM, 6–8 PM → strong commute-driven usage  
- ⚡ **Surge Pricing Impact:** Avg fare increases from $28 → $59 (~2x)  
- 🔁 **User Retention:** 75% riders are repeat users → retention-driven business  
- ❌ **Cancellation Rate:** ~14–15% across cities → operational inefficiency  
- 📍 **Supply Gap Zones:** High unmet demand in Medical Center, Energy Corridor, etc.  
- 💎 **High-Value Users:** Top 20% riders contribute disproportionately high revenue  

---

## 🧠 Key Takeaways

- Revenue is driven more by **pricing and trip value** than demand alone  
- **Surge pricing and peak-hour optimization** are critical for profitability  
- The platform heavily relies on **repeat users and high-value customers**  
- Significant **supply-demand gaps and cancellations** indicate inefficiencies
- Overall analysis highlights clear opportunities to improve revenue, reduce cancellations, and optimize driver allocation

---

## 🛠️ Tools & Techniques

- MySQL  
- SQL Joins (INNER, LEFT)  
- Aggregations  
- CTEs (Common Table Expressions)  
- Window Functions (NTILE, RANK)

---

## 📂 Project Structure

Uber_Rideshare_SQL_Analysis/
│
├── data/
│ └── schema.sql
│
├── queries/
│ └── analysis_queries.sql
│
└── README.md

---

## 📈 Analysis Performed

- Revenue Analysis  
- Demand & Peak Hour Trends  
- Driver Performance & Efficiency  
- Rider Segmentation (Repeat vs High-Value Users)  
- Cancellation & Operational Analysis  
- Demand-Supply Gap Identification  

---

## 🔗 How to Use

1. Import `schema.sql` into MySQL  
2. Run queries from `analysis_queries.sql`  
3. Review insights and business implications  

---

## 📌 Conclusion

This analysis highlights how SQL can be used to move beyond basic querying and solve real business problems — identifying revenue drivers, operational inefficiencies, and customer behavior patterns in a ride-sharing platform.
