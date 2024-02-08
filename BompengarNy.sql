Create table Bil
(
    Registreringsnummer char(6) Unique Not Null,
    Eier varchar(50),
    EierAdresse varchar(50),
    Epost char(30) Not Null,
    Telefon integer Not Null,
    Constraint RegNummer primary key (Registreringsnummer)
);

Create table Passering
(
    PasseringNr integer Unique Not Null,
    Registreringsnummer char(6) Unique Not Null,
    Tidspunkt timestamp Not Null,
    Bompenger smallint Not Null,
    Constraint PasseringID primary key (PasseringNr),
    Constraint Bilnummer foreign key (Registreringsnummer) 
    references Bil(Registreringsnummer)
    On delete cascade
);