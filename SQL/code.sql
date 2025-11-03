SELECT 
  customers.CustomerEmail AS cust_email,
  customers.CustomerCity AS cust_city,
  orders.Date AS order_date,
  orders.Quantity AS order_qty,
  products.ProdName AS product_name,
  products.Price AS product_price,
  p_cat.CategoryName AS category_name,
  (orders.Quantity * products.Price) AS total_sales
FROM `bankmuamalat-477109.bankmuamalat.orders` AS orders
JOIN `bankmuamalat-477109.bankmuamalat.customers` AS customers
  ON orders.CustomerID = customers.CustomerID
JOIN `bankmuamalat-477109.bankmuamalat.products` AS products
  ON orders.ProdNumber = products.ProdNumber
JOIN `bankmuamalat-477109.bankmuamalat.product_category` AS p_cat
  ON products.Category = p_cat.CategoryID
ORDER BY orders.Date ASC;
