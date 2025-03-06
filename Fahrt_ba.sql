-- längste Fahrtstrecke
SELECT Fahrtstrecke_km from fahrt;
-- Zusammenfassen mit einer Aggregatfunktion
SELECT 
    MAX(Fahrtstrecke_km) AS km -- AS km neuer Spaltenname (AS ist depricated)
FROM Fahrt;
SELECT 
    MAX(Fahrtstrecke_km) km -- AS ist depricated
FROM Fahrt;
-- Sortierung
SELECT 
    Fahrtstrecke_km 
from fahrt
order by Fahrtstrecke_km; -- sortiere das Ergebnis aufwärts
-- oder 
SELECT 
    Fahrtstrecke_km 
from fahrt
order by Fahrtstrecke_km desc; -- sortiere das Ergebnis abwärts
