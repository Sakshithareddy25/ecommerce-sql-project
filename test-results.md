# SQL Test Results

## Test Execution Summary

| Test Area | Test Description | Expected Result | Status |
|---|---|---|---|
| Customer Data | Check for missing customer emails | No missing emails | PASS |
| Customer Data | Check for duplicate emails | No duplicate emails | PASS |
| Product Data | Validate product prices | All prices greater than 0 | PASS |
| Inventory | Validate stock quantities | No negative stock | PASS |
| Orders | Validate order amounts | No negative order totals | PASS |
| Orders | Validate order statuses | Only valid statuses exist | PASS |
| Order Items | Validate quantities | All quantities greater than 0 | PASS |
| Referential Integrity | Validate customer-order relationships | Every order has a valid customer | PASS |
| Referential Integrity | Validate product-order relationships | Every order item has a valid product | PASS |
| Data Consistency | Compare order totals with item totals | Totals should match | PASS |

## Validation Approach

SQL queries were used to validate backend data integrity, identify invalid records, and verify relationships between database tables.

The validation focused on:

- Data completeness
- Data accuracy
- Duplicate records
- Boundary conditions
- Referential integrity
- Backend data consistency

## Overall Result

**10/10 validation scenarios passed.**

The database passed the defined validation checks with no critical data integrity issues identified.
