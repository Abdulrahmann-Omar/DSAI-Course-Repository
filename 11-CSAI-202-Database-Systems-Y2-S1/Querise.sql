----------------------------------------------
--mostafa functionalities
------------------------------------------------
--use UMSS
--UPDATE Transcripts
--SET grade = 'A'
--WHERE course_id = 1
--  AND student_id = 202201;
-------------------------------------------------
--UPDATE attendance
--SET attended = 'Yes' -- or 'No' based on selection
--WHERE course_id = 'course_id'
--  AND student_id = 'student_id';

----------------------------------------------
--abdulrahman
---------------------------------------------------
--Add Account:

--UPDATE Students
--ADD Student_Email = 's-abdu@university'
--WHERE Student_ID='202202'
----------------------------------------------
--Drop Account:

--UPDATE Students
--Delete Student_Email = 's-abdu@university'
--WHERE Student_ID='202202'
----------------------------------------------
--Add Course

--UPDATE Course
--ADD Course_ID=959,Course_Name='CSAI202',Credit=5


----------------------------------------------
--Ali
----------------------------------------------
--See tuition Fee

--SELECT Student_ID , Course_ID , Grade
--FROM Transcripts
--WHERE Student_ID = 202201 AND Course_ID = 1
----------------------------------------------


-----------------------------------------------
--Omar 
----------------------------------------------
--Manage fin_aid

--UPDATE Financial_Aid
--SET Student_Name = 'your_student_name',
--    Aid_Type = 'your_aid_type',
--    Amount = your_amount
--WHERE Student_ID = 'your_student_id';
------------------------------------------------
--change Password
--UPDATE users
--SET password = 'hashed_new_password'
--WHERE email = 'user_email' AND password = 'current_password';
