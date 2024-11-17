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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    size numeric,
    is_hazardous boolean NOT NULL,
    asteroid_speed integer,
    distance_from_earth integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric,
    number_of_stars integer,
    number_of_planets integer
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
    name character varying(255) NOT NULL,
    planet_id integer,
    has_life boolean NOT NULL,
    diameter numeric,
    orbit_period integer,
    moon_mass integer
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
    name character varying(255) NOT NULL,
    star_id integer,
    is_habitable boolean NOT NULL,
    planet_type text,
    distance_from_star numeric,
    number_of_moons integer,
    gravity integer
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric,
    star_temperature integer,
    star_mass integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 11, 939.4, false, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 11, 525.4, true, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'Eros', 8, 16.8, true, NULL, NULL);
INSERT INTO public.asteroid VALUES (4, 'Pallas', 9, 512.6, false, NULL, NULL);
INSERT INTO public.asteroid VALUES (5, 'Hygiea', 10, 434.6, false, NULL, NULL);
INSERT INTO public.asteroid VALUES (6, 'TestAsteroid', 13, 300, false, 25, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy', false, 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy', false, 12000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous for its spiral arms', true, 9000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A galaxy with a large central bulge', false, 8000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'GregGalaxy', 'A newly discovered galaxy', false, 2000, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'TestGalaxy', 'A test galaxy', true, 1500, 100, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, 3474.8, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 3, false, 3121.6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', 4, false, 5150, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 3, false, 3643.2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, false, 5262.4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, false, 4821.6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Enceladus', 4, false, 504, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Triton', 5, false, 2706, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Phobos', 1, false, 22.4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Deimos', 1, false, 12.4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Mimas', 4, false, 396.2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 4, false, 1527.6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Dione', 4, false, 1123.6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 4, false, 1469.6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 5, false, 471.6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 5, false, 1157.8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 5, false, 1169, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 5, false, 1577.8, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 5, false, 1523, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'GREG', 1, false, 850, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'TestMoon', 13, false, 5000, 30, 200);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 'Terrestrial', 1.5, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 'Gas Giant', 5.2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, false, 'Gas Giant', 9.5, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', 1, false, 'Terrestrial', 0.72, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Mercury', 1, false, 'Terrestrial', 0.39, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 4, true, 'Rocky', 0.13, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Kepler-452b', 2, true, 'Rocky', 1.04, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 3, true, 'Rocky', 0.11, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 5, false, 'Gas Giant', 0.047, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Exoplanet 2', 4, false, 'Gas Giant', 0.25, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet X', 1, false, 'Ice Giant', 30, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'TestPlanet', 7, true, 'Terrestrial', 1.2, 2, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 0, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, true, 4.37, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, false, 642, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 2, true, 8.6, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 3, true, 4.25, NULL, NULL);
INSERT INTO public.star VALUES (6, 'GregStar', 6, true, 10, NULL, NULL);
INSERT INTO public.star VALUES (7, 'TestStar', 7, true, 5.0, 5800, 2000000);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

