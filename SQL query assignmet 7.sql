use works

create table trains
(train_id int not null primary key ,
train_name varchar(50) not null,
sources varchar(100) not null,
destination varchar (50) not null,
departure_time time not null,
arrival_time time not null,
distance_km decimal(8,2) check (distance_km > 0) )





create table passengers
(passenger_id int  primary key,
pname varchar(50) not null,
age int  check (age >0),
gender char(1) check (gender in ('M' ,'F')),
city varchar(50))

create table reservations
(res_id int,
passenger_id int foreign key (passenger_id) references passengers(passenger_id),
train_id int foreign key (train_id) references trains (train_id),
travel_date date not null,
class varchar(50) CHECK (class in ('Sleeper','AC1','AC2','AC3')),
fare decimal(10,2) check (fare>=0),
status varchar(20) check (status IN ('Confirmed', 'Waiting', 'Cancelled')) ) 

INSERT INTO Trains VALUES
(101, 'Shatabdi Exp', 'Delhi', 'Bhopal', '06:00', '14:00', 700),
(102, 'Rajdhani Exp', 'Delhi', 'Mumbai', '16:00', '08:00', 1400),
(103, 'Duronto Exp', 'Mumbai', 'Chennai', '20:00', '10:00', 1300),
(104, 'Garib Rath', 'Kolkata', 'Delhi', '12:00', '06:00', 1500),
(105, 'Chennai Exp', 'Chennai', 'Delhi', '08:00', '22:00', 2200),
(106, 'Howrah Exp', 'Howrah', 'Mumbai', '10:00', '20:00', 1960),
(107, 'Nizamuddin Exp', 'Delhi', 'Hyderabad', '15:00', '05:00', 1675),
(108, 'Goa Exp', 'Mumbai', 'Goa', '07:00', '15:00', 589),
(109, 'Kashi Exp', 'Varanasi', 'Delhi', '05:30', '13:30', 820),
(110, 'Jammu Tawi Exp', 'Delhi', 'Jammu', '18:00', '07:00', 670),
(111, 'Karnataka Exp', 'Bangalore', 'Delhi', '21:00', '14:00', 2360),
(112, 'Kerala Exp', 'Trivandrum', 'Delhi', '11:00', '22:00', 3045),
(113, 'Punjab Mail', 'Mumbai', 'Firozpur', '19:00', '09:00', 1925),
(114, 'Tamil Nadu Exp', 'Chennai', 'Delhi', '06:30', '20:30', 2180),
(115, 'Andhra Exp', 'Hyderabad', 'Delhi', '06:00', '19:00', 1700),
(116, 'Odisha Sampark', 'Bhubaneswar', 'Delhi', '14:00', '08:00', 1725),
(117, 'Maharashtra Exp', 'Mumbai', 'Nagpur', '09:00', '18:00', 840),
(118, 'Saurashtra Exp', 'Rajkot', 'Mumbai', '06:00', '14:00', 730),
(119, 'Utkal Exp', 'Puri', 'Delhi', '20:00', '12:00', 1850),
(120, 'Konark Exp', 'Mumbai', 'Bhubaneswar', '22:00', '14:00', 1950),
(121, 'Kaveri Exp', 'Mysore', 'Chennai', '23:00', '07:00', 500),
(122, 'Malwa Exp', 'Indore', 'Delhi', '21:00', '08:00', 850),
(123, 'Netravati Exp', 'Mumbai', 'Mangalore', '11:00', '20:00', 720),
(124, 'Ganga Kaveri Exp', 'Chennai', 'Patna', '16:00', '08:00', 2000),
(125, 'Deccan Exp', 'Pune', 'Mumbai', '07:00', '12:00', 192),
(126, 'Shatabdi Kolkata', 'Kolkata', 'Patna', '05:00', '11:00', 535),
(127, 'Sealdah Exp', 'Sealdah', 'Delhi', '15:00', '09:00', 1460),
(128, 'Sundar Exp', 'Bangalore', 'Hyderabad', '18:00', '06:00', 650),
(129, 'Ajmer Exp', 'Ajmer', 'Delhi', '12:00', '21:00', 500)

INSERT INTO Passengers VALUES
(1, 'Ramesh', 45, 'M', 'Delhi'),
(2, 'Sita', 32, 'F', 'Mumbai'),
(3, 'Arjun', 28, 'M', 'Bhopal'),
(4, 'Priya', 19, 'F', 'Chennai'),
(5, 'Anil', 52, 'M', 'Kolkata'),
(6, 'Neha', 27, 'F', 'Delhi'),
(7, 'Vikram', 34, 'M', 'Mumbai'),
(8, 'Sunita', 40, 'F', 'Kolkata'),
(9, 'Rajesh', 50, 'M', 'Chennai'),
(10, 'Meena', 22, 'F', 'Bangalore'),
(11, 'Arvind', 29, 'M', 'Hyderabad'),
(12, 'Kiran', 31, 'M', 'Pune'),
(13, 'Lakshmi', 36, 'F', 'Delhi'),
(14, 'Deepak', 48, 'M', 'Patna'),
(15, 'Swati', 25, 'F', 'Jaipur'),
(16, 'Harish', 55, 'M', 'Varanasi'),
(17, 'Rohit', 19, 'M', 'Lucknow'),
(18, 'Sneha', 23, 'F', 'Ahmedabad'),
(19, 'Manoj', 60, 'M', 'Nagpur'),
(20, 'Kavita', 33, 'F', 'Bhopal'),
(21, 'Ajay', 42, 'M', 'Indore'),
(22, 'Ritu', 28, 'F', 'Mysore'),
(23, 'Pankaj', 37, 'M', 'Goa'),
(24, 'Divya', 30, 'F', 'Surat'),
(25, 'Suresh', 44, 'M', 'Ranchi'),
(26, 'Pooja', 26, 'F', 'Bhubaneswar'),
(27, 'Nitin', 32, 'M', 'Kanpur'),
(28, 'Shalini', 39, 'F', 'Chandigarh'),
(29, 'Gaurav', 21, 'M', 'Shimla'),
(30, 'Anita', 47, 'F', 'Trivandrum')


INSERT INTO Reservations VALUES
(201, 1, 101, '2025-09-01', 'Sleeper', 500, 'Confirmed'),
(202, 2, 102, '2025-09-05', 'AC2', 1800, 'Confirmed'),
(203, 3, 101, '2025-09-01', 'Sleeper', 500, 'Waiting'),
(204, 4, 103, '2025-09-07', 'AC3', 1200, 'Confirmed'),
(205, 5, 104, '2025-09-10', 'Sleeper', 600, 'Cancelled'),
(206, 6, 105, '2025-09-12', 'AC1', 3500, 'Confirmed'),
(207, 7, 106, '2025-09-13', 'AC2', 2200, 'Waiting'),
(208, 8, 107, '2025-09-14', 'Sleeper', 950, 'Confirmed'),
(209, 9, 108, '2025-09-15', 'AC3', 1200, 'Cancelled'),
(210, 10, 109, '2025-09-16', 'AC2', 1400, 'Confirmed'),
(211, 11, 110, '2025-09-17', 'Sleeper', 600, 'Confirmed'),
(212, 12, 111, '2025-09-18', 'AC1', 3800, 'Confirmed'),
(213, 13, 112, '2025-09-19', 'AC3', 2800, 'Waiting'),
(214, 14, 113, '2025-09-20', 'AC2', 2100, 'Confirmed'),
(215, 15, 114, '2025-09-21', 'Sleeper', 950, 'Confirmed'),
(216, 16, 115, '2025-09-22', 'AC2', 1650, 'Cancelled'),
(217, 17, 116, '2025-09-23', 'Sleeper', 800, 'Confirmed'),
(218, 18, 117, '2025-09-24', 'AC3', 1200, 'Confirmed'),
(219, 19, 118, '2025-09-25', 'AC1', 2500, 'Confirmed'),
(220, 20, 119, '2025-09-26', 'Sleeper', 1100, 'Waiting'),
(221, 21, 120, '2025-09-27', 'AC2', 1900, 'Confirmed'),
(222, 22, 121, '2025-09-28', 'AC3', 750, 'Confirmed'),
(223, 23, 122, '2025-09-29', 'Sleeper', 670, 'Cancelled'),
(224, 24, 123, '2025-09-30', 'AC2', 1100, 'Confirmed'),
(225, 25, 124, '2025-10-01', 'AC1', 3100, 'Confirmed'),
(226, 26, 125, '2025-10-02', 'Sleeper', 250, 'Waiting'),
(227, 27, 126, '2025-10-03', 'AC3', 900, 'Confirmed'),
(228, 28, 127, '2025-10-04', 'AC2', 1750, 'Confirmed'),
(229, 29, 128, '2025-10-05', 'Sleeper', 500, 'Confirmed'),
(230, 30, 129, '2025-10-06', 'AC2', 800, 'Cancelled')


select *from trains
select*from passengers
select*from reservations

----List all trains running from Delhi as source station.
select * from trains
 where sources = 'delhi'

----Find all passengers who are above 40 years of age.
select * from passengers
where age >40 

----Get the total number of reservations made.
select count(*)
from reservations

----Count how many reservations are in 'Confirmed' status.
select count(*)
from reservations
where status = 'confirmed'

----Show the average fare paid for each train.
select train_id , avg(fare)
from reservations
group by train_id

----List reservations ordered by fare in descending order.
select * 
from reservations
order by fare desc

----Find passengers who booked AC classes (AC2, AC3).
select p.passenger_id ,p.pname,r.class,r.train_id
from passengers p
inner join reservations r
on p.passenger_id =r.passenger_id
where r.class in ('AC2''AC3')

--Get total revenue collected per train (only Confirmed reservations).

----Find the train with the maximum distance_km.

----Show number of male and female passengers.
select  gender, count(*)
from passengers
group by gender

--Get the passenger names who have booked tickets in Sleeper class.
select p.pname ,r.class
from passengers p
join reservations r
on p.passenger_id =r.passenger_id
where r.class = 'sleeper'

----Find total number of reservations made from each city (JOIN with Passengers).
select p.city ,count (r.res_id)
from passengers p
join reservations r
on p.passenger_id =r.passenger_id
group by city

--Show train name and total passengers booked for it, ordered by passenger count descending.
select t.train_name, count(r.passenger_id)
from trains t
join reservations r
on t.train_id = r.train_id
group by t.train_name
order by count(r.passenger_id) desc

--Find the average age of passengers who booked 'Confirmed' tickets.

select AVG (p.age)
from passengers p
join reservations r
on p.passenger_id =r.passenger_id 
where status = 'confirmed'

--Display travel_date and number of reservations made on that date.
select travel_date ,count (res_id)
from reservations
group by travel_date

--Show all reservations where fare is greater than 1000.
select * from
reservations
where fare > 1000

--List all passengers who live in Delhi or Mumbai.
select * from 
passengers 
where city  in('delhi' , 'mumbai')

-- Show all trains whose distance is more than 1200 km.
select * from 
trains 
where distance_km >1200

--Find reservations which are not "Cancelled".
select * from 
reservations
where status <> 'cancelled'

--Show the details of trains that have "Exp" in their name.
select * from 
trains 
where train_name like '%exp%'

--List all passengers ordered by their age in descending order.
select * from 
passengers
order by age desc

--Display reservations sorted by travel_date (earliest first).
select *from 
reservations
order by travel_date desc

--Find all trains ordered by distance (longest route first).
select * from 
trains
order by distance_km desc

--Show passengers ordered by name alphabetically.
select * from 
passengers
order by pname asc

--List reservations ordered by class and then by fare.
select * from reservations
order by class asc ,fare asc

--Count how many passengers are from each city.
select  city ,count (*)
from passengers
group by city 

--Find the total fare collected from all Confirmed reservations.
select sum (fare)
from reservations
where status = 'confirmed'

--Show the minimum, maximum, and average age of passengers.
select MIN(age)  as minimum_age,
max(age) as maximum_age,
avg(age)  as average_age
from passengers

--Find the highest fare paid in Sleeper class.
select max(fare)
from reservations
where class = 'sleeper'

--Get the average fare per travel_date.
select avg (fare)
from reservations
group by travel_date

--Show each class and the total number of reservations in it.
select class ,count(*) as total_resevations
from reservations
group by class

--Find trains that have more than 1 reservation.
select train_id , count(res_id)
from reservations
group by train_id
having count(res_id)>1

--List cities where more than 1 passenger lives.
select city , count(passenger_id)
from passengers
group by city
having  count(passenger_id) >1

--Show gender-wise average age of passengers.
select gender, avg (age)
from passengers
group by gender

--Find passengers who booked more than 1 ticket.
select passenger_id , count(*)
from reservations
group by passenger_id
having count(*)>1

--Show passenger name, train name, and fare for each reservation.
select p.pname , t.train_id, r.fare
from reservations r
join passengers p
on p.passenger_id = r.passenger_id
join trains t
on r.train_id = t.train_id

--List all passengers and the train name they booked (if any).
select p.pname , t.train_id 
from 
