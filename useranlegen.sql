-- Datenbankuser fr die Datenbank DIEERSTE
-- Ohne "" oder [] ist SQL ncht casesensitiv -> dieerste = DIEERSTE
-- Grundsätzlich arbeiten wir nicht mit [] oder "" wegen des SQL Standards
-- User für die Datenbankinstanz
CREATE LOGIN ersteruser WITH PASSWORD='erstespassword' , DEFAULT_DATABASE=DIEERSTE, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
-- Die F1 Taste auf einem SQL Wort führt zur Hilfe 
-- (F1 auf Login -> https://learn.microsoft.com/de-de/sql/t-sql/statements/create-login-transact-sql?view=sql-server-ver16&f1url=%3FappId%3DDev15IDEF1%26l%3DDE-DE%26k%3Dk(LOGIN_TSQL)%3Bk(sql13.swb.tsqlresults.f1)%3Bk(sql13.swb.tsqlquery.f1)%3Bk(MiscellaneousFilesProject)%3Bk(DevLang-TSQL)%26rd%3Dtrue)
-- User in die Datenbank reinlassen
USE DIEERSTE -- Dialogwechsel ind die Datenbank DIEERSTE
CREATE USER ersteruser FOR LOGIN ersteruser;
-- Jetzt kann sich der User anmelden
-- Jetzt braucht der User noch Rechte, in diesem Fall alle
ALTER ROLE db_owner ADD MEMBER ersteruser;

