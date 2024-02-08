create table bompengar_bilar
(
    Registreringsnummer char(7),
--Litt usikker på denne datatypen, AA10000, så ei blanding av char og integer.
    Eigar char(50) NOT NULL,
    EigarAdresse char(64) NOT NULL,
    Epost char(40) UNIQUE,
    Telefonnummer integer UNIQUE NOT NULL,
    PRIMARY KEY (Telefonnummer)
--Vel telefonnummer her, sidan eigar og eigaradresse kan innehelde same verdiane, f.eks. viss dei har same namn eller bur i same bustaden.
);

create table bilinformasjon
(
    biltypen char(30) NOT NULL,
    Tidspunkt timestamp UNIQUE,
    Bompengebod integer NOT NULL,
    Utanlandsk boolean,
	PRIMARY KEY (tidspunkt)
)