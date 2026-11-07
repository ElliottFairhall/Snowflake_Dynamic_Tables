-- =============================================================================
-- 00_SETUP_ENVIRONMENT
-- =============================================================================
-- Purpose:    Provision the necessary databases, schemas, and sample data
--             to serve as the foundation for the Dynamic Tables tutorial.
-- =============================================================================

-- WARNING: this script uses CREATE OR REPLACE TABLE as a reset-to-sample-data step. It replaces the tables below,
-- so re-running it discards changes you made to them (Time Travel keeps the old version only while retention
-- allows). The database names carry the tutorial prefix DYNAMIC_, so it does not touch another tutorial's tables.

USE ROLE SYSADMIN;

-- 1. Create base databases
CREATE DATABASE IF NOT EXISTS DYNAMIC_RAW;
CREATE SCHEMA IF NOT EXISTS DYNAMIC_RAW.STAGING;
CREATE SCHEMA IF NOT EXISTS DYNAMIC_RAW.SALES;

CREATE DATABASE IF NOT EXISTS DYNAMIC_ANALYTICS;
CREATE SCHEMA IF NOT EXISTS DYNAMIC_ANALYTICS.MARTS;

-- 2. Create base source tables
CREATE OR REPLACE TABLE DYNAMIC_RAW.SALES.ORDERS (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_AMOUNT NUMBER,
    STATUS VARCHAR,
    _INGESTED_AT TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO DYNAMIC_RAW.SALES.ORDERS (ORDER_ID, CUSTOMER_ID, ORDER_DATE, TOTAL_AMOUNT, STATUS) VALUES
    (1, 101, '2026-04-01', 150.00, 'COMPLETED'),
    (2, 102, '2026-04-02', 89.50, 'COMPLETED'),
    (3, 103, '2026-04-02', 210.25, 'PENDING');

CREATE OR REPLACE TABLE DYNAMIC_RAW.STAGING.CUSTOMERS (
    CUSTOMER_ID INT,
    CUSTOMER_NAME VARCHAR,
    SEGMENT VARCHAR,
    _INGESTED_AT TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO DYNAMIC_RAW.STAGING.CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, SEGMENT) VALUES
    (101, 'Alice Freeman', 'Premium'),
    (102, 'Bob Jenkins', 'Standard'),
    (103, 'Charles Lee', 'Standard');
