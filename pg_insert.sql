insert into Contenuto values ('Trama di Bad Boys for Life', 'USA', 'Azione', 'Sony Pictures Italia / Warner Bros. Pictures Italia', 2020, 'Bad Boys for Life', 0, 123);
insert into Contenuto values ('Trama di Sonic - Il Film', 'Giappone, USA, Canada', 'Azione, Animazione, Avventura', 'Paramount Pictures', 2020, 'Sonic - Il Film', 0, 100);
insert into Contenuto values ('Trama di Jojo Rabbit', 'Germania, USA', 'Commedia, Drammatico', 'Walt Disney Italia / 20th Century Fox', 2020, 'Jojo Rabbit', 0, 108);
insert into Contenuto values ('Trama di Doolittle', 'USA', 'Commedia', 'Universal Pictures', 2020, 'Doolittle', 0, 106);
insert into Contenuto values ('Trama film di Beautiful woman', 'USA', 'Commedia', 'Universal Pictures', 2020, 'Beautiful woman', 0, 112);
insert into Contenuto values ('Trama di c era una volta', 'USA', 'Commedia', 'Universal Pictures', 2020, E'C\'era una volta ad Hollywood', 0, 136);
insert into Contenuto values ('Trama Black Mirror', 'USA', 'Drammatico', 'Netflix', 2013, 'Black Mirror', 0, null);
insert into Contenuto values ('Trama Modern family', 'USA', 'Commedia', 'FOX', 2009, 'Modern family', 0, null);

insert into Episodio values (62, '15 milioni di celebrità', 'Stagione 1', 'Black Mirror', 2013);
insert into Episodio values (49, 'Ricordi pericolosi', 'Stagione 1', 'Black Mirror', 2013);
insert into Episodio values (52, 'Zitto e balla', 'Stagione 3', 'Black Mirror', 2013);
insert into Episodio values (22, 'Il lancio della zucca', 'Stagione 9', 'Modern family', 2009);

insert into Utente values ('2020-05-24', 'Polino08', 'paolo.lino@outlook.it', 'LinoPaolo08');
insert into Utente values ('2019-01-12', 'MarcoMonte', 'marco.ricco@gmail.it', 'Cashinback');
insert into Utente values ('2020-10-03', 'Cunico96', 'riccardo.cunico@gmail.it', 'conoMini');
insert into Utente values ('2018-12-12', 'Ciaone', 'patriza.cai@outlook.it', 'Pattyna');
insert into Utente values ('2010-05-28', 'Redazione ComingSoon', 'redazione@comingsoon.it', 'cs101a0m1n');

insert into Notizia values ('corpo della Notizia 1', null, 'Jennifer ancora piu bella nel nuovo film', 'marco.ricco@gmail.it', '2020-05-16');
insert into Notizia values ('corpo della Notizia Parasite', null, 'Leo miglior attore del mondo', 'riccardo.cunico@gmail.it', '2019-12-20');
insert into Notizia values ('corpo della Notizia Nolan', null, 'Nolan miglior regista del 2017', 'redazione@comingsoon.it', '2018-01-05');
insert into Notizia values ('corpo notizia su tarantino', null, 'Ad ogni film riesce a superarsi', 'paolo.lino@outlook.it', '2020-02-26');

insert into Star values ( null, 1.60, 'Italia', '1992-08-15', 'Albertino Sordi', 'Biografia di Albertino');
insert into Star values ( null, 1.70, 'USA', '1974-11-11', 'Leonardo Di Caprio', 'Biografia di Leonardo');
insert into Star values ( null, 1.59, 'USA', '1963-03-27', 'Quentin Tarantino', 'Bio di Quentin');
insert into Star values ( null, 1.55, 'USA', '1975-06-04', 'Angelina Jolie', 'Bio di Angelina');
insert into Star values ( null, 1.62, 'USA', '1969-02-11', 'Jennifer Aniston', 'Bio di Jennifer');
insert into Star values ( null, 1.80, 'USA', '1975-06-21', 'Jason Winer', 'Bio di Jason');
insert into Star values ( null, 1.80, 'USA', '1971-01-17', 'Otto Bathurst', 'Bio di Otto');

insert into Cinema values ( '3369567645', 'Torino', 'The Space', 'via del cinema');
insert into Cinema values ( '3346872535', 'Milano', 'The Space', 'piazza statuto');
insert into Cinema values ( '3325864777', 'Roma', 'Spaziale', 'rione dei monti');
insert into Cinema values ( '3369567123', 'Torino', 'The Space', 'via del parco');

insert into Proiezione values ('rione dei monti', 'Roma', 3, '2020-01-10', '19:30:00', 10.50);
insert into Proiezione values ('piazza statuto', 'Milano', 5, '2020-05-10', '21:30:00', 8.50);
insert into Proiezione values ('via del parco', 'Torino', 3, '2020-01-10', '19:30:00', 10.50);

insert into Piattaforma values ('www.netflix.it', 'Netflix');
insert into Piattaforma values ('www.amazonprimevideo.com', 'Prime video');
insert into Piattaforma values ('www.infinity.it', 'Infinity');
insert into Piattaforma values ('null', 'Italia 1');
insert into Piattaforma values ('null', 'FOX');

insert into Votazione values ('Modern family', 2009, '2012-12-21 15:30:00', 1);
insert into Votazione values ('Black Mirror', 2013, '2015-05-21 16:00:00', 3);
insert into Votazione values ('Modern family', 2009, '2020-06-01 17:13:00', 5);
insert into Votazione values ('Modern family', 2009, '2010-06-01 18:00:00', 5);
insert into Votazione values ('Beautiful woman', 2020, '2020-05-16 21:00:00', 2);
insert into Votazione values ('Jojo Rabbit', 2020, '2020-04-15 22:00:00', 5);

insert into RiferimentoStar values ('Jennifer Aniston', '1969-02-11', 'Jennifer ancora piu bella nel nuovo film', 'marco.ricco@gmail.it');
insert into RiferimentoStar values ('Leonardo Di Caprio', '1974-11-11', 'Leo miglior attore del mondo', 'riccardo.cunico@gmail.it');
insert into RiferimentoStar values ('Quentin Tarantino', '1963-03-27', 'Ad ogni film riesce a superarsi', 'paolo.lino@outlook.it');

insert into RiferimentoContenuto values ('Jennifer ancora piu bella nel nuovo film', 'marco.ricco@gmail.it', 'Beautiful woman', 2020);
insert into RiferimentoContenuto values ('Leo miglior attore del mondo', 'riccardo.cunico@gmail.it', E'C\'era una volta ad Hollywood', 2020);

insert into Recitazione values ('Leonardo Di Caprio', '1974-11-11', E'C\'era una volta ad Hollywood', 2020, 'Rick Dalton');
insert into Recitazione values ('Quentin Tarantino', '1963-03-27', E'C\'era una volta ad Hollywood', 2020, 'Comparsa');

insert into DirezioneFilm values ('Quentin Tarantino', '1963-03-27', E'C\'era una volta ad Hollywood', 2020);
insert into DirezioneFilm values ('Albertino Sordi', '1992-08-15', 'Doolittle', 2020);

insert into DirezioneEpisodio values ('Jason Winer', '1975-06-21', 'Il lancio della zucca', 'Stagione 9', 'Modern family', 2009);
insert into DirezioneEpisodio values ('Otto Bathurst', '1971-01-17', '15 milioni di celebrità', 'Stagione 1', 'Black Mirror', 2013);
insert into DirezioneEpisodio values ('Jason Winer', '1975-06-21', 'Zitto e balla', 'Stagione 3', 'Black Mirror', 2013);

insert into Preferisce values ( 'paolo.lino@outlook.it', 'Black Mirror', 2013);
insert into Preferisce values ( 'riccardo.cunico@gmail.it', 'Modern family', 2009);
insert into Preferisce values ( 'riccardo.cunico@gmail.it', 'Beautiful woman', 2020);
insert into Preferisce values ( 'marco.ricco@gmail.it', 'Doolittle', 2020);


insert into Rilascio values ('Netflix', 'Black Mirror', 2013);
insert into Rilascio values ('Infinity', 'Bad Boys for Life', 2020);
insert into Rilascio values ('Netflix', 'Beautiful woman', 2020);
insert into Rilascio values ('Infinity', 'Beautiful woman', 2020);

insert into TrasmissioneFilm values ('FOX', 'Bad Boys for Life', 2020, '2020-03-11', '18:00:00');
insert into TrasmissioneFilm values ('Italia 1', 'Beautiful woman', 2020, '2020-05-19', '21:00:00');
insert into TrasmissioneFilm values ('Italia 1', E'C\'era una volta ad Hollywood', 2020, '2020-05-18', '21:00:00');
insert into TrasmissioneFilm values ('Italia 1', 'Jojo Rabbit', 2020, '2020-05-17', '21:00:00');

insert into TrasmissioneEpisodio values ('FOX', 'Ricordi pericolosi', 'Stagione 1', 'Black Mirror', 2013, '2020-01-15', '21:00:00');
insert into TrasmissioneEpisodio values ('FOX', '15 milioni di celebrità', 'Stagione 1', 'Black Mirror', 2013, '2020-01-15', '23:00:00');
insert into TrasmissioneEpisodio values ('Italia 1', '15 milioni di celebrità', 'Stagione 1', 'Black Mirror', 2013, '2020-01-15', '23:00:00');

insert into UtenteVotante values ('riccardo.cunico@gmail.it', '2012-12-21 15:30:00');
insert into UtenteVotante values ('riccardo.cunico@gmail.it', '2015-05-21 16:00:00');
insert into UtenteVotante values ('marco.ricco@gmail.it', '2020-06-01 17:13:00');
insert into UtenteVotante values ('patriza.cai@outlook.it', '2010-06-01 18:00:00');
insert into UtenteVotante values ('patriza.cai@outlook.it', '2020-05-16 21:00:00');
insert into UtenteVotante values ('patriza.cai@outlook.it', '2020-04-15 22:00:00');

insert into FilmProiettato values (E'C\'era una volta ad Hollywood', 2020, 'rione dei monti', 'Roma', 3, '2020-01-10', '19:30:00');
insert into FilmProiettato values ('Jojo Rabbit', 2020, 'piazza statuto', 'Milano', 5, '2020-05-10', '21:30:00');
insert into FilmProiettato values (E'C\'era una volta ad Hollywood', 2020, 'via del parco', 'Torino', 3, '2020-01-10', '19:30:00');


