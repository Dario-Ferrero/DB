/*
 * Operazioni di modifica e cancellazione per verificare i vincoli
 */

-- Verifica modifica di Contenuto

update Contenuto 
set distribuzione = 'Warner Bros.',
	genere = 'Thriller',
	paese = 'Germania'
where titolo = 'Jojo Rabbit' and anno = 2020;

select * from Contenuto
where titolo = 'Jojo Rabbit' and anno = 2020
  and paese = 'Germania';
  
-- Verifica vincoli di foreign key di Notizia

delete from Utente where indirizzo_mail = 'marco.ricco@gmail.it';
-- (non dovrebbe restituire nulla)
select autore from Notizia
where titolo = 'Jennifer ancora piu bella nel nuovo film'
  and autore = 'marco.ricco@gmail.it';
  
-- Verifica vincoli di foreign key di Votazione

delete from Contenuto
where titolo = 'Modern family' and anno = 2009;
-- (non dovrebbe restituire nulla)
select * from Votazione
where contenuto = 'Modern family' and anno_contenuto = 2009;

-- Verifica vincoli di foreign key di TrasmissioneFilm

update Piattaforma set nome = 'Italia 4' where nome = 'Italia 1';

select * from TrasmissioneFilm
where piattaforma = 'Italia 4';

-- Verifica vincoli di foreign key di Proiezione

delete from Cinema
where città = 'Torino' and indirizzo = 'via del parco';
-- (non dovrebbe restituire nulla)
select * from Proiezione
where città_cinema = 'Torino' and indirizzo_cinema = 'via del parco';