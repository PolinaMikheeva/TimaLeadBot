﻿CREATE TABLE IF NOT EXISTS BotFiles (
    Id SERIAL PRIMARY KEY,
    FileName TEXT NOT NULL,
    FileType TEXT NOT NULL,
    FileData BYTEA NOT NULL,
    Category TEXT NOT NULL,
    Description TEXT
);

CREATE TABLE IF NOT EXISTS Users (
    Id INT PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Username TEXT
);

CREATE TABLE IF NOT EXISTS UserHistory (
    Id SERIAL PRIMARY KEY,
    UserId INT REFERENCES Users(Id) ON DELETE CASCADE,
    Action TEXT NOT NULL,
    Timestamp TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Tests (
    Id INT PRIMARY KEY,
    Block INT,
    NameBlock TEXT,
    Question TEXT,
    VariantA TEXT,
    VariantB TEXT,
    VariantC TEXT,
    VariantD TEXT,
    Answer TEXT
);