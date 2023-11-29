--NVL și DECODE în cadrul aceleiași cereri

/* 
    Afisati numele, emailul si nr de telefon. Rezulatele 
sunt ordonate alfabetic dupa nume. In cazul incare vreunul
dintre campurile de mai sus este null, se inlocuieste cu un mesaj 
corespunzator.
*/


select nvl(nume, 'nume nedisponibil') as nume,
       nvl(email, 'email indisponibil') as email,
       decode(nr_telefon, null, 'numar de telefon indisponibil', nr_telefon) as nr_telefon
from clienti
order by nume;


--case + siruri de caractere + date calendaristice

/*
    Dorim să obținem o listă a filmelor împreună cu numele lor în format upper 
case, data de lansare și durata. Vom afișa numele filmului, data de lansare și 
durata, toate în format upper case.
*/

select 
  upper(f.titlu) as nume_film,
  to_char(f.data_lansare, 'dd-mm-yyyy') as data_lansare,
  f.durata,
  case
    when f.durata >= 120 then 'lungmetraj'
    else 'scurtmetraj'
  end as tip_film
from filme f;

--subcereri sincronizate in care intervin cel putin 3 tabele

/*
    Obtineti numele si prenumele clientilor care au facut o rezervare pentru un fil
de comedie
*/

select c.nume, c.prenume
from clienti c
where c.client_id in (
    select r.client_id
    from rezervari r
    join bilete b on r.bilet_id = b.bilet_id
    join program_proiectie p on p.program_id = b.program_id
    join filme_genuri fg on p.film_id = fg.film_id
    join genuri g on fg.gen_id = g.gen_id
    where g.nume_gen = 'Comedie'
    );

-- grupări de date cu  subcereri  nesincronizate  in  care  intervin  cel  putin
-- 3  tabele, funcții grup, filtrare la nivel degrupuri(in cadrul aceleiasi cereri)
/*
    Obtineti numarul total de angajati pentru fiecare cinema si oras, afisand 
rezultatele in ordine descrescatoare a nr de angajati
*/

select c.nume as nume_cinema, l.oras, count(a.angajat_id) as numar_angajati
from cinematografe c
join locatii l on c.locatie_id = l.locatie_id
join angajati a on c.cinema_id = a.cinema_id
group by c.nume, l.oras
order by numar_angajati desc;

--utilizarea a cel puțin 1 bloc de cerere(clauza WITH)
/*
    Calculează numărul total de angajați pentru fiecare cinematograf și afișează 
rezultatele împreună cu numele cinematografului și orașul în care se află.
*/

with statistici_angajati as (
    select cinema_id, count(*) as numar_angajati
    from angajati
    group by cinema_id
)
select c.nume, l.oras, sa.numar_angajati
from cinematografe c
inner join locatii l on c.locatie_id = l.locatie_id
left join statistici_angajati sa on c.cinema_id = sa.cinema_id
order by sa.numar_angajati desc;


-- ex 13
-- a) Actualizeaza durata filmelor care au genul comedie la 150 de minute

update filme
set durata = 150
where film_id in(
    select film_id
    from filme
    where gen_id = 1001
);

select * from filme
where gen_id = 1001;

-- b) Sterge angajatii care lucreaza la cinematografe cu o capacitate mai mica 
-- de 300 de locuri.

select * from angajati;

delete from angajati
where cinema_id in(
    select cinema_id
    from cinematografe
    where capacitate < 300
);

-- c) Actualizeaza slalariul managerilor cu 10%

select * from angajati;

update angajati
set salariu = salariu * 1.1
where job_id = (select job_id from jobs where titlu_job = 'manager');


select * from jobs;

-- 14. Crearea  unei  vizualizări  complexe.Dați  un  exemplu  de  operație  LMD 
--permisă pe vizualizarea respectivă și un exemplu de operație LMD nepermisă.

create view vizualizare_complexa as
select f.titlu, g.nume_gen, c.nume as nume_cinema, p.start_time, p.end_time, b.nr_scaun, b.pret, c.nume as nume_client
from filme f
join filme_genuri fg on f.film_id = fg.film_id
join genuri g on fg.gen_id = g.gen_id
join program_proiectie p on f.film_id = p.film_id
join sali_cinema s on p.sala_id = s.sala_id
join cinematografe c on s.cinema_id = c.cinema_id
join bilete b on p.program_id = b.program_id
join rezervari r on b.bilet_id = r.bilet_id
join clienti cl on r.client_id = cl.client_id;

-- exemplu de operație dml permisă prin intermediul vizualizării

update bilete
set pret = pret * 1.1
where program_id in (
  select program_id
  from vizualizare_complexa
  where nume_gen = 'Comedie'
);

select * from bilete;

/*
    15. Formulați în limbaj natural și implementați în SQL: o cerere ce
utilizează operația outer-join pe  minimum  4  tabele,o cerere ce 
utilizează operația division și  o  cerere  care implementează analiza top-n.
*/

--a) cerere cu utilizarea operatiei outer join pe minimum 4 tabele
/*
    afiseaza numele clientilor și id ul programelor de proiecție asociate biletelor lor
*/

select c.nume, p.program_id
from clienti c
left outer join rezervari r on c.client_id = r.client_id
left outer join bilete b on r.bilet_id = b.bilet_id
left outer join program_proiectie p on b.program_id = p.program_id;

--b) o cerere ce utilizează operația division
/*
    Afiseaza id-ul clienților, numele și prenumele acestora care au comandat toate genurile de filme disponibile
*/

select c.client_id, c.nume, c.prenume
from clienti c
where not exists (
  select f.film_id
  from filme f
  where not exists (
    select fg.film_id
    from filme_genuri fg
    where fg.film_id = f.film_id
    and fg.gen_id in (
      select g.gen_id
      from genuri g
    )
  )
);

--c) analiza top-n
/*
    Afisează top 5 clienti cu cele mai multe rezervari
*/

select c.nume, count(r.rezervare_id) as numar_rezervari
from clienti c
join rezervari r on c.client_id = r.client_id
group by c.nume
having rownum <= 5
order by numar_rezervari desc;
--fetch first 5 rows only;