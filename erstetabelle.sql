-- F�r den Wiederholungsfall
DROP TABLE PERSON;
-- Wie kommen die Daten in die Datenbank rein
-- Durch Digitalisierung
-- Reale Information -> Datentypen konvertieren
-- https://learn.microsoft.com/de-de/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
-- Ich digitalisiere mich mal
-- Alle Bezeichnungen aus dem Wortschatz von SQL sind ein Problem
CREATE TABLE PERSON
(Vorname varchar(100),
Nachname varchar(100),
Wohnort varchar(100),
Geburtsdatum date,
Jahre tinyint); 
-- varchar definiert ein Zeichenfolge die nur in der ben�tigten L�nge gespeichert wird bis zum maximalen Wert
-- date definiert eine Zahl die in unserer L�ndereinstellung als Datum dargestellt wird
-- Datenbanken speichern Datum und Uhrzeit neutral
-- Level 1 der Digitalisierung
-- Je gro�z�giger digitalisiert wird, umso mehr Daten und umso langsamer die Verarbeitung
-- Ein Gegenstand / Ereignis mit 5 Eigenschaften definiert
-- Ist das auch eine eindeutige Identit�t? ja/Nein -> Nein, hinzuf�gen
-- Wir f�gen eine Nummer hinzu, aber bitte jede Nummer nur einmal
alter table PERSON ADD
Nummer int primary key;
-- Eindeutig hei�t in SQL PRIMARY KEY

