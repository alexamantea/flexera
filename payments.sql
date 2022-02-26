sqlite> .schema payments
CREATE TABLE payments(id int, employee_id int, department_id int, amount float);

select * from payments;
1|1|1|10.0
2|1|1|50.5
3|3|1|10.5
4|3|2|1.5
2|1|1|5000.0
10|1|1|5000.0
10|1|3|5000.0
10|1|4|1000.0
10|1|5|100000.0
10|1|10|1000.0
10|1|10|4000.0
10|1|4|12000.0
10|1|1|12000.0
10|1|6|12000.0


sqlite> select department_id, sum(amount) from payments group by department_id having sum(amount) > 10000 order by sum(amount) desc;
5|100000.0
1|22071.0
4|13000.0
6|12000.0
sqlite> 
