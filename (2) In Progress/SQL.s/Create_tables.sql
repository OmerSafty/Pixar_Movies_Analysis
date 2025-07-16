CREATE TABLE pixar_films (
    number INT,
    film text not null primary key,
    release_date date,
    run_time INT,
    plot text
);

CREATE table box_office (
    film text not null primary key,
    budget numeric(12,2),
    box_office_us_canada numeric(12,2),
    box_office_other numeric(12,2),
    box_office_worldwide numeric(12,2),
    foreign key(film) references pixar_films(film)
);

CREATE table public_response (
    film text not null primary key,
    rotten_tomatoes_score int,
    rotten_tomatoes_counts int,
    metacritic_score int,
    metacritic_counts int,
    cinema_score text,
    imdb_score NUMERIC(3,1),
    imdb_counts int,
    foreign key(film) references pixar_films(film)
);

CREATE table genres (
    film text not null,
    category text not null,
    value text not null,
    primary key (film, category, value),
    foreign key (film) references pixar_films(film)
);

CREATE table pixar_people (
    film text not null,
    role_type text,
    name text,
    primary key (film, role_type, name),
    foreign key (film) references pixar_films(film)
);

CREATE table academy (
    film text not null primary key,
    award_type text,
    status text,
    foreign key (film) references pixar_films(film)
);

CREATE table pixar_data_dictionary (
    pixar_films text,
    field text,
    description text
);

--------------------------------
-- Edits --
--------------------------------
ALTER TABLE pixar_films add column film_rating text;
UPDATE pixar_films set film_rating = plot, plot = film_rating;
ALTER TABLE pixar_people drop constraint pixar_people_pkey;
ALTER TABLE genres drop constraint genres_pkey;
ALTER TABLE academy drop constraint academy_pkey;

SELECT * FROM pixar_films LIMIT 10;