
CREATE TABLE Team (
    TeamID SERIAL PRIMARY KEY,
    TeamName UNIQUE,
    CoachName,
);

CREATE TABLE Player (
    PlayerID SERIAL PRIMARY KEY,
    PlayerName,
    TeamID INT REFERENCES Team(TeamID),
    Position,
);

CREATE TABLE Game (
    GameID SERIAL PRIMARY KEY,
    Date DATE,
    SeasonID INT REFERENCES Season(SeasonID),
);

CREATE TABLE Goal (
    GoalID SERIAL PRIMARY KEY,
    PlayerID INT REFERENCES Player(PlayerID),
    GameID INT REFERENCES Game(GameID),
    GoalTime TIME,
);

CREATE TABLE Referee (
    RefereeID SERIAL PRIMARY KEY,
    RefereeName,
);

CREATE TABLE Match (
    MatchID SERIAL PRIMARY KEY,
    Team1ID INT REFERENCES Team(TeamID),
    Team2ID INT REFERENCES Team(TeamID),
    GameID INT REFERENCES Game(GameID),
    WinnerTeamID INT REFERENCES Team(TeamID),
);

CREATE TABLE Season (
    SeasonID SERIAL PRIMARY KEY,
    StartDate DATE,
    EndDate DATE,
);

CREATE TABLE Standings (
    StandingID SERIAL PRIMARY KEY,
    TeamID INT REFERENCES Team(TeamID),
    SeasonID INT REFERENCES Season(SeasonID),
    Points INT,
    Wins INT,
    Losses INT,
    Draws INT
);
