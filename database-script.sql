insert into attendees values(2, "Karen McMann", "karen@gmail.com", "314-728-8271"), (3, "Vince Price", "vince@gmail.com", "314-281-2182");
create table table_name (
table_id INT PRIMARY KEY,
title varchar(45));
drop table table_name;
ALTER TABLE attendees 
MODIFY COLUMN id INT AUTO_INCREMENT;
create table tickets (
id int primary key auto_increment,
attendee_id int,
ticket_type varchar(40),
purchase_date date,
price int,
foreign key (attendee_id) references attendees(id) 
);
create table workshop (
id int primary key auto_increment,
title varchar(40),
descript varchar(100),
instructor varchar(20),
location varchar(20),
max_capacity int,
start_time time,
end_time time
);
create table registration(
id int primary key auto_increment,
attendee_id int,
workshop_id int,
registration_date date,
attendance_status varchar(20),
foreign key (attendee_id) references attendees(id),
foreign key (workshop_id) references workshop(id)
)