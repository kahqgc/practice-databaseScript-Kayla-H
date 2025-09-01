insert into attendees values(2, "Karen McMann", "karen@gmail.com", "314-728-8271"), (3, "Vince Price", "vince@gmail.com", "314-281-2182"); /*table created from create table tab*/
create table table_name (
table_id INT PRIMARY KEY,
title varchar(45));
drop table table_name;
ALTER TABLE attendees 
MODIFY COLUMN id INT AUTO_INCREMENT;

/*creating the tables*/
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
);

/*inserting data*/
insert into attendees (id, name, email, phone) VALUES
(4, 'Tom Harris', 'tom.harris@example.com', '314-987-6543'),
(5, 'Nina Lopez', 'nina.lopez@example.com', '314-234-5678');

INSERT INTO tickets (attendee_id, ticket_type, purchase_date, price) VALUES
(1, 'Standard', '2025-08-01', 100),
(2, 'VIP', '2025-08-03', 200),
(3, 'Standard', '2025-08-02', 100),
(4, 'Student', '2025-08-05', 50),
(5, 'Standard', '2025-08-04', 100);

INSERT INTO workshop (title, descript, instructor, location, max_capacity, start_time, end_time) VALUES
('Beginner Yoga', 'Introduction to basic yoga poses and breathing', 'Emma Lee', 'Dreamer Den', 20, '08:00:00', '09:30:00'),
('Power Yoga', 'Intense vinyasa flow for strength and stamina', 'Raj Patel', 'Fireside', 25, '10:00:00', '11:30:00'),
('Restorative Yoga', 'Gentle yoga focusing on relaxation and recovery', 'Ava Stage', 'Eytheria Area', 15, '12:00:00', '13:30:00'),
('Yoga for Flexibility', 'Stretching and poses to improve flexibility', 'Carlos Ramirez', 'Essential Stage', 20, '14:00:00', '15:30:00');

INSERT INTO registration (attendee_id, workshop_id, registration_date, attendance_status) VALUES
(1, 1, '2025-08-10', 'Registered'),
(2, 2, '2025-08-11', 'Attended'),
(3, 3, '2025-08-12', 'Cancelled'),
(4, 4, '2025-08-13', 'Registered');
