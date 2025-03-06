-- Mengenlehre und SQL / Datenbank
-- Grundlage aller Datenbanken sind die Daten in Tabellen
-- Abgrenzung sind alle Datenbanken die Daten nicht in Tabellen speichern
-- Ein Tabelle stellt theoretisch eine Menge dar
CREATE TABLE OBSTKORB_A (
INHALT varchar(100));
INSERT INTO OBSTKORB_A (INHALT) VALUES ('Birne'), ('Banane'),('Apfel');
-- Aus der Menge OBSTKORB_A frage ich eine Menge ab.
-- Mengen können nach dem Tabellennamen benannt werde
-- MENGE A ist die Tabelle OBSTKORB_A unser SELECT ist eine MENGE B
SELECT INHALT FROM OBSTKORB_A B; 
-- OBSTKORB_A ist eine Menge A in der Datenbank
-- SELECT ist eine draus resultierende Menge B in der Anzeige unseres Clients
-- Zum Zeitpunkt der Abfrage ist Menge B gleich oder weniger als Menge A
(SELECT INHALT FROM OBSTKORB_A);  -- Das ist wieder eine Tabelle die temporär als Menge existiert
-- Menge B existiert unabhäbgig von Menge A
-- Jetzt nehmen wir eine zweite Menge
CREATE TABLE OBSTKORB_B (
INHALT varchar(100));
INSERT INTO OBSTKORB_B (INHALT) VALUES ('Zitrone'), ('Orange'),('Apfel');
-- Jetzt haben wir 2 Tabellen und damit 2 Mengen von Information
(SELECT INHALT FROM OBSTKORB_A);
(SELECT INHALT FROM OBSTKORB_A);
-- Wie fragen beide Mengen gleichzeitig ab
SELECT * 
FROM OBSTKORB_A, OBSTKORB_B; -- Kreuztabellenabfrage
-- Inhalt der Menge OBSTKORB_A und OBSTKORB_B
SELECT INHALT FROM OBSTKORB_A
UNION
SELECT INHALT FROM OBSTKORB_B;
-- Inhalt der Menge OBSTKORB_A und OBSTKORB_B inkl. doppelter Elemente
SELECT INHALT FROM OBSTKORB_A
UNION ALL
SELECT INHALT FROM OBSTKORB_B;
-- Doku: https://learn.microsoft.com/de-de/sql/t-sql/language-elements/set-operators-union-transact-sql?view=sql-server-ver16
-- In der Mengenlehre muss ein Element der Menge die gleiche Eigenschaft haben (Datentyp)
-- Schnittmenge zwischen OBSTKORB_A und OBSTKORB_B
SELECT INHALT FROM OBSTKORB_A
INTERSECT
SELECT INHALT FROM OBSTKORB_B;
-- Teilmenge OBSTKORB_A ohne OBSTKORB_B
SELECT INHALT FROM OBSTKORB_A
EXCEPT
SELECT INHALT FROM OBSTKORB_B; -- B ohne A -> Namen tauschen
-- Mengenlehre vertikal (in Spalten)
