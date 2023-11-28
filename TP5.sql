Create DATABASE TeamBuilder;
GO

CREATE TABLE Users
(
    Id int PRIMARY KEY IDENTITY(1,1),
    FirstName nvarchar(50) NOT NULL,
    LastName nvarchar(50) NOT NULL,
    Role nvarchar(50) NOT NULL,
    TeamId int,
    CONSTRAINT FK_Teams FOREIGN KEY (TeamId) REFERENCES Teams(Id)
);

CREATE TABLE Teams
(
    Id int PRIMARY KEY IDENTITY(1,1),
    Name nvarchar(50) NOT NULL,
    Project nvarchar(50) NOT NULL
);

-- Insert Teams
INSERT INTO Teams (Name, Project) VALUES 
('Team A', 'Projet site internet Mairie'),
('Team B', 'Projet CRM'),
('Team C', 'Projet ERP');

-- Insert Users
INSERT INTO Users (FirstName, LastName, Role, TeamId) VALUES
('Brad', 'Pitt', 'chef', 1), -- Team A
('Bruce', 'Willis', 'designer', 1), -- Team A
('Nicolas', 'Cage', 'designer', 1), -- Team A

('Angelica', 'Jolie', 'chef', 2), -- Team B
('Tom', 'Cruise', 'designer', 2), -- Team B
('Tom', 'Hanks', 'designer', 2), -- Team B

('Bob', 'Dylan', 'chef', 3), -- Team C
('Johnny', 'Cash', 'designer', 3), -- Team C
('Jimmy', 'Hendrix', 'designer', 3); -- Team C
