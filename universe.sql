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
-- Name: dummy_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy_table (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    dummy_table_id integer NOT NULL
);


ALTER TABLE public.dummy_table OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_table_dummy_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_table_dummy_table_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_table_dummy_table_id_seq OWNED BY public.dummy_table.dummy_table_id;


--
-- Name: dummy_table_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_table_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_table_star_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_table_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_table_star_id_seq OWNED BY public.dummy_table.star_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dummy_table star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table ALTER COLUMN star_id SET DEFAULT nextval('public.dummy_table_star_id_seq'::regclass);


--
-- Name: dummy_table dummy_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table ALTER COLUMN dummy_table_id SET DEFAULT nextval('public.dummy_table_dummy_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dummy_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy_table VALUES ('A', 1, 1);
INSERT INTO public.dummy_table VALUES ('B', 2, 2);
INSERT INTO public.dummy_table VALUES ('C', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 400, 0, true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The closest galaxy', 300, 100, false, false);
INSERT INTO public.galaxy VALUES (3, 'Great Magellanic Cloud', 'Closest feature', 200, 50, false, false);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'A description', 596, 39, true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A description', 858, 19, true, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'A description', 58, 2, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (2, 'A', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (3, 'B', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (4, 'C', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (5, 'D', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (6, 'E', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (7, 'F', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (8, 'G', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (9, 'H', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (10, 'I', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (11, 'J', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (12, 'K', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (13, 'L', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (14, 'M', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (15, 'N', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (16, 'O', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (17, 'P', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (18, 'Q', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (19, 'R', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (20, 'S', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (21, 'T', 'A description', 556, 13, false, true, 5);
INSERT INTO public.moon VALUES (22, 'U', 'A description', 556, 13, false, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 'A description', 58, 2, true, true, 1);
INSERT INTO public.planet VALUES (2, 'B', 'A description', 58, 2, true, true, 1);
INSERT INTO public.planet VALUES (3, 'C', 'A description', 556, 13, false, true, 2);
INSERT INTO public.planet VALUES (4, 'D', 'A description', 556, 13, false, true, 2);
INSERT INTO public.planet VALUES (5, 'E', 'A description', 556, 13, false, true, 2);
INSERT INTO public.planet VALUES (6, 'F', 'A description', 556, 13, false, true, 2);
INSERT INTO public.planet VALUES (7, 'G', 'A description', 556, 13, false, true, 4);
INSERT INTO public.planet VALUES (10, 'H', 'A description', 556, 13, false, true, 6);
INSERT INTO public.planet VALUES (11, 'I', 'A description', 556, 13, false, true, 5);
INSERT INTO public.planet VALUES (12, 'J', 'A description', 556, 13, false, true, 5);
INSERT INTO public.planet VALUES (13, 'K', 'A description', 556, 13, false, true, 5);
INSERT INTO public.planet VALUES (14, 'J', 'A description', 556, 13, false, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our home star', 365, 1, true, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Our nearest', 335, 4, false, true, 1);
INSERT INTO public.star VALUES (3, 'Fake Star A', 'A description', 355, 13, false, true, 2);
INSERT INTO public.star VALUES (4, 'Fake Star B', 'A description', 15, 33, false, false, 3);
INSERT INTO public.star VALUES (5, 'Fake Star C', 'A description', 315, 53, false, true, 2);
INSERT INTO public.star VALUES (6, 'Fake Star D', 'A description', 535, 19, false, true, 1);
INSERT INTO public.star VALUES (7, 'Gargantua', 'A description', 196, 39, true, true, 3);


--
-- Name: dummy_table_dummy_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_table_dummy_table_id_seq', 3, true);


--
-- Name: dummy_table_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_table_star_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: dummy_table dummy_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_pkey PRIMARY KEY (dummy_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: dummy_table star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: moon unq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_moon UNIQUE (moon_id);


--
-- Name: planet unq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_planet UNIQUE (planet_id);


--
-- Name: star unq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unq_star UNIQUE (star_id);


--
-- Name: dummy_table dummy_table_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy_table
    ADD CONSTRAINT dummy_table_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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