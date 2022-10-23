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