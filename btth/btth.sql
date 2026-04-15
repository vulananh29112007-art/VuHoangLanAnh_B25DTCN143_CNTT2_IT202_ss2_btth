use session2;
CREATE TABLE book(
	book_id char(5) PRIMARY KEY,
    book_name VARCHAR(200) NOT NULL,
    quantity INT CHECK(quantity>=0),
    price DECIMAL(10,2) DEFAULT (5000)
);
ALTER TABLE book
ADD COLUMN NGAYNHAP DATE;

CREATE TABLE borrow_books(
	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id CHAR(5),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    borrowdate DATE DEFAULT (CURRENT_DATE)
);