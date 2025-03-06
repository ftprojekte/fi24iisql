-- Fahrt Nr. 3333 die Preis_Zusatzleistung um 10,30 erhöhen
-- Step 1 Daten ansehen
SELECT * 
from Fahrt
where Fahrt_nr = 3333;
-- Step 2 Update
UPDATE Fahrt SET Preis_Zusatzleistung = Preis_Zusatzleistung + 10.30
where Fahrt_nr = 3333;
-- Step 3 Kontrolle
SELECT * 
from Fahrt
where Fahrt_nr = 3333;
-- Wiedeholung
DELETE FROM Fahrt where Fahrt_nr = 3333;
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 3333, '15.11.2017', 50, 'Hamburg', 4, 25.15, 0.00);