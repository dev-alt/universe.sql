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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    galaxy_types character varying(10),
    has_life boolean,
    solar_system character varying(30)
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    description text,
    age_in_millions_of_years integer
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
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    planet_type character varying(20),
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    name character varying(20)
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
    age_in_millions_of_years integer,
    description text,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    solar_system character varying(20)
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    name character varying(10) NOT NULL,
    test_id integer NOT NULL,
    test01 integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Sagitta Capella', 232, 'spiral', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Alpha Orithyia', 32212, 'peculiar', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Ursa Aldebaran', 542, 'irregular', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Eridani Star System', 3221, 'spiral', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Ichnaea Nebula', 53, 'irregular', true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Oculus Cloud', 452, 'peculiar', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Xadrorix', 287, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Gallafrem', 32, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Expertes FQ8', 321, NULL, 14);
INSERT INTO public.moon VALUES (4, 'Sario QK1', 5534, NULL, 18);
INSERT INTO public.moon VALUES (5, 'Hiltamon', 221, NULL, 121);
INSERT INTO public.moon VALUES (6, 'Lom', 766, NULL, 411);
INSERT INTO public.moon VALUES (7, 'Raplamar', 1234, NULL, 3222);
INSERT INTO public.moon VALUES (8, 'Nionazar RH9', 532, NULL, 7823);
INSERT INTO public.moon VALUES (9, 'Corzor YQ4', 324323, NULL, 3534);
INSERT INTO public.moon VALUES (10, 'Expertes', 55234, NULL, 3623);
INSERT INTO public.moon VALUES (11, 'Lionama HL4', 4324, NULL, 9092);
INSERT INTO public.moon VALUES (12, 'Victoria', 23423, NULL, 13);
INSERT INTO public.moon VALUES (13, 'Illizar VH4', 234234, NULL, 3468);
INSERT INTO public.moon VALUES (14, 'Inanis', 2342345, NULL, 43534);
INSERT INTO public.moon VALUES (15, 'Septerion', 76563, NULL, 37421);
INSERT INTO public.moon VALUES (16, 'Massiivinen', 7562, NULL, 5632);
INSERT INTO public.moon VALUES (17, 'Rismuzar', 97342, NULL, 544);
INSERT INTO public.moon VALUES (18, 'Rappamar OE1', 74234, NULL, 97851);
INSERT INTO public.moon VALUES (19, 'Desolado', 89432, NULL, 6021);
INSERT INTO public.moon VALUES (20, 'Koraha ', 6342, NULL, 45090);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 500, 'Lifeless planet', 'Earth', true, 1, true, 'Ubrourilia');
INSERT INTO public.planet VALUES (6, 500, 'Unexplored', 'Earth-like', true, 2, true, 'Sengetis');
INSERT INTO public.planet VALUES (1, 300, 'Gas Giant', 'Super', true, 3, true, 'Sunzore');
INSERT INTO public.planet VALUES (2, 520, 'Lifeless planet', 'Earth-like', false, 4, true, 'Hibrippe');
INSERT INTO public.planet VALUES (3, 2300, 'Lifeless planet', 'Gas-Giant', true, 5, true, 'Nuhines');
INSERT INTO public.planet VALUES (1, 5300, 'Unexplored', 'Earth-like', true, 6, true, 'Chistea');
INSERT INTO public.planet VALUES (78, 50430, 'Gas Giant', 'Gas-Giant', false, 7, true, 'Zipestea');
INSERT INTO public.planet VALUES (34, 15010, 'Lifeless planet', 'Super-Earth', true, 8, true, 'Gnoria X');
INSERT INTO public.planet VALUES (40, 53200, 'Lifeless planet', 'Super-Earth', true, 9, true, 'Vippe N4');
INSERT INTO public.planet VALUES (63, 5200, 'Lifeless planet', 'Super-Earth', true, 10, true, 'Xanviuclite');
INSERT INTO public.planet VALUES (38, 21500, 'Unexplored', 'Gas-Giant', true, 11, true, 'Balnoyama');
INSERT INTO public.planet VALUES (17, 534500, 'Lifeless planet', 'Super', true, 12, true, 'Mubiuq');
INSERT INTO public.planet VALUES (24, 34500, 'Gas Giant', 'Super-Earth', false, 13, true, 'Cuccyria');
INSERT INTO public.planet VALUES (52, 34500, 'Lifeless planet', 'Super-Earth', true, 14, true, 'Herilia');
INSERT INTO public.planet VALUES (15, 534500, 'Lifeless planet', 'Gas-Giant', true, 15, true, 'Benia');
INSERT INTO public.planet VALUES (43, 502340, 'Lifeless planet', 'Super-Earth', true, 16, false, 'Souclite');
INSERT INTO public.planet VALUES (23, 50230, 'Lifeless planet', 'Super-Earth', true, 17, true, 'Doberia');
INSERT INTO public.planet VALUES (32, 113500, 'Lifeless planet', 'Gas-Giant', true, 18, true, 'Drillon FU');
INSERT INTO public.planet VALUES (100, 8976500, 'Unexplored', 'Earth-like', false, 19, false, 'Neshan HLR');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 23, NULL, 'Zliu', 4221123, NULL);
INSERT INTO public.star VALUES (2, 32, NULL, 'Vrauh', 123123, NULL);
INSERT INTO public.star VALUES (3, 245, NULL, 'Vliur', 432141324, NULL);
INSERT INTO public.star VALUES (4, 12112, NULL, 'Ujaoc', 12341234, NULL);
INSERT INTO public.star VALUES (5, 534321, NULL, 'Viub', 123412345, NULL);
INSERT INTO public.star VALUES (6, 123123, NULL, 'Segreat', 132441234, NULL);
INSERT INTO public.star VALUES (7, 543534, NULL, 'Noztais', 312413244, NULL);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES ('one', 1, 4);
INSERT INTO public.test VALUES ('two', 2, 3);
INSERT INTO public.test VALUES ('three', 3, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


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
-- Name: galaxy galaxy_solar_system_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_solar_system_key UNIQUE (solar_system);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_solar_system_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_solar_system_key UNIQUE (solar_system);


--
-- Name: test test_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_name_key UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: star star_solar_system_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_solar_system_fkey FOREIGN KEY (solar_system) REFERENCES public.galaxy(solar_system);


--
-- PostgreSQL database dump complete
--

