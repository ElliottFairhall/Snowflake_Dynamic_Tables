-- =============================================================================
-- 00_SETUP_ENVIRONMENT
-- =============================================================================
-- Purpose:    Provision the necessary databases, schemas, and sample data
--             to serve as the foundation for the Dynamic Tables tutorial.
-- =============================================================================

USE ROLE SYSADMIN;

-- 1. Create base RAW databases
CREATE DATABASE IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS RAW.STAGING;
CREATE SCHEMA IF NOT EXISTS RAW.SALES;

CREATE DATABASE IF NOT EXISTS ANALYTICS;
CREATE SCHEMA IF NOT EXISTS ANALYTICS.MARTS;

-- 2. Create base source tables
CREATE OR REPLACE TABLE RAW.SALES.ORDERS (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_AMOUNT NUMBER,
    STATUS VARCHAR,
    _INGESTED_AT TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO RAW.SALES.ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMOUNT, STATUS) VALUES
    (1, 101, '2026-04-01', 150.00, 'COMPLETED'),
    (2, 102, '2026-04-02', 89.50, 'COMPLETED'),
    (3, 103, '2026-04-02', 210.25, 'PENDING');

CREATE OR REPLACE TABLE RAW.STAGING.CUSTOMERS (
    CUSTOMER_ID INT,
    CUSTOMER_NAME VARCHAR,
    SEGMENT VARCHAR,
    _INGESTED_AT TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO RAW.STAGING.CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT) VALUES
    (101, 'Alice Freeman', 'Premium'),
    (102, 'Bob Jenkins', 'Standard'),
    (103, 'Charles Lee', 'Standard');
