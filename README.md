# 🚀 Azure End-to-End Data Engineering Project  

### 📘 Project Overview  
This is a complete **End-to-End Data Engineering project built on Microsoft Azure**. The project uses the Medallion Architecture (Bronze, Silver, Gold layers) to process and transform data efficiently.

🛠️ Technologies Used

- ☁️ **Azure Data Lake Storage Gen2** - Data storage
- 🧩 **Azure Data Factory** - Data extraction and pipeline orchestration
- 🔥 **Azure Databricks** - Data transformation
- 📊 **Azure Synapse Analytics** - Data warehousing and analytics
- ⚙️ **Apache Spark & PySpark** - Big data processing
---

## 🎯 Project Goal  
To build a **robust and scalable data pipeline** using Azure services and implement a **Medallion Architecture** (Bronze, Silver, and Gold layers) using the **AdventureWorks dataset**.


## 🗂️ Dataset Used  
📦 **AdventureWorks Dataset**  
I used this dataset because it contains multiple CSV files with diverse data like:  
- 🏷️ Product  
- 📁 Product Categories  
- 💵 Sales  
- 🙍‍♂️ Customers  
- 🔄 Returns  

All datasets are uploaded to my GitHub repository.  
Example dataset file:  
📎 ![AdventureWorks Data](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/tree/main/Data)
---
🏗️ Architecture
The project follows the Medallion Architecture with three layers:

- Bronze Layer 🥉 - Raw data storage
- Silver Layer 🥈 - Cleaned and transformed data
- Gold Layer 🥇 - Business-ready analytics data
![Project Architecture](Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Project%20Architecture.png)
---

## 🧩 Architecture: Medallion Approach  

### 🥉 Bronze Layer (Raw Data)
In this layer, I extracted raw data from my GitHub using **Azure Data Factory (ADF)** via HTTPS.  
I created a **dynamic ADF pipeline** that uses:  
- 🔍 Lookup Activity  
- 📤 Copy Data Activity  
- 🔁 ForEach Activity  

These activities extract multiple datasets and store them in **ADLS Gen2 (Bronze Layer)**.

📸 *ADF Pipeline Workflow:*  
![ADF Pipeline](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/adf_pipeline.png)

📸 *Successful Pipeline Run:*  
![ADF Pipeline Success](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/adf_pipeline_success.png)

---

### 🥈 Silver Layer (Transformation)
After loading data into the Bronze Layer, I connected **Azure Databricks** to **ADLS Gen2** for transformations.

I created a **Silver Notebook** in Databricks to:  
- 🧮 Load raw data from the Bronze Layer  
- 🧹 Apply data cleaning and transformations  
- 💾 Save transformed data back to **Silver Layer** in **Parquet format** (best for big data)

📸 *Silver Layer Data in ADLS Gen2:*  
![Silver Layer Storage](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/silver_layer.png)

---

### 🥇 Gold Layer (Analytics & Warehouse)
The final step is the **Gold Layer**, where I used **Azure Synapse Analytics** to query and analyze the transformed data.  

Steps:  
1. 🧱 Created a **Gold Schema** in Synapse  
2. 🔗 Used **OPENROWSET** and **BULK functions** to load Silver data into Synapse  
3. 📊 Created **External Tables** and **Views** using **CETAS (Create External Table As Select)**  

📸 *SQL Query using OPENROWSET & BULK:*  
![SQL Query in Synapse](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/sql_query.png)

📸 *Gold Layer Storage (ADLS Gen2):*  
![Gold Layer Storage](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/gold_layer.png)

---

## 🧱 Project Workflow Summary  

📈 **Project Flow:**  
`GitHub (Raw Data)` → `ADF (Extract)` → `ADLS (Bronze)` → `Databricks (Transform)` → `ADLS (Silver)` → `Synapse (Gold)`  

📸 *Overall Project Workflow:*  
![Project Workflow](Premkumar9799817360/AdventureWork_DataEngineering_Project/refs/heads/main/Images/project_workflow.png)

---

## 🧩 Key Learnings  
💡 Learned how to connect and integrate multiple Azure services  
💡 Built a **Dynamic Pipeline** for multiple datasets  
💡 Understood **Medallion Architecture** deeply (Bronze, Silver, Gold)  
💡 Improved my knowledge of **ADF, ADLS, Databricks, and Synapse**  
💡 Gained hands-on experience in **data transformation and optimization**

---

## 🏁 Conclusion  
This project helped me gain strong practical knowledge of Microsoft Azure Data Engineering tools.  
I learned how to manage, extract, transform, and store large datasets using a real-world data architecture.

---

## 📫 Connect with Me  
👨‍💻 **Author:** Prem Kumar  
🔗 [GitHub Profile](https://github.com/Premkumar9799817360)  
📧 Email: *Add your email here*  

---
