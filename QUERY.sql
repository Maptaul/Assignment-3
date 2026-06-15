DROP TABLE IF EXISTS Bookings;

DROP TABLE IF EXISTS Matches;

DROP TABLE IF EXISTS Users;

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

CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  user_id INT NOT NULL REFERENCES Users (user_id),
  match_id INT NOT NULL REFERENCES Matches (match_id),
  seat_number VARCHAR(10),
  payment_status VARCHAR(20) CHECK (
    payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
  ),
  total_cost NUMERIC(10, 2) CHECK (total_cost >= 0)
);

INSERT INTO
  Users (user_id, full_name, email, role, phone_number)
VALUES
  (
    1,
    'Tanvir Rahman',
    'tanvir@mail.com',
    'Football Fan',
    '+8801711111111'
  ),
  (
    2,
    'Asif Haque',
    'asif@mail.com',
    'Football Fan',
    '+8801722222222'
  ),
  (
    3,
    'Sajjad Rahman',
    'sajjad@mail.com',
    'Ticket Manager',
    '+8801733333333'
  ),
  (
    4,
    'Jannat Ara',
    'jannat@mail.com',
    'Football Fan',
    NULL
  ),
  (
    5,
    'Nusrat Jahan',
    'nusrat@mail.com',
    'Football Fan',
    '+8801744444444'
  ),
  (
    6,
    'Rakib Hasan',
    'rakib@mail.com',
    'Football Fan',
    '+8801755555555'
  ),
  (
    7,
    'Farhan Ahmed',
    'farhan@mail.com',
    'Football Fan',
    '+8801766666666'
  ),
  (
    8,
    'Mim Akter',
    'mim@mail.com',
    'Football Fan',
    NULL
  ),
  (
    9,
    'Hasib Chowdhury',
    'hasib@mail.com',
    'Ticket Manager',
    '+8801777777777'
  ),
  (
    10,
    'Tanvir Hossain',
    'tanvirh@mail.com',
    'Football Fan',
    '+8801788888888'
  );

INSERT INTO
  Matches (
    match_id,
    fixture,
    tournament_category,
    base_ticket_price,
    match_status
  )
VALUES
  (
    101,
    'Real Madrid vs Barcelona',
    'Champions League',
    150.00,
    'Available'
  ),
  (
    102,
    'Man City vs Liverpool',
    'Premier League',
    120.00,
    'Selling Fast'
  ),
  (
    103,
    'Bayern Munich vs PSG',
    'Champions League',
    130.00,
    'Available'
  ),
  (
    104,
    'AC Milan vs Inter Milan',
    'Serie A',
    90.00,
    'Sold Out'
  ),
  (
    105,
    'Juventus vs Roma',
    'Serie A',
    80.00,
    'Available'
  ),
  (
    106,
    'Arsenal vs Chelsea',
    'Premier League',
    110,
    'Available'
  ),
  (
    107,
    'Manchester United vs Tottenham',
    'Premier League',
    140,
    'Selling Fast'
  ),
  (
    108,
    'Dortmund vs Leipzig',
    'Bundesliga',
    95,
    'Available'
  ),
  (
    109,
    'Atletico Madrid vs Sevilla',
    'La Liga',
    100,
    'Postponed'
  ),
  (
    110,
    'Napoli vs Lazio',
    'Serie A',
    85,
    'Available'
  );

INSERT INTO
  Bookings (
    booking_id,
    user_id,
    match_id,
    seat_number,
    payment_status,
    total_cost
  )
VALUES
  (501, 1, 101, 'A-12', 'Confirmed', 150.00),
  (502, 1, 102, 'B-04', 'Confirmed', 120.00),
  (503, 2, 101, 'A-13', 'Confirmed', 150.00),
  (504, 2, 101, NULL, NULL, 150.00),
  (505, 3, 102, 'C-20', 'Pending', 120.00),
  (506, 5, 103, 'D-15', 'Confirmed', 130),
  (507, 6, 106, 'E-07', 'Confirmed', 110),
  (508, 7, 107, 'F-22', 'Pending', 140),
  (509, 8, 108, 'G-11', 'Cancelled', 95),
  (510, 10, 101, 'A-20', 'Confirmed', 150),
  (511, 5, 102, 'B-10', 'Refunded', 120),
  (512, 6, 110, NULL, NULL, 85);

SELECT
  match_id,
  fixture,
  base_ticket_price
FROM
  Matches
WHERE
  tournament_category = 'Champions League'
  AND match_status = 'Available';

SELECT
  user_id,
  full_name,
  email
FROM
  Users
WHERE
  full_name ILIKE 'Tanvir%'
  OR full_name ILIKE '%Haque%';

SELECT
  booking_id,
  user_id,
  match_id,
  COALESCE(payment_status, 'Action Required') AS systematic_status
FROM
  Bookings
WHERE
  payment_status IS NULL;