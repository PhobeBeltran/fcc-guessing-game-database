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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 16, 1);
INSERT INTO public.games VALUES (2, 211, 2);
INSERT INTO public.games VALUES (3, 695, 2);
INSERT INTO public.games VALUES (4, 564, 3);
INSERT INTO public.games VALUES (5, 314, 3);
INSERT INTO public.games VALUES (6, 762, 2);
INSERT INTO public.games VALUES (7, 208, 2);
INSERT INTO public.games VALUES (8, 237, 2);
INSERT INTO public.games VALUES (9, 16, 1);
INSERT INTO public.games VALUES (10, 867, 4);
INSERT INTO public.games VALUES (11, 248, 4);
INSERT INTO public.games VALUES (12, 569, 5);
INSERT INTO public.games VALUES (13, 813, 5);
INSERT INTO public.games VALUES (14, 389, 4);
INSERT INTO public.games VALUES (15, 852, 4);
INSERT INTO public.games VALUES (16, 356, 4);
INSERT INTO public.games VALUES (17, 870, 6);
INSERT INTO public.games VALUES (18, 548, 6);
INSERT INTO public.games VALUES (19, 894, 7);
INSERT INTO public.games VALUES (20, 440, 7);
INSERT INTO public.games VALUES (21, 237, 6);
INSERT INTO public.games VALUES (22, 520, 6);
INSERT INTO public.games VALUES (23, 116, 6);
INSERT INTO public.games VALUES (24, 17, 1);
INSERT INTO public.games VALUES (25, 439, 8);
INSERT INTO public.games VALUES (26, 869, 8);
INSERT INTO public.games VALUES (27, 554, 9);
INSERT INTO public.games VALUES (28, 925, 9);
INSERT INTO public.games VALUES (29, 752, 8);
INSERT INTO public.games VALUES (30, 612, 8);
INSERT INTO public.games VALUES (31, 989, 8);
INSERT INTO public.games VALUES (32, 257, 10);
INSERT INTO public.games VALUES (33, 847, 10);
INSERT INTO public.games VALUES (34, 157, 11);
INSERT INTO public.games VALUES (35, 803, 11);
INSERT INTO public.games VALUES (36, 207, 10);
INSERT INTO public.games VALUES (37, 444, 10);
INSERT INTO public.games VALUES (38, 135, 10);
INSERT INTO public.games VALUES (39, 458, 12);
INSERT INTO public.games VALUES (40, 641, 12);
INSERT INTO public.games VALUES (41, 554, 13);
INSERT INTO public.games VALUES (42, 351, 13);
INSERT INTO public.games VALUES (43, 217, 12);
INSERT INTO public.games VALUES (44, 403, 12);
INSERT INTO public.games VALUES (45, 56, 12);
INSERT INTO public.games VALUES (46, 621, 14);
INSERT INTO public.games VALUES (47, 764, 14);
INSERT INTO public.games VALUES (48, 849, 15);
INSERT INTO public.games VALUES (49, 199, 15);
INSERT INTO public.games VALUES (50, 55, 14);
INSERT INTO public.games VALUES (51, 559, 14);
INSERT INTO public.games VALUES (52, 319, 14);
INSERT INTO public.games VALUES (53, 50, 16);
INSERT INTO public.games VALUES (54, 12, 16);
INSERT INTO public.games VALUES (55, 204, 17);
INSERT INTO public.games VALUES (56, 568, 17);
INSERT INTO public.games VALUES (57, 918, 16);
INSERT INTO public.games VALUES (58, 245, 16);
INSERT INTO public.games VALUES (59, 628, 16);
INSERT INTO public.games VALUES (60, 699, 18);
INSERT INTO public.games VALUES (61, 792, 18);
INSERT INTO public.games VALUES (62, 841, 19);
INSERT INTO public.games VALUES (63, 368, 19);
INSERT INTO public.games VALUES (64, 110, 18);
INSERT INTO public.games VALUES (65, 118, 18);
INSERT INTO public.games VALUES (66, 990, 18);
INSERT INTO public.games VALUES (67, 824, 20);
INSERT INTO public.games VALUES (68, 301, 20);
INSERT INTO public.games VALUES (69, 472, 21);
INSERT INTO public.games VALUES (70, 219, 21);
INSERT INTO public.games VALUES (71, 51, 20);
INSERT INTO public.games VALUES (72, 236, 20);
INSERT INTO public.games VALUES (73, 5, 20);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'phobe');
INSERT INTO public.users VALUES (2, 'user_1739365662139');
INSERT INTO public.users VALUES (3, 'user_1739365662138');
INSERT INTO public.users VALUES (4, 'user_1739365753589');
INSERT INTO public.users VALUES (5, 'user_1739365753588');
INSERT INTO public.users VALUES (6, 'user_1739365958372');
INSERT INTO public.users VALUES (7, 'user_1739365958371');
INSERT INTO public.users VALUES (8, 'user_1739366142004');
INSERT INTO public.users VALUES (9, 'user_1739366142003');
INSERT INTO public.users VALUES (10, 'user_1739366222857');
INSERT INTO public.users VALUES (11, 'user_1739366222856');
INSERT INTO public.users VALUES (12, 'user_1739366285057');
INSERT INTO public.users VALUES (13, 'user_1739366285056');
INSERT INTO public.users VALUES (14, 'user_1739366440150');
INSERT INTO public.users VALUES (15, 'user_1739366440149');
INSERT INTO public.users VALUES (16, 'user_1739366640498');
INSERT INTO public.users VALUES (17, 'user_1739366640497');
INSERT INTO public.users VALUES (18, 'user_1739366857668');
INSERT INTO public.users VALUES (19, 'user_1739366857667');
INSERT INTO public.users VALUES (20, 'user_1739367169847');
INSERT INTO public.users VALUES (21, 'user_1739367169846');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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

