# 🚀 Snowflake Dynamic Tables Tutorial

[![Snowflake](https://img.shields.io/badge/Snowflake-Cloud%20Data%20Platform-29B5E8?style=flat&logo=snowflake)](https://www.snowflake.com/)
[![SQL](https://img.shields.io/badge/SQL-Snowflake%20Dialect-lightgrey)](https://docs.snowflake.com/)
[![Status](https://img.shields.io/badge/Status-Educational-success)](https://github.com/ElliottFairhall/Snowflake_Dynamic_Tables_Tutorial)

A dedicated tutorial project for **Snowflake Dynamic Tables**. This repository provides a hands-on guide to creating and
managing declarative data pipelines that simplify ETL/ELT workflows using the `TARGET_LAG` parameter.

______________________________________________________________________

## Key Features

- **Declarative Pipelines**: Understanding the `CREATE DYNAMIC TABLE` syntax.
- **Automated Refresh**: Using `TARGET_LAG` to define data freshness requirements.
- **Management**: Suspend, resume, and manual refresh operations.
- **Star Schema**: Implementing dimensional modelling using dynamic objects.

______________________________________________________________________

## Project Structure

```text
Snowflake_Dynamic_Tables_Tutorial/
├── README.md               # You are here
├── Tutorial/
│   └── DYNAMIC_TABLES_TUTORIAL.md # Step-by-step walkthrough
├── scripts/                # Extracted SQL management scripts
│   └── 01_management_commands.sql
├── notebook/
│   └── Dynamic_Tables_Tutorial.ipynb
└── data/                   # Initialised as empty
```

______________________________________________________________________

## Getting Started

> **Environment Setup:** Before beginning, execute `scripts/00_setup_environment.sql` to provision the necessary
> databases, schemas, and sample data for this project.

1. Open the [Tutorial](Tutorial/DYNAMIC_TABLES_TUTORIAL.md) for concepts and walkthrough.
2. Use the [Notebook](notebook/Dynamic_Tables_Tutorial.ipynb) for an interactive experience.

______________________________________________________________________

## Author

**Elliott Fairhall** *Data Engineering Educational Series*
