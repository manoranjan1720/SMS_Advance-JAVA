Student Management System (SMS) - Java Servlet

Description
The Student Management System (SMS) is a web-based application built using Java Servlets and JSP for managing student records, courses, and grades. 
The system allows administrators to add, update, view, and delete student data via a browser interface. All records are stored in a MySQL database, providing data persistence and reliability.

Features
Add new student records
Update existing student details
Delete student records
Search and display student information
Assign courses to students
Manage and store student grades
Administrator authentication (login)
Student and grade report generation

Technologies Used
Java (Core and Servlet APIs)
Java Servlets (for backend logic)
JSP (JavaServer Pages) or HTML/CSS/JavaScript (for frontend)
JDBC (Java Database Connectivity)
MySQL (Database)
MySQL Connector/J (JDBC Driver)
Apache Tomcat or similar servlet container (to run the web application)
Eclipse, IntelliJ IDEA, or NetBeans IDE (for web project development)

Prerequisites
Java Development Kit (JDK) 8 or above
Apache Tomcat or compatible servlet container
MySQL Server installed and running
MySQL Connector/J (download and add to your project libraries)
IDE such as Eclipse, IntelliJ IDEA, or NetBeans (recommended)

Database Setup
Create a new MySQL database (e.g., student_management).
Create the necessary tables. Example for students:
text
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    birthday DATE,
    email VARCHAR(100)
);
Update the database connection URL, username, and password in your Java code/configuration.

How to Run
Clone the repository:

text
git clone https://github.com/manoranjan1720/SMS_Advance-JAVA.git
cd SMS_Advance-JAVA/Student-Managment-System
Open the project in your preferred IDE.

Add the MySQL Connector/J JAR file to your project's library dependencies.
Configure database connection details in the Java source code if needed.
Build the project and deploy it to your Apache Tomcat server (usually as a WAR file).

Start the Tomcat server.
Access the application through your web browser at:
text
http://localhost:8080/YourAppContext/
Usage
Once deployed, access the web interface in your browser. Use the provided forms to log in as an administrator and manage students, courses, and grades via the user-friendly interface.
