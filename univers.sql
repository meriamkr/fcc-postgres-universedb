--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL,
    name character varying(52),
    name_code character varying(52),
    names character varying(52)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(250) NOT NULL,
    rotation integer DEFAULT 10000 NOT NULL,
    name_code1 character varying(52)
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
    name character varying(250) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    name_code character varying(250) NOT NULL,
    name_code1 character varying(52)
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
    name character varying(250) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    name_code1 character varying(52)
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
    radius integer NOT NULL,
    color character varying(250),
    name character varying(250) NOT NULL,
    galaxy_id integer,
    name_code1 character varying(52)
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, NULL, NULL, false, 'eart', 'planet', 'abc');
INSERT INTO public.blackhole VALUES (3, NULL, NULL, false, 'earth', 'planets', 'abgc');
INSERT INTO public.blackhole VALUES (4, NULL, NULL, false, 'earths', 'planetssss', 'abgkc');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'a', 10000, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'b', 10000, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'c', 10000, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'd', 10000, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'e', 10000, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'f', 10000, NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'ab', 10000, NULL);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'abc', 10000, NULL);
INSERT INTO public.galaxy VALUES (9, NULL, NULL, 'abcd', 10000, NULL);
INSERT INTO public.galaxy VALUES (10, NULL, NULL, 'fg', 10000, NULL);
INSERT INTO public.galaxy VALUES (11, NULL, NULL, 'f', 10000, NULL);
INSERT INTO public.galaxy VALUES (12, NULL, NULL, 'fgh', 10000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 2, 'moon1', NULL);
INSERT INTO public.moon VALUES (3, 'moon1', true, 3, 'moon', NULL);
INSERT INTO public.moon VALUES (4, 'moon1', true, 5, 'moon4', NULL);
INSERT INTO public.moon VALUES (5, 'moon1', true, 7, 'moonn', NULL);
INSERT INTO public.moon VALUES (7, 'moon1', true, 7, 'moon8', NULL);
INSERT INTO public.moon VALUES (8, 'moon1', true, 9, 'moon9', NULL);
INSERT INTO public.moon VALUES (9, 'moon1', true, 2, 'moon45', NULL);
INSERT INTO public.moon VALUES (10, 'moon1', true, 2, 'moon85', NULL);
INSERT INTO public.moon VALUES (11, 'moon1', true, 1, 'moo5', NULL);
INSERT INTO public.moon VALUES (12, 'moon1', true, 3, 'moon55', NULL);
INSERT INTO public.moon VALUES (13, 'moon1', true, 3, 'moon589', NULL);
INSERT INTO public.moon VALUES (14, 'moon1', true, 3, 'moon588859', NULL);
INSERT INTO public.moon VALUES (15, 'moon1', true, 3, 'moon5879', NULL);
INSERT INTO public.moon VALUES (16, 'moon1', true, 3, 'moon79', NULL);
INSERT INTO public.moon VALUES (17, 'moon1', true, 3, 'moon797', NULL);
INSERT INTO public.moon VALUES (18, 'moon1', true, 4, 'moon77797', NULL);
INSERT INTO public.moon VALUES (19, 'moon1', true, 4, 'moon777', NULL);
INSERT INTO public.moon VALUES (20, 'moon1', true, 4, 'moon7985', NULL);
INSERT INTO public.moon VALUES (21, 'moon1', true, 4, 'moon123', NULL);
INSERT INTO public.moon VALUES (22, 'moon1', true, 4, 'moon12348', NULL);
INSERT INTO public.moon VALUES (24, 'moon1', true, 2, 'moon12', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'pluto', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'uranus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'earth', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'venus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'saturn', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'earth_1', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'earth_2', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'earth_3', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'earth_4', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (13, 'earth_5', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (14, 'earth_6', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (15, 'earth_7', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (16, 'earth_8', NULL, false, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 123456789, 'red', 'star1', 1, NULL);
INSERT INTO public.star VALUES (2, 123456789, 'red', 'star2', 2, NULL);
INSERT INTO public.star VALUES (3, 123456789, 'red', 'star_a', 3, NULL);
INSERT INTO public.star VALUES (4, 123456789, 'red', 'star_b', 4, NULL);
INSERT INTO public.star VALUES (5, 123456789, 'red', 'star', 5, NULL);
INSERT INTO public.star VALUES (6, 123456789, 'red', 'stars', 6, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_code_key UNIQUE (name_code);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_names_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_names_key UNIQUE (names);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_code1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_code1_key UNIQUE (name_code1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code1_key UNIQUE (name_code1);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_code1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_code1_key UNIQUE (name_code1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_code1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_code1_key UNIQUE (name_code1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

