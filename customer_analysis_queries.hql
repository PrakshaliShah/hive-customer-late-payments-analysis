- 1: Display customers (ID, first name and last name) from the state of New York.
hive> select c_id, c_firstname, c_lastname
from customers
where c_state = 'New York';
-- 2: Display the total number of customers from each state.
hive> select c_state, count(c_id) as total
from customers
group by c_state;
-- 3: Display the customers who have any late transactions and the date of each late transaction.
hive> select c.c_id, c.c_firstname, c.c_lastname, p.transaction_id, p.transaction_date
from customers c join payments p on c.c_id = p.c_id
where p.late = 'TRUE';
-- 4: Display the state and the number of customers who do not have a credit card for each state.
hive> select c_state, count(c_id)
from customers
where credit_card = 'FALSE'
group by c_state;
-- 5: Display the state and the number of customers who have late payments in each state.
hive> select c.c_state, count(c.c_id) as total
from customers c join payments p on c.c_id = p.c_id
where p.late = 'TRUE'
group BY c.c_state;
-- 6: Display all customers who do not have a mobile phone.
hive> select *
from customers
where mobile = 'FALSE';
-- 7: Display all customers who have late payments.
hive> select c.c_id, c.c_firstname, c.c_lastname, c.c_street, c.c_city, c.c_state, c.c_zip, c.c_yob, c.c_gender, c.credit_card, c.internet, c.mobile
from customers c join payments p on c.c_id = p.c_id
where p.late = 'TRUE';
-- 8: Display customers who have no late payments.
hive> select c.c_id, c.c_firstname, c.c_lastname, c.c_city, c.c_state
from customers c join payments p on c.c_id = p.c_id
where p.late = 'FALSE'
group by c.c_id, c.c_firstname, c.c_lastname, c.c_city, c.c_state;
-- 9: Display name, city, state of customers who are born after 1985 and have late payments.
hive> select c.c_firstname, c.c_firstname, c.c_city, c.c_state
from customers c join payments p on c.c_id = p.c_id
where p.late = 'TRUE' and c.c_yob > 1985;
-- 10: Display customers (id, name, city, state) who have no late payments and use the Internet for banking.
hive> select c.c_id, c.c_firstname, c.c_lastname, c.c_city, c.c_state
from customers c join payments p on c.c_id = p.c_id
where p.late = 'FALSE' and c.internet = 'TRUE'
group by c.c_id, c.c_firstname, c.c_lastname, c.c_city, c.c_state;