# dbt_airbnb Project

## Overview
The `dbt_airbnb` project is a data transformation and analytics pipeline designed for use with Snowflake. It transforms raw Airbnb data into a structured data warehouse and creates sample dashboard in `Preset` for data visualization. This project includes a series of SQL queries and transformations that are organized within dbt's best practices and functionalities, such as tests, macros, logging, and external packages. 

## Features
- **Snowflake Configuration**: The project includes a Snowflake setup SQL query (`Snowflake setup.sql`) that configures your Snowflake data warehouse environment.
- **Data Transformation**: Raw Airbnb data is transformed into a structured data warehouse for easier analysis. The transformations follow best practices and use dbt's powerful features.
- **Documentation**: Documentation for selected tables has been added, detailing the structure, fields, and usage of the data.
- **Testing**: Tests are applied to ensure data quality and integrity.
- **Macros**: Custom macros are created to reuse SQL logic across the project.
- **Logging**: Logging is incorporated to capture important information during the transformation and execution process.
- **External Packages**: External dbt packages are used for enhanced functionality.
- **Snapshots**: Snapshots are used to capture historical data for incremental loads.
- **Seeds**: Static datasets, like reference tables, are included as seeds for use in transformations.

## Setup Instructions

### Requirements
- **dbt**: Install dbt on your local machine. Follow the installation instructions on the [dbt website](https://www.getdbt.com/docs/installation/).
- **Snowflake**: Ensure your Snowflake account and credentials are set up.

### Snowflake Setup
The `Snowflake setup.sql` file contains the necessary SQL queries to configure your Snowflake environment.

### Installing Dependencies
To install the required Python packages, run the following command:

```bash
pip install -r requirements.txt
