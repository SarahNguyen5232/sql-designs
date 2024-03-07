
CREATE TABLE Region (
    RegionID SERIAL PRIMARY KEY,
    RegionName UNIQUE,
);

CREATE TABLE User (
    UserID SERIAL PRIMARY KEY,
    UserName,
    Email UNIQUE,
    PreferredRegionID INT REFERENCES Region(RegionID),
);

CREATE TABLE Post (
    PostID SERIAL PRIMARY KEY,
    Title,
    Text TEXT,
    UserID INT REFERENCES User(UserID),
    Location,
    RegionID INT REFERENCES Region(RegionID),
);

CREATE TABLE Category (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName UNIQUE,
);

CREATE TABLE PostCategory (
    PostCategoryID SERIAL PRIMARY KEY,
    PostID INT REFERENCES Post(PostID),
    CategoryID INT REFERENCES Category(CategoryID),
    UNIQUE (PostID, CategoryID)
);
