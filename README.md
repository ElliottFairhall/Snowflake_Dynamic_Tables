# 🚀 Snowflake Dynamic Tables Tutorial

## 🎯 Learning Objectives

1.  🧠 Grasp the concept of Dynamic Tables within Snowflake.
    
2.  🛠️ Master the creation and management of Dynamic Tables in Snowflake.
    
## 📚 Table of Contents
- [🚀 Snowflake Dynamic Tables Tutorial](#-snowflake-dynamic-tables-tutorial)
  - [🎯 Learning Objectives](#-learning-objectives)
  - [📚 Table of Contents](#-table-of-contents)
    - [🎉 Introduction](#-introduction)
    - [📝 Introduction to Dynamic Tables in Snowflake](#-introduction-to-dynamic-tables-in-snowflake)
  - [💡Tutorial](#tutorial)
  - [🎈 Conclusion](#-conclusion)
  - [📖 Additional Resources](#-additional-resources)
  - [⚠️  Disclaimer](#️--disclaimer)

### 🎉 Introduction

Welcome to this tutorial on Dynamic Tables within Snowflake! This tutorial is designed to help you understand and implement Dynamic Tables in your Snowflake environment. By the end of this tutorial, you'll be able to confidently use this feature to enhance your data processing capabilities and create fast, reliable and enterprise-grade ETL pipelines. So, let's dive in! 🏊‍♀️

### 📝 Introduction to Dynamic Tables in Snowflake

Dynamic Tables are powerful object within Snowflake that allows you to declare a table, based on other tables and using the `LAG` argument refresh data on schedule. They can be used for a variety of purposes, from data loading and transformation, to analysis and reporting.

Creating a Dynamic Table is achieved using the `CREATE OR REPLACE DYNAMIC TABLE` command. To ensure that the Dynamic Table runs consistently, we use a `WAREHOUSE` argument to declare a dedicated warehouse resource for Dynamic Table Operations (even your whole ETL/ELT process).

You are able to manage Dynamic Tables easily using commands such as `ALTER DYNAMIC TABLE [ <name> ] { SUSPEND | RESUME }`, manually refresh data through using `ALTER DYNAMIC TABLE [ <name> ] REFRESH` and even chain refreshing based on the conditions of other tables (dynamic or not) downstream using the `[ TARGET_LAG = { '<num> { seconds | minutes | hours | days }'  | DOWNSTREAM } ]`.

To use Dynamic Tables within Snowflake, there is a need for a dedicated warehouse resource, and is based on the **user-managed compute model**, where you specify an existing virtual warehouse.

## 💡Tutorial

In this tutorial, we’ll be exploring how to construct a database, schema, and table within Snowflake. We’ll also delve into creating a collection of Dynamic Tables, and implementing the concept of [STAR Schema](https://en.wikipedia.org/wiki/Star_schema) data modelling based off of the data.

[Link to Tutorial](https://github.com/ElliottFairhall/Snowflake_Dynamic_Tables/tree/main/Tutorial)

By the end of this tutorial, you’ll have gained a comprehensive understanding of how to leverage one of Snowflake’s newest features to efficiently create a ETL/ELT pipeline, with minimal effort.

## 🎈 Conclusion

In conclusion, Dynamic Tables are a powerful feature now available through [Public Preview](https://docs.snowflake.com/en/release-notes/preview-features), with the ability to create objects that refresh without the need for additional objects such as stored procedures or tasks. Dynamic Tables provide Engineers and Citizen Developers a new tool in their arsenal to transform data within the Snowflake platform.

## 📖 Additional Resources

- [Quick Start - Dynamic Tables](https://quickstarts.snowflake.com/guide/getting_started_with_dynamic_tables/index.html?index=..%2F..index#2)
- [Data Engineering Simplified Video - Dynamic Tables](https://www.youtube.com/watch?v=cNWRefIxXpw)
-   [Snowflake Dynamic Table — Complete Guide — 1 | by Alexander | Snowflake | Medium](https://medium.com/snowflake/snowflake-dynamic-table-complete-guide-1-7b27925e099d#:~:text=Dynamic%20tables%20are%20tables%20that,statement%20to%20perform%20the%20transformation.)

## ⚠️  Disclaimer

Please note that while we strive to keep this tutorial up-to-date, Snowflake's features and capabilities may change over time. Always refer to the  [official Snowflake documentation](https://docs.snowflake.com/)  for the most accurate and current information.