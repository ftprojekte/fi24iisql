-- Schlüsselwörter Objekte
-- CREATE, ALTER, DROP
-- Schlüsselwörter für DATEN
-- INSERT, UPDATE, DELETE, SELECT
-- Eine Person einfügen
INSERT INTO PERSON 
(Nummer, Vorname, Nachname, Geburtsdatum, Jahre) 
VALUES
(1, 'Matthias', 'Reimann', '01.01.1975', 50);
-- Inhalt abfragen
SELECT Nummer, Vorname, Nachname, Geburtsdatum, Jahre
FROM PERSON;
-- Änderungen
UPDATE PERSON SET JAHRE = 49
WHERE Nummer=1;
-- ist identisch mit ...
update person set jahre = 49
where nummer=1;
-- Inhalt abfragen
SELECT Nummer, Vorname, Nachname, Geburtsdatum, Jahre
FROM PERSON;
-- Löschen
DELETE FROM PERSON WHERE Nummer=1;
-- Inhalt abfragen
SELECT Nummer, Vorname, Nachname, Geburtsdatum, Jahre
FROM PERSON;