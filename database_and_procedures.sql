-- Create Databse
CREATE DATABASE University;

-- College_branch table
CREATE TABLE College_branches (
    branch_id NUMBER PRIMARY KEY,
    college_name VARCHAR2(100) NOT NULL,
    city_name VARCHAR2(100) NOT NULL,
    managing_director VARCHAR2(100),
    contact NUMBER(10),
    email VARCHAR2(100),
    branch_fees NUMBER(7)
);

-- Insert records into the College_branches table
INSERT INTO College_branches (branch_id, college_name, city_name, managing_director, contact, email, branch_fees) 
VALUES (1, 'Pune College', 'Pune', 'Dr. Sharma', '1234567890', 'pune_college@gmail.com', 50000); 
INSERT INTO College_branches (branch_id, college_name, city_name, managing_director, contact, email, branch_fees) 
VALUES (2, 'Mumbai College', 'Mumbai', 'Dr. Rao', '9876543210', 'mumbai_college@gmail.com', 60000);
INSERT INTO College_branches (branch_id, college_name, city_name, managing_director, contact, email, branch_fees) 
VALUES (3, 'Delhi College', 'Delhi', 'Dr. Singh', '1122334455', 'delhi_college@gmail.com', 55000);
INSERT INTO College_branches (branch_id, college_name, city_name, managing_director, contact, email, branch_fees) 
VALUES (4, 'Bangalore College', 'Bangalore', 'Dr. Nair', '9988776655', 'bangalore_college@gmail.com', 58000);
INSERT INTO College_branches (branch_id, college_name, city_name, managing_director, contact, email, branch_fees) 
VALUES (5, 'Chennai College', 'Chennai', 'Dr. Krishnan', '7766554433', 'chennai_college@gmail.com', 52000);



-- Department_table
CREATE TABLE Department_table(
dept_id varchar2(15) not null, 
dept_name varchar2(255) not null, 
hod_name varchar2(255) not null,
PRIMARY KEY(dept_id));

-- Insert records into the Department table
INSERT INTO Department_table values('CS','Computer Science','Ms.Khushi');
INSERT INTO Department_table values('EE','Electrical and Electronics','Dr.Shah');
INSERT INTO Department_table values('MECH','Mechanical','Mr.Upadhyay');
INSERT INTO Department_table values('CVL','Civil','Dr.Patil');




-- Course_table
CREATE TABLE course_table (
    course_id VARCHAR(10),
    dept_id varchar(15),
    course_name VARCHAR(255) NOT NULL,
    course_duration INT,
    branch_id NUMBER,
    PRIMARY KEY (course_id),
    FOREIGN KEY (branch_id) REFERENCES College_branches(branch_id),
    FOREIGN KEY (dept_id) REFERENCES Department_table(dept_id)
);

-- Insert records into course table
INSERT INTO course_table VALUES ('C101', 'CS', 'Data Structures', 4, 1);
INSERT INTO course_table VALUES ('C102', 'CS', 'Operating Systems', 4, 2);
INSERT INTO course_table VALUES ('C103', 'CS', 'Database Management Systems', 4, 3);
INSERT INTO course_table VALUES ('C104', 'EE', 'Circuit Theory', 4, 1);
INSERT INTO course_table VALUES ('C105', 'EE', 'Power Systems', 4, 4);
INSERT INTO course_table VALUES ('C106', 'EE', 'Control Systems', 4, 5);
INSERT INTO course_table VALUES ('C107', 'MECH', 'Thermodynamics', 4, 2);
INSERT INTO course_table VALUES ('C108', 'MECH', 'Fluid Mechanics', 4, 3);
INSERT INTO course_table VALUES ('C109', 'MECH', 'Machine Design', 4, 4);
INSERT INTO course_table VALUES ('C110', 'CVL', 'Structural Analysis', 4, 1);
INSERT INTO course_table VALUES ('C111', 'CVL', 'Transportation Engineering', 4, 2);
INSERT INTO course_table VALUES ('C112', 'CVL', 'Environmental Engineering', 4, 5);



-- Student Table
CREATE TABLE students_details (
    student_id NUMBER PRIMARY KEY NOT NULL,
    course_id VARCHAR(10) NOT NULL,
    branch_id NUMBER ,
    firstname VARCHAR(50),
    lastname VARCHAR(50) ,
    phone_no1 NUMBER(10),
    phone_no2 NUMBER(10),
    email VARCHAR(100) NOT NULL,
    address VARCHAR(400) NOT NULL,
);

INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(1, 'C101', 1, 'Rahul', 'Sharma', 9876543210, 9123456780, 'rahul.sharma@gmail.com', 'Kothrud, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(2, 'C102', 2, 'Priya', 'Kapoor', 8765432109, 9321654780, 'priya.kapoor@gmail.com', 'Bandra, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(3, 'C103', 3, 'Amit', 'Verma', 7654321098, 9898765432, 'amit.verma@gmail.com', 'Connaught Place, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(4, 'C104', 4, 'Sneha', 'Nair', 6543210987, 9123876543, 'sneha.nair@gmail.com', 'Indiranagar, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(5, 'C105', 5, 'Ramesh', 'Krishnan', 5432109876, 9234567890, 'ramesh.krishnan@gmail.com', 'T. Nagar, Chennai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(6, 'C106', 1, 'Neha', 'Joshi', 4321098765, 9321546789, 'neha.joshi@gmail.com', 'Pimpri, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(7, 'C107', 2, 'Vikas', 'Singh', 3210987654, 9145678234, 'vikas.singh@gmail.com', 'Dadar, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(8, 'C108', 3, 'Preeti', 'Malhotra', 2109876543, 9392876541, 'preeti.malhotra@gmail.com', 'Rohini, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(9, 'C109', 4, 'Ravi', 'Shetty', 1098765432, 9281765439, 'ravi.shetty@gmail.com', 'Koramangala, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(10, 'C110', 5, 'Sonia', 'Iyer', 9876501234, 9483271654, 'sonia.iyer@gmail.com', 'Anna Nagar, Chennai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(11, 'C111', 1, 'Karan', 'Patil', 8765401234, 9154328765, 'karan.patil@gmail.com', 'Baner, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(12, 'C112', 2, 'Anjali', 'Mehra', 7654301234, 9481765432, 'anjali.mehra@gmail.com', 'Vile Parle, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(13, 'C101', 3, 'Sahil', 'Khurana', 6543201234, 9132546789, 'sahil.khurana@gmail.com', 'Dwarka, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(14, 'C102', 4, 'Pooja', 'Hegde', 5432101234, 9365478120, 'pooja.hegde@gmail.com', 'Whitefield, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(15, 'C103', 5, 'Rajesh', 'Venkat', 4321001234, 9267158432, 'rajesh.venkat@gmail.com', 'Velachery, Chennai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(16, 'C104', 1, 'Nikita', 'Shah', 3210901234, 9187654321, 'nikita.shah@gmail.com', 'Aundh, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(17, 'C105', 2, 'Arjun', 'Batra', 2109801234, 9476123456, 'arjun.batra@gmail.com', 'Chembur, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(18, 'C106', 3, 'Divya', 'Ahuja', 1098701234, 9378654120, 'divya.ahuja@gmail.com', 'Karol Bagh, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(19, 'C107', 4, 'Manish', 'Prabhu', 9876601234, 9265478132, 'manish.prabhu@gmail.com', 'HSR Layout, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(20, 'C108', 5, 'Snehal', 'Sundaram', 8766501234, 9456789321, 'snehal.sundaram@gmail.com', 'Kodambakkam, Chennai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(21, 'C109', 1, 'Rohit', 'Kulkarni', 7656401234, 9176543892, 'rohit.kulkarni@gmail.com', 'Wakad, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(22, 'C110', 2, 'Meera', 'Shinde', 6546301234, 9265341789, 'meera.shinde@gmail.com', 'Andheri, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(23, 'C111', 3, 'Aditya', 'Mishra', 5436201234, 9132765489, 'aditya.mishra@gmail.com', 'Lajpat Nagar, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(24, 'C112', 4, 'Aarti', 'Rao', 4326101234, 9287456123, 'aarti.rao@gmail.com', 'Jayanagar, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(25, 'C101', 5, 'Vignesh', 'Subramaniam', 3216001234, 9382754612, 'vignesh.subramaniam@gmail.com', 'Saidapet, Chennai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(26, 'C102', 1, 'Shivani', 'Gandhi', 2105901234, 9178563421, 'shivani.gandhi@gmail.com', 'Hinjewadi, Pune');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(27, 'C103', 2, 'Aakash', 'Purohit', 1095801234, 9364517289, 'aakash.purohit@gmail.com', 'Thane, Mumbai');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(28, 'C104', 3, 'Bhavana', 'Kashyap', 9876701234, 9265487132, 'bhavana.kashyap@gmail.com', 'Vasant Kunj, Delhi');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(29, 'C105', 4, 'Dheeraj', 'Menon', 8766701234, 9478123456, 'dheeraj.menon@gmail.com', 'Electronic City, Bangalore');
INSERT INTO student_details (student_id, course_id, branch_id, firstname, lastname, phone_no1, phone_no2, email, address) VALUES
(30, 'C106', 5, 'Ashwini', 'Srinivasan', 7656701234, 9386745120, 'ashwini.srinivasan@gmail.com', 'Perungudi, Chennai');



-- Employee table

CREATE TABLE Emp_tables (
    emp_id VARCHAR2(50) PRIMARY KEY,
    branch_id Number NOT NULL,
    dept_id VARCHAR2(15) NOT NULL,
    first_name VARCHAR2(100),
    last_name VARCHAR2(100),
    designation VARCHAR2(50),
    phone_no1 NUMBER(10),
    email_id VARCHAR2(100),
    FOREIGN KEY (branch_id) REFERENCES College_branches(branch_id),
    FOREIGN KEY (dept_id) REFERENCES Department_table(dept_id)
);

INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E011', 1, 'CS', 'Aiden', 'Clark', 'Teaching', 9876543211, 'aiden.clark@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E012', 2, 'EE', 'Mia', 'Lewis', 'Non-teaching', 9123456711, 'mia.lewis@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E013', 3, 'CVL', 'Ethan', 'Lee', 'Teaching', 9988776611, 'ethan.lee@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E014', 4, 'MECH', 'Sophia', 'Walker', 'Non-teaching', 9777665511, 'sophia.walker@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E015', 5, 'CS', 'James', 'Hall', 'Teaching', 9666554411, 'james.hall@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E016', 1, 'EE', 'Amelia', 'Allen', 'Non-teaching', 9555443321, 'amelia.allen@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E017', 2, 'CVL', 'Jacob', 'Young', 'Teaching', 9444332211, 'jacob.young@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E018', 3, 'MECH', 'Isabella', 'King', 'Non-teaching', 9333221101, 'isabella.king@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E019', 4, 'CS', 'Logan', 'Scott', 'Teaching', 9222110091, 'logan.scott@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E020', 5, 'EE', 'Emma', 'Green', 'Non-teaching', 9111009981, 'emma.green@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E021', 1, 'CS', 'Henry', 'Baker', 'Teaching', 9876543201, 'henry.baker@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E022', 2, 'EE', 'Olivia', 'Harris', 'Non-teaching', 9123456721, 'olivia.harris@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E023', 3, 'CVL', 'Lucas', 'Adams', 'Teaching', 9988776621, 'lucas.adams@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E024', 4, 'MECH', 'Charlotte', 'Nelson', 'Non-teaching', 9777665521, 'charlotte.nelson@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E025', 5, 'CS', 'Benjamin', 'Carter', 'Teaching', 9666554421, 'benjamin.carter@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E026', 1, 'EE', 'Mia', 'Mitchell', 'Non-teaching', 9555443322, 'mia.mitchell@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E027', 2, 'CVL', 'Sebastian', 'Parker', 'Teaching', 9444332221, 'sebastian.parker@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E028', 3, 'MECH', 'Lily', 'Wood', 'Non-teaching', 9333221121, 'lily.wood@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E029', 4, 'CS', 'Elijah', 'Stewart', 'Teaching', 9222110011, 'elijah.stewart@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E030', 5, 'EE', 'Hannah', 'Reed', 'Non-teaching', 9111009991, 'hannah.reed@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E031', 1, 'CS', 'Alexander', 'Evans', 'Teaching', 9876543212, 'alexander.evans@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E032', 2, 'EE', 'Grace', 'Turner', 'Non-teaching', 9123456782, 'grace.turner@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E033', 3, 'CVL', 'William', 'Campbell', 'Teaching', 9988776632, 'william.campbell@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E034', 4, 'MECH', 'Harper', 'Phillips', 'Non-teaching', 9777665532, 'harper.phillips@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E035', 5, 'CS', 'Daniel', 'Roberts', 'Teaching', 9666554432, 'daniel.roberts@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E036', 1, 'EE', 'Evelyn', 'Edwards', 'Non-teaching', 9555443332, 'evelyn.edwards@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E037', 2, 'CVL', 'Jack', 'Collins', 'Teaching', 9444332232, 'jack.collins@example.com'); 
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E038', 3, 'MECH', 'Ella', 'Morris', 'Non-teaching', 9333221132, 'ella.morris@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E039', 4, 'CS', 'Owen', 'Morgan', 'Teaching', 9222110022, 'owen.morgan@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E040', 5, 'EE', 'Aria', 'Bell', 'Non-teaching', 9111009972, 'aria.bell@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E041', 1, 'CS', 'Ryan', 'Reed', 'Teaching', 9876543222, 'ryan.reed@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E042', 2, 'EE', 'Scarlett', 'Murphy', 'Non-teaching', 9123456772, 'scarlett.murphy@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E043', 3, 'CVL', 'Nathan', 'Cooper', 'Teaching', 9988776652, 'nathan.cooper@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E044', 4, 'MECH', 'Zoe', 'Bailey', 'Non-teaching', 9777665542, 'zoe.bailey@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E045', 5, 'CS', 'Mason', 'Powell', 'Teaching', 9666554452, 'mason.powell@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E046', 1, 'EE', 'Luna', 'Cook', 'Non-teaching', 9555443342, 'luna.cook@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E047', 2, 'CVL', 'Oliver', 'Perry', 'Teaching', 9444332242, 'oliver.perry@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E048', 3, 'MECH', 'Avery', 'Long', 'Non-teaching', 9333221142, 'avery.long@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E049', 4, 'CS', 'Eli', 'Price', 'Teaching', 9222110032, 'eli.price@example.com');
INSERT INTO Emp_tables (EMP_ID, BRANCH_ID, DEPT_ID, FIRST_NAME, LAST_NAME, DESIGNATION, PHONE_NO1, EMAIL_ID) 
VALUES ('E050', 5, 'EE', 'Madison', 'Fisher', 'Non-teaching', 9111009962, 'madison.fisher@example.com');



/* Procedure which Display all employee's first_name, last_name, phone_no and email. Sorting them by employee_id. Department_id will be the input to the procedure. */

CREATE OR REPLACE PROCEDURE empdetails (
  p_retmsg OUT VARCHAR2,
  p_retcode OUT NUMBER,
  Did IN VARCHAR2
)
AS
  CURSOR c_emp IS
    SELECT *
    FROM Emp_tables
    WHERE dept_id = Did
    ORDER BY emp_id;
 
  v_counter NUMBER := 1;
BEGIN
  -- Display the title
  fnd_file.put_line(fnd_file.output, CHR(10) || LPAD(' Employee Information ', 80, ' ') || CHR(10));
  -- Define the table header
  fnd_file.put_line(fnd_file.output, CHR(10) || LPAD('=', 100, '=') || CHR(10));
  fnd_file.put_line(fnd_file.output, RPAD('No.', 5) || 
                                   RPAD('Emp ID', 10) || 
                                   RPAD('First Name', 20) || 
                                   RPAD('Last Name', 20) || 
                                   RPAD('Phone No', 15) || 
                                   'Email ID' || CHR(10));
  fnd_file.put_line(fnd_file.output, CHR(10) || LPAD('=', 100, '=') || CHR(10));
 
  -- Loop through the employee records
  FOR i IN c_emp LOOP
    fnd_file.put_line(fnd_file.output, RPAD(v_counter, 5) || 
                                     RPAD(i.emp_id, 10) || 
                                     RPAD(i.first_name, 20) || 
                                     RPAD(i.last_name, 20) || 
                                     RPAD(i.phone_no1, 15) || 
                                     i.email_id || CHR(10));
    v_counter := v_counter + 1;
  END LOOP;
 
  fnd_file.put_line(fnd_file.output, CHR(10) || LPAD('=', 100, '=') || CHR(10)); 
END;
/




/* Procedure which gets number_of_Students, number_of_departments, and number of Professors, number of courses and number of employees for each branch and number of students enrolled for each course. College branch id will be the input to the procedure. */
  
CREATE OR REPLACE PROCEDURE count_details(
p_retmsg OUT VARCHAR2, 
p_retcode OUT NUMBER, 
Bid IN course_table.branch_id%type) 
IS
  coursecount NUMBER;
  studentcount NUMBER;
  teachercount NUMBER;
  empcount NUMBER;
  deptcount NUMBER;
  v_branch_name VARCHAR2(200);
 
  CURSOR c_course IS 
    SELECT sd.course_id, COUNT(sd.student_id) AS c, ct.course_name  
    FROM student_deets sd  
    JOIN course_table ct ON sd.course_id = ct.course_id   
    WHERE sd.branch_id = Bid   
    GROUP BY sd.course_id, sd.BRANCH_ID, ct.course_name   
    ORDER BY sd.course_id; 
BEGIN
  -- Retrieve the branch name
  SELECT college_name INTO v_branch_name
  FROM College_branches 
  WHERE branch_id = Bid;
 
  -- Display the branch name and ID next to each other
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Branch Name: ' || v_branch_name || '  (Branch ID: ' || Bid || ')'); 
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, CHR(10));
 
  -- Number of courses in each branch 
  SELECT COUNT(course_id) INTO coursecount 
  FROM student_deets
  GROUP BY branch_id 
  HAVING branch_id = Bid;
 
  -- Number of students in each branch
  SELECT COUNT(student_id) INTO studentcount 
  FROM student_deets
  GROUP BY branch_id 
  HAVING branch_id = Bid;
 
  -- Number of professors in each branch 
  SELECT COUNT(emp_id) INTO teachercount 
  FROM Emp_tables
  WHERE designation = 'Teaching'
  GROUP BY BRANCH_ID 
  HAVING branch_id = Bid;
 
  -- Number of employees in each branch
  SELECT COUNT(emp_id) INTO empcount 
  FROM Emp_tables
  GROUP BY BRANCH_ID 
  HAVING branch_id = Bid;
 
  -- Number of departments in each branch or college 
  SELECT COUNT(DISTINCT((dept_id))) INTO deptcount 
  FROM course_table
  GROUP BY branch_id 
  HAVING branch_id = Bid;
 
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Total number of students: ' || studentcount);
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Total number of professors: ' || teachercount);
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Total number of employees: ' || empcount);
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Number of departments: ' || deptcount);
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, CHR(10));
 
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Number of students in each course in branch ' || Bid || ':');
  FND_FILE.PUT_LINE(FND_FILE.OUTPUT, CHR(10));
 
  FOR i IN c_course 
  LOOP
    FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Course ID: ' || i.course_id || ' (' || i.course_name || ')'); 
    FND_FILE.PUT_LINE(FND_FILE.OUTPUT, 'Student Count: ' || i.c);
    FND_FILE.PUT_LINE(FND_FILE.OUTPUT, CHR(10)); 
  END LOOP;
END;
/
 


 
