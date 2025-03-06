-- Datensatzanfügen
INSERT INTO Fahrt ( Fahrt_nr, Datum, Ort, Preis_Fahrt)
VALUES (6789, '10.11.2017', 'Hamburg', 35.50);
SELECT * from Fahrt;
-- Wenn es falsch war
DELETE FROM Fahrt WHERE Fahrt_nr = 6789;
-- Dann nochmal