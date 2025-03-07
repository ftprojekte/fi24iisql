-- Tabellen für das Modell Inventar
CREATE TABLE Inventargruppe (
    Inventargruppe_ID VARCHAR(5) PRIMARY KEY, 
    Inventargruppe_Bezeichnung varchar(100)
);
CREATE TABLE Lieferant (
    Lieferant_ID VARCHAR(5) PRIMARY KEY,
    Lieferant_Bezeichnung varchar(100)
);
CREATE TABLE Hersteller (
    Hersteller_ID VARCHAR(5) PRIMARY KEY,
    Hersteller_Bezeichnung varchar(100)
);
CREATE TABLE Inventar (
    Inventar_ID int, 
    Inventar_Bezeichnung varchar(100), 
    Inventargruppe_ID VARCHAR(5), 
    Lieferant_ID VARCHAR(5), 
    Hersteller_ID VARCHAR(5), 
    Anschaffungs_Datum date, 
    Anschaffungs_Preis decimal(5,2), 
    Nutzungsdaure_Jahre int,
    CONSTRAINT fk_Inventar FOREIGN KEY (Inventargruppe_ID) REFERENCES Inventargruppe(Inventargruppe_ID),
    CONSTRAINT fk_Lieferant FOREIGN KEY (Lieferant_ID) REFERENCES Lieferant(Lieferant_ID),
    CONSTRAINT fk_Hersteller FOREIGN KEY (Hersteller_ID) REFERENCES Hersteller(Hersteller_ID)
);