
# KULIKULI Database

## Introduction

The KULIKULI database is designed to manage data related to a business that sells organic moringa products online and sources ethically from Niger. This README provides an overview of the database structure, tables, and their relationships.

## Tables

1. **suppliers**:
   - Contains information about suppliers of moringa, including their contact details and pricing per kilo.

2. **supply_chain_transactions**:
   - Tracks supply chain transactions, such as the quantity supplied and transaction dates.

3. **raw_moringa_batch**:
   - Stores data about batches of raw moringa received, including warehouse location and quantity received.

4. **retailers**:
   - Manages information about retailers, including their contact details and transaction history.

5. **customers**:
   - Contains data on customers who purchase products, including contact information.

6. **finished_moringa_product**:
   - Stores details about the various finished moringa products available for sale, including nutritional information and pricing.

7. **orders**:
   - Tracks customer orders, including total prices, shipping status, and transaction dates.

8. **purchase_orders**:
   - Links products to customer orders, specifying the quantity of each product in an order.

9. **retailer_purchase**:
   - Connects retailers with the products they purchase.

## Database Schema

The database follows a relational structure, with foreign keys establishing relationships between tables. Some key relationships include:
- Customers placing orders.
- Products included in orders.
- Retailers purchasing products.
- Products sourced from suppliers.
- Suppliers involved in supply chain transactions.

## Usage

This database is designed to facilitate the management of various aspects of the business, including:
- Tracking supplier information and pricing.
- Managing supply chain transactions and raw moringa batches.
- Maintaining customer and retailer details.
- Handling product information and pricing.
- Recording customer orders and linking them to products.
- Associating retailers with the products they purchase.

## SQL Statements

The provided SQL statements include table creation, sample data insertion, and foreign key relationships.

## Contributors

This database was created by Margaret Karaba for demonstration purposes.

## Version

- Initial Version: 19th October 2023

