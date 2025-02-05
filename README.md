Data Warehouse and Analytics Project

Welcome to the Data Warehouse and Analytics Project repository! 
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

Project Overview

This project involves:
* Data Architecture: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
* ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.
* Data Modeling: Developing fact and dimension tables optimized for analytical queries.
* Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.

SQL Development
Data Architect
Data Engineering
ETL Pipeline Developer
Data Modeling
Data Analytics

Project Requirements
Building the Data Warehouse (Data Engineering)


Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

Specifications : 

* Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.
* Data Quality: Cleanse and resolve data quality issues prior to analysis.
* Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.
* Scope: Focus on the latest dataset only; historization of data is not required.
* Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.
* BI: Analytics & Reporting (Data Analysis)

Objective
Develop SQL-based analytics to deliver detailed insights into:

* Customer Behavior
* Product Performance
* Sales Trends
* These insights empower stakeholders with key business metrics, enabling strategic decision-making.


Data Architecture
The data architecture for this project follows Medallion Architecture Bronze, Silver, and Gold layers: Data Architecture

* Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
* Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
* Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.

The **data-warehouse-project** repository is organized into several key directories and files to ensure efficient data management and project structure. The **datasets/** folder contains raw datasets sourced from ERP and CRM systems, serving as the foundation for data processing. The **docs/** directory holds project documentation, including architecture details and a **naming-conventions.md** file that outlines consistent guidelines for naming tables, columns, and files to maintain uniformity. The **scripts/** folder is divided into three subfolders: **bronze/** for scripts that handle data extraction and loading of raw data, **silver/** for cleaning and transforming the data, and **gold/** for creating analytical models. To ensure data integrity, the **tests/** directory contains test scripts and quality assurance files. The root directory includes key files such as **README.md** for an overview of the project and usage instructions, **LICENSE** for repository licensing information, **.gitignore** to specify files and directories Git should ignore, and **requirements.txt**, which lists the dependencies and requirements needed to run the project smoothly.

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.
