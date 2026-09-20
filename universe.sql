--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: fun_facts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fun_facts (
    fact_id numeric NOT NULL,
    number integer NOT NULL,
    date integer,
    fun_facts_id character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.fun_facts OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    is_quasar boolean,
    orbits character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text NOT NULL,
    orbits character varying(30),
    symbol character varying(30),
    discovery_year character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_rings boolean,
    has_life boolean,
    planet_type character varying(30),
    description text NOT NULL,
    orbits character varying(30),
    unicode character varying(30),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    color character varying(30),
    description text NOT NULL,
    orbits character varying(30),
    temperature_kelvin character varying(30),
    type character varying(30),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: fun_facts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fun_facts VALUES (1, 15, 2026, '1', 'the first fact');
INSERT INTO public.fun_facts VALUES (2, 17, 2026, '2', 'the second fact');
INSERT INTO public.fun_facts VALUES (3, 17, 2026, '3', 'the third fact');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 1, 'our home galaxy', false, 'shared barycenter');
INSERT INTO public.galaxy VALUES ('andromeda', 2, 'the galactic neighbor to the milky way', false, 'shared barycenter');
INSERT INTO public.galaxy VALUES ('NGC-6946', 3, 'a grand-design spiral galaxy 2.5 million light-years away', false, 'unknown');
INSERT INTO public.galaxy VALUES ('Bodes-galaxy', 4, 'a grand-design spiral 81 million light-years away', false, 'unkown');
INSERT INTO public.galaxy VALUES ('eye-of-god', 5, 'an intermediate spiral galaxy 50 million light-years away', false, 'unknown');
INSERT INTO public.galaxy VALUES ('einstein-cross', 6, 'a gravitationally lensed quesar 8 billion light-years away', true, 'unkown');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('IO', 2, 'innermost moon of jupiter', 'jupiter', 'JI', '1610', 5);
INSERT INTO public.moon VALUES ('Europa', 3, 'smallest moon of jupiter', 'jupiter', 'JII', '1610', 5);
INSERT INTO public.moon VALUES ('Ganymede', 4, 'largest moon of jupiter', 'jupiter', 'JIII', '1610', 5);
INSERT INTO public.moon VALUES ('Callisto', 5, 'second largest moon of jupiter', 'jupiter', 'JIV', '1610', 5);
INSERT INTO public.moon VALUES ('Mimas', 6, 'seventh largest moon of saturn', 'saturn', 'SI', '1789', 6);
INSERT INTO public.moon VALUES ('Enceladus', 7, 'sixth largest moon of saturn', 'saturn', 'SII', '1789', 6);
INSERT INTO public.moon VALUES ('Tethys', 8, 'fifth largest moon of saturn', 'saturn', 'SIII', '1684', 6);
INSERT INTO public.moon VALUES ('Dione', 9, 'fourth largest moon of saturn', 'saturn', 'SIV', '1684', 6);
INSERT INTO public.moon VALUES ('Rhea', 10, 'second largest moon of saturn', 'saturn', 'SV', '1672', 6);
INSERT INTO public.moon VALUES ('Titan', 11, 'largets moon of saturn', 'saturn', 'SVI', '1655', 6);
INSERT INTO public.moon VALUES ('Iapetus', 12, 'outermost moon of saturn', 'saturn', 'SVIII', '1671', 6);
INSERT INTO public.moon VALUES ('Miranda', 13, 'smallest moon of uranus', 'uranus', 'UV', '1948', 7);
INSERT INTO public.moon VALUES ('Ariel', 14, 'fourth largest moon of uranus', 'uranus', 'UI', '1851', 7);
INSERT INTO public.moon VALUES ('Umbriel', 15, 'third largest moon of uranus', 'uranus', 'UII', '1851', 7);
INSERT INTO public.moon VALUES ('Titania', 16, 'largest moon of uranus', 'uranus', 'UIII', '1787', 7);
INSERT INTO public.moon VALUES ('Oberon', 17, 'second largest moon of uranus', 'uranus', 'UIV', '1787', 7);
INSERT INTO public.moon VALUES ('Charon', 19, 'the largest moon of pluto', 'pluto', 'U+2BD5', '1978', 9);
INSERT INTO public.moon VALUES ('Styx', 20, 'a small moon of pluto', 'pluto', 'none', '2012', 9);
INSERT INTO public.moon VALUES ('Triton', 18, 'the only moon of neptune', 'neptune', 'NI', '1848', 8);
INSERT INTO public.moon VALUES ('earth1', 1, 'the only moon of earth', 'earth', 'crescent moon', 'prehistoric', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 3, false, false, 'terrestrial', 'first planet from the sun', 'sun', 'U+263f', 1);
INSERT INTO public.planet VALUES ('mars', 4, false, false, 'terrestrial', 'fourth planet from the sun', 'sun', 'U+2642', 1);
INSERT INTO public.planet VALUES ('jupiter', 5, true, false, 'gas giant', 'fifth planet from the sun', 'sun', 'U+2643', 1);
INSERT INTO public.planet VALUES ('saturn', 6, true, false, 'gas giant', 'sixth planet from the sun', 'sun', 'U+2644', 1);
INSERT INTO public.planet VALUES ('uranus', 7, true, false, 'ice giant', 'seventh planet from the sun', 'sun', 'U+26E2', 1);
INSERT INTO public.planet VALUES ('neptune', 8, true, false, 'ice giant', 'eight planet from the sun', 'sun', 'U+2646', 1);
INSERT INTO public.planet VALUES ('earth', 1, false, true, 'terrestrial', 'our home planet', 'sun', 'U+1F728', 1);
INSERT INTO public.planet VALUES ('venus', 2, false, false, 'terrestrial', 'second planet from the sun', 'sun', 'U+2640', 1);
INSERT INTO public.planet VALUES ('spe', 9, false, false, 'unknown', 'an exoplanet 248 lightyears away', 'andromeda', 'unknown', 2);
INSERT INTO public.planet VALUES ('Arion', 10, false, false, 'unknown', 'an exoplanet 245 light-years away', '18 delphini', 'unknown', 2);
INSERT INTO public.planet VALUES ('Arkas', 11, false, false, 'gas giant', 'an exoplanet 176 light-years away', '41-lyncis', 'unknown', 3);
INSERT INTO public.planet VALUES ('51-Pegasi-b', 12, false, false, 'unknown', 'an exoplanet 50 light-years away', '51-pegasi', 'unknown', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, '0.656', 'the star we orbit', 'milky way galaxy', '15,700,00', 'G-type', 1);
INSERT INTO public.star VALUES ('Upsilon_Orionis', 2, '-1.068+-0.008', 'a star in the constellation orion', 'none', '33,400', 'B-type', 1);
INSERT INTO public.star VALUES ('Vega', 3, '0.00', 'the brightest star in the northern constellaiton lyra', 'milky way galaxy', '10,070+-90', 'A-type', 1);
INSERT INTO public.star VALUES ('Zeta_Leonis', 4, '+0.07', 'a third-magnitude star in the constellation leo', 'milky way galaxy', '6,900', 'F-type', 1);
INSERT INTO public.star VALUES ('Mirach', 5, '+1.96', 'a prominent star in the northern constellation andromeda', 'milky way galaxy', '3,762+-40', 'M-type', 1);
INSERT INTO public.star VALUES ('Sigma-Draconis', 6, '+0.386', 'a single star in the northern constellation draco', 'none', '5,336+-40', 'K-type', 1);


--
-- Name: fun_facts fun_facts_fact_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fun_facts
    ADD CONSTRAINT fun_facts_fact_id_key UNIQUE (fact_id);


--
-- Name: fun_facts fun_facts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fun_facts
    ADD CONSTRAINT fun_facts_pkey PRIMARY KEY (fun_facts_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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

