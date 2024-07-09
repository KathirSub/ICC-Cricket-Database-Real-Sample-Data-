
/* Q1. show the Captain Name of Australia in Table Team_Details */
select * from Team_Details where TeamName = 'Australia';

/* Q2. show the Details of Stadium in Dubai */
select * from Stadium_Details where Address = 'Dubai';

/* Q3.Show The team Name and name of the players with the firstname of Tom */
select TeamName,Player_Name AS FirstName from Player_Details where Player_Name LIKE 'Tom%';

/* Q4.Show the player names and teamName of the matches after 2016/1/1 */
select Distinct Player_Name, Player_Details.TeamName from Match_Details,Player_Details where 'Date' >= '2016-01-01';

/* Q5. show the teams and captains names in descending order who were in the winners in the tournaments.*/
select Team_CaptainName, Match_Details.TeamName,Team_Details.TeamName from Team_Details,Match_Details where Match_Details.TeamName = Team_Details.TeamName order by Team_CaptainName desc;


/* Q6. Show all the matches played and the name of Stadium in Dubai */
select * from Stadium_Details as s inner join Match_Details as m where m.Stadium_Name = 'Dubai' and s.Address = 'Dubai';












