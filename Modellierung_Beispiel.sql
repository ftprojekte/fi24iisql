-- Tabellen mit Beziehungen -> Reiehnfolge beachten
-- Bildungsträger
CREATE TABLE Bildungstraeger (
    BNummer int PRIMARY KEY,
    Namen varchar(100)
);
CREATE TABLE Fortbildung (
    FNummer int PRIMARY KEY,
    Namen varchar(100),
    Anfang date,
    Ende date,
    BildungNummer int not null,
    CONSTRAINT fk_bildung FOREIGN KEY (BildungNummer) REFERENCES Bildungstraeger(BNummer)
);
CREATE TABLE Teilnehmer (
    TNummer int PRIMARY KEY,
    Name varchar(100),
    FortbildungNummer int not null,
    CONSTRAINT fk_fortbildung FOREIGN KEY (FortbildungNummer) REFERENCES Fortbildung(FNummer)
)
