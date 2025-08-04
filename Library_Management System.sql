CREATE DATABASE library;
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    copies_available INT
);
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address TEXT,
    join_date DATE
);
CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO books (title, author, genre, published_year, copies_available) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 3),
('1984', 'George Orwell', 'Dystopian', 1949, 5),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 4),
('Wings of fire','Kalam','Autobiography',1999,5),
('To kill a Mockingbird','Harper Lee','Classic','2015',10);
INSERT INTO members (name, email, phone, address, join_date) VALUES
('Lakshmi', 'lakshmi@gmail.com', '9876543210', '123 Main St, Hyderabad', '2025-04-08'),
('Prasanna', 'prasanna@gmail.com','8647663762','135Market Road,Vijayawada','2025-06-20'),
('Priya','priya@gmail.com','9452397474','165 Police station Road,Guntur','2025-07-15');
INSERT INTO loans (book_id, member_id, issue_date, due_date, return_date) VALUES
(1, 1, '2025-07-01','2025-07-15','2025-07-12'),
(2, 2, '2025-07-10','2025-07-25','2025-07-23');


