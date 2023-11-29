--- popularea tabelelor

-- 1. genuri

insert all
into genuri(gen_id, nume_gen) values (1000,'Actiune')
into genuri(gen_id, nume_gen) values (1001,'Comedie')
into genuri(gen_id, nume_gen) values (1002,'Drama')
into genuri(gen_id, nume_gen) values (1003,'Horror')
into genuri(gen_id, nume_gen) values (1004,'SF')
into genuri(gen_id, nume_gen) values (1005,'Romantic')
into genuri(gen_id, nume_gen) values (1006,'Thriller')
into genuri(gen_id, nume_gen) values (1007,'Documentar')
into genuri(gen_id, nume_gen) values (1008,'Animatie')
into genuri(gen_id, nume_gen) values (1009,'Mister')
select 1 from dual;

-- 2. filme

INSERT ALL
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10000, 'The Grand Budapest Hotel', 100, TO_DATE('2014-03-21', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10001, 'Inception', 148, TO_DATE('2010-07-16', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10002, 'Avengers: Endgame', 181, TO_DATE('2019-04-26', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10003, 'The Matrix', 136, TO_DATE('1990-03-31', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10004, 'March of The Penguins', 80, TO_DATE('2005-01-26', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10005, 'Man on Wire', 94, TO_DATE('2008-07-25', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10006, 'The Hangover', 100, TO_DATE('2009-06-05', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10007, 'Superbad', 113, TO_DATE('2007-08-17', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10008, 'The Conjuring', 112, TO_DATE('2013-07-19', 'YYYY-MM-DD'))
    INTO FILME (film_id, titlu, durata, data_lansare) VALUES (10009, 'Coco', 105, TO_DATE('2017-10-20', 'YYYY-MM-DD'))
SELECT * FROM dual;

-- 3. locatii

insert all
    into locatii (locatie_id, oras, tara) values (1, 'Bucuresti', 'Romania')
    into locatii (locatie_id, oras, tara) values (2, 'Cluj-Napoca', 'Romania')
    into locatii (locatie_id, oras, tara) values (3, 'Pitesti', 'Romania')
    into locatii (locatie_id, oras, tara) values (4, 'Craiova', 'Romania')
    into locatii (locatie_id, oras, tara) values (5, 'Brasov', 'Romania')
select 1 from dual;

-- 4. cinematografe

insert all
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (500, 'Cineverse Bucuresti', 1, 600)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (501, 'GalaxyGlobe', 2, 350)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (502, 'Dream Cinema Bucuresti', 1, 300)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (503, 'Cinemagia', 3, 250)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (504, 'Cinema Enigma', 4, 300)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (505, 'Cineverse Pitesti', 3, 300)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (506, 'Cineverse Craiova', 4, 300)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (507, 'Cineverse Brasov', 5, 300)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (508, 'Dream Cinema Pitesti', 3, 200)
    into cinematografe (cinema_id, nume, locatie_id, capacitate) values (509, 'Dream Cinema Brasov', 5, 200)
select 1 from dual;

-- 5. sali_cinema

insert all
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3000, 500, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3001, 500, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3002, 500, 3, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3003, 500, 4, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3004, 501, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3005, 501, 2, 200)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3006, 502, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3007, 502, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3008, 503, 1, 100)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3009, 503, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3010, 504, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3011, 504, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3012, 505, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3013, 505, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3014, 506, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3015, 506, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3016, 507, 1, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3017, 507, 2, 150)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3018, 508, 1, 100)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3019, 508, 2, 100)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3020, 509, 1, 100)
    into sali_cinema (sala_id, cinema_id, nr_sala, capacitate) values (3021, 509, 2, 100)
select 1 from dual;  

-- 6. programe_proiectie

insert all
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (1, 10000, 3000, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (2, 10000, 3005, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (3, 10000, 3010, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (4, 10000, 3015, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (5, 10000, 3020, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (6, 10001, 3001, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (7, 10001, 3006, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (8, 10001, 3011, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (9, 10001, 3016, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (10, 10001, 3021, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (11, 10002, 3002, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (12, 10002, 3007, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (13, 10002, 3012, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
    
    into program_proiectie (program_id, film_id, sala_id, start_time, end_time)
    values (14, 10002, 3017, to_timestamp('2023-05-29 10:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_timestamp('2023-05-29 11:40:00', 'yyyy-mm-dd hh24:mi:ss'))
select 1 from dual;

-- 7. jobs

insert all
    into jobs (job_id, titlu_job, range_salariu) values (110, 'manager', '3500-8000')
    into jobs (job_id, titlu_job, range_salariu) values (120, 'casier', '2500-4500')
    into jobs (job_id, titlu_job, range_salariu) values (130, 'usher', '2500-4000')
    into jobs (job_id, titlu_job, range_salariu) values (140, 'tehnician de proiectie', '3000-6000')
    into jobs (job_id, titlu_job, range_salariu) values (150, 'personal de intretinere', '2200-3500')
select 1 from dual;  


-- 8. clienti

insert all
    into clienti (client_id, nume, prenume, email, nr_telefon) values (1, 'Popescu', 'Ion', 'ion.popescu@gmail.com', '0712345678')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (2, 'Ionescu', 'Maria', 'maria.ionescu@gmail.com', '0721234567')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (3, 'Radu', 'Andrei', 'andrei.radu@gmail.com', '0732123456')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (4, 'Popa', 'Elena', 'elena.popa@gmail.com', '0743212345')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (5, 'Mihai', 'Ana', 'ana.mihai@gmail.com', '0754321234')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (6, 'Georgescu', 'Alexandru', 'alexandru.georgescu@gmail.com', '0765432123')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (7, 'Constantin', 'Diana', 'diana.constantin@gmail.com', '0776543212')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (8, 'Stancu', 'Mihai', 'mihai.stancu@gmail.com', '0787654321')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (9, 'Dumitrescu', 'Laura', 'laura.dumitrescu@gmail.com', '0798765432')
    into clienti (client_id, nume, prenume, email, nr_telefon) values (10, 'Gheorghe', 'Vlad', 'vlad.gheorghe@gmail.com', '0799843561')
select 1 from dual;

insert into clienti (client_id, nume, prenume, email, nr_telefon) values (11, 'Gheorghe', 'Dumitru', 'dumitru.gheorghe@gmail.com', '0000000000');
insert into clienti (client_id, nume, prenume, email, nr_telefon) values (12, 'Dumitru', 'Alex', null, '0799783561');
insert into clienti (client_id, nume, prenume, email, nr_telefon) values (13, 'Gheorghe', 'Dumitru', 'dumitru.gheorghe@gmail.com', null);


-- 9. bilete

insert all
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20000, 1, 'A1', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20001, 2, 'A2', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20002, 3, 'A3', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20003, 4, 'A4', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20004, 5, 'A5', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20005, 6, 'A6', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20006, 7, 'A7', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20007, 8, 'A8', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20008, 9, 'A9', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20009, 10, 'A10', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20010, 11, 'B1', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20011, 12, 'B2', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20012, 13, 'B3', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20013, 14, 'B4', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20014, 1, 'B5', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20015, 2, 'B6', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20016, 3, 'B7', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20017, 4, 'B8', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20018, 5, 'B9', 20, 'disponibil')
    into bilete (bilet_id, program_id, nr_scaun, pret, status) values (20019, 6, 'B10', 20, 'disponibil')

10. rezervari


insert all
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (1, 1, 20000, to_date('2023-05-24', 'yyyy-mm-dd'))
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (2, 2, 20001, to_date('2023-05-25', 'yyyy-mm-dd'))
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (3, 3, 20002, to_date('2023-05-26', 'yyyy-mm-dd'))
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (4, 4, 20003, to_date('2023-05-27', 'yyyy-mm-dd'))
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (5, 5, 20004, to_date('2023-05-28', 'yyyy-mm-dd'))
into rezervari (rezervare_id, client_id, bilet_id, data_rezervare) values (6, 6, 20005, to_date('2023-05-29', 'yyyy-mm-dd'))

select 1 from dual;

-- 11. angajati

insert all
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (1, 'Popescu', 'Ion', 500, 110, 8000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (2, 'Ionescu', 'Maria', 501, 110, 8000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (3, 'Georgescu', 'Ana', 502, 110, 6500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (4, 'Popa', 'Mihai', 503, 110, 8000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (5, 'Constantin', 'Andrei', 504, 110, 6000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (6, 'Vasilescu', 'Elena', 505, 110, 8000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (7, 'Dragomir', 'Cristina', 506, 110, 6000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (8, 'Popovici', 'Alexandru', 507, 110, 5500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (9, 'Iorgulescu', 'Adrian', 508, 110, 6500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (10, 'Stancu', 'Mara', 509, 110, 6000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (11, 'Popescu', 'Andrei', 500, 140, 5500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (12, 'Capatana', 'Delia', 501, 140, 4500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (13, 'Grigore', 'Elena', 502, 140, 6000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (14, 'Dragomirescu', 'Valentin', 503, 140, 4500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (15, 'Istrate', 'Alexandru', 504, 140, 5500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (16, 'Barbulescu', 'Ayten', 505, 140, 6000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (17, 'Bocila', 'Delia', 506, 140, 5000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (18, 'Constantinescu', 'Vlad', 507, 140, 5000)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (19, 'Martinovic', 'Ruxandra', 508, 140, 4500)
into angajati(angajat_id, nume, prenume, cinema_id, job_id, salariu) values (20, 'Corodi', 'Maria', 509, 140, 5500)
select 1 from dual;

-- 12. recenzii

insert all
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (1, 10001, 1, 8, to_date('30.05.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (2, 10002, 2, 7, to_date('31.05.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (3, 10003, 3, 9, to_date('01.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (4, 10004, 4, 6, to_date('02.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (5, 10005, 5, 8, to_date('03.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (6, 10006, 6, 7, to_date('04.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (10, 10007, 7, 9, to_date('05.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (11, 10008, 8, 6, to_date('06.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (12, 10009, 9, 8, to_date('07.06.2023', 'dd.mm.yyyy'))
into recenzii(recenzie_id, film_id, client_id, rating, data_recenzie) values (13, 10009, 10, 7, to_date('08.06.2023', 'dd.mm.yyyy'))
select 1 from dual;

-- 13. filme_genuri
insert all
into filme_genuri(film_id, gen_id) values (10001,1001)
into filme_genuri(film_id, gen_id) values (10001,1002) 
into filme_genuri(film_id, gen_id) values (10002,1000) 
into filme_genuri(film_id, gen_id) values (10002,1006) 
into filme_genuri(film_id, gen_id) values (10002,1002)
into filme_genuri(film_id, gen_id) values (10003,1000) 
into filme_genuri(film_id, gen_id) values (10003,1004) 
into filme_genuri(film_id, gen_id) values (10009,1008)
into filme_genuri(film_id, gen_id) values (10009,1009)
select 1 from dual;

commit;