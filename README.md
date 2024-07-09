# ICC-Cricket-Database-Real-Sample-Data-
This Database system includes the data for the T20 Final matches played in the years 2021, 2016, and  2014. The data have been obtained from www.kaggle.com.

Design of Database  
The Database’s design consists of 4 tables that represented the information on the Final Matches played 
during 2021, 2016, and 2014. The reason behind these three years was that the players had not changed 
and stayed consistent and static during the above years. This made the building of the database 
straightforward. 
I implemented 4 tables :  
1. Player_Details : Consisted the information of the players who played during the years I've built 
my database around. The attributes used to build Player_Details were their Name, ID, and Team 
Name.  
Attribute 
Type 
Size 
Primary Key Foreign Key Accept 
NULL 
Player_Num 
Int 
3 
Yes 
No 
No 
Description 
The Number 
of Player in 
his/her 
Team 
TeamName 
Varchar 
20 
Yes 
Yes(Team_D
 etails) 
Player_Name 
Varchar 
20 
No 
No 
No 
The Player’s 
Team Name 
The Name 
of Player 
No 
Type 
Size 
2. Match_Details: Housed the information of all the matches which happened during the years 
2021, 2016, and 2014.  The attributes include: 
Attribute 
Match_ID 
Primary Key Foreign Key 
Varchar 
10 
Yes 
No 
Accept 
NULL 
No 
Description 
Unique Identity 
Number of Match 
Played 
WinningTeamScor
 e 
Varchar 
20 
No 
No 
No 
The score of the 
Team which Won 
that Match 
LosingTeamScore 
Varchar 
20 
No 
No 
No 
The score of the 
Team which Lost 
that Match 
Date/Time 
Date 
25 
No 
No 
No 
The Date of the 
Match Played 
Team_Name 
Varchar 
60 
No 
Yes(Team_De
 tails) 
No 
The Name of the 
Team in Match 
Stadium_Name 
Varchar 
60 
No 
Yes(Stadium_
 Details) 
No 
The Match’s 
Stadium Name 
3. Team_Details: Consisted of the Information of all the 6 teams who took part in the T20 Final 
matches. The Attributes are:  
Attribute 
Type 
Size 
Primary 
Key 
Foreign 
Key 
TeamName 
Varchar 
60 
Yes 
No 
Accept 
NULL 
No 
Description 
Team_CaptainNa
 me 
Name of Team 
Varchar 
60 
No 
No 
No 
Name of the 
Captain in Team 
Type 
Size 
4. Stadium_Details : The details of the venues where the matches were held. Attributes containing 
the information are: 
Attribute 
Address 
Primary Key Foreign Key Accept 
NULL 
Varchar 
60 
Yes 
No 
No 
Description 
The Address 
Details of the 
Stadium 
Name 
Varchar 
60 
No 
No 
No 
The Name of 
the Stadium 
The Relationships between the Tables is as follows: 
Relationship Set 
Between which 
entities 
Cardinality 
Participation 
Player_Details (Weak), 
Team_Details 
Plays in (Weak 
Relationship) 
Many-to-One (One 
Team can have many 
Players) 
Player_Details – total, 
Team_Details – total (A 
team must have players, 
a Player must have a 
team to participate in) 
Team_Details, 
Match_Details 
Competes 
Many-to-Many (A team 
can have many 
matches, a match has 
many teams) 
Team_Details -Partial, 
Match_Details -Total (A 
team can exist without a 
match, a match must 
have two teams to take 
place) 
Match_Details, 
Stadium_Details (Weak) 
Played On 
Many-to-One (One 
Stadium will have many 
matches) 
Match_Details – Total, 
Stadium_Details – 
Partial (A Match must 
have a stadium to 
happen, a stadium can 
exist without a match) 
