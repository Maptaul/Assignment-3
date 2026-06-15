# Football Ticket Booking System - Database Design & SQL Queries

## Overview

This repository contains the deliverables for Assignment 3: a database Entity-Relationship Diagram and the SQL query/script file used for the assignment.

## Files

- [ERD.drawio](ERD.drawio) — diagram of the database schema (open with draw.io / diagrams.net or the VS Code Draw.io extension).
- [QUERY.sql](QUERY.sql) — SQL script containing the assignment's queries and/or schema/data statements.

## Prerequisites

- A relational database (MySQL, PostgreSQL, SQLite, etc.) or any SQL client to run the SQL script.
- Optional: draw.io / diagrams.net or VS Code Draw.io extension to view the ERD file.

## How to view the ERD

1. Open ERD.drawio in draw.io (diagrams.net) via your browser or desktop app.
2. In VS Code, install the "Draw.io Integration" extension and open the file.

## How to run the SQL script

Run QUERY.sql in your preferred SQL environment. Examples:

- MySQL / MariaDB:

  mysql -u your_user -p your_database < QUERY.sql

- PostgreSQL:

  psql -U your_user -d your_database -f QUERY.sql

- SQLite:

  sqlite3 your_database.db < QUERY.sql

Adjust usernames, database names, and paths as needed. Review the SQL file before running, and run inside a development or test database.

## Notes

- The SQL script may create tables and insert sample data. Running it on a production database without review is not recommended.

## Contact

If you want changes or a more detailed README (examples, schema summary, sample output), tell me what you'd like and I will update it.
