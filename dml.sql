-- INSERT
INSERT INTO PERSON -- Tabelle in die eingef�gt wird
(Nummer, Vorname, Nachname, Geburtsdatum, Jahre) -- Spaltennamen die im INSERT benanntwerden
VALUES -- VALUES f�r manuelle Werte, SELECT f�r Werte aus anderen Tabellen
(1, 'Matthias', 'Reimann', '01.01.1975', 50); -- Werte , getrennt, 'Zeichenkette', Zahl mit Dezimalpunkt
-- INSERT geht nur in eine Tabelle
-- SELECT
SELECT -- Schl�sselwort
Nummer, Vorname, Nachname, Geburtsdatum, Jahre -- Spaltennamen (* f�r alle) mit , getrennt optional mit " " oder AS alternative Spaltennamen
FROM PERSON -- Tabellenname, eine oder mehrere (Beziehungen)
WHERE Nummer = 1 ; -- Filter https://learn.microsoft.com/de-de/sql/t-sql/queries/search-condition-transact-sql?view=sql-server-ver16
-- Jeder Ausdruck ergibt TRUE oder FALSE je Zeile, nur die TRUE Zeilen werden ausgegeben
-- Die Spalten im WHERE m�ssen nicht nach dem SELECT aufgef�hrt werden
INSERT INTO PERSON -- Tabelle in die eingef�gt wird
(Nummer, Vorname, Nachname, Geburtsdatum, Jahre) -- Spaltennamen die im INSERT benanntwerden
VALUES -- VALUES f�r manuelle Werte, SELECT f�r Werte aus anderen Tabellen
(2, 'Max', 'Mustermann', '01.01.1985', 40);
SELECT 
Nummer, Vorname, Nachname, Geburtsdatum, Jahre 
FROM PERSON 
WHERE Nummer = 2 ;
-- UPDATE Inhalt �ndern - nur f�r eine Tabelle
UPDATE PERSON -- Nuer einen Tabellennamen
SET JAHRE = 49 -- Spaltenmanipilation per Zuweisung Ergebnis = Formel oder Wert - mehrere Spalten mit , getrennt
WHERE Nummer=1; -- Identisch mit SELECT
-- DELETE L�schen
DELETE FROM PERSON -- Welche Tabelle -> Eine Tabelle
WHERE Nummer=1; -- Identisch mit SELECT