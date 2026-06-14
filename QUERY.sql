CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  role VARCHAR(20) NOT NULL CHECK (role IN ('Ticket Manager', 'Football Fan')),
  phone_number VARCHAR(20)
);