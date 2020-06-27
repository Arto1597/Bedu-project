select * from olist_products;
Select * from olist_customers;
Select customer_city, count(customer_city) total from olist_customers
group by customer_city 
order by total desc;
Select * from order_payments;
select payment_method, count(payment_method) total, payment_installments, count(payment_value) totalMSI, round(sum(payment_value),2)  from order_payments
group by payment_method, payment_installments, payment_value;
Select payment_method, count(payment_method) from order_payments
group by payment_method;

select payment_method, round(sum(payment_value),2) from order_payments
where payment_value > 0 and  payment_method = "credit_card";

Select * from olist_sellers;

select seller_id, count(seller_id) totales from olist_sellers
group by seller_id
order by totales desc;

select * from order_reviews;

select order_id,score, coments_tiitle from order_reviews
where score in (5,4);

