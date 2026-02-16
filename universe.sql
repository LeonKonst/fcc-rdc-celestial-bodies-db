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
-- Name: empty_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.empty_table (
    empty_table_id integer NOT NULL,
    name character varying(10) NOT NULL,
    random_column integer NOT NULL
);


ALTER TABLE public.empty_table OWNER TO freecodecamp;

--
-- Name: empty_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.empty_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empty_table_id_seq OWNER TO freecodecamp;

--
-- Name: empty_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.empty_table_id_seq OWNED BY public.empty_table.empty_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    is_active_galactic_nucleus boolean,
    description text NOT NULL,
    distance_in_light_years numeric(15,2)
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
    name character varying(25) NOT NULL,
    radius_in_km integer,
    is_geologically_active boolean,
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
    name character varying(25) NOT NULL,
    habitable boolean NOT NULL,
    radius_in_km integer,
    has_rings boolean,
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
    name character varying(25) NOT NULL,
    mass_solar_units numeric(6,3) NOT NULL,
    temperature_kelvin integer,
    age_million_years integer,
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
-- Name: empty_table empty_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table ALTER COLUMN empty_table_id SET DEFAULT nextval('public.empty_table_id_seq'::regclass);


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
-- Data for Name: empty_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.empty_table VALUES (1, 'Alpha', 42);
INSERT INTO public.empty_table VALUES (2, 'Beta', 17);
INSERT INTO public.empty_table VALUES (3, 'Gamma', 99);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Our home galaxy, spiral galaxy with a central black hole.', 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Large spiral galaxy, nearest major galaxy to the Milky Way.', 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Spiral galaxy in the Local Group, smaller than Andromeda.', 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', true, 'Giant elliptical galaxy in Virgo cluster with a supermassive black hole.', 53000000.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', true, 'Spiral galaxy with a bright nucleus and large central bulge.', 29000000.00);
INSERT INTO public.galaxy VALUES (6, 'IC 1101', false, 'Supergiant elliptical galaxy, one of the largest known galaxies.', 1047000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1737, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1821, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1560, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 2575, false, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 763, false, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 734, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 561, false, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 531, false, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 252, true, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 198, false, 6);
INSERT INTO public.moon VALUES (15, 'Proxima b I', 700, false, 7);
INSERT INTO public.moon VALUES (16, 'Sirius c I', 500, false, 8);
INSERT INTO public.moon VALUES (17, 'Rigel I a', 1200, false, 9);
INSERT INTO public.moon VALUES (18, 'Betelgeuse I a', 1100, false, 10);
INSERT INTO public.moon VALUES (19, 'Vega I a', 900, false, 11);
INSERT INTO public.moon VALUES (20, 'Vega II a', 850, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 2439, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 6051, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 6371, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 3389, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 69911, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 58232, true, 1);
INSERT INTO public.planet VALUES (7, 'Proxima b', false, 7150, false, 2);
INSERT INTO public.planet VALUES (8, 'Sirius c', false, 6000, false, 3);
INSERT INTO public.planet VALUES (9, 'Rigel I', false, 12000, false, 4);
INSERT INTO public.planet VALUES (10, 'Betelgeuse I', false, 11000, false, 5);
INSERT INTO public.planet VALUES (11, 'Vega I', false, 9000, false, 6);
INSERT INTO public.planet VALUES (12, 'Vega II', false, 8500, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.000, 5778, 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.123, 3042, 4500, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 2.063, 9940, 242, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 21.000, 12100, 8, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 20.000, 3500, 10, 2);
INSERT INTO public.star VALUES (6, 'Vega', 2.135, 9602, 455, 2);


--
-- Name: empty_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.empty_table_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: empty_table empty_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table
    ADD CONSTRAINT empty_table_name_key UNIQUE (name);


--
-- Name: empty_table empty_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empty_table
    ADD CONSTRAINT empty_table_pkey PRIMARY KEY (empty_table_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

