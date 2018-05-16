-- Projekt bazy danych "Rozgrywki piłkarskie"

-- Autorzy: Dominik Szostak, Radosław Lechowicz, Witold Wątroba

-- 1. Uzupełnienie tabel danymi:

INSERT INTO Stadiony(idStadionu, nazwa, miasto, liczbaMiejsc) VALUES
(1, 'Stadion Miejski im. Henryka Reymana', 'Kraków', 33130),
(2, 'Stadion im. Józefa Piłsudskiego', 'Kraków', 14572),
(3, 'Arena Zabrze', 'Zabrze', 24563),
(4, 'Stadion Wojska Polskiego', 'Warszawa', 30967);

INSERT INTO Trenerzy(idTrenera, imie, nazwisko, dataUrodzenia, narodowość) VALUES
(1, 'Joan', 'Carrillo', '1968-09-08', 'Hiszpania'),
(2, 'Michał', 'Probierz', '1972-09-24', 'Polska'),
(3, 'Marcin', 'Brosz', '1973-04-11', 'Polska'),
(4, 'Romeo', 'Jozak', '1972-10-11', 'Chorwacja');

INSERT INTO Kluby(idKlubu, idStadionu, idTrenera, nazwa, miasto, rokZalozenia) VALUES
(1, 1, 1, 'Wisła Kraków', 'Kraków', 1906),
(2, 2, 2, 'KS Cracovia', 'Kraków', 1906),
(3, 3, 3, 'Górnik Zabrze', 'Zabrze', 1948),
(4, 4, 4, 'Legia Warszawa', 'Warszawa', 1916);

INSERT INTO Zawodnicy(idZawodnika, idKlubu, poprzedniKlub, imie, nazwisko, dataUrodzenia, narodowosc, lepszaNoga) VALUES
(1, 1, NULL, 'Carlos', 'Lopez', '1990-06-12', 'Hiszpania', 'prawa'),
(2, 2, NULL, 'Krzysztof', 'Piątek', '1995-07-01', 'Polska', 'prawa'),
(3, 3, NULL, 'Dani', 'Suarez', '1990-05-07', 'Hiszpania', 'prawa'),
(4, 3, NULL, 'Igor', 'Angulo', '1984-01-26', 'Hiszpania', 'lewa'),
(5, 4, NULL, 'Armando', 'Sadiku', '1991-05-27', 'Albania', 'prawa'),
(6, 1, NULL, 'Rafał', 'Boguski', '1984-06-09', 'Polska', 'prawa'),
(7, 3, 1, 'Rafał', 'Kurzawa', '1993-01-29', 'Polska', 'lewa'),
(8, 3, NULL, 'Szymon', 'Żurkowski', '1997-09-25', 'Polska', 'prawa'),
(9, 4, NULL, 'Thibault', 'Moulin', '1990-01-13', 'Francja', 'prawa'),
(10, 4, 3, 'Jarosław', 'Niezgoda', '1995-03-15', 'Polska', 'obie'),
(11, 3, 4, 'Michał', 'Koj', '1993-07-28', 'Polska', 'lewa'),
(12, 3, NULL, 'Łukasz', 'Wolsztyński', '1994-12-08', 'Polska', 'prawa'),
(13, 3, NULL, 'Rafał', 'Wolsztyński', '1994-12-08', 'Polska', 'prawa'),
(14, 2, NULL, 'Sergei', 'Zenjov', '1989-04-20', 'Estonia', 'prawa'),
(15, 2, NULL, 'Tomas', 'Vestenicky', '1996-04-06', 'Słowacja', 'prawa'),
(16, 2, NULL, 'Jaroslav', 'Mihalik', '1994-07-27', 'Słowacja', 'prawa'),
(17, 1, NULL, 'Paweł', 'Brożek', '1983-04-21', 'Polska', 'prawa'),
(18, 4, NULL, 'Michał', 'Kucharczyk', '1991-03-20', 'Polska', 'prawa');

INSERT INTO Sedziowe(idSedziego, imie, nazwisko, dataUrodzenia, miasto) VALUES
(1, 'Szymon', 'Marciniak', '1981-01-07', 'Płock'),
(2, 'Tomasz', 'Musiał', '1981-02-19', 'Kraków'),
(3, 'Daniel', 'Stefański', '1977-07-02', 'Bydgoszcz'),
(4, 'Paweł', 'Raczkowski', '1983-05-10', 'Warszawa'),
(5, 'Paweł', 'Gil', '1976-06-28', 'Lublin'),
(6, 'Krzysztof', 'Jakubik', '1982-07-20', 'Siedlce');

INSERT INTO Mecze(idMeczu, idGosp, idGosc, idSedziego, data, wynikGosp, wynikGosc) VALUES
(1, 1, 2, 1, '2017-09-01', 0, 0),
(2, 3, 4, 3, '2017-09-01', 0, 0),
(3, 1, 3, 2, '2017-09-08', 0, 0),
(4, 2, 4, 4, '2017-09-08', 0, 0),
(5, 4, 1, 1, '2017-09-15', 0, 0),
(6, 3, 2, 2, '2017-09-15', 0, 0),

INSERT INTO Gole(idGola, idMeczu, idKlubu, idStrzelca, idAsystenta) VALUES
(1, 1, 1, 1, 6),
(2, 1, 1, 1, 17),
(3, 1, 2, 2, 14),
(4, 2, 3, 3, 4),
(5, 2, 3, 4, 7),
(6, 2, 3, 4, 8),
(7, 2, 4, 5, 9),
(8, 3, 1, 6, 17),
(9, 3, 1, 1, 17),
(10, 3, 3, 4, 7),
(11, 3, 3, 7, 8),
(12, 3, 3, 8, 11),
(13, 4, 4, 9, 10),
(14, 5, 4, 10, 5),
(15, 6, 3, 11, 12),
(16, 6, 3, 12, 13),
(17, 6, 3, 13, 3),
(18, 6, 2, 14, 15),
(19, 6, 2, 2, 15),
(20, 6, 2, 2, 16);

INSERT INTO Kibice(idKibica, imie, nazwisko, dataUrodzenia, adres, telefon, email) VALUES
(1, 'Jan', 'Nowak', '1985-01-02', 'Kraków, Długa 13', 123456789, 'janek@gmail.com'),
(2, 'Stanisław', 'Kowalski', '1954-12-30', 'Kraków, Krótka 31', 234567890, 'stan@wp.pl'),
(3, 'Andrzej', 'Wiśniewski', '2002-02-03', 'Kraków, Średnia 22', 345678901, 'endrju@buziaczek.pl'),
(4, 'Józef', 'Wójcik', '1966-11-29', 'Wieliczka, Solna 1', 456789012, 'jozek@onet.eu'),
(5, 'Tadeusz', 'Nowak', '2000-03-04', 'Niepołomice, Krakowska 2', 567890123, 'tadek@interia.pl'),
(6, 'Maria', 'Wójcik', '2004-10-28', 'Kraków, Nowa 3', 678901234, 'merry@gmail.com'),
(7, 'Krystyna', 'Woźniak', '1967-04-05', 'Gliwice, Kopalniana 4', 789012345, 'krysia@hotmail.com'),
(8, 'Anna', 'Nowak', '1991-09-27', 'Zabrze, Sportowa 15', 890123456, 'nowaczka@wp.pl'),
(9, 'Jerzy', 'Nowak', '1987-05-06', 'Zabrze, Sportowa 15' 901234567, 'nowaczek@interia.pl'),
(10, 'Zbigniew', 'Wiśniewski', '1960-08-26', 'Pruszków, Warszawska 26', 142356978, 'zbyszko@onet.pl'),
(11, 'Krzysztof', 'Kowalski', '2001-06-07', 'Warszawa, Długa 7', 413259687, 'kris@gmail.com'),
(12, 'Henryk', 'Kowalski', '1972-07-15', 'Warszawa, Nowa 99', 512345678, 'heniek@interia.eu');

INSERT INTO Bilety(idBiletu, idMeczu, idKibica, cena, oplacony) VALUES
(1, 1, 1, 20, True),
(2, 1, 1, 20, True),
(3, 1, 1, 20, False),
(4, 1, 1, 20, True),
(5, 2, 1, 25, True),
(6, 2, 1, 25, True),
(7, 2, 1, 25, True),
(8, 2, 1, 25, False),
(9, 3, 1, 30, False),
(10, 3, 1, 30, True),
(11, 3, 1, 30, True),
(12, 4, 1, 15, True),
(13, 4, 1, 15, True),
(14, 4, 1, 15, True),
(15, 5, 1, 23, True),
(16, 5, 1, 23, False),
(17, 5, 1, 23, True),
(18, 6, 1, 28, True),
(19, 6, 1, 28, True),
(20, 6, 1, 28, False);

-- 2a. Zdefiniowanie kwerend prostych:

-- Znajduje mecze rozegrane w rundzie jesiennej
CREATE VIEW kwerenda_A1_query AS
SELECT idMeczu, idGosp, idGosc, wynikGosp, wynikGosc FROM Mecze WHERE Data BETWEEN '2017-07-01' AND '2017-12-31';

-- Znajduje stadiony znajdujące się w Krakowie, Tarnowie lub Nowym Sączu
CREATE VIEW kwerenda_A2_query AS
SELECT nazwa, liczba miejsc FROM Stadiony WHERE miejscowosc IN('Kraków', 'Tarnów', 'Nowy Sącz');

-- Znajduje mecze wygrane przez drużynę gospodarzy
CREATE VIEW kwerenda_A3_query AS
SELECT * FROM Mecze WHERE wynikGosp>wynikGosc;

-- Znajduje zawodników, którzy grali wcześniej dla innego klubu będącego w bazie danych
CREATE VIEW kwerenda_A4_query AS
SELECT imie, nazwisko, idKlubu, poprzedniKlub FROM Zawodnicy WHERE poprzedniKlub IS NOT NULL;

-- Znajduje zawodników narodowości polskiej, którzy są lewonożni lub obunożni
CREATE VIEW kwerenda_A5_query AS
SELECT imie, nazwisko, lepszaNoga, narodowosc FROM Zawodnicy WHERE lepszaNoga IN('lewa','obie') AND narodowosc = 'Polska';

-- 2b. Zdefiniowanie kwerend złożonych:

-- Oblicza średnią ilość miejsc na stadionie
CREATE VIEW kwerenda_B1_query AS
SELECT AVG(liczbaMiejsc) AS "Srednia ilosc miejsc" FROM Stadiony;

-- Zlicza ilość zawodników poszczególnych narodowości
CREATE VIEW kwerenda_B2_query AS
SELECT narodowosc, COUNT(narodowosc) FROM Zawodnicy GROUP BY narodowosc ORDER BY COUNT(narodowosc) DESC;

-- Znajduje wszystkie mecze krakowskich klubów 
CREATE VIEW kwerenda_B3_query AS
SELECT idMeczu, idGosp, idGosc FROM Mecze WHERE idGosp IN 
(SELECT idKlubu FROM Kluby WHERE miasto = 'Kraków');

-- Znajduje stadiony o pojemności powyżej średniej rozgrywek
CREATE VIEW kwerenda_B4_query AS
SELECT nazwa, miasto, liczbaMiejsc FROM Stadiony
WHERE liczbaMiejsc > (SELECT AVG(liczbaMiejsc) FROM Stadiony);

-- Znajduje drużyny, które strzelają jako gospodarze więcej goli, niż wynosi średnia liczba strzelonych bramek przez gospodarzy w rozgrywkach
CREATE VIEW kwerenda_B5_query AS
SELECT idKlubu AS Klub, nazwa, miasto FROM Kluby k
WHERE (SELECT AVG(wynikGosp) FROM Mecze m WHERE k.idKlubu = m.idGosp) > (SELECT AVG(wynikGosp) FROM Mecze);

-- Zlicza przychody ze sprzedaży biletów w poszczególnych meczach
CREATE VIEW kwerenda_B6_query AS
SELECT idMeczu, SUM(cena) FROM Bilety
WHERE Bilety.oplacony=True GROUP BY idMeczu ORDER BY SUM(cena) DESC;

-- Znajduje zawodników, którzy nie strzelili żadnego gola
CREATE VIEW kwerenda_B7_query AS
SELECT DISTINCT imie, nazwisko
FROM Zawodnicy WHERE idZawodnika NOT IN (SELECT idStrzelca FROM Gole); 

-- Zlicza ilość meczów sędziowanych przez poszczególnych sędziów
CREATE VIEW kwerenda_B8_query AS
SELECT imie, nazwisko, COUNT(idMeczu) AS 'Ilosc meczow' 
FROM Sedziowie NATURAL JOIN Mecze GROUP BY imie, nazwisko ORDER BY COUNT(idMeczu) DESC;

-- Znajduje dane kibiców, którzy mają nieopłacone bilety
CREATE VIEW kwerenda_B9_query AS
SELECT imie, nazwisko, telefon, email, idBiletu, idMeczu, cena
FROM Bilety NATURAL JOIN Kibice WHERE oplacony=False;

-- Znajduje datę ostatnio strzelonej bramki przez poszczególnych zawodników
CREATE VIEW kwerenda_B10_query AS
SELECT Gole.idStrzelca, MAX(data) AS 'Ostatni gol'
FROM Gole INNER JOIN Mecze ON Gole.idMeczu = Mecze.idMeczu GROUP BY Gole.idStrzelca;

-- 3. Implementacja wyzwalaczy:

-- Wyzwalacz rejestrujący każdą zmianę wartości ceny biletu wprowadzaną w tabeli Bilety
CREATE TABLE logs (idBiletu INTEGER, old_value MONEY, new_value MONEY, log_who VARCHAR(100), log_when TIMESTAMP);
CREATE OR REPLACE FUNCTION zmiany_cen() RETURNS TRIGGER AS $zmiany$
BEGIN
	IF(TG_OP = 'UPDATE') THEN
		INSERT INTO logs SELECT Bilety.idBiletu, OLD.cena, NEW.cena, user, now();
		RETURN NEW;
	END IF;
	RETURN NULL;
END;
$zmiany$ LANGUAGE plpgsql;
CREATE TRIGGER operacje_ceny AFTER UPDATE
ON Bilety FOR EACH ROW
EXECUTE PROCEDURE zmiany_cen();

-- Wyzwalacz sprawdzający czy ilość sprzedawanych biletów nie przekracza pojemności stadionu
CREATE OR REPLACE FUNCTION sprzedaz() RETURNS TRIGGER AS $sprzedaz$
BEGIN
	IF(TG_OP = 'INSERT') THEN
		IF(SELECT COUNT(idBiletu) FROM Bilety WHERE idMeczu=NEW.idMeczu < SELECT liczbaMiejsc FROM Stadiony WHERE idStadionu=NEW.idStadionu) THEN
			RETURN NEW;
		END IF;
	END IF;
	RETURN NULL;
END;
$sprzedaz$ LANGUAGE plpgsql;
CREATE TRIGGER sprzedaz_biletu BEFORE INSERT
ON Bilety FOR EACH ROW
EXECUTE PROCEDURE sprzedaz();

-- 4. Implementacja funkcji w języku proceduralnym Pl/pgSQL:

-- Funkcja zwraca ilość goli strzelonych przez zawodnika o id podanym jako argument funkcji
CREATE OR REPLACE FUNCTION ilosc_bramek(idStrzelca integer) RETURNS INTEGER AS $IB$
DECLARE
	ilosc_bramek integer;
BEGIN
	SELECT COUNT(*) INTO STRICT ilosc_bramek
	FROM Gole 
	WHERE idStrzelca = $1;

  	IF ilosc_bramek = 0 THEN
  		RAISE NOTICE 'Wybrany zawodnik nie trafil zadnej bramki';
  	END IF;

  	RETURN liczba_bramek;
END;
$IB$ LANGUAGE 'plpgsql';

-- Funkcja zwraca stadiony o liczbie miejsc większej niż podana jako argument funkcji
CREATE TYPE wieksze_stadiony_wynik AS(nazwa text, wiekszy bool);
CREATE FUNCTION wieksze_stadiony(miejsca integer) RETURNS SETOF wieksze_stadiony_wynik AS $BODY$
DECLARE
	s Stadiony%rowtype;
BEGIN
	FOR s IN SELECT * FROM Stadiony LOOP
		IF s.liczbaMiejsc > miejsca THEN
			RETURN QUERY (SELECT s.nazwa, true AS wiekszy);
		ELSE
			RETURN QUERY (SELECT s.nazwa, false AS wiekszy);
		END IF;
	END LOOP;
RETURN;
END;
$BODY$
LANGUAGE ’plpgsql’;

-- Funkcja dodająca liczbę miejsc na stadionie o wartość podaną jako 2. argument funkcji dla stadionu o id podanym jako 1. argument funkcji
CREATE FUNCTION powieksz_stadion(idStad integer, nowemiejsca integer) RETURNS INTEGER AS $COMPLETE$
DECLARE
	s Stadiony%rowtype;
    	i INTEGER := 0;
BEGIN
	FOR s IN SELECT * FROM Stadiony LOOP
		IF s.idStadionu = idStad THEN
			UPDATE Stadiony SET liczbaMiejsc = miejsca WHERE idStadionu = idStad;
            			i := i + 1;
		END IF;
	END LOOP;
RETURN i;
END;
$COMPLETE$ LANGUAGE ’plpgsql’;