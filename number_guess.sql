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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 386, 11);
INSERT INTO public.games VALUES (2, 113, 11);
INSERT INTO public.games VALUES (3, 195, 12);
INSERT INTO public.games VALUES (4, 739, 12);
INSERT INTO public.games VALUES (5, 30, 11);
INSERT INTO public.games VALUES (6, 361, 11);
INSERT INTO public.games VALUES (7, 21, 11);
INSERT INTO public.games VALUES (8, 866, 13);
INSERT INTO public.games VALUES (9, 996, 13);
INSERT INTO public.games VALUES (10, 843, 14);
INSERT INTO public.games VALUES (11, 695, 14);
INSERT INTO public.games VALUES (12, 1001, 13);
INSERT INTO public.games VALUES (13, 805, 13);
INSERT INTO public.games VALUES (14, 900, 13);
INSERT INTO public.games VALUES (15, 315, 15);
INSERT INTO public.games VALUES (16, 273, 15);
INSERT INTO public.games VALUES (17, 126, 16);
INSERT INTO public.games VALUES (18, 768, 16);
INSERT INTO public.games VALUES (19, 906, 15);
INSERT INTO public.games VALUES (20, 583, 15);
INSERT INTO public.games VALUES (21, 346, 15);
INSERT INTO public.games VALUES (22, 699, 17);
INSERT INTO public.games VALUES (23, 890, 17);
INSERT INTO public.games VALUES (24, 253, 18);
INSERT INTO public.games VALUES (25, 58, 18);
INSERT INTO public.games VALUES (26, 73, 17);
INSERT INTO public.games VALUES (27, 472, 17);
INSERT INTO public.games VALUES (28, 192, 17);
INSERT INTO public.games VALUES (29, 936, 19);
INSERT INTO public.games VALUES (30, 189, 19);
INSERT INTO public.games VALUES (31, 820, 20);
INSERT INTO public.games VALUES (32, 71, 20);
INSERT INTO public.games VALUES (33, 152, 19);
INSERT INTO public.games VALUES (34, 549, 19);
INSERT INTO public.games VALUES (35, 754, 19);
INSERT INTO public.games VALUES (36, 108, 21);
INSERT INTO public.games VALUES (37, 967, 21);
INSERT INTO public.games VALUES (38, 919, 22);
INSERT INTO public.games VALUES (39, 743, 22);
INSERT INTO public.games VALUES (40, 425, 21);
INSERT INTO public.games VALUES (41, 547, 21);
INSERT INTO public.games VALUES (42, 917, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1728398553856');
INSERT INTO public.users VALUES (2, 'user_1728398553855');
INSERT INTO public.users VALUES (3, 'user_1728399144334');
INSERT INTO public.users VALUES (4, 'user_1728399144333');
INSERT INTO public.users VALUES (5, 'user_1728399169788');
INSERT INTO public.users VALUES (6, 'user_1728399169787');
INSERT INTO public.users VALUES (7, 'user_1728399562932');
INSERT INTO public.users VALUES (8, 'user_1728399562931');
INSERT INTO public.users VALUES (9, 'user_1728399724456');
INSERT INTO public.users VALUES (10, 'user_1728399724455');
INSERT INTO public.users VALUES (11, 'user_1728400128439');
INSERT INTO public.users VALUES (12, 'user_1728400128438');
INSERT INTO public.users VALUES (13, 'user_1728400135364');
INSERT INTO public.users VALUES (14, 'user_1728400135363');
INSERT INTO public.users VALUES (15, 'user_1728400191019');
INSERT INTO public.users VALUES (16, 'user_1728400191018');
INSERT INTO public.users VALUES (17, 'user_1728400399776');
INSERT INTO public.users VALUES (18, 'user_1728400399775');
INSERT INTO public.users VALUES (19, 'user_1728400719540');
INSERT INTO public.users VALUES (20, 'user_1728400719539');
INSERT INTO public.users VALUES (21, 'user_1728400771280');
INSERT INTO public.users VALUES (22, 'user_1728400771279');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

