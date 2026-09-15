# SQL Test Results

## Test Execution Summary

| Test Area | Test Description | Expected Result | Status |
|---|---|---|---|
| Customer Data | Check for missing customer emails | No missing emails | PASS |
| Customer Data | Check for duplicate emails | No duplicate emails | PASS |
| Product Data | Validate product prices | All prices greater than 0 | PASS |
| Inventory | Validate stock quantities | No negative stock | PASS |
| Orders | Validate order amounts | No negative order totals | PASS |
| Orders | Validate order statuses | Only valid statuses exist | FAIL |
| Order Items | Validate quantities | All quantities greater than 0 | PASS |
| Referential Integrity | Validate customer-order relationships | Every order has a valid customer | PASS |
| Referential Integrity | Validate product-order relationships | Every order item has a valid product | PASS |
| Data Consistency | Compare order totals with item totals | Totals should match | FAIL |

## Failed Validation Details

### 1. Invalid Order Statuses

Two orders contain the status `Processing`, which was not included in the defined valid status values.

| Order ID | Customer ID | Order Status | Total Amount |
|---:|---:|---|---:|
| 4 | 4 | Processing | $79.99 |
| 8 | 7 | Processing | $259.97 |

**Result:** FAIL

**Recommendation:** Review the allowed order-status values and determine whether `Processing` should be added as a valid status or whether these records should be corrected.

### 2. Order Total Mismatch

Order 3 contains a mismatch between the stored order total and the calculated total from its order items.

| Order ID | Stored Order Total | Calculated Item Total | Difference |
|---:|---:|---:|---:|
| 3 | $329.97 | $279.97 | $50.00 |

Order 3 contains the following items:

| Product | Quantity | Unit Price | Item Total |
|---|---:|---:|---:|
| Office Chair | 1 | $199.99 | $199.99 |
| Keyboard | 1 | $49.99 | $49.99 |
| Wireless Mouse | 1 | $29.99 | $29.99 |

**Result:** FAIL

**Recommendation:** Investigate the $50.00 difference. Since the current database structure does not include a separate shipping or tax field, the difference should be reviewed as a potential data consistency defect.

## Validation Approach

SQL queries were used to validate backend data integrity, identify invalid records, and verify relationships between database tables.

The validation focused on:

- Data completeness
- Data accuracy
- Duplicate records
- Boundary conditions
- Referential integrity
- Order-status validation
- Order-item validation
- Backend data consistency

## Overall Result

**8/10 validation scenarios passed.**

**2/10 validation scenarios failed and require investigation.**

The SQL validation queries executed successfully and identified two data-quality issues: invalid order statuses and an order-total mismatch.

## QA Outcome

The identified issues were documented rather than modifying the database data simply to make the tests pass. This demonstrates a QA approach of:

**Identify → Investigate → Document → Fix**