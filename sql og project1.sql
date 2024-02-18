create database railway_managment;
use railway_managment;

drop table user;

CREATE TABLE users

(
    USER_ID	INT not null auto_increment,
    First_name	VARCHAR(512) not null,
    Last_name	VARCHAR (512) not null,
    Contact	bigint not null,
    Email_id	VARCHAR(512),
    State	VARCHAR(512),
    City	VARCHAR(512),
    primary key(user_id)
);
desc table users;

INSERT INTO users (USER_ID, First_name, Last_name, Contact, Email_id, State, City) VALUES
	('101', 'Sneha', 'Jain', '9876543210', 'sneha@example.com', 'Rajasthan', 'Jaipur'),
	('102', 'Rahul', 'Verma', '8765432109', 'rahul@example.com', 'Maharashtra', 'Mumbai'),
	('103', 'Amit', 'Yadav', '9876543211', 'amit@example.com', 'UP', 'Delhi'),
	('104', 'Neha', 'Singh', '8765432108', 'neha@example.com', 'West Bengal', 'Kolkata'),
	('105', 'Rajat', 'Mishra', '9876543212', 'rajat@example.com', 'MP', 'Bhopal'),
	('106', 'Sachin', 'Kumar', '9456789123', 'sachin@example.com', 'UP', 'Varanasi'),
	('107', 'Anjali', 'Gupta', '9876543213', 'anjali@example.com', 'Tamil Nadu', 'Chennai'),
	('108', 'Vishal', 'Sharma', '8765432107', 'vishal@example.com', 'Telangana', 'Hyderabad'),
	('109', 'Preeti', 'Verma', '9876543214', 'preeti@example.com', 'Gujarat', 'Ahmedabad'),
	('110', 'Aryan', 'Rajput', '8765432106', 'aryan@example.com', 'Rajasthan', 'Delhi'),
	('111', 'Manish', 'Sharma', '9569090882', 'dixit571@gmail.com', 'MP', 'Harpalpur'),
	('112', 'Vipul', 'Rabari', '9545789346', 'vr71@gmail.com', 'Gujrat', 'Ahmedabad'),
	('113', 'Harshit', 'Shahu', '9046987634', 'kp91@gmail.com', 'Punjab', 'Ropad'),
	('114', 'Prince', 'Parihar', '9935677846', 'dg41@gmail.com', 'MP', 'Chhatarpur'),
	('115', 'Kapil', 'Payak', '8765942461', 'rk51@gmail.com', 'UP', 'Lucknow'),
	('116', 'Sneha', 'Jain', '9876543210', 'sneha@example.com', 'Rajasthan', 'Jaipur'),
	('117', 'Rahul', 'Verma', '8765432109', 'rahul@example.com', 'Maharashtra', 'Mumbai'),
	('118', 'Amit', 'Yadav', '9876543211', 'amit@example.com', 'UP', 'Delhi'),
	('119', 'Neha', 'Singh', '8765432108', 'neha@example.com', 'West Bengal', 'Kolkata'),
	('120', 'Rajat', 'Mishra', '9876543212', 'rajat@example.com', 'MP', 'Bhopal'),
	('121', 'Sachin', 'Kumar', '9456789123', 'sachin@example.com', 'UP', 'Varanasi'),
	('122', 'Anjali', 'Gupta', '9876543213', 'anjali@example.com', 'Tamil Nadu', 'Chennai'),
	('123', 'Vishal', 'Sharma', '8765432107', 'vishal@example.com', 'Telangana', 'Hyderabad'),
	('124', 'Preeti', 'Verma', '9876543214', 'preeti@example.com', 'Gujarat', 'Ahmedabad'),
	('125', 'Aryan', 'Rajput', '8765432106', 'aryan@example.com', 'Rajasthan', 'Delhi'),
	('126', 'Manish', 'Sharma', '9569090882', 'dixit571@gmail.com', 'MP', 'Harpalpur'),
	('127', 'Vipul', 'Rabari', '9545789346', 'vr71@gmail.com', 'Gujrat', 'Ahmedabad'),
	('128', 'Harshit', 'Shahu', '9046987634', 'kp91@gmail.com', 'Punjab', 'Ropad'),
	('129', 'Prince', 'Parihar', '9935677846', 'dg41@gmail.com', 'MP', 'Chhatarpur'),
	('130', 'Kapil', 'Payak', '8765942461', 'rk51@gmail.com', 'UP', 'Lucknow');
    
    select * from users;
    drop table station;
    
    drop table passanger;
    CREATE TABLE passanger 
(
    passanger_id	VARCHAR(512) not null ,
    USER_ID	INT not null  ,
    First_name	VARCHAR(512) not null,
    PNR_no	INT ,
    Booking_status	VARCHAR(512),
    Seat_alocated	INT,
    Source_station	VARCHAR(512),
    Destination_station	VARCHAR(512),
    
    Train_id	INT not null,
    primary key (passanger_id),
    foreign key(user_id) references users(user_id),
    foreign key(Train_id) references train(train_id) 
    
);
desc passanger;
DROP TABLE PASSANGER;

INSERT INTO passanger (passanger_id, USER_ID, First_name, PNR_no, Booking_status, Seat_alocated, Source_station, Destination_station, train_id) VALUES
	('alc1', '101', 'Sneha', '45327839', 'Confirmed', '5', 'Jaipur', 'Delhi', '18701'),
	('adc2', '102', 'Rahul', '47836904', 'Waiting', '3', 'Mumbai', 'Pune', '16156'),
	("as6", '103', 'Amit', '45527842', 'Confirmed', '6', 'Delhi', 'Agra', '17015'),
	('ds5', '104', 'Neha', '45627843', 'Confirmed', '8', 'Kolkata', 'Chennai', '13247'),
	('1sssd5', '105', 'Rajat', '45727844', 'Waiting', '3', 'Bhopal', 'Indore', '14282'),
	('a5ef5', '106', 'Sachin',null , 'Confirmed', '4', 'Varanasi', 'Lucknow', '19131'),
	('ad165', '107', 'Anjali', '46027846', 'Confirmed', '5', 'Chennai', 'Bangalore', '19142'),
	('a4ds5', '108', 'Vishal', '46127847', 'Confirmed', '7', 'Hyderabad', 'Bangalore', '21909'),
	('a4dc8', '109', 'Preeti', '46227848', 'Confirmed', '3', 'Ahmedabad', 'Surat', '18976'),
	('a4sd8', '110', 'Aryan', '46327849', 'Confirmed', '6', 'Delhi', 'Jaipur', '17431'),
	('z4dc9', '111', 'Manish', '45267838', 'Waiting', '1', 'Harpalpur', 'Delhi', '18940'),
	('z5d8', '112', 'Vipul', '45327840', 'Confirmed', '2', 'Ahmedabad', 'Mumbai', '19558'),
	('s5de9', '113', 'Harshit', '45247875', 'Confirmed', '2', 'Ropad', 'Delhi', '18699'),
	('z9de2', '114', 'Prince', '45027849', 'Waiting', '4', 'Chhatarpur', 'Bhopal', '19229'),
	('d4fe9', '115', 'Kapil', '45827848', 'Confirmed', '10', 'Lucknow', 'Banda', '20362'),
	('s6rf9', '116', 'Sneha', '45327839', 'Confirmed', '5', 'Jaipur', 'Delhi', '12660'),
	('s6de8', '117', 'Rahul', '47836904', 'Waiting', '3', 'Mumbai', 'Pune', '16317'),
	('s9dcs7', '118', 'Amit', '45527842', 'Confirmed', '6', 'Delhi', 'Agra', '13479'),
	('s5df5', '119', 'Neha', '45627843', 'Confirmed', '8', 'Kolkata', 'Chennai', '19525'),
	('s4f8', '120', 'Rajat', '45727844', 'Waiting', '3', 'Bhopal', 'Indore', '14201'),
	('sd6f8', '121', 'Sachin', '45927845', 'Confirmed', '4', 'Varanasi', 'Lucknow', '14323'),
	('se4w5', '122', 'Anjali', '46027846', 'Confirmed', '5', 'Chennai', 'Bangalore', '20296'),
	('s8efd6', '123', 'Vishal', '46127847', 'Confirmed', '7', 'Hyderabad', 'Bangalore', '21840'),
	('s9fc2', '124', 'Preeti', '46227848', 'Confirmed', '3', 'Ahmedabad', 'Surat', '18563'),
	('s6ef5', '125', 'Aryan', '46327849', 'Confirmed', '6', 'Delhi', 'Jaipur', '13664'),
	('s4ef7', '126', 'Manish', '45267838', 'Waiting', '1', 'Harpalpur', 'Delhi', '20705'),
	('sv4gt5', '127', 'Vipul', '45327840', 'Confirmed', '2', 'Ahmedabad', 'Mumbai', '19767'),
	('sew49', '128', 'Harshit', '45247875', 'Confirmed', '2', 'Ropad', 'Delhi', '20443'),
	('s4fcv84', '129', 'Prince', '45027849', 'Waiting', '4', 'Chhatarpur', 'Bhopal', '20304'),
	('sf544', '130', 'Kapil', '45827848', 'Confirmed', '10', 'Lucknow', 'Banda', '20754');
    
    SELECT * FROM PASSANGER;
    CREATE TABLE train
(
    Train_id	INT not null auto_increment,
    Train_name	VARCHAR(512) not null,
    Train_type	VARCHAR(512) not null,
    Coaches	INT,
    Fair	INT,
    primary key (train_id)
    
);
desc train;
INSERT INTO train (train_id, Train_name, Train_type, Coaches, Fair) VALUES
	('18701', 'Samparak_Kranti', 'Express', '25', '640'),
	('16156', 'Varanasi Super', 'Express', '25', '750'),
	('17015', 'Memu 2', 'Passenger', '10', '350'),
	('13247', 'Vandebharat', 'Superfast', '20', '270'),
	('14282', 'Shanti Express', 'Express', '22', '300'),
	('19131', 'Rajdhani ', 'Rajdhani', '25', '450'),
	('19142', 'Duronto Express', 'Express', '18', '800'),
	('21909', 'Shatabdi', 'Super fast', '15', '740'),
	('18976', 'Local', 'Passenger', '18', '1200'),
	('17431', 'Darbhanga Expresss', 'Superfast', '20', '550'),
	('18940', 'Mahamna', 'Express', '20', '640'),
	('19558', 'Ambedkar Express', 'Express', '24', '780'),
	('18699', 'Enter_City', 'Express', '22', '220'),
	('19229', 'Memu ', 'Passenger', '12', '100'),
	('20362', 'Chambal', 'Express', '25', '1350'),
	('12660', 'Samparak_Kranti', 'Express', '25', '640'),
	('16317', 'Varanasi Super', 'Express', '25', '750'),
	('13479', 'Memu 2', 'Passenger', '10', '350'),
	('19525', 'Vandebharat', 'Superfast', '20', '270'),
	('14201', 'Shanti Express', 'Express', '22', '300'),
	('14323', 'Rajdhani ', 'Rajdhani', '25', '450'),
	('20296', 'Duronto Express', 'Express', '18', '800'),
	('21840', 'Shatabdi', 'Super fast', '15', '740'),
	('18563', 'Local', 'Passenger', '18', '1200'),
	('13664', 'Darbhanga Expresss', 'Superfast', '20', '550'),
	('20705', 'Mahamna', 'Express', '20', '640'),
	('19767', 'Ambedkar Express', 'Express', '24', '780'),
	('20443', 'Enter_City', 'Express', '22', '220'),
	('20304', 'Memu ', 'Passenger', '12', '100'),
	('20754', 'Chambal', 'Express', '25', '1350');

   select * from train; 
    
    CREATE TABLE station
(
    Station_no	INT not null,
    NAME	VARCHAR(512) not null,
    HAULT	INT,
    Arrival_time	varchar(512) not null,
    Train_id	INT not null,
    primary key (station_no),
    foreign key (train_id) references train (train_id)
);
desc station;
drop table station;
INSERT INTO station (Station_no, NAME, HAULT, Arrival_time, train_id) VALUES
	('111', 'ADONI', '4', '1pm', '18701'),
	('222', 'ANAKAPALLE', '5', '2am', '16156'),
	('333', 'AGRA CANTT', '8', '3pm', '17015'),
	('444', 'AJMER AI', '5', '4am', '13247'),
	('555', ' APDJ ALLAHABAD', '1', '5am', '14282'),
	('666', 'howrah', '4', '8am', '19131'),
	('777', 'sealdah', '7', '5pm', '19142'),
	('888', 'guindy', '6', '4pm', '21909'),
	('999', 'taramani', '5', '7pm', '18976'),
	('1111', 'kengeri', '5', '7pm', '17431'),
	('2222', 'nagda', '4', '4am', '18940'),
	('3333', 'gaya ', '2', '2am', '19558'),
	('4444', 'ballygunge', '8', '4am', '18699'),
	('5555', 'yeshvantpur', '4', '9pm', '19229'),
	('6666', 'tambaram', '5', '2am', '20362'),
	('7777', 'kharagpur', '8', '5am', '12660'),
	('8888', 'guindy', '7', '5am', '16317'),
	('9999', 'saidapet', '2', '7pm', '13479'),
	('1001', 'chandkheda', '5', '4pm', '19525'),
	('1002', 'secunderabad', '4', '12am', '14201'),
	('1003', 'bhiwandi', '9', '4am', '14323'),
	('1004', 'aurangabad', '6', '5pm', '20296'),
	('1005', 'ujjain', '2', '9pm', '21840'),
	('1006', 'villaspur', '5', '8pm', '18563'),
	('1007', 'gevrai', '4', '12am', '13664'),
	('1008', 'trivandrum', '7', '7pm', '20705'),
	('1009', 'bhubaneswar', '5', '4am', '19767'),
	('1010', 'manmad', '9', '4am', '20443'),
	('1011', 'kasara', '5', '5am', '20304'),
	('1012', 'igatpuri', '2', '9am', '20754');
    
    select * from users;
    select * from passanger;
    
    select * from train;
    SELECT * FROM station;
    
    select last_name from users join passanger on users.user_id=passanger.user_id ;
    
    
    
                             #sub quires
    
#Q1 find all passangers who are in waiting

select first_name,booking_status from passanger where booking_status= "waiting";

					
#Q2 Find all passengers who are traveling from "Chennai" to 'Bangalore':

SELECT passanger.first_name
FROM passanger
WHERE source_station = "Chennai"
AND destination_station = 'Bangalore';

#Q2 find all passengers  who have a confirmed booking for train 18701:

select passanger.user_id,passanger.first_name
from passanger
where booking_status="confirmed"
and train_id=18701;

#Q3 find all passengers who have booked a ticket on the same train as anjali:

select * from passanger;
SELECT passanger.user_id,passanger.first_name
FROM passanger
WHERE train_id IN (
SELECT train_id
FROM passanger
WHERE first_name = 'anjali'
);

#Q4 Find all passengers who have a seat allocated to them:


select passanger.user_id,passanger.first_name
from passanger
where Seat_alocated is not null;

#Q5 Find all passengers who have not yet received their PNR number:

SELECT  passanger.user_id, passanger.first_name
FROM passanger
WHERE pnr_no IS NULL;



#Q6) Select all stations that have a 5 halt 

SELECT *
FROM station
WHERE hault = '5';

#Q7) How many users are from Maharashtra?

SELECT COUNT(*) AS total_users
FROM users
WHERE state = 'Maharashtra';

#8) What is the most popular train type among passengers?

SELECT train.train_type, COUNT(*) AS total_passanger
FROM passanger
INNER JOIN train ON passanger.train_id = train.train_id
GROUP BY train.train_type
ORDER BY total_passanger DESC
LIMIT 1;

                                          # join qustion
                                          
#Q1 Find all passengers who are traveling on train_id 13247:

SELECT passanger.first_name, train.train_name
FROM passanger
INNER JOIN train ON passanger.train_id = train.train_id
WHERE train.train_id = 13247;   

                
#Q2 Find all passengers who have booked a ticket for a train that is more expensive than ₹500:

SELECT passanger.first_name, train.train_name
FROM passanger
INNER JOIN train ON passanger.train_id = train.train_id
WHERE train.fair > 500;

#Q3 Find all passengers who have booked a ticket on a train that has more than 10 coaches:

SELECT passanger.first_name, train.train_name
FROM passanger
INNER JOIN train ON passanger.train_id = train.train_id
WHERE train.coaches > 10;


#Q4) find all passanger first name and last name who traveling in train along with train name 

select users.first_name,users.last_name,train.train_name
from passanger 
inner join train on passanger.train_id=train.train_id
inner join users on passanger.user_id=users.user_id ;


#Q5) Find all passengers who have booked a ticket on a train that is of type "Express":

SELECT passanger.first_name, train.train_name
FROM passanger
INNER JOIN train ON passanger.train_id = train.train_id
WHERE train.train_type = 'Express';


#Q6) Select all stations that have a train of type "Express" arriving at them

SELECT *
FROM station
JOIN train ON station.train_id = train.train_id
WHERE train.train_type = 'Express';




                                    


                                         
