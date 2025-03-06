-- Walzanlage Aufgabe ab
-- Alle Auftr�ge Dicke = 2 mm
SELECT * -- Spalten all, weil keine Vorgabe
FROM ProductionData -- Tabelle
WHERE Thickness = 2; -- Dicke 2 mm
-- Kann man die Datens�tze z�hlen?
-- Wechsel im SELECT zur Aggregatanzeige (Aggregat bedeutet Datens�tze zusammenfassen)
SELECT COUNT(OrderID) -- Keine Datens�tze, sondern eine Aggregatfunktion
FROM ProductionData -- Tabelle
WHERE Thickness = 2; -- Dicke 2 mm
-- �hnlichkeiten mit Excel sind nicht zufällig (au�er das die Funktionen auf Englisch sind)
