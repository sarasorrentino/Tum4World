CONNECT 'jdbc:derby:test; create=true';
create table ACCOUNTTYPE
(
    ID    INTEGER not null,
    VALUE VARCHAR(15),
    primary key (ID)
);

create table ATTIVITA
(
    ID   INTEGER not null,
    NOME VARCHAR(50),
    primary key (ID)
);

create table CONTATORI
(
    ID     INTEGER not null,
    NOME   VARCHAR(32),
    VALORE INTEGER,
    primary key (ID)
);

create table UTENTI
(
    NOME         VARCHAR(32),
    COGNOME      VARCHAR(32),
    DATA_NASCITA DATE,
    EMAIL        VARCHAR(50),
    TELEFONO     VARCHAR(15),
    USERNAME     VARCHAR(32) not null,
    PASSWORD     VARCHAR(32),
    TIPO_ACCOUNT INTEGER,
    primary key (USERNAME),
    foreign key (TIPO_ACCOUNT) references ACCOUNTTYPE
);

create table DONAZIONI
(
    ID       INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
    DATA     DATE,
    EURO     DOUBLE,
    DONATORE VARCHAR(32),
    primary key (ID),
    foreign key (DONATORE) references UTENTI
        on delete set null
);

create table ISCRIZIONI_ATTIVITA
(
    ID       INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
    USERNAME VARCHAR(32),
    ATTIVITA INTEGER,
    primary key (ID),
    foreign key (USERNAME) references UTENTI
        on delete cascade,
    foreign key (ATTIVITA) references ATTIVITA
);


