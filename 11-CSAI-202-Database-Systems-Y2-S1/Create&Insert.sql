CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(255) NOT NULL,
    Credit INT NOT NULL
);

INSERT INTO Course (Course_ID, Course_Name, Credit) VALUES
(1, 'Database Management', 3),
(2, 'Web Development', 4),
(3, 'Marketing Strategies', 3),
(4, 'Computer Networks', 3),
(5, 'Artificial Intelligence', 4),
(6, 'Psychology', 3),
(7, 'Political Science', 3),
(8, 'Environmental Studies', 4),
(9, 'Linear Algebra', 3),
(10, 'Software Engineering', 4),
(11, 'Mobile App Development', 3),
(12, 'Introduction to Robotics', 2),
(13, 'Cultural Anthropology', 3),
(14, 'Microeconomics', 4),
(15, 'Italian Language', 2),
(16, 'Machine Learning', 4),
(17, 'Cybersecurity', 3),
(18, 'Data Analytics', 4),
(19, 'Environmental Science', 3),
(20, 'Social Media Marketing', 3),
(21, 'Graphic Illustration', 2),
(22, 'Public Speaking', 2),
(23, 'Macroeconomics', 3),
(24, 'World History', 3),
(25, 'French Language', 2),
(26, 'Database Management', 3),
(27, 'Web Development', 4),
(28, 'Marketing Strategies', 3),
(29, 'Computer Networks', 3),
(30, 'Artificial Intelligence', 4),
(31, 'Data Science', 4),
(32, 'Software Engineering', 4),
(33, 'Business Analytics', 3),
(34, 'Digital Marketing', 3),
(35, 'Graphic Design', 2);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY IDENTITY(1,1),
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    E_Age INT NOT NULL,
    Pdate DATE NOT NULL,
    Phone_Number BIGINT NOT NULL
);

INSERT INTO Employees (First_Name, Last_Name, E_Age, Pdate, Phone_Number) VALUES
('John', 'Doe', 30, '1990-05-15', 1234567890),
('Jane', 'Smith', 25, '1995-02-20', 9876543210),
('Robert', 'Johnson', 35, '1987-11-10', 2345678901),
('Michael', 'Davis', 40, '1982-08-18', 3456789012),
('Emily', 'White', 32, '1989-12-05', 4567890123),
('Mark', 'Brown', 28, '1994-06-30', 5678901234),
('Amanda' ,'Green', 33, '1988-03-12', 6789012345),
('Brian', 'Wilson', 27, '1996-09-22', 7890123456),
('Olivia', 'Taylor', 31, '1991-11-08', 8901234567),
('Christopher', 'Lee', 29, '1993-04-17', 9012345678),
('Sophia', 'Adams', 29, '1994-08-25', 1234567890),
('Jackson', 'Lee', 26, '1997-03-18', 2345678901),
('Lily', 'Wilson', 33, '1989-11-05', 3456789012),
('Benjamin', 'Hall', 31, '1991-07-12', 4567890123),
('Grace', 'Brown', 28, '1994-05-28', 5678901234),
('Nathan', 'Clark', 30, '1992-09-15', 6789012345),
('Scarlett', 'Taylor', 27, '1995-12-08', 7890123456),
('Oliver', 'Turner', 32, '1990-02-22', 8901234567),
('Abigail', 'White', 29, '1993-06-10', 9012345678),
('Elijah' ,'Wright', 34, '1988-04-03', 1234567890),
('Liam', 'Harris', 33, '1989-04-15', 2345678901),
('Ava', 'Turner', 29, '1993-08-22', 3456789012),
('Logan' ,'Hill', 27, '1996-01-28', 4567890123),
('Amelia' ,'White', 31, '1992-11-10', 5678901234),
('Lucas', 'Wilson', 28, '1994-06-05', 6789012345),
('Zoe', 'Davis', 30, '1991-03-18', 7890123456),
('Elijah', 'Hall', 32, '1990-09-20', 8901234567),
('Mia' ,'Turner', 26, '1997-05-12', 9012345678),
('Owen' ,'Brown', 34, '1988-12-08', 1234567890),
('Harper', 'Harris', 25, '1995-02-25', 2345678901);

CREATE TABLE Financial_Aid (
    Fin_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Aid_Percent DECIMAL(5, 2) NOT NULL,
    Aid_Source VARCHAR(50) NOT NULL
);

INSERT INTO Financial_Aid (Fin_ID, Student_ID, Aid_Percent, Aid_Source) VALUES
(1, 1, 50.00, 'Scholarship'),
(2, 2, 25.00, 'Grant'),
(3, 3, 30.00, 'Loan'),
(4, 4, 15.00, 'Grant'),
(5, 5, 20.00, 'Scholarship'),
(6, 11, 50.00, 'Scholarship'),
(7, 12, 25.00, 'Grant'),
(8, 13, 30.00, 'Loan'),
(9, 14, 15.00, 'Grant'),
(10, 15, 20.00, 'Scholarship'),
(11, 16, 40.00, 'Scholarship'),
(12, 17, 15.00, 'Grant'),
(13, 18, 10.00, 'Loan'),
(14, 19, 25.00, 'Grant'),
(15, 20, 35.00, 'Scholarship'),
(16, 21, 15.00, 'Grant'),
(17, 22, 20.00, 'Scholarship'),
(18, 23, 10.00, 'Scholarship'),
(19, 24, 25.00, 'Loan'),
(20, 25, 18.00, 'Loan'),
(21, 26, 30.00, 'Grant'),
(22, 27, 12.00, 'Grant'),
(23, 28, 22.00, 'Scholarship'),
(24, 29, 28.00, 'Loan'),
(25, 30, 16.00, 'Scholarship');


CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Instructor_Email VARCHAR(100) NOT NULL,
    Phone_No VARCHAR(15) NOT NULL
);

INSERT INTO Instructor (Instructor_ID, First_Name, Last_Name, Instructor_Email, Phone_No) VALUES
(1, 'Professor', 'Anderson', 'prof.anderson@example.com', '123-456-7890'),
(2, 'Dr.', 'Williams', 'dr.williams@example.com', '234-567-8901'),
(3, 'Oliver', 'Wright', 'oliver@example.com', '345-678-9012'),
(4, 'Isabella', 'Clark', 'isabella@example.com', '456-789-0123'),
(5, 'Benjamin', 'Adams', 'benjamin@example.com', '567-890-1234'),
(6, 'Luna', 'Taylor', 'luna@example.com', '678-901-2345'),
(7, 'Leo', 'Garcia', 'leo@example.com', '789-012-3456'),
(8, 'Layla', 'Turner', 'layla@example.com', '890-123-4567'),
(9, 'Mason', 'Wilson', 'mason@example.com', '901-234-5678'),
(10, 'Aurora', 'Hall', 'aurora@example.com', '123-345-6789'),
(11, 'Ethan', 'Smith', 'ethan@example.com', '234-456-7890'),
(12, 'Scarlett', 'Green', 'scarlett@example.com', '345-567-8901'),
(13, 'Emma', 'Davis', 'emma@example.com', '456-678-9012'),
(14, 'Jackson', 'Turner', 'jackson@example.com', '567-789-0123'),
(15, 'Chloe', 'Parker', 'chloe@example.com', '678-901-2345'),
(16, 'Daniel', 'Hill', 'daniel@example.com', '789-012-3456'),
(17, 'Zoey', 'Adams', 'zoey@example.com', '890-123-4567'),
(18, 'Mason', 'Murphy', 'mason@example.com', '901-234-5678'),
(19, 'Leah', 'Garcia', 'leah@example.com', '123-345-6789'),
(20, 'Carter', 'King', 'carter@example.com', '234-456-7890'),
(21, 'Isabella', 'Wright', 'isabella@example.com', '345-567-8901'),
(22, 'Luke', 'Reed', 'luke@example.com', '456-678-9012'),
(23, 'Professor', 'Anderson', 'prof.anderson@example.com', '567-789-0123'),
(24, 'Dr.', 'Williams', 'dr.williams@example.com', '678-901-2345'),
(25, 'Sarah', 'Brown', 'sarah@example.com', '789-012-3456'),
(26, 'David', 'Jones', 'david@example.com', '890-123-4567'),
(27, 'Laura', 'Miller', 'laura@example.com', '901-234-5678'),
(28, 'Brian', 'Wilson', 'brian@example.com', '123-345-6789'),
(29, 'Jessica', 'Moore', 'jessica@example.com', '234-456-7890'),
(30, 'Andrew', 'Davis', 'andrew@example.com', '345-567-8901'),
(31, 'Megan', 'White', 'megan@example.com', '456-678-9012'),
(32, 'Christopher', 'Lee', 'christopher@example.com', '567-789-0123');

CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY,
    Building VARCHAR(50) NOT NULL,
    Room_No INT NOT NULL
);

INSERT INTO Rooms (Room_ID, Building, Room_No) VALUES
(1, 'Building A', 101),
(2, 'Building B', 201),
(3, 'Building C', 301);


CREATE TABLE Schedule (
    Schedule_ID INT PRIMARY KEY,
    Course_ID INT NOT NULL,
    Instructor_ID INT NOT NULL,
    Year INT NOT NULL,
    Semester VARCHAR(50) NOT NULL,
    Time_and_Date DATETIME NOT NULL,
    Room_ID INT NOT NULL
);

INSERT INTO Schedule (Schedule_ID, Course_ID, Instructor_ID, Year, Semester, Time_and_Date, Room_ID) VALUES
(1, 1, 1, 2023, 'Fall', '2023-09-10T10:00:00', 1),
(2, 2, 2, 2023, 'Fall', '2023-09-12T14:00:00', 2),
(3, 3, 1, 2023, 'Fall', '2023-09-15T09:00:00', 3),
(4, 4, 3, 2023, 'Fall', '2023-09-20T11:00:00', 1),
(5, 5, 4, 2023, 'Fall', '2023-09-25T13:00:00', 2),
(21, 21, 11, 2026, 'Spring', '2026-05-15T09:00:00', 11),
(22, 22, 12, 2026, 'Spring', '2026-05-20T11:00:00', 12),
(23, 23, 13, 2026, 'Spring', '2026-05-25T13:00:00', 13),
(24, 24, 14, 2026, 'Spring', '2026-05-30T15:00:00', 14),
(25, 25, 15, 2026, 'Spring', '2026-06-05T17:00:00', 15),
(26, 26, 16, 2026, 'Spring', '2026-06-10T19:00:00', 16),
(27, 27, 17, 2026, 'Spring', '2026-06-15T21:00:00', 17),
(28, 28, 18, 2026, 'Spring', '2026-06-20T23:00:00', 18),
(29, 29, 19, 2026, 'Spring', '2026-06-25T10:00:00', 19),
(30, 30, 20, 2026, 'Spring', '2026-06-30T12:00:00', 20),
(31, 21, 6, 2023, 'Fall', '2023-10-20T09:00:00', 4),
(32, 22, 7, 2023, 'Fall', '2023-10-25T11:00:00', 5),
(33, 23, 8, 2023, 'Fall', '2023-10-30T13:00:00', 6),
(34, 24, 9, 2023, 'Fall', '2023-11-05T15:00:00', 7),
(35, 25, 10, 2023, 'Fall', '2023-11-10T17:00:00', 8),
(36, 26, 6, 2023, 'Fall', '2023-11-15T19:00:00', 9),
(37, 27, 7, 2023, 'Fall', '2023-11-20T21:00:00', 10),
(38, 28, 8, 2023, 'Fall', '2023-11-25T23:00:00', 1),
(39, 29, 9, 2023, 'Fall', '2023-12-01T10:00:00', 2),
(40, 30, 10, 2023, 'Fall', '2023-12-05T12:00:00', 3),
(41, 11, 1, 2023, 'Fall', '2023-09-10T10:00:00', 1),
(42, 12, 2, 2023, 'Fall', '2023-09-12T14:00:00', 2),
(43, 13, 1, 2023, 'Fall', '2023-09-15T09:00:00', 3),
(44, 14, 3, 2023, 'Fall', '2023-09-20T11:00:00', 1),
(45, 15, 4, 2023, 'Fall', '2023-09-25T13:00:00', 2),
(46, 16, 1, 2023, 'Fall', '2023-09-28T15:00:00', 3),
(47, 17, 2, 2023, 'Fall', '2023-10-02T12:00:00', 1),
(48, 18, 3, 2023, 'Fall', '2023-10-05T14:00:00', 2),
(49, 19, 4, 2023, 'Fall', '2023-10-10T16:00:00', 3),
(50, 20, 5, 2023, 'Fall', '2023-10-15T11:00:00', 1);

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Student_Email VARCHAR(100) NOT NULL,
    Phone_No VARCHAR(15) NOT NULL,
    Fin_ID INT,
    Password VARCHAR(255) NOT NULL -- Use an appropriate length for password storage
);

--write student phone no in Student insert
INSERT INTO Students (Student_ID, First_Name, Last_Name, Student_Email, Phone_No, Fin_ID, Password) VALUES
(202201, 'Alice', 'Johnson', 'alice@example.com', '123-456-7890', 1, 'password1'),
(202202, 'Bob', 'Smith', 'bob@example.com', '234-567-8901', 2, 'password2'),
(202203, 'Charlie', 'Brown', 'charlie@example.com', '345-678-9012', NULL, 'password3'),
(202204, 'Eva', 'Miller', 'eva@example.com', '456-789-0123', NULL, 'password4'),
(202205, 'Frank', 'Taylor', 'frank@example.com', '567-890-1234', 3, 'password5'),
(202206, 'Aiden', 'Turner', 'aiden@example.com', '678-901-2345', 4, 'password6'),
(202207, 'Chloe', 'Hill', 'chloe@example.com', '789-012-3456', 5, 'password7'),
(202208, 'Jackson', 'Adams', 'jackson@example.com', '890-123-4567', NULL, 'password8'),
(202209, 'Grace', 'Turner', 'grace@example.com', '901-234-5678', NULL, 'password9'),
(202210, 'Carter', 'Davis', 'carter@example.com', '012-345-6789', 6, 'password10'),
(202211, 'Penelope', 'Clark', 'penelope@example.com', '123-456-7890', 4, 'password11'),
(202212, 'Samuel', 'Miller', 'samuel@example.com', '234-567-8901', 5, 'password12'),
(202213, 'Harper', 'Turner', 'harper@example.com', '345-678-9012', NULL, 'password13'),
(202214, 'Amelia', 'Taylor', 'amelia@example.com', '456-789-0123', NULL, 'password14'),
(202215, 'Elijah', 'Brown', 'elijah@example.com', '567-890-1234', 6, 'password15'),
(202216, 'Harper', 'Turner', 'harper@example.com', '678-901-2345', 1, 'password16'),
(202217, 'Aiden', 'Wilson', 'aiden@example.com', '789-012-3456', 2, 'password17'),
(202218, 'Natalie', 'Clark', 'natalie@example.com', '890-123-4567', NULL, 'password18'),
(202219, 'Samuel', 'Miller', 'samuel@example.com', '901-234-5678', NULL, 'password19'),
(202220, 'Addison', 'Taylor', 'addison@example.com', '012-345-6789', 3, 'password20'),
(202221, 'William', 'Brown', 'william@example.com', '123-456-7890', 1, 'password21'),
(202222, 'Zoey', 'Hall', 'zoey@example.com', '234-567-8901', 2, 'password22'),
(202223, 'Ava', 'Green', 'ava@example.com', '345-678-9012', NULL, 'password23'),
(202224, 'Henry', 'Adams', 'henry@example.com', '456-789-0123', NULL, 'password24'),
(202225, 'Stella', 'Davis', 'stella@example.com', '567-890-1234', 3, 'password25'),
(202226, 'Alice', 'Johnson', 'alice@example.com', '678-901-2345', 1, 'password26'),
(202227, 'Bob', 'Smith', 'bob@example.com', '789-012-3456', 2, 'password27'),
(202228, 'Charlie', 'Brown', 'charlie@example.com', '890-123-4567', NULL, 'password28'),
(202229, 'Eva', 'Miller', 'eva@example.com', '901-234-5678', NULL, 'password29'),
(202230, 'Frank', 'Taylor', 'frank@example.com', '012-345-6789', 3, 'password30'),
(202231, 'Sophia', 'Johnson', 'sophia@example.com', '123-456-7890', 1, 'password31'),
(202232, 'Ethan', 'Smith', 'ethan@example.com', '234-567-8901', 2, 'password32'),
(202233, 'Emma', 'Brown', 'emma@example.com', '345-678-9012', NULL, 'password33'),
(202234, 'Liam', 'Miller', 'liam@example.com', '456-789-0123', NULL, 'password34'),
(202235, 'Ava', 'Taylor', 'ava@example.com', '567-890-1234', 3, 'password35');




CREATE TABLE Transcripts (
    Transcript_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Grade VARCHAR(3) NOT NULL,
    Schedule_ID INT NOT NULL
);

INSERT INTO Transcripts (Transcript_ID, Student_ID, Course_ID, Grade, Schedule_ID) VALUES
(1, 1, 1, 'A', 1),
(2, 2, 2, 'B', 2),
(3, 3, 3, 'C', 3),
(4, 4, 4, 'A-', 4),
(5, 5, 5, 'B+', 5),
(6, 21, 11, 'A-', 21),
(7, 22, 12, 'B', 22),
(8, 23, 13, 'C', 23),
(9, 24, 14, 'A+', 24),
(10, 25, 15, 'B-', 25),
(11, 26, 16, 'A', 26),
(12, 27, 17, 'C+', 27),
(13, 28, 18, 'A-', 28),
(14, 29, 19, 'B+', 29),
(15, 30, 20, 'A', 30),
(16, 21, 6, 'B', 21),
(17, 22, 7, 'C+', 22),
(18, 23, 8, 'A-', 23),
(19, 24, 9, 'B+', 24),
(20, 25, 10, 'A', 25),
(21, 26, 6, 'B-', 26),
(22, 27, 7, 'A', 27),
(23, 28, 8, 'C', 28),
(24, 29, 9, 'A+', 29),
(25, 30, 10, 'B', 30),
(26, 11, 1, 'A', 11),
(27, 12, 2, 'B', 12),
(28, 13, 3, 'C', 13),
(29, 14, 4, 'A-', 14),
(30, 15, 5, 'B+', 15),
(31, 16, 1, 'A', 16),
(32, 17, 2, 'B+', 17),
(33, 18, 3, 'C-', 18),
(34, 19, 4, 'A+', 19),
(35, 20, 5, 'B', 20);

CREATE TABLE Tuition_Fee (
    Tuition_Fee_ID INT PRIMARY KEY,
    Year INT NOT NULL,
    Semester VARCHAR(50) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL
);

--write tuition_Fee_ID in insert
INSERT INTO Tuition_Fee (Tuition_Fee_ID, Year, Semester, Amount) VALUES
(1, 2023, 'Fall', 5000.00),
(2, 2023, 'Spring', 5500.00),
(3, 2023, 'Summer', 4800.00),
(4, 2024, 'Fall', 5200.00),
(5, 2024, 'Spring', 5800.00),
(6, 2026, 'Spring', 5400.00),
(7, 2026, 'Summer', 6000.00),
(8, 2027, 'Fall', 5500.00),
(9, 2027, 'Spring', 5900.00),
(10, 2027, 'Summer', 5200.00),
(11, 2028, 'Fall', 5600.00),
(12, 2028, 'Spring', 6100.00),
(13, 2028, 'Summer', 5300.00),
(14, 2029, 'Fall', 5700.00),
(15, 2029, 'Spring', 6200.00),
(16, 2023, 'Fall', 5100.00),
(17, 2023, 'Spring', 5600.00),
(18, 2023, 'Summer', 4900.00),
(19, 2024, 'Fall', 5300.00),
(20, 2024, 'Spring', 5900.00),
(21, 2024, 'Summer', 5200.00),
(22, 2025, 'Fall', 5400.00),
(23, 2025, 'Spring', 6000.00),
(24, 2025, 'Summer', 5300.00),
(25, 2026, 'Fall', 5500.00),
(26, 2023, 'Fall', 5000.00),
(27, 2023, 'Spring', 5500.00),
(28, 2023, 'Summer', 4800.00),
(29, 2024, 'Fall', 5200.00),
(30, 2024, 'Spring', 5800.00),
(31, 2024, 'Summer', 5100.00),
(32, 2025, 'Fall', 5300.00),
(33, 2025, 'Spring', 5900.00),
(34, 2025, 'Summer', 5200.00),
(35, 2026, 'Fall', 5400.00);


CREATE TABLE Departments (
    Department_Number INT PRIMARY KEY NOT NULL,
    Department_Name VARCHAR(50) NOT NULL,
    Location INT NOT NULL
);

INSERT INTO Departments (Department_Number, Department_Name, Location) VALUES
(1, 'IT Department', 1),
(2, 'SWD Department', 2),
(3, 'DSAI Department', 3);

INSERT INTO Transcripts (Transcript_ID, Student_ID, Course_ID, Grade, Schedule_ID) VALUES
(1, 1, 1, 'A', 1),
(2, 2, 2, 'B', 2),
(3, 3, 3, 'C', 3),
(4, 4, 4, 'A-', 4),
(5, 5, 5, 'B+', 5),
(6, 21, 11, 'A-', 21),
(7, 22, 12, 'B', 22),
(8, 23, 13, 'C', 23),
(9, 24, 14, 'A+', 24),
(10, 25, 15, 'B-', 25),
(11, 26, 16, 'A', 26),
(12, 27, 17, 'C+', 27),
(13, 28, 18, 'A-', 28),
(14, 29, 19, 'B+', 29),
(15, 30, 20, 'A', 30),
(16, 21, 6, 'B', 21),
(17, 22, 7, 'C+', 22),
(18, 23, 8, 'A-', 23),
(19, 24, 9, 'B+', 24),
(20, 25, 10, 'A',214);

CREATE TABLE attendance (
    course_id VARCHAR(50),
    student_id VARCHAR(50),
    attended VARCHAR(3), -- Assuming 'Yes' or 'No' for attendance status
    PRIMARY KEY (Course_ID,Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);

INSERT INTO attendance (course_id, student_id, attended) VALUES
(1, 202201, 'Yes'),
(3, 202202, 'No'),
(4, 202203, 'Yes'),
(2, 202204, 'No'),
(1, 202205, 'Yes'),
(4, 202206, 'No'),
(7, 202207, 'Yes'),
(11, 202208, 'No'),
(3, 202209, 'Yes'),
(1, 202210, 'No'),
(15, 202211, 'Yes'),
(17, 202212, 'No'),
(16, 202213, 'Yes'),
(13, 202214, 'No'),
(8, 202215, 'Yes'),
(5, 202216, 'No'),
(4, 202217, 'Yes'),
(2, 202218, 'No'),
(5, 202219, 'Yes'),
(5, 202220, 'No'),
(4, 202221, 'Yes'),
(3, 202222, 'No'),
(17, 202223, 'Yes'),
(13, 202224, 'No'),
(23, 202225, 'Yes'),
(23, 202226, 'No'),
(21, 202227, 'Yes'),
(1, 202228, 'No'),
(7, 202229, 'Yes'),
(9, 202230, 'No');