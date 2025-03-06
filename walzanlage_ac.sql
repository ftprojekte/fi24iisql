-- Walzanlage AUfgabe ac
-- Dicke = 2, Breite = 200, Länge = 300
SELECT * 
FROM ProductionData
WHERE Thickness = 2 
  AND Width = 200
  AND Length = 300;
-- Gesamtanzahl -> Summe der Inhalte aus Spalte Quantity
SELECT SUM(Quantity)
FROM ProductionData
WHERE Thickness = 2 
  AND Width = 200
  AND Length = 300;


