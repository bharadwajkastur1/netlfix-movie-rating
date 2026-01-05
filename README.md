# Netflix Movie Ratings Data Pipeline

Comprehensive **Netflix movie ratings analysis pipeline** built with **modern data engineering best practices**. From raw CSV extraction to interactive dashboards.

## 🏗️ Project Architecture

👉🏻 EXTRACT: Download → Stage CSV files in Amazon S3
👉🏻 LOAD: Snowflake raw tables from S3
👉🏻 TRANSFORM: DBT modular models + snapshots + tests
👉🏻 SERVE: Looker Studio & Power BI dashboards

text

## 🎯 DBT Features Mastered

| Feature | Implementation |
|---------|----------------|
| **DBT Models** | Modular SQL business logic |
| **Materializations** | view/table/incremental strategies |
| **Sources** | Clean raw data lineage |
| **Seeds** | Static lookup tables |
| **Snapshots** | SCD Type 2 historical tracking |
| **Tests** | unique/not_null/custom tests |
| **Macros** | Reusable Jinja logic |
| **Documentation** | Auto-generated DAG visualization |
