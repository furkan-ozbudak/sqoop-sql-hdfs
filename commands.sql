create table stocks(id int not null primary key, symbol varchar(20), quote_date date, open_price decimal(13, 2), high_price decimal(13,2), low_price decimal(13,2));

insert into stocks values (1, "AAPL", '2009-01-02', 85.88, 91.04, 85.16),(2, "AAPL", '2008-01-02', 199.27, 200.26, 192.55), (3, "AAPL", '2007-01-03', 86.29, 86.58, 81.9); 

sqoop import --connect jdbc:mysql://quickstart.cloudera/cs523 --username root --password cloudera --table stocks --columns "id, symbol, open_price" --target-dir stocks --driver com.mysql.jdbc.Driver --fields-terminated-by '\t'
