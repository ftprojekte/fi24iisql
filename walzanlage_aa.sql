-- Aufgabe Walzanlage aa
-- Anzeige OrderID 736298
SELECT -- Anzeige 
 Width, 
 Length, 
 Thickness, 
 Quantity -- Breite, Länge, Dicke, Anzahl
FROM ProductionData -- Tabelle
WHERE OrderID = 736298; -- Nur 736298