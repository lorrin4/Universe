--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    shape text,
    name character varying(40) NOT NULL,
    age integer,
    distance_from_earth numeric(4,0)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer NOT NULL,
    distance_from_planet numeric(4,0),
    is_one_piece boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    age integer,
    diameter numeric(10,2),
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(40),
    fictional boolean NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    age integer,
    galaxy_id integer,
    dying boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'spiral', 'milky way', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'elliptical', 'ovulus', 100, 255);
INSERT INTO public.galaxy VALUES (3, 'peculiar', 'strango', 400, 20);
INSERT INTO public.galaxy VALUES (4, 'irregular', 'rando', 4543, 475);
INSERT INTO public.galaxy VALUES (5, 'spiral', 'spiro', 45676, 6456);
INSERT INTO public.galaxy VALUES (6, 'spiral', 'spinny', 43, 5665);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'mooony', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'spin', 7, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'sphere', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'titus', 10, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'sephora', 11, 100, true);
INSERT INTO public.moon VALUES (10, 'maximus', 12, 1, true);
INSERT INTO public.moon VALUES (11, 'splitty', 9, 1234, false);
INSERT INTO public.moon VALUES (12, 'shocko', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'whoos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'ulysses', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'homer', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'simpsons', 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'marge', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'atwood', 4, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'handmaid', 12, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon100', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 234, 4556.00, false, 1);
INSERT INTO public.planet VALUES (3, 'Mecury', 3498, 5487.00, false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 83, 345.00, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 645, 343.00, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4069, 45690.00, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 438, 347.00, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 3456, 657.00, false, 1);
INSERT INTO public.planet VALUES (9, 'Romulus', 576, 5768.00, false, 2);
INSERT INTO public.planet VALUES (10, 'Plimpy', 340, 345.00, true, 3);
INSERT INTO public.planet VALUES (11, 'Martha', 34, 234.00, true, 5);
INSERT INTO public.planet VALUES (12, 'Omicron Persei 8', 3495, 546.00, true, 2);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'humans', false);
INSERT INTO public.species VALUES (2, 'martians', true);
INSERT INTO public.species VALUES (3, 'sharks', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 100, 1, false);
INSERT INTO public.star VALUES (2, 'Supernova', 1000, 2, true);
INSERT INTO public.star VALUES (3, 'BigBoy', 50, 3, false);
INSERT INTO public.star VALUES (4, 'Oldie', 2000, 4, true);
INSERT INTO public.star VALUES (5, 'Supershine', 324, 5, false);
INSERT INTO public.star VALUES (6, 'Midlifecrisis', 999, 6, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: species species_species_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_species_id_key UNIQUE (species_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

