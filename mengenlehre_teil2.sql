-- Mengenlehre und SQL / Datenbank
-- Grundlage aller Datenbanken sind die Daten in Tabellen
-- Abgrenzung sind alle Datenbanken die Daten nicht in Tabellen speichern
-- Ein Tabelle stellt theoretisch eine Menge dar
CREATE TABLE OBSTKORB_A (
INHALT varchar(100));
INSERT INTO OBSTKORB_A (INHALT) VALUES ('Birne'), ('Banane'),('Apfel');
-- Jetzt nehmen wir eine zweite Menge
CREATE TABLE OBSTKORB_B (
INHALT varchar(100));
INSERT INTO OBSTKORB_B (INHALT) VALUES ('Zitrone'), ('Orange'),('Apfel');
-- Jetzt haben wir 2 Tabellen und damit 2 Mengen von Information
-- Wie fragen beide Mengen gleichzeitig ab
SELECT * 
FROM OBSTKORB_A, OBSTKORB_B; -- Kreuztabellenabfrage
-- Mengenlehre unter beibehaltung der Paare
-- Klassiker der Paarbildung in der Mengenleer ist die Schnittmenge
-- Mengen benennen damit die Paare andere Spalten bekommen
SELECT A.INHALT A, B.INHALT B 
FROM OBSTKORB_A A, OBSTKORB_B B
WHERE A.INHALT=B.INHALT; -- Schnittmenge old School depricated
SELECT A.INHALT A, B.INHALT B 
FROM OBSTKORB_A A INNER JOIN OBSTKORB_B B ON A.INHALT=B.INHALT ; -- Schnittmenge als "JOIN" (Beziehung)
-- Linke Menge alle Elemente
SELECT A.INHALT A, B.INHALT B 
FROM OBSTKORB_A A LEFT OUTER JOIN OBSTKORB_B B ON A.INHALT=B.INHALT ; 
-- Rechte Menge alle Elemente (oder Links mit Tabellentausch)
SELECT A.INHALT A, B.INHALT B 
FROM OBSTKORB_A A RIGHT OUTER JOIN OBSTKORB_B B ON A.INHALT=B.INHALT ;
-- Steigerung ohne gleiche Paare
SELECT A.INHALT A, B.INHALT B 
FROM OBSTKORB_A A RIGHT OUTER JOIN OBSTKORB_B B ON A.INHALT=B.INHALT 
WHERE A.INHALT IS NULL;
-- In der Mengenlehre bei der Paarbildung nennt man eine feste Paarbildung (Regel) ein Beziehung
-- Im SQL ist das ein JOIN
