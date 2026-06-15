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

## Useful Links

ERD Drive link - https://drive.google.com/file/d/1_4049eqVKejM4IU40rOu9ecz-lqJMPBO/view?usp=sharing

- Diagrams.net (viewer): https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=ERD.drawio&dark=auto#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Football%20Ticket%20Booking%20ERD%22%20id%3D%22erd-football-booking%22%3E7Z1rb6M4FIZ%2FDdLOlxWBhE0%2FNml6UW%2B7SbM78yky4ASrBkfGaZL59WtzaaCczmxSuoIxUtXigzHg9%2Fhxy2sawx6HuyuO1sE98zE1LNPfGfaFYVnWmd2XP1Rkn0Z6PdNOIytO%2FCx2CMzId5wFzSy6IT6OSxUFY1SQdTnosSjCnijFEOdsW662ZLR81jVa4Upg5iFajf5DfBGk0eHAPMSvMVkF4vX%2Bsj0hyitngThAPtsWQvbEsMecMZFuhbsxpqr38n5Jj7t8Z%2B%2FrhXEcif9ywCbGPK4elLUTi31%2By%2FJC12pTIFeFRrFAXGTK2KYMyL4WiESYy0AvKVOK1jFJql8kNQJC%2FTu0ZxuRN5SXRktC6ZhRxpOz2T7Cw6WXnIazZ1zY43hD7C7VEfJ8s%2Bz6enk5vZ5eX5bTO3hBdJPdwXw2mc6yKOYC7wq3mnXOFWYhFnwvqwRF%2FYaZWtuD2FYey5pxsuK%2BXERZpq1eWz6IITcyPd7RBlCzoNd74kxVPo0Cxsl3JQnNer8oWFLekpCiSCYq8t%2BERiwZmWal%2F0kUYE6UXoKtsxoUL0W26TIhWJgVeNZ%2FJpgLPmfrJ8RXOK9STICIRSrF1oxEIum%2FwUh%2ByR4dm78PjIG847Es9w5l%2BaWqczFmkbximYaqWYxiscWxeJMcFpQcJ%2BWF%2FYO02JerfCwPnoFEeH%2BIymqCIDqV5EPRKhmtgQhpNk62ARF4tkaeqrqVgE7HruIkOujznu5MdtGSJsQKiO%2FjCJbuuPRIhMZ88oJTvd8OZwsY7hUF%2F7ytS8NBLZq9dJohSlbyZBdpe6NY3gCJVndp6w4kosLbQvahZf528%2FD0pbZRaZdhXYvCVkfnttO5llnaguhs6TXSP02xekYqxGLNFDqexcsNpYsIhVjR%2BO%2Fz6fj6fKrGtmU%2BPD6p7%2FO7u2YT2u4I3XZCn9WSBxChbb3Gf7MJbUOE1kyh4wmNQ0Rohc7zh5u%2F5pNmk7nfkbntZO5ZtSQChOa%2BXgO%2F2WjuQ2jWTKHj0cwZTX5vHl9PxreGfS6371GEVpjLDr9EUbPxPOjw3Ho815MIEJ4Heg3%2BZuN5AOFZM4WOx%2FM6kNeyiDahq4D89vFG0x9shEh4AW6ibTvAQ79fSRG5Z2i5tuMYVR%2Fnp7bt%2FfmTnETrM25t840gvTI463gmHALObUm0bgpt4BT6mhk1erch5N2GmvmALfNuQ8i71U2z4%2BfUBHCfYd4OPmEGtTpAtx%2FQtUzVkH2bp4cug73Rf%2BKEkH2rm0In2LdkJza8aN42m8iAWdsRuW1ErsOuDSG7NtTMDGw2kSG7VjeFjieyYBuu1tNEYuEhgVcs0asddAYM247ObaNzLZZtCFm2oWaGYLPxDFm2uil0PJ5dFOOFIN4zFos1J17yq%2FPD%2FH4yvRmnxoBhOSvVmLqMZuMaMHA7XLcO1%2FWkAoRrzQzCZuMasnB1U%2BjUx82STGITG%2BWVNv28ZtxoSruMPcubbKCPu1xixwNfv%2FX%2FOHNN06h6Oj%2F1cUePj7c3D1enGbmvb37%2FwMi1hoMSPu1hHRoBTm5Zt24qbcFUWoeV60JWrquZLdgyK9eFrFzdNDvhT6GUcC0xc12rY%2FQvwOg63FwXcnPz%2FNBlvBcZDSp42SxGQ%2F6ubpp96F8lKD1NY2IZQ8c4U9XmarF%2Bs5kN2L0ds1vH7Dr8Xhfye13N3MS2MRtygHXT7GNLJCvQvk8f0Dcb24AP3GG7ddiuxQh2ISPY1cxm%2FDTJ6hmtEKU1U%2Bh4SscYieq7Yc3mMmD4dlxuH5fryQWIy5r5ic3mMuT46qbQCS%2Fton2yePKt5%2Fv60q78wZ6bzWmn4%2FSvwOlarGUH4rSjFwWazWkH4rRmCp2yzl3yaeExOUZbu4KSY7pInrBndE5bxH7lcwGqi3bYhntZLfif5qhW8md98mgi9lNMkSAsmhz2lHTolTMJR%2F65%2BhQDWZxMQxTt84ngEE2zgbNN5ON8IsA7Ir6qbYnXtPQtb1BuX%2BwK1S7ymUJeH99%2FLRa%2BJS1Yg7x8OC4p5Qemdy3yyaAyzxXndSrHRDKf91SKJEu4Hr7AqcCTnnopq%2FBRodPHch9S%2Br3Vta3Uuvd5WgfofxJaFg%2BfopHsK3wYiT35Fw%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E

- GitHub repo: https://github.com/Maptaul/Assignment-3

## Contact

If you want changes or a more detailed README (examples, schema summary, sample output), tell me what you'd like and I will update it.
