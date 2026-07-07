BULK INSERT dim_customer 
FROM 'dim_customer.csv'
WITH(
  DATA_SOURCE = 'sales_blob',
  FORMAT= 'CSV',
  FIRSTROW = 2
  );