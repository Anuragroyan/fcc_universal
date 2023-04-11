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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 5, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (34, 38, 1);
INSERT INTO public.games VALUES (35, 38, 1);
INSERT INTO public.games VALUES (36, 40, 1);
INSERT INTO public.games VALUES (37, 40, 1);
INSERT INTO public.games VALUES (38, 38, 1);
INSERT INTO public.games VALUES (39, 38, 1);
INSERT INTO public.games VALUES (40, 38, 1);
INSERT INTO public.games VALUES (41, 45, 3);
INSERT INTO public.games VALUES (42, 45, 638);
INSERT INTO public.games VALUES (43, 46, 590);
INSERT INTO public.games VALUES (44, 46, 216);
INSERT INTO public.games VALUES (45, 45, 664);
INSERT INTO public.games VALUES (46, 45, 3);
INSERT INTO public.games VALUES (47, 45, 78);
INSERT INTO public.games VALUES (48, 47, 536);
INSERT INTO public.games VALUES (49, 47, 558);
INSERT INTO public.games VALUES (50, 48, 391);
INSERT INTO public.games VALUES (51, 48, 371);
INSERT INTO public.games VALUES (52, 47, 614);
INSERT INTO public.games VALUES (53, 47, 3);
INSERT INTO public.games VALUES (54, 47, 74);
INSERT INTO public.games VALUES (55, 49, 3);
INSERT INTO public.games VALUES (56, 49, 105);
INSERT INTO public.games VALUES (57, 50, 430);
INSERT INTO public.games VALUES (58, 50, 461);
INSERT INTO public.games VALUES (59, 49, 164);
INSERT INTO public.games VALUES (60, 49, 3);
INSERT INTO public.games VALUES (61, 49, 405);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'anurag');
INSERT INTO public.users VALUES (2, 'ANURAG');
INSERT INTO public.users VALUES (4, 'rogni');
INSERT INTO public.users VALUES (5, 'natasha');
INSERT INTO public.users VALUES (38, 'user_1681243153538');
INSERT INTO public.users VALUES (40, 'user_1681243153537');
INSERT INTO public.users VALUES (45, 'user_1681244408046');
INSERT INTO public.users VALUES (46, 'user_1681244408045');
INSERT INTO public.users VALUES (47, 'user_1681244524324');
INSERT INTO public.users VALUES (48, 'user_1681244524323');
INSERT INTO public.users VALUES (49, 'user_1681244806356');
INSERT INTO public.users VALUES (50, 'user_1681244806355');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 61, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

