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

I used the **AdventureWorks** dataset because it contains multiple CSV files with diverse data such as:  
- 🏷️ Product  
- 📁 Product Categories  
- 💵 Sales  
- 🙍‍♂️ Customers  
- 🔄 Returns  



---
🏗️ **Architecture**

The project follows the Medallion Architecture with three layers:

- Bronze Layer 🥉 - Raw data storage
- Silver Layer 🥈 - Cleaned and transformed data
- Gold Layer 🥇 - Business-ready analytics data
  
![Project Architecture](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Project%20Architecture.png)
---

## 🧩 Architecture: Medallion Approach  

### 🥉 Bronze Layer (Raw Data)
This project focuses on **data extraction** using a **REST API**.  
I uploaded all the datasets to my **GitHub repository** so that they can be accessed through **HTTPS links**.  
Using **Azure Data Factory (ADF)**, I built a **dynamic pipeline** that connects to GitHub and extracts data from all CSV files automatically.  
Each dataset serves a different purpose, and the pipeline is designed to handle multiple files efficiently.  

### 🔧 Pipeline Details  
The pipeline in Azure Data Factory includes the following activities:  
- **Lookup Activity** – reads the list of available files from GitHub  
- **Copy Data Activity** – copies each dataset through HTTPS connection  
- **ForEach Activity** – loops through all file names dynamically and extracts each dataset  

📸 *Azure Data Factory Pipeline:*  
![ADF Pipeline](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Pipeline_workflow.jpg)

📸 *Successful Pipeline Run:*  
![ADF Pipeline Success](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Pipeline_Successful_Run.jpg)

After the pipeline ran successfully, all extracted datasets were automatically saved in my Azure Data Lake Gen2 storage under the Bronze layer for further processing.

📸 *Bronze Layer Container:*
![Bronze Layer](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Bronze_Layer_container.jpg)

---

### 🥈 Silver Layer (Transformation)
After loading data into the Bronze Layer, I connected **Azure Databricks** to **ADLS Gen2** for transformations.

I created a **Silver Notebook** in Databricks to:  
- 🧮 Load raw data from the Bronze Layer  
- 🧹 Apply data cleaning and transformations  
- 💾 Save transformed data back to **Silver Layer** in **Parquet format** (best for big data)

📸 *Silver Layer Data in ADLS Gen2:*  
![Silver Layer Storage](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Silver_layer_container.jpg)

📸 *Silver Layer Data*  
![Silver Layer Storage Output](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Silver_layer_container_file_output.jpg)

---

### 🥇 Gold Layer (Analytics & Warehouse)
The final step is the **Gold Layer**, where I used **Azure Synapse Analytics** to query and analyze the transformed data.  

Steps:  
1. 🧱 Created a **Gold Schema** in Synapse  
2. 🔗 Used **OPENROWSET** and **BULK functions** to load Silver data into Synapse  
3. 📊 Created **External Tables** and **Views** using **CETAS (Create External Table As Select)**  

📸 *SQL Query using OPENROWSET & BULK:*  
![SQL Query in Synapse](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Sql_script.jpg)

📸 *Gold Layer Storage (ADLS Gen2):*  
![Gold Layer Storage](https://github.com/Premkumar9799817360/AdventureWork_DataEngineering_Project/blob/main/Project%20Image/Gold_layer_container_output.jpg)

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

