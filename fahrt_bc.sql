-- Summe Preise ohne Zusatzleistungen
-- Step 1 Preise
SELECT 
   Preis_Fahrt
From Fahrt;
-- Step 2 mit Zusatzleistung
SELECT 
   Preis_Fahrt, Preis_Zusatzleistung
From Fahrt;
-- Step 3 mit Zusatzleistung, Datum
SELECT 
   Preis_Fahrt, Preis_Zusatzleistung, Datum
From Fahrt
WHERE Datum = '10.11.2017';
-- Step 4a Summe ohne Summe Zusatzleistung
SELECT 
    SUM(Preis_Fahrt)
FROM fahrt
WHERE Datum='2017-11-10'
-- Step 4 Summe ohne Zusatzleistung
SELECT 
    SUM(Preis_Fahrt)
FROM fahrt
WHERE Datum='2017-11-10'
  AND Preis_Zusatzleistung=0
