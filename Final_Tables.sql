create database CricketFinalAss_20658748

create table Team_Details(Team_CaptainName VARCHAR(60), TeamName VARCHAR(60), PRIMARY KEY(TeamName));

create table Stadium_Details(Address VARCHAR(60), Name VARCHAR(60), PRIMARY KEY(Address));


create table Match_Details(Match_ID VARCHAR(10), WinningTeamScore VARCHAR(20), LosingTeamScore VARCHAR(20), Date Date, TeamName VARCHAR(60), Stadium_Name VARCHAR(60), PRIMARY KEY(Match_ID), FOREIGN KEY (TeamName) REFERENCES Team_Details(TeamName), FOREIGN KEY (Stadium_Name) REFERENCES Stadium_Details(Address));

create table Player_Details(Player_Num Int(3), TeamName VARCHAR (20), Player_Name VARCHAR (20), PRIMARY KEY (Player_Num,TeamName), FOREIGN KEY (TeamName) REFERENCES Team_Details (TeamName));
