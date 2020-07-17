create table Utente (
	data_inizio date,
	Nome_Utente varchar(50) unique not null,
	indirizzo_mail varchar(255) primary key,
	password varchar(255) not null
);

create table Star (
	foto bytea,
	altezza decimal(3,2) not null,
	luogo_di_nascita varchar(255) not null, 
	data_nascita date, 
	nome_cognome varchar(255),
	biografia varchar(5000) not null, default ' ',
	primary key (nome_cognome, data_nascita)
);

create table Notizia (
	corpo varchar(5000),
	foto bytea,
	titolo varchar(255),
	autore varchar(255) default 'redazione@comingsoon.it',
	data_pubblicazione date not null,
	primary key (titolo, autore),
	foreign key (autore) references Utente(indirizzo_mail)
		on update cascade
		on delete set default
);

create table Contenuto (
	trama varchar(5000) not null,
	paese varchar(255) not null,
	genere varchar(255) not null,
	distribuzione varchar(255),
	anno smallint,
	titolo varchar(255),
	voto_medio decimal(2,1) default 0,
	durata smallint,
	primary key (titolo, anno)
);

create table Cinema (
	numero_telefono varchar(30) unique,
	città varchar(255),
	nome varchar(255) not null,
	indirizzo varchar(255),
	primary key (indirizzo, città)
);

create table Proiezione (
	indirizzo_cinema varchar(255),
	città_cinema varchar(255),
	sala smallint,
	data_proiezione date,
	ora_proiezione time(0),
	costo_biglietto decimal(4,2),
	primary key (indirizzo_cinema, città_cinema, sala, data_proiezione, ora_proiezione),
	foreign key (indirizzo_cinema, città_cinema) references Cinema(indirizzo, città)
		on update cascade
		on delete cascade
);

create table Episodio (
	durata smallint not null,
	titolo varchar(255),
	stagione varchar(255),
	serie varchar(255),
	anno_serie smallint,
	primary key (titolo, stagione, serie, anno_serie),
	foreign key (serie, anno_serie) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table Piattaforma (
	sito_web varchar(255),
	nome varchar(255) primary key
);

create table Votazione (
	contenuto varchar(255),
	anno_contenuto smallint,
	timestamp_voto timestamp(0),
	voto smallint check (0 <= voto or voto <= 5),
	primary key (contenuto, anno_contenuto, timestamp_voto),
	foreign key (contenuto, anno_contenuto) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table RiferimentoStar (
	star varchar (255),
	data_nascita_star date,
	notizia varchar(255),
	autore_notizia varchar(255),
	primary key (star, data_nascita_star, notizia, autore_notizia),
	foreign key (star, data_nascita_star) references Star(nome_cognome, data_nascita)
		on update cascade
		on delete cascade,
	foreign key (notizia, autore_notizia) references Notizia(titolo, autore)
		on update cascade
		on delete cascade
);

create table RiferimentoContenuto (
	notizia varchar(255),
	autore_notizia varchar(255),
	contenuto varchar(255),
	anno_contenuto smallint,
	primary key (notizia, autore_notizia, contenuto, anno_contenuto),
	foreign key(notizia, autore_notizia) references Notizia(titolo, autore)
		on update cascade
		on delete cascade,
	foreign key(contenuto, anno_contenuto) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table Recitazione (
	attore varchar(255),
	data_nascita_attore date,
	contenuto varchar(255),
	anno_contenuto smallint,
	ruolo varchar(255) not null,
	primary key (attore, data_nascita_attore, contenuto, anno_contenuto),
	foreign key(attore, data_nascita_attore) references Star(nome_cognome, data_nascita)
		on update cascade
		on delete cascade,
	foreign key(contenuto, anno_contenuto) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table DirezioneFilm (
	regista varchar(255),
	data_nascita_regista date,
	film varchar(255),
	anno_film smallint,
	primary key (regista, data_nascita_regista, film, anno_film),
	foreign key(regista, data_nascita_regista) references Star(nome_cognome, data_nascita)
		on update cascade
		on delete cascade,
	foreign key(film, anno_film) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table DirezioneEpisodio (
	regista varchar(255),
	data_nascita_regista date,
	episodio varchar(255),
	stagione varchar(255),
	serie varchar(255),
	anno_serie smallint,
	primary key (regista, data_nascita_regista, episodio, stagione, serie, anno_serie),
	foreign key(regista, data_nascita_regista) references Star(nome_cognome, data_nascita)
		on update cascade
		on delete cascade,
	foreign key(episodio, stagione, serie, anno_serie) references Episodio(titolo, stagione, serie, anno_serie)
		on update cascade
		on delete cascade
);

create table Preferisce (
	utente varchar(255),
	contenuto varchar(255),
	anno_contenuto smallint,
	primary key (utente, contenuto, anno_contenuto),
	foreign key (utente) references Utente(indirizzo_mail)
		on update cascade
		on delete cascade,
	foreign key (contenuto, anno_contenuto) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table Rilascio (
	piattaforma varchar (255),
	contenuto varchar(255),
	anno_contenuto smallint,
	primary key (piattaforma, contenuto, anno_contenuto),
	foreign key(piattaforma) references Piattaforma(nome)
		on update cascade
		on delete cascade,
	foreign key(contenuto, anno_contenuto) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table TrasmissioneFilm (
	piattaforma varchar (255),
	film varchar(255),
	anno_film smallint,
	data_trasmissione date not null,
	ora_trasmissione time(0) not null,
	primary key (piattaforma, film, anno_film),
	foreign key (piattaforma) references Piattaforma(nome)
		on update cascade
		on delete cascade,
	foreign key (film, anno_film) references Contenuto(titolo, anno)
		on update cascade
		on delete cascade
);

create table TrasmissioneEpisodio (
	piattaforma varchar(255),
	episodio varchar(255),
	stagione varchar(255),
	serie varchar(255),
	anno_serie smallint,
	data_trasmissione date not null,
	ora_trasmissione time(0) not null,
	primary key (episodio, stagione, serie, anno_serie, piattaforma),
	foreign key (piattaforma) references Piattaforma(nome)
		on update cascade
		on delete cascade,
	foreign key (episodio, stagione, serie, anno_serie) references Episodio(titolo, stagione, serie, anno_serie)
		on update cascade
		on delete cascade
);

create table FilmProiettato (
	film varchar(255),
	anno_film smallint,
	indirizzo_cinema varchar(255),
	città_cinema varchar(255),
	sala smallint,
	data_proiezione date,
	ora_proiezione time(0),
	primary key (film, anno_film, indirizzo_cinema, città_cinema, sala, data_proiezione, ora_proiezione),
	foreign key (film, anno_film) references Contenuto(titolo, anno)
		on update cascade
		on delete set null,
	foreign key (indirizzo_cinema, città_cinema, sala, data_proiezione, ora_proiezione) references Proiezione(indirizzo_cinema, città_cinema, sala, data_proiezione, ora_proiezione)
		on update cascade,
		on delete cascade
);

create table UtenteVotante (
	utente varchar(255),
	timestamp_voto timestamp(0),
	primary key (utente, timestamp_voto),
	foreign key (utente) references Utente(indirizzo_mail)
		on update cascade
		on delete cascade,
	foreign key (timestamp_voto) references Votazione(timestamp_voto)
		on update cascade
		on delete cascade
);