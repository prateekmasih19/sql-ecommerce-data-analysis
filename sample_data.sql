-- Insert statements with sample data
INSERT INTO Customers VALUES
(1, 'Amit', '2023-01-05'),
(2, 'Neha', '2023-01-10'),
(3, 'Rahul', '2023-02-01'),
(4, 'Priya', '2023-02-15');

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mobile', 'Electronics'),
(3, 'Headphones', 'Accessories'),
(4, 'Keyboard', 'Accessories');

INSERT INTO Orders VALUES
(101, 1, '2023-03-01'),
(102, 1, '2023-04-01'),
(103, 2, '2023-03-05'),
(104, 3, '2023-03-10'),
(105, 4, '2023-03-20');

INSERT INTO Order_Items VALUES
(101, 1, 1, 50000),
(101, 3, 1, 2000),
(102, 2, 1, 30000),
(103, 4, 1, 1500),
(104, 3, 2, 2000),
(105, 2, 1, 28000);
