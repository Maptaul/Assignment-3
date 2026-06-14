CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  role VARCHAR(20) NOT NULL CHECK (role IN ('Ticket Manager', 'Football Fan')),
  phone_number VARCHAR(20)
);



CREATE TABLE Matches (
  match_id INT PRIMARY KEY,
  fixture VARCHAR(150) NOT NULL,
  tournament_category VARCHAR(100) NOT NULL,
  base_ticket_price NUMERIC(10, 2) NOT NULL CHECK (base_ticket_price >= 0),
  match_status VARCHAR(20) NOT NULL CHECK (
    match_status IN (
      'Available',
      'Selling Fast',
      'Sold Out',
      'Postponed'
    )
  )
);