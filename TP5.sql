USE light
GO
-- DROP TABLE personne;
-- DROP TABLE equipe;
-- DROP TABLE equipe_has_personne

CREATE TABLE [personne] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL,
  [prenom] varchar(255) NOT NULL
)
GO

CREATE TABLE [equipe] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL,
  [projet] varchar(255) NOT NULL,
  [personne_id] int
)
GO

CREATE TABLE [equipe_has_personne] (
  [personne_id] int,
  [equipe_id] int,
  PRIMARY KEY ([personne_id], [equipe_id])
)
GO

ALTER TABLE [equipe] ADD FOREIGN KEY ([personne_id]) REFERENCES [personne] ([id])
GO

ALTER TABLE [equipe_has_personne] ADD FOREIGN KEY ([equipe_id]) REFERENCES [equipe] ([id])
GO

ALTER TABLE [equipe_has_personne] ADD FOREIGN KEY ([personne_id]) REFERENCES [personne] ([id])
GO

INSERT INTO personne (prenom,nom)
VALUES 
('Brad','Pitt'),
('Bruce','Willis'),
('Nicolas','Cage'),
('Angelie','Jolie'),
('Tom','Cruise'),
('Tom','Hanks'),
('Bob','Dylan'),
('Johnny','Cash'),
('Jimmy','Hendrix');

INSERT INTO equipe (nom,projet,personne_id) VALUES
('Team A','Projet site Mairie',1),
('Team B','Projet CRM',4),
('Team C','Projet ERP',7);


INSERT INTO equipe_has_personne (equipe_id,personne_id)
VALUES
(1,2),
(1,3),
(2,5),
(2,6),
(3,8),
(3,9);

SELECT *
FROM equipe
WHERE id = 1;


SELECT *
FROM equipe;
