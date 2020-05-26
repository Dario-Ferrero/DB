create table Utente (data_inizio date, Nome_Utente varchar(255) unique, indirizzo_mail varchar(255) primary key, pasword varchar(255));

create table Star (foto bytea, altezza decimal(3,2), luogo_di_nascita varchar(255), data_di_nascita date, 
				   nome_cognome varchar(255), primary key (nome_cognome, data_di_nascita));

create table Notizia (corpo varchar, foto bytea, titolo varchar(255) primary key);

create table Publicazione (nome_utente varchar(255), titolo_notizia varchar (255), data_publicazione date, foreign key (nome_utente) references
						  Utente(indirizzo_mail), foreign key ( titolo_notizia) references notizia(titolo));

create table Contenuto (trama varchar, paese varchar(255), genere varchar(255), distribuzione varchar(255), anno smallint,
					   titolo varchar(255), voto_medio decimal(2,1), durata smallint, primary key (titolo, anno));
					   
create table Cinema (n_telefono integer, citta varchar (255), nome varchar(255), indirizzo varchar(255)primary key);

create table Episodio ( durata smallint, titolo varchar(255), stagione varchar(255), primary key (titolo, stagione));

create table piattaforma (sito_web varchar(255), nome varchar(255) primary key);

create table riferimento_star (star varchar (255), nascita_star date, notizia varchar(255),foreign key(star, nascita_star) references star(nome_cognome,data_di_nascita),foreign key(notizia) references 
							   notizia(titolo));
create table riferimento_contenuto (notizia varchar, contenuto varchar, anno_contenuto smallint, foreign key(notizia) references notizia(titolo), 
									foreign key(contenuto, anno_contenuto) references contenuto(titolo, anno));
create table recitazione ( nome_cognome_star varchar(255), anno_nascita_star date, contenuto varchar(255), anno_contenuto smallint, ruolo varchar(255),
						 foreign key(nome_cognome_star, anno_nascita_star) references star(nome_cognome, data_di_nascita), 
						  foreign key(contenuto, anno_contenuto) references contenuto(titolo, anno));
create table direzione_contenuto ( nome_cognome_star varchar(255), anno_nascita_star date, contenuto varchar(255), anno_contenuto smallint, ruolo varchar(255),
						 foreign key(nome_cognome_star, anno_nascita_star) references star(nome_cognome, data_di_nascita), 
						  foreign key(contenuto, anno_contenuto) references contenuto(titolo, anno));
create table direzione_episodio (nome_cognome_star varchar(255), anno_nascita_star date, titolo varchar(255), stagione varchar(255),
								 foreign key(nome_cognome_star, anno_nascita_star) references star(nome_cognome, data_di_nascita),
								 foreign key(titolo, stagione) references episodio(titolo, stagione));
create table preferisce (indirizzo_mail varchar(255), titolo varchar(255), anno_contenuto smallint, 
						foreign key(indirizzo_mail) references utente(indirizzo_mail),
						foreign key ( titolo, anno_contenuto) references contenuto(titolo, anno));
create table votazione (indirizzo_mail varchar(255), titolo varchar(255), anno_contenuto smallint, voto smallint,
						foreign key(indirizzo_mail) references utente(indirizzo_mail),
						foreign key ( titolo, anno_contenuto) references contenuto(titolo, anno));
create table rilascio (nome_piattaforma varchar (255), titolo varchar(255), anno_titolo smallint,
					  foreign key(nome_piattaforma) references piattaforma(nome),
					  foreign key( titolo, anno_titolo) references contenuto(titolo, anno));
create table trasmissione_film (nome_piattaforma varchar (255), titolo varchar(255), anno_titolo smallint, data_trasmissione date, ora time(3),
					  foreign key(nome_piattaforma) references piattaforma(nome),
					  foreign key( titolo, anno_titolo) references contenuto(titolo, anno));
create table trasmissione_episodio (nome_piattaforma varchar (255), titolo varchar(255), anno_titolo smallint, data_trasmissione date, ora time(3),
					  foreign key(nome_piattaforma) references piattaforma(nome),
					  foreign key( titolo, anno_titolo) references contenuto(titolo, anno));
create table proietta (titolo varchar(255), anno_contenuto smallint, indirizzo varchar(255), sala smallint, costo_biglietto decimal(4,2), data_proiezione date, ora time(3),
					  foreign key(titolo, anno_contenuto) references contenuto(titolo, anno),
					  foreign key( indirizzo) references cinema(indirizzo));
create table composizione_serie (titolo_episodio varchar(255), stagione varchar(255), titolo_contenuto varchar(255), anno smallint,
								foreign key(titolo_episodio, stagione) references episodio(titolo, stagione),
								foreign key(titolo_contenuto,anno) references contenuto(titolo, anno));
								
