create table FILME(
    film_id number primary key,
    titlu varchar2(255),
    durata number,
    data_lansare date
);
       
create table CINEMATOGRAFE(
    cinema_id number primary key,
    nume varchar(255),
    locatie_id number,
    capacitate number,
    foreign key(locatie_id) references LOCATII(locatie_id)
);
    
create table SALI_CINEMA(
    sala_id number primary key,
    cinema_id number,
    nr_sala number,
    capacitate number,
    foreign key (cinema_id) references CINEMATOGRAFE(cinema_id)
);
    
create table PROGRAM_PROIECTIE(
    program_id number primary key,
    film_id number,
    sala_id number,
    start_time timestamp,
    end_time timestamp,
    foreign key (film_id) references FILME(film_id),
    foreign key (sala_id) references SALI_CINEMA(sala_id)
);
    
select * from program_proiectie;
    
create table BILETE(
    bilet_id number primary key,
    program_id number,
    nr_scaun varchar2(10),
    pret number,
    status varchar(20),
    foreign key (program_id) references program_proiectie(program_id)
);
    
create table clienti(
    client_id number primary key,
    nume varchar2(255),
    prenume varchar2(255),
    email varchar2(255),
    nr_telefon varchar2(20)
);
    
create table rezervari(
    rezervare_id number primary key,
    client_id number,
    bilet_id number,
    data_rezervare date,
    foreign key (client_id) references clienti(clienti_id),
    foreign key (bilet_id) references bilete(bilet_id)
);
    
create table angajati(
    angajat_id number primary key,
    nume varchar2(255),
    prenume varchar2(255),
    cinema_id number,
    job_id number,
    salariu number,
    foreign key (cinema_id) references cinematografe(cinema_id),
    foreign key (job_id) references jobs(job_id)
);
    
create table recenzii(
    recenzie_id number primary key,
    film_id number,
    client_id number,
    rating number,
    data_recenzie date,
    foreign key (film_id) references filme(film_id),
    foreign key (client_id) references clienti(client_id)
);
    
create table jobs(
    job_id number primary key,
    titlu_job varchar2(255),
    range_salariu varchar2(100)
);
    
create table locatii(
    locatie_id number primary key,
    oras varchar2(255),
    tara varchar2(255)
);
        
create table genuri(
    gen_id number primary key,
    nume_gen varchar2(255)
);
        
create table filme_genuri(
    film_id number,
    gen_id number,
    primary key (film_id, gen_id),
    foreign key (film_id) references FILME(film_id),
    foreign key (gen_id) references GENURI(gen_id)
);

commit;