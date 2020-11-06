-- rexon_metals
select c.customer_id as 'Customer ID',
    name as 'Customer Name',
    coalesce(sum(order_qty * price),0) as 'Total Revenue'
from customer c left join customer_order co
    on co.customer_id = c.customer_id
    left join product p
    on co.product_id = p.product_id
group by 1;
/*
select c.customer_id as 'Customer ID',
    name as 'Customer Name',
    sum(order_qty * price) as 'Total Revenue'
from customer_order co inner join customer c
    on co.customer_id = c.customer_id
    inner join product p
    on co.product_id = p.product_id
group by 1;
*/
/* 
select order_id as 'Order',
    c.customer_id as 'Customer ID',
    name as 'Customer Name',
    ( state || ', ' || city || 
    '. ' || street_address) as 'Full Address',
    zip as 'Zip',
    order_date as 'Order Date',
    product_id as 'Product ID',
    description as 'Description',
    order_qty as 'Order Quantity',
    price as 'Unit Price',
    order_qty * price as 'Revenue'
from customer c inner join customer_order co
    on c.customer_id = co.customer_id
    inner join product p
    on co.product_id = p.product_id;
*/
/*
select c.customer_id,
    name as 'Customer Name'
from customer c left join customer_order co
    on c.customer_id = co.customer_id
where order_id is null;
*/
/*
select c.customer_id,
    name,
    street_address,
    city,
    state, 
    zip,
    order_date,
    ship_date,
    order_id,
    product_id,
    order_qty
from customer c left join customer_order co
    on c.CUSTOMER_ID = co.CUSTOMER_ID;
*/
/*
select order_id,
    c.customer_id,
    order_date,
    ship_date, name, street_address,
    city, state, zip,
    product_id,
    order_qty
from customer c join customer_order co
    on c.CUSTOMER_ID = co.CUSTOMER_ID;
*/
-- Consultas de SELECT
/*SELECT NAME,
    STREET_ADDRESS || ' ' || CITY || 
    ', ' || STATE || ' ' || ZIP AS 'SHIP ADDRESS'
FROM CUSTOMER*/
/*SELECT NAME,
    CITY || ',' || STATE AS LOCATION
FROM CUSTOMER
*/
/*SELECT 
    PRODUCT_ID AS 'ID', 
    DESCRIPTION, 
    ROUND(PRICE,2) AS 'UNTAXED PRICE', 
    ROUND(PRICE * 1.07,2) AS 'TAXED PRICE'
FROM PRODUCT*/