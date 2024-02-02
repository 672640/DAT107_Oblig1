create table BOMPENGAR_FOR_BILAR
(
    Registreringsnummer char(6),
--Litt usikker på denne datatypen, AA10000, så ei blanding av varchar2 og integer.
    Eier char(50),
    eierAdresse char(64),
    Epost char(40),
    Telefonnummer integer(8),
    Plassering char(64),
    Tidspunkt timestamp,
    Bompengebod integer,
    Utanlandsk boolean,
);