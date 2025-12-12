# 📊 AdventureWorks Sales Analysis – Excel-Centric BI Project

This project presents a complete sales analysis of the AdventureWorks dataset using **Microsoft Excel** as the primary BI tool**, supported by practice dashboards in **Power BI**, **Tableau**, and practice SQL queries.  
The objective is to demonstrate strong Excel analytical skills along with familiarity across multiple BI tools by solving the same business questions across platforms.

---

## 🚀 Project Overview

To transform raw AdventureWorks sales data into actionable insights by calculating KPIs, creating time intelligence fields, and building interactive dashboards that reveal product, customer, regional, and quarterly performance trends.

The **Excel Dashboard** is the main deliverable where complete data cleaning, KPI creation, pivot table modeling, and dashboard designing were performed.  
Power BI and Tableau dashboards were created **only for practice** using the same KPIs and logic.

---

## 🧰 Tools Used

### ⭐ Primary Tool  
- **Microsoft Excel**  
  - Data preparation  
  - KPI calculations  
  - Pivot table modeling  
  - Dashboard creation  

### 🛠 Supporting Tools (Practice)
- **Power BI** – Practice dashboard  
- **Tableau** – Practice dashboard  
- **MySQL** – Practice SQL queries  

---

## 📊 Key Insights (Excel Dashboard)

- **Total Sales generated:** ₹29.36M  
- **Top Selling Product Category:** Bikes  
- **Best Performing Region:** Australia  
- **Highest Sales & Profit Quarter:** Q4  

These insights were computed using Excel pivot tables, formulas, and slicers.

---

# 🧮 Excel Data Preparation & Analysis Steps

### **0️⃣ Union of Sales Tables**
Combined **FactInternetSales** and **FactInternetSalesNew** into a unified dataset.

---

### **1️⃣ Product Lookup**
Mapped each sales record to its **Product Name** from *DimProduct*.
using vloolup
---

### **2️⃣ Customer & Pricing Lookup**
- Retrieved **Customer Full Name** from *DimCustomer*.  
- Retrieved **Unit Price** from *DimProduct*.  
- Ensured accurate relationships across tables.
using xloolup
---

### **3️⃣ Date Key Transformation**
Converted OrderDateKey (YYYYMMDD) into actual date fields.

Generated the following time intelligence fields:

- Year  
- Month Number  
- Month Full Name  
- Quarter (Q1–Q4)  
- Year-Month (YYYY-MMM)  
- Weekday Number  
- Weekday Name  
- Financial Month  
- Financial Quarter  

---

### **4️⃣ Sales Amount Calculation**
Sales Amount = (Unit Price * Order Quantity) - Unit Discount

---

### **5️⃣ Production Cost Calculation**
Production Cost = Unit Cost * Order Quantity

---

### **6️⃣ Profit Calculation**
Profit = Sales Amount - Production Cost

---

### **7️⃣ Monthwise Pivot Table**
Created pivot table for **Month vs Sales** with **Year** as a filter.

---

### **8️⃣ Year-wise Sales – Bar Chart**

### **9️⃣ Month-wise Sales – Line Chart**

### **🔟 Quarter-wise Sales – Pie Chart**

### **1️⃣1️⃣ Combined Chart (Sales vs Production Cost)**  
Bar + Line combo chart to visualize profitability trends.

---

### **1️⃣2️⃣ Additional KPIs & Charts**
Built performance visuals for:

- Products  
- Customers  
- Region  

---

### **1️⃣3️⃣ Final Excel Dashboard**
Included KPIs, slicers, charts, and insights in a clean dashboard layout.

📁 **File:** [`excel/Adventure Works Project.xlsx`](https://docs.google.com/spreadsheets/d/1U7fMfZS-xjn_oOzf7vUd06it6yeUGxXy/edit?usp=drive_link&ouid=107602198493273725142&rtpof=true&sd=true)  
🖼️ **Screenshots:** [`excel/screenshots/](https://github.com/Skarthik99/Adventure-Works-Analysis-Project/blob/main/dashboards/dashboards/screenshots/excel_dashboard-1.png)
https://github.com/Skarthik99/Adventure-Works-Analysis-Project/blob/main/dashboards/dashboards/screenshots/excel_dashbaord-2.png`

---

# 📈 Power BI Dashboard (Practice)

A practice dashboard replicating the same KPIs using interactive Power BI visuals.

📁 **File:** `powerbi/Adventure Works Project.pbix`  
🖼️ **Screenshots:** `powerbi/screenshots/`  
🔗 *(Add Drive link here if PBIX > 80MB)*

---

# 🟣 Tableau Dashboard (Practice)

A Tableau dashboard created for visualization and analytics practice.

📁 **File:** `tableau/Adventures works Project.twbx`  
🖼️ **Screenshots:** `tableau/screenshots/`  

---

# 🧮 SQL Practice Queries

Queries include:

- Joins  
- Category revenue analysis  
- Region performance  
- Customer performance  
- Monthly/quarterly trend analysis  

📁 **File:** `sql/Adventure_works_Project.sql`

---

# 📥 Dataset Information

Raw datasets are **not uploaded** due to size.  
Sample datasets are available in:

📁 `data/sample/`
[https://drive.google.com/drive/folders/1VlhEaua10uerqMur8OndA9DZzS39AziT?usp=drive_link]

👉 **Full dataset Google Drive link:**  
**<ADD YOUR DRIVE LINK HERE>**

[Download Full Dataset](https://drive.google.com/drive/folders/1W8ABboDHPnKGvSAWEk92bOqSCac7GZou?usp=drive_link)
---

# 📚 Project Deliverables

- ✔ Excel Main Dashboard  
- ✔ Power BI Practice Dashboard  
- ✔ Tableau Practice Dashboard  
- ✔ SQL Practice Queries  
- ✔ PPT Presentation *(AdventureWorks Sales Analysis)*  
- ✔ Sample Data  
- ✔ Dashboard Screenshots  

---

  


