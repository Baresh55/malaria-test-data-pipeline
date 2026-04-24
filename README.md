# Malaria Synthetic Data Pipeline (End-to-End)

This project demonstrates a full data engineering workflow from raw data ingestion to analytics.

## Overview
The pipeline processes malaria case data and loads it into a PostgreSQL data warehouse, which is then used for analysis and visualisation in Power BI.

## Components
- Apache Hop pipelines for ETL
- Workflow automation for scheduled execution
- PostgreSQL data warehouse (dimension & fact tables)
- SQL views for analytics
- Power BI dashboard for insights

## Project Structure
- pipelines/ → ETL pipelines
- workflows/ → workflow orchestration
- sql/ → warehouse & views
- data-sample/ → sample dataset

## Key Features
- Incremental loading logic
- Data cleaning and standardisation
- Dimensional modeling (fact & dimension tables)
- Automated workflow execution

## How to Run
1. Open Apache Hop
2. Load the pipelines and workflow
3. Configure database connection
4. Run the main workflow

## Dashboard
A Power BI dashboard was built to analyse:
- Case volume by district & region
- Severity trends
- Cost per case
- Outcome by age group

## Author
Andrew
