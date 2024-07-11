# T20 World Cup Database

## Introduction

This project involves creating a relational database to capture key information about the T20 World Cup tournaments held from 2007 to 2021. The focus is on documenting the semi-final and final matches of each series using data sourced from Kaggle.

## Designing the Database

### Entities, Relationships, and Attributes

- **Players:** `PlayerId`, `PlayerName`, `TeamCountry`
- **Team:** `TeamCountry`
- **Venue:** `VenueName`, `VenueLocation`
- **MatchDetails:** `Mid`, `Year`, `TeamOne`, `TeamTwo`
- **Score:** `ScoreId`, `TeamOneScore`, `TeamTwoScore`, `Winner`, `Mid`

### Relationships

- **Players - Team:** Players belong to teams.
- **Team - MatchDetails:** Teams participate in matches.
- **Venue - MatchDetails:** Matches are held at venues.
- **MatchDetails - Score:** Each match has associated scores.

### ER Diagram and Relational Schema

An ER diagram was developed to visualize the relationships between entities. A relational schema was then created to represent these entities in table format, ensuring clarity and normalization to the third normal form.

## Data Descriptions

Tables were defined with appropriate data types, and descriptions were provided for each attribute. Sample data from the Kaggle dataset was inserted into the tables using CSV files.

## Assumptions

No assumptions were made; the database design strictly followed the factual data provided in the dataset.

## Implementation

### Database Creation

MySQL commands were used to create the database, define tables, and establish relationships.

### Adding Sample Data

Sample data was populated into the tables using SQL commands and the `SOURCE` command in MySQL.

### Query Design and Implementation

Nine queries were developed to demonstrate various SQL functionalities, including:

- String comparison
- Joins
- Sub-queries
- `GROUP BY`
- `ORDER BY`

### Advanced Features

- **Views:** Created to show final match details, best players in finals, venue details for Sri Lanka's matches, and first semifinal match details.
- **Procedures:** Developed to add new teams and venues.
- **Indexes:** Added indexes for `PlayerName` in `Players` and `TeamCountry` in `Team`.

## Database Connectivity with Python

Python3 was utilized to connect to the database, execute queries, and display results.

## User Guide

### Database Creation

Run the SQL commands in `TableCommands.sql` and `ValueCommands.sql` to set up the database and insert sample data.

### Running Queries

Execute the queries in `Queries.sql` to retrieve specific data from the database.
