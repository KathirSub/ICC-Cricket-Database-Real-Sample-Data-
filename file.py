#commands

import mysql.connector

#database connection
conn = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Diablo2003",
  database = "CricketFinalAss_20658748"
)

# we create new cursor
cursor = conn.cursor() 

# EXECUTING QUERIES

# Q1. show the Captain Name of Australia in Table Team_Details 
Q1 = "select * from Team_Details where TeamName = 'Australia"
cursor.execute(Q1)

result = cursor.fetchall()

print ("getting the result of Query1")
print()
for i in result:
	print(i)
	
# Q2. Q2. show the Details of Stadium in Dubai
Q2 ="select * from Stadium_Details where Address = 'Dubai';"
cursor.execute(Q2)

result2 = cursor.fetchall()

print ("getting the result of Query2")
print()
for i in result2:
	print(i)
	
# Q3.Show The team Name and name of the players with the firstname of Tom 
Q3 = "select TeamName,Player_Name AS FirstName from Player_Details where Player_Name LIKE 'Tom%';"
cursor.execute(Q3)

result3 = cursor.fetchall()

print ("getting the result of Query3")
print()
for i in result3:
	print(i)
	
# Q4.Show the player names and teamName of the matches after 2016/1/1
Q4 = "select Distinct Player_Name, Player_Details.TeamName from Match_Details,Player_Details where 'Date' >= '2016-01-01';"

cursor.execute(Q4)

result4 = cursor.fetchall()

print ("getting the result of Query4")
print()
for i in result4:
	print(i)
	
# Q5. show the teams and captains names in descending order who were in the winners in the tournaments.
Q5 = "select Team_CaptainName, Match_Details.TeamName,Team_Details.TeamName from Team_Details,Match_Details where Match_Details.TeamName = Team_Details.TeamName order by Team_CaptainName desc;"
cursor.execute(Q5)

result5 = cursor.fetchall()

print ("getting the result of Query5")
print()
for i in result5:
	print(i)
	
# Q6. Show all the matches played and the name of Stadium in Dubai
Q6 = "select * from Stadium_Details as s inner join Match_Details as m where m.Stadium_Name = 'Dubai' and s.Address = 'Dubai';"

ursor.execute(Q6)

result6 = cursor.fetchall()

print ("getting the result of Query6")
print()
for i in result6:
	print(i)
	

