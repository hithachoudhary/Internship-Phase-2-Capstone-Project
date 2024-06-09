-- Sports Data Analysis : Problem Statement 6

-- 1. Creating tables for the database schema
-- Creation of PlayerDetails table which contains the details of the players
CREATE TABLE PlayerDetails 
(ID INT PRIMARY KEY, 
Player Varchar(255) NOT NULL, 
Team VARCHAR(255), 
Age INT, 
Height DECIMAL(5,2), 
Weight DECIMAL(5,2), 
Position VARCHAR(255), 
Season VARCHAR(255));

-- Creation of PlayerMatchStats table which contains the details about the players match statistics                 
CREATE TABLE PlayerMatchStats 
(ID INT, 
Player VARCHAR(255) NOT NULL,
Goals INT, 
Assists INT, 
YellowCards INT, 
RedCards INT, 
PassCompletionRate DECIMAL(6,2), 
DistanceCovered DECIMAL(5,2), 
Sprints INT, 
ShotsOnTarget INT, 
TacklesWon INT, 
CleanSheets INT, 
FOREIGN KEY(ID) REFERENCES PlayerDetails(ID));

-- Creation of PlayerPerformanceMetrics table which contains the players performance metrics    
CREATE TABLE PlayerPerformanceMetrics 
(ID INT, 
Player VARCHAR(255) NOT NULL,
GoalsPerMatch DECIMAL(5,4), 
AssistsPerMatch DECIMAL(6,5), 
PlayerFatigue DECIMAL(5,4), 
MatchPressure INT,
InjuryHistory INT,
TrainingHours DECIMAL(5,3),
FatigueInjuryCorrelation DECIMAL(5,4), 
PressurePerformanceImpact DECIMAL(5,4), 
EffectiveTraining DECIMAL(6,3),
FOREIGN KEY(ID) REFERENCES PlayerDetails(ID));