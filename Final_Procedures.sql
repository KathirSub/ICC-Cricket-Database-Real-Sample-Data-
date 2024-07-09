/* Stored Procedures */
 
/* To reset all the stadium's address to NULL */

create procedure resetStadium()
	COMMENT 'Sets the stadium to null'
	UPDATE Stadium_Details
	set Address = NULL ;

/* call resetStadium() ; */

call resetStadium();
select * from Stadium_Details;



/* To insert a new stadium  */

create procedure addStadium(stadiumAddress VARCHAR(60),stadiumName VARCHAR(60))
	COMMENT 'adds a new stadium '
	INSERT INTO Stadium_Details(Address,Name)
	VALUES (stadiumAddress,stadiumName) ;

/* to call procedure */
call addStadium('Mumbai','Mumbai International');
select * from Stadium_Details;


/* Triggers */

DELIMETER //
CREATE TRIGGER after_score_insert
	AFTER INSERT Match_Details
	FOR EACH ROW
	BEGIN
		IF NEW.WinningTeamScore < 0 THEN 
			UPDATE WinningTeamScore
			SET NEW.WinningTeamScore = 0;
		END IF;
	END //
DELIMETER;






/* Views */

/* To create a view for all the teams who won in the finals */ 

create view finalteam As 
	select Team_Details.TeamName 
	from Team_Details inner join Match_Details on
	Match_Details.TeamName = Team_Details.TeamName ;

/* Using the finalteam View */

select * from finalteam;

/* To create a view for the captain names whose team lost the finals */

create view CaptainLoss As
	select Team_Details.Team_CaptainName
	from Team_Details inner join Match_Details om
	Match_Details.TeamName <> Team_Details.TeamName ; 
	
/* Using the CaptainLoss view */

select * from CaptainLoss ;

/* To create a view for the stadiums */

create view Stadium As
	select Address,Name
	from Stadium_Details ;
	
/* Using the Stadium View */

select * from Stadium;

