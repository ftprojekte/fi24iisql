-- INSERT
INSERT INTO PERSON -- Tabelle in die eingefügt wird
(Nummer, Vorname, Nachname, Geburtsdatum, Jahre) -- Spaltennamen die im INSERT benanntwerden
VALUES -- VALUES für manuelle Werte, SELECT für Werte aus anderen Tabellen
(1, 'Matthias', 'Reimann', '01.01.1975', 50); -- Werte , getrennt, 'Zeichenkette', Zahl mit Dezimalpunkt
-- INSERT geht nur in eine Tabelle
-- SELECT
SELECT -- Schlüsselwort
Nummer, Vorname, Nachname, Geburtsdatum, Jahre -- Spaltennamen (* für alle) mit , getrennt optional mit " " oder AS alternative Spaltennamen
FROM PERSON -- Tabellenname, eine oder mehrere (Beziehungen)
WHERE Nummer = 1 ; -- Filter https://learn.microsoft.com/de-de/sql/t-sql/queries/search-condition-transact-sql?view=sql-server-ver16
-- Jeder Ausdruck ergibt TRUE oder FALSE je Zeile, nur die TRUE Zeilen werden ausgegeben
-- Die Spalten im WHERE müssen nicht nach dem SELECT aufgeführt werden
INSERT INTO PERSON -- Tabelle in die eingefügt wird
(Nummer, Vorname, Nachname, Geburtsdatum, Jahre) -- Spaltennamen die im INSERT benanntwerden
VALUES -- VALUES für manuelle Werte, SELECT für Werte aus anderen Tabellen
(2, 'Max', 'Mustermann', '01.01.1985', 40);
SELECT 
Nummer, Vorname, Nachname, Geburtsdatum, Jahre 
FROM PERSON 
WHERE Nummer = 2 ;
-- UPDATE Inhalt ändern - nur für eine Tabelle
UPDATE PERSON -- Nuer einen Tabellennamen
SET JAHRE = 49 -- Spaltenmanipilation per Zuweisung Ergebnis = Formel oder Wert - mehrere Spalten mit , getrennt
WHERE Nummer=1; -- Identisch mit SELECT
-- DELETE Löschen
DELETE FROM PERSON -- Welche Tabelle -> Eine Tabelle
WHERE Nummer=1; -- Identisch mit SELECT