--eliminate the multi-valued/

| OrderID | CustomerName | Product  |
| ------- | ------------ | -------- |
| 101     | John Doe     | Laptop   |
| 101     | John Doe     | Mouse    |
| 102     | Jane Smith   | Tablet   |
| 102     | Jane Smith   | Keyboard |
| 102     | Jane Smith   | Mouse    |
| 103     | Emily Clark  | Phone    |

SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';

--/If the data is small or static, and you're manually normalizing it/

-- Orders table (1 row per order)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- OrderItems table (1 row per product per order)
SELECT OrderID, Product, Quantity
FROM OrderDetails;
