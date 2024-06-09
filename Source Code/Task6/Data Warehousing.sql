-- Sports Data Analysis: Problem Statement 6

-- Using the database
use sports_data;

-- Creating tables for the database
-- Creating table "PlayerInfo" which stores the details about the players
CREATE TABLE PlayerInfo 
(ID INT PRIMARY KEY, 
Player Varchar(255) NOT NULL, 
Team VARCHAR(255), 
Age INT, 
Height DECIMAL(6,3), 
Weight DECIMAL(6,3), 
Position VARCHAR(255));

-- Creatng table "PlayerMatchInfo" to store the match details of the players
CREATE TABLE PlayerMatchInfo 
(ID INT, 
Player VARCHAR(255) NOT NULL,
Season VARCHAR(255),
Goals INT, 
Assists INT, 
YellowCards INT, 
RedCards INT, 
FOREIGN KEY(ID) REFERENCES PlayerInfo(ID));

-- Creating table "PlayerMatchPerformace" to store the performance of each player during a match
Create table PlayerMatchPerformance
(ID INT, 
Player VARCHAR(255) NOT NULL,
PassCompletionRate DECIMAL(6,3), 
DistanceCovered DECIMAL(5,3), 
Sprints INT, 
ShotsOnTarget INT, 
TacklesWon INT, 
CleanSheets INT, 
FOREIGN KEY(ID) REFERENCES PlayerInfo(ID));

-- Creating table "PlayerAttributes" that contains extra information about the players 
CREATE TABLE PlayerAttributes 
(ID INT, 
Player VARCHAR(255) NOT NULL, 
PlayerFatigue DECIMAL(4,3), 
MatchPressure INT,
InjuryHistory INT,
TrainingHours DECIMAL(5,3),
FatigueInjuryCorrelation DECIMAL(4,3), 
PressurePerformanceImpact DECIMAL(5,3), 
EffectiveTraining DECIMAL(6,3),
FOREIGN KEY(ID) REFERENCES PlayerInfo(ID));

-- Creating table "OverallPerformance" to store the overall performance of the players 
CREATE TABLE OverallPerformance 
(ID INT,
Player VARCHAR(255) NOT NULL,
PerformanceIndex INT,
GoalScoringEfficiency DECIMAL(4,3),
FOREIGN KEY (ID) REFERENCES PlayerInfo(ID));
