Select * from Geolocation;
/*¿Qué ciudades estan en latitud de -23.55 ? */
Select city, state, Geo_latitud from Geolocation
where Geo_latitud like "%-23.55%"; 

/*¿Cómo buscar una subconsulta de order_id de la tabla riviews y utilizando order_payment? */
 creat view comentariosid(
select review_id, score, comments_message from 
order_reviews 
where order_id in 
(select order_id from order_payments)
)
select o.order_id, o.seller_id, s.seller_city from olist_order_items_dataset o
join olist_sellers  s
on o.olist_order_items_dataset = s.olist_sellers;

Select payment_method, count(payment_method) usados from order_payments
group by payment_method


