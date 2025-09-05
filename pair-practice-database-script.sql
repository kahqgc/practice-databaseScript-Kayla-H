create table venue_partner (
id int primary key auto_increment,
partner_name varchar(40),
location varchar(40)
);
create table tickets (
id int primary key auto_increment,
venue_partner_id int,
ticket_type varchar(40),
purchase_date date,
price int,
foreign key (venue_partner_id) references venue_partner(id) 
);
create table bookings(
id int primary key auto_increment,
venue_partner_id int,
registration_date date,
attendance_status varchar(20),
foreign key (venue_partner_id) references venue_partner(id)
);