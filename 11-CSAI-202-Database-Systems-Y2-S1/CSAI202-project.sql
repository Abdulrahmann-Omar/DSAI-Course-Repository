CREATE TABLE Departments (
  Department_Number INT NOT NULL IDENTITY(1,1),
  Department_Name NVARCHAR(255) NOT NULL,
  Location INT NOT NULL,
  PRIMARY KEY (Department_Number)
);

CREATE TABLE Rooms (
  Room_ID INT NOT NULL IDENTITY(1,1),
  Building NVARCHAR(255) NOT NULL,
  Room_No INT NOT NULL,
  PRIMARY KEY (Room_ID)
);

CREATE TABLE Employees (
  Employee_ID INT NOT NULL IDENTITY(1,1),
  First_Name NVARCHAR(255) NOT NULL,
  Last_Name NVARCHAR(255) NOT NULL,
  E_Age INT NOT NULL,
  Pdate DATE NOT NULL,
  PRIMARY KEY (Employee_ID)
);

CREATE TABLE Instructor (
  Instructor_ID INT NOT NULL IDENTITY(1,1),
  First_Name NVARCHAR(255) NOT NULL,
  Last_Name NVARCHAR(255) NOT NULL,
  Instructor_Email NVARCHAR(255) NOT NULL,
  PRIMARY KEY (Instructor_ID)
);

CREATE TABLE Students (
  Student_ID INT NOT NULL IDENTITY(1,1),
  First_Name NVARCHAR(255) NOT NULL,
  Last_Name NVARCHAR(255) NOT NULL,
  Student_Email NVARCHAR(255) NOT NULL,
  Fin_ID INT,
  PRIMARY KEY (Student_ID)
);

CREATE TABLE Financial_Aid (
  Fin_ID INT NOT NULL IDENTITY(1,1),
  Student_ID INT NOT NULL,
  Aid_Percent DECIMAL(5,2) NOT NULL,
  Aid_Source NVARCHAR(255) NOT NULL,
  PRIMARY KEY (Fin_ID),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);

CREATE TABLE Course (
  Course_ID INT NOT NULL IDENTITY(1,1),
  Course_Name NVARCHAR(255) NOT NULL,
  Credit INT NOT NULL,
  PRIMARY KEY (Course_ID)
);

CREATE TABLE Tuition_Fee (
  Tuition_ID INT NOT NULL IDENTITY(1,1),
  Year INT NOT NULL,
  Semester NVARCHAR(255) NOT NULL,
  Amount DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (Tuition_ID)
);

CREATE TABLE Schedule (
  Schedule_ID INT NOT NULL IDENTITY(1,1),
  Course_ID INT NOT NULL,
  Instructor_ID INT NOT NULL,
  Year INT NOT NULL,
  Semester NVARCHAR(255) NOT NULL,
  Time_and_Date DATETIME NOT NULL,
  Room_ID INT,
  PRIMARY KEY (Schedule_ID),
  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
  FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID),
  FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID)
);

CREATE TABLE Transcripts (
  Transcript_ID INT NOT NULL IDENTITY(1,1),
  Student_ID INT NOT NULL,
  Course_ID INT NOT NULL,
  Grade NVARCHAR(255) NOT NULL,
  Schedule_ID INT NOT NULL,
  PRIMARY KEY (Transcript_ID),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
  FOREIGN KEY (Schedule_ID) REFERENCES Schedule(Schedule_ID)
);

CREATE TABLE Register (
  Student_ID INT NOT NULL,
  Course_ID INT NOT NULL,
  Reg_Hour INT NOT NULL,
  Is_Taught_By INT NOT NULL,
  Employee_ID INT NOT NULL,
  PRIMARY KEY (Student_ID, Course_ID),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

CREATE TABLE Has_Access (
  Student_ID INT NOT NULL,
  Tuition_ID INT NOT NULL,
  Schedule_ID INT NOT NULL,
  View_Status CHAR(1) NOT NULL CHECK (View_Status IN ('T', 'F')),
  PRIMARY KEY (Student_ID, Tuition_ID, Schedule_ID),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
  FOREIGN KEY (Tuition_ID) REFERENCES Tuition_Fee(Tuition_ID),
  FOREIGN KEY (Schedule_ID) REFERENCES Schedule(Schedule_ID)
);

CREATE TABLE Tuition (
  Tuition_ID INT NOT NULL IDENTITY(1,1),
  Tuition_Fee DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (Tuition_ID)
);

CREATE TABLE Instructor_Phone_Number (
  Phone_Number INT NOT NULL,
  Instructor_ID INT NOT NULL,
  PRIMARY KEY (Phone_Number, Instructor_ID),
  FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID)
);

CREATE TABLE Employee_Phone_Number (
  Phone_Number INT NOT NULL,
  Employee_ID INT NOT NULL,
  PRIMARY KEY (Phone_Number, Employee_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

CREATE TABLE Student_Phone_Number (
  Phone_Number INT NOT NULL,
  Student_ID INT NOT NULL,
  PRIMARY KEY (Phone_Number, Student_ID),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);