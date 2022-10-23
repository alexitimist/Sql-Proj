

SELECT AVG(Kategoria.ocena) AS "Srednia Ocena" FROM Kategoria;
SELECT COUNT(ID_ksiazka) AS "Ilosc Ksiazek" FROM Ksiazka;
SELECT COUNT(Ksiazka.ID_ksiazka) AS "Ilosc Ksiazek Andrzeja" FROM Ksiazka JOIN Autor ON Autor.ID_autor=Ksiazka.id_autor WHERE Autor.imie="Andrzej";
SELECT MIN(Ksiazka.Data_Wydania) AS "Pierwsza Ksiazka Andrzeja "FROM Ksiazka JOIN Kategoria ON Kategoria.ID_kategoria=Ksiazka.id_kategoria JOIN Autor ON Autor.ID_autor=Ksiazka.id_autor WHERE Kategoria.nazwa="fantasy" AND Autor.imie="Andrzej";
SELECT MAX(Wypozyczenie.poczatek) AS "Najnowsze Wypozyczenie" FROM Wypozyczenie;


SELECT * FROM Czytelnik;

DELETE FROM Czytelnik 
WHERE ID_czytelnik = 8;

UPDATE Czytelnik
SET  Email = 'no.al@gmail.com', Numer_Telefonu = 696969696
WHERE Imie = 'Mikolaj' AND Nazwisko = 'Pretki';

INSERT INTO Czytelnik VALUES 
(0, 'Artur', 'Piersa', 'artur.p@gmail.com', '104859374', FALSE, NULL);

SELECT * FROM Czytelnik;
#Sprawdzenie Poprawnosci Daty Wydnaia
SELECT ID_Ksiazka,Data_Wydania FROM Ksiazka WHERE Data_Wydania>CURRENT_DATE();
#Sprawdzenie czy adres e-mail to adres e-mail
SELECT ID_czytelnik,Email FROM Czytelnik WHERE NOT email REGEXP '@';
SELECT ID_pracownik,Email FROM Pracownik WHERE NOT email REGEXP '@';
#Sprawdzenie czy w numerze telefonu sa same liczby
SELECT ID_pracownik,numer_telefonu FROM Pracownik WHERE numer_telefonu REGEXP '[a-z],[A-Z]';
SELECT ID_czytelnik,numer_telefonu FROM Czytelnik WHERE numer_telefonu REGEXP '[a-z],[A-Z]';
#Sprawdzenie poprawnosc dzialania triggera, poczatek wypozyczenia nie moze byc po jego koncu
SELECT ID_wypozyczenie, poczatek, koniec FROM Wypozyczenie WHERE poczatek>koniec;
