-- Tabelle Fahrt
create Table Fahrt (
Fahrt_nr int primary key, 
Datum date not null default getdate(),
Fahrtstrecke_km decimal(6,2),
Ort varchar(100), 
Anzahl_Fahrgaeste int, 
Preis_Fahrt decimal(6,2), 
Preis_Zusatzleistung decimal(6,2)
);

INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 1, '20.12.2017', 5, 'Hamburg', 2, 10.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 2, '01.11.2017', 10, 'Hamburg', 2, 12.15, 0.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 4, '02.11.2017', 15, 'Hamburg', 2, 20.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 5, '03.11.2017', 9, 'Hamburg', 2, 18.15, 0.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 6, '04.11.2017', 11, 'Hamburg', 2, 15.15, 2.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 10, '05.11.2017', 5, 'Hamburg', 2, 19.15, 0.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 11, '17.11.2017', 20, 'Hamburg', 2, 25.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 12, '17.11.2017', 35, 'Hamburg', 1, 30.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 13, '30.11.2017', 5, 'Hamburg', 4, 25.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 2367, '17.11.2017', 5, 'Braunschweig', 4, 25.15, 3.50);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 15, '10.11.2017', 5, 'Hamburg', 4, 25.15, 0.00);
INSERT INTO Fahrt ( Fahrt_nr, Datum,Fahrtstrecke_km,Ort, Anzahl_Fahrgaeste, Preis_Fahrt, Preis_Zusatzleistung )
   values ( 3333, '15.11.2017', 50, 'Hamburg', 4, 25.15, 0.00);
select * from Fahrt;