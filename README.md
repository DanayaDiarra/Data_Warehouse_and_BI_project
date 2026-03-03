# Data_Warehouse_and_BI_project
# 📊 Data Warehouse and Analytics Project

<div align="center">

![GitHub stars](https://img.shields.io/github/stars/DanayaDiarra/Data_Warehouse_and_BI_project?style=social)
![GitHub forks](https://img.shields.io/github/forks/DanayaDiarra/Data_Warehouse_and_BI_project?style=social)
![GitHub license](https://img.shields.io/github/license/DanayaDiarra/Data_Warehouse_and_BI_project)
![GitHub last commit](https://img.shields.io/github/last-commit/DanayaDiarra/Data_Warehouse_and_BI_project)
![GitHub repo size](https://img.shields.io/github/repo-size/DanayaDiarra/Data_Warehouse_and_BI_project)

**Modern Data Warehouse with Medallion Architecture | ETL Pipelines | BI Analytics**

[📖 Documentation](docs/) | [🚀 Quick Start](#quick-start) | [📊 BI Dashboards](bi_dashboards/) | [🐛 Report Bug](issues) | [✨ Request Feature](issues)

</div>

---

## 📋 Table of Contents
- [Project Overview](#-project-overview)
- [Architecture](#-architecture)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Quick Start](#-quick-start)
- [Data Pipeline](#-data-pipeline)
- [Data Quality](#-data-quality)
- [BI & Analytics](#-bi--analytics)
- [Documentation](#-documentation)
- [Contributing](#-contributing)
- [License](#-license)
- [Contact](#-contact)

---

## 🎯 Project Overview

A comprehensive **Data Warehousing and Business Intelligence solution** that demonstrates industry best practices in data engineering and analytics. This project simulates a real-world scenario by integrating **ERP and CRM data sources** into a unified, analytical data model.

### ✨ Key Features
- **Medallion Architecture** (Bronze, Silver, Gold layers)
- **End-to-end ETL/ELT pipelines** with data quality checks
- **Dimensional modeling** for analytical queries
- **Interactive BI dashboards** for business insights
- **Comprehensive documentation** and data dictionary

### 🎓 Business Value
- **360° Customer View**: Unified customer data from ERP and CRM
- **Sales Analytics**: Track performance, trends, and forecasts
- **Customer Insights**: Segmentation, behavior analysis, and lifetime value
- **Operational Efficiency**: Identify bottlenecks and optimize processes

---

## 🏗️ Architecture

<div align="center">
  
<img width="943" height="796" alt="image" src="https://github.com/user-attachments/assets/eb0935d0-f131-4020-b4ce-66e7308b28eb" />


</div>

### 🗃️ Data Flow

1. **Data Sources**: Raw CSV files from ERP (sales, products) and CRM (customers)
2. **Bronze Layer**: Raw data ingestion, no transformations
3. **Silver Layer**: Data cleansing, standardization, and deduplication
4. **Gold Layer**: Dimensional model for business analytics
5. **BI Layer**: Interactive dashboards and reports

---

## 🛠️ Tech Stack

| **Category** | **Technologies** | **Purpose** |
|-------------|------------------|-------------|
| **Database** | ![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat&logo=microsoft%20sql%20server&logoColor=white) | Data warehouse engine |
| **ETL/ELT** | ![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white) | Data transformations |
| **Programming** | ![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) | Custom ETL scripts |
| **BI Tools** | ![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=power%20bi&logoColor=black) | Interactive dashboards |
| | ![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat&logo=tableau&logoColor=white) | Data visualization |
| **Version Control** | ![Git](https://img.shields.io/badge/Git-F05032?style=flat&logo=git&logoColor=white) | Source code management |
| **Documentation** | ![Markdown](https://img.shields.io/badge/Markdown-000000?style=flat&logo=markdown&logoColor=white) | Project documentation |

---

## 📁 Project Structure

```
Data_Warehouse_and_BI_project/
│
├── 📁 .github/                      # GitHub workflows and templates
│   ├── workflows/                    # CI/CD pipelines
│   └── FUNDING.yml                    # Sponsor links
│
├── 📁 datasets/                      # Source data (CSV files)
│   ├── source_crm/                    # CRM system data
│   └── source_erp/                     # ERP system data
│
├── 📁 docs/                           # Comprehensive documentation
│   ├── architecture/                    # Architecture diagrams
│   ├── data_dictionary.md                # Field-level documentation
│   ├── business_requirements.md           # Project requirements
│   └── setup_guide.md                      # Setup instructions
│
├── 📁 scripts/                         # SQL scripts
│   ├── 📁 bronze/                        # Bronze layer scripts
│   ├── 📁 silver/                         # Silver layer scripts
│   └── 📁 gold/                            # Gold layer scripts
│       ├── ddl_gold.sql                     # Table creation
│       └── analytics/                          # Reporting queries
│
├── 📁 etl_pipeline/                     # Python ETL scripts
│   ├── extract/                           # Data extraction
│   ├── transform/                          # Data transformation
│   └── load/                                 # Data loading
│
├── 📁 bi_dashboards/                     # BI files
│   ├── power_bi/                           # Power BI (.pbix)
│   ├── tableau/                              # Tableau (.twb)
│   └── exports/                                # Dashboard screenshots
│
├── 📁 tests/                              # Data quality tests
│   ├── quality_checks_bronze.sql
│   ├── quality_checks_silver.sql
│   └── quality_checks_gold.sql
│
├── 📁 notebooks/                          # Jupyter notebooks
│   ├── 01_eda_analysis.ipynb
│   └── 02_data_quality.ipynb
│
├── .gitignore                              # Git ignore rules
├── LICENSE                                 # MIT license
├── README.md                               # This file
├── requirements.txt                         # Python dependencies
└── environment.yml                           # Conda environment
```

---

## 🚀 Quick Start

### Prerequisites
- **SQL Server** (2019 or later)
- **Python** 3.8+ (for ETL scripts)
- **Git** for version control
- **Power BI Desktop** or **Tableau Public** (for dashboards)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone git@github.com:DanayaDiarra/Data_Warehouse_and_BI_project.git
   cd Data_Warehouse_and_BI_project
   ```

2. **Set up Python environment** (optional)
   ```bash
   # Using conda
   conda env create -f environment.yml
   conda activate datawarehouse
   
   # OR using pip
   pip install -r requirements.txt
   ```

3. **Configure database connection**
   - Update connection strings in `config/database.conf`
   - Ensure SQL Server is running

4. **Run ETL pipeline**
   ```bash
   # Execute in order
   python etl_pipeline/extract/extract_sources.py
   python etl_pipeline/transform/transform_to_silver.py
   python etl_pipeline/load/load_to_gold.py
   ```

5. **Run data quality checks**
   ```bash
   # Execute SQL scripts in tests/ folder
   sqlcmd -S localhost -d DataWarehouse -i tests/quality_checks_gold.sql
   ```

6. **Explore BI dashboards**
   - Open `bi_dashboards/power_bi/sales_dashboard.pbix` in Power BI
   - Or `bi_dashboards/tableau/executive_dashboard.twb` in Tableau

---

## 🔄 Data Pipeline

### Bronze Layer (Raw Data)
```sql
-- Example: Raw customer data ingestion
CREATE TABLE BRONZE.CRM_CUSTOMER (
    customer_id     VARCHAR(50),
    customer_name   NVARCHAR(200),
    birth_date      DATE,
    city           NVARCHAR(100),
    load_timestamp DATETIME2 DEFAULT GETDATE()
);
```

### Silver Layer (Cleaned Data)
- Data type standardization
- NULL handling and defaults
- Deduplication
- Business rule validation

### Gold Layer (Business Model)
- **Dimension Tables**: `DIM_CUSTOMER`, `DIM_PRODUCT`, `DIM_DATE`
- **Fact Tables**: `FACT_SALES`, `FACT_ORDERS`
- **Star Schema** for optimal query performance

---

## ✅ Data Quality

Comprehensive quality checks at each layer:

| **Check Type** | **Bronze** | **Silver** | **Gold** |
|---------------|------------|------------|----------|
| Completeness | ✓ | ✓ | ✓ |
| Uniqueness | - | ✓ | ✓ |
| Referential Integrity | - | ✓ | ✓ |
| Business Rules | - | - | ✓ |
| Freshness | ✓ | ✓ | ✓ |

**Sample quality check:**
```sql
-- Check for orphaned records in fact table
SELECT COUNT(*) AS orphaned_records
FROM GOLD.FACT_SALES f
LEFT JOIN GOLD.DIM_CUSTOMER c ON f.customer_key = c.customer_key
WHERE c.customer_key IS NULL;
```

---

## 📊 BI & Analytics

### Key Dashboards

| **Dashboard** | **Description** | **Key Metrics** |
|--------------|-----------------|-----------------|
| **Executive Overview** | High-level business performance | Revenue, Profit, YoY Growth |
| **Sales Analytics** | Detailed sales performance | Top products, Regional sales |
| **Customer Insights** | Customer behavior analysis | CLV, Churn rate, Segmentation |
| **Operational Metrics** | Process efficiency | Order fulfillment, Delivery times |

### Sample Analytics Queries

```sql
-- Customer Lifetime Value
SELECT 
    c.customer_segment,
    COUNT(DISTINCT c.customer_key) AS customer_count,
    SUM(f.total_amount_usd) AS total_revenue,
    AVG(f.total_amount_usd) AS avg_customer_value
FROM GOLD.FACT_SALES f
JOIN GOLD.DIM_CUSTOMER c ON f.customer_key = c.customer_key
GROUP BY c.customer_segment
ORDER BY total_revenue DESC;
```

---

## 📚 Documentation

| **Document** | **Description** | **Location** |
|-------------|-----------------|--------------|
| **Business Requirements** | Original project specifications | `docs/business_requirements.md` |
| **Data Dictionary** | Field-level definitions | `docs/data_dictionary.md` |
| **Architecture Guide** | System design and data flow | `docs/architecture/` |
| **Setup Guide** | Step-by-step installation | `docs/setup_guide.md` |
| **Naming Conventions** | Standards used in project | `docs/naming_conventions.md` |

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Commit changes**: `git commit -m 'Add amazing feature'`
4. **Push to branch**: `git push origin feature/amazing-feature`
5. **Open a Pull Request**

### Contribution Guidelines
- Follow [naming conventions](docs/naming_conventions.md)
- Add tests for new features
- Update documentation
- Ensure all quality checks pass

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 📬 Contact

**Project Maintainer:** Danaya Diarra

- **GitHub**: [@DanayaDiarra](https://github.com/DanayaDiarra)
- **Project Link**: [https://github.com/DanayaDiarra/Data_Warehouse_and_BI_project](https://github.com/DanayaDiarra/Data_Warehouse_and_BI_project)

---

## ⭐ Support

If you find this project useful, please consider:
- Giving it a **star** ⭐ on GitHub
- **Forking** it for your own projects
- **Sharing** with your network
- [Sponsoring](.github/FUNDING.yml) the project

---

<div align="center">
  
**Built with ❤️ for the data community**

[⬆ Back to Top](#-data-warehouse-and-analytics-project)

</div>
```
