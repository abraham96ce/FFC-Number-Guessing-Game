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

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 2, 455);
INSERT INTO public.games VALUES (4, 2, 110);
INSERT INTO public.games VALUES (5, 3, 179);
INSERT INTO public.games VALUES (6, 3, 858);
INSERT INTO public.games VALUES (7, 2, 178);
INSERT INTO public.games VALUES (8, 2, 1);
INSERT INTO public.games VALUES (9, 2, 997);
INSERT INTO public.games VALUES (10, 4, 425);
INSERT INTO public.games VALUES (11, 4, 574);
INSERT INTO public.games VALUES (12, 5, 528);
INSERT INTO public.games VALUES (13, 5, 258);
INSERT INTO public.games VALUES (14, 4, 187);
INSERT INTO public.games VALUES (15, 4, 1);
INSERT INTO public.games VALUES (16, 4, 795);
INSERT INTO public.games VALUES (17, 6, 1);
INSERT INTO public.games VALUES (18, 1, 1);
INSERT INTO public.games VALUES (19, 1, 10);
INSERT INTO public.games VALUES (20, 1, 1);
INSERT INTO public.games VALUES (21, 1, 1);
INSERT INTO public.games VALUES (22, 1, 12);
INSERT INTO public.games VALUES (23, 8, 214);
INSERT INTO public.games VALUES (24, 8, 334);
INSERT INTO public.games VALUES (25, 9, 900);
INSERT INTO public.games VALUES (26, 9, 710);
INSERT INTO public.games VALUES (27, 8, 401);
INSERT INTO public.games VALUES (28, 8, 824);
INSERT INTO public.games VALUES (29, 8, 421);
INSERT INTO public.games VALUES (30, 10, 774);
INSERT INTO public.games VALUES (31, 10, 859);
INSERT INTO public.games VALUES (32, 11, 27);
INSERT INTO public.games VALUES (33, 11, 341);
INSERT INTO public.games VALUES (34, 10, 357);
INSERT INTO public.games VALUES (35, 10, 403);
INSERT INTO public.games VALUES (36, 10, 554);
INSERT INTO public.games VALUES (37, 12, 533);
INSERT INTO public.games VALUES (38, 12, 688);
INSERT INTO public.games VALUES (39, 13, 210);
INSERT INTO public.games VALUES (40, 13, 353);
INSERT INTO public.games VALUES (41, 12, 904);
INSERT INTO public.games VALUES (42, 12, 970);
INSERT INTO public.games VALUES (43, 12, 676);
INSERT INTO public.games VALUES (44, 14, 540);
INSERT INTO public.games VALUES (45, 14, 467);
INSERT INTO public.games VALUES (46, 15, 337);
INSERT INTO public.games VALUES (47, 15, 147);
INSERT INTO public.games VALUES (48, 14, 254);
INSERT INTO public.games VALUES (49, 14, 854);
INSERT INTO public.games VALUES (50, 14, 571);
INSERT INTO public.games VALUES (51, 16, 394);
INSERT INTO public.games VALUES (52, 16, 587);
INSERT INTO public.games VALUES (53, 17, 252);
INSERT INTO public.games VALUES (54, 17, 792);
INSERT INTO public.games VALUES (55, 16, 648);
INSERT INTO public.games VALUES (56, 16, 227);
INSERT INTO public.games VALUES (57, 16, 384);
INSERT INTO public.games VALUES (58, 18, 236);
INSERT INTO public.games VALUES (59, 18, 101);
INSERT INTO public.games VALUES (60, 19, 140);
INSERT INTO public.games VALUES (61, 19, 810);
INSERT INTO public.games VALUES (62, 18, 441);
INSERT INTO public.games VALUES (63, 18, 658);
INSERT INTO public.games VALUES (64, 18, 616);
INSERT INTO public.games VALUES (65, 20, 267);
INSERT INTO public.games VALUES (66, 20, 473);
INSERT INTO public.games VALUES (67, 21, 424);
INSERT INTO public.games VALUES (68, 21, 870);
INSERT INTO public.games VALUES (69, 20, 82);
INSERT INTO public.games VALUES (70, 20, 615);
INSERT INTO public.games VALUES (71, 20, 292);
INSERT INTO public.games VALUES (72, 22, 151);
INSERT INTO public.games VALUES (73, 22, 587);
INSERT INTO public.games VALUES (74, 23, 433);
INSERT INTO public.games VALUES (75, 23, 330);
INSERT INTO public.games VALUES (76, 22, 350);
INSERT INTO public.games VALUES (77, 22, 553);
INSERT INTO public.games VALUES (78, 22, 965);
INSERT INTO public.games VALUES (79, 24, 64);
INSERT INTO public.games VALUES (80, 24, 188);
INSERT INTO public.games VALUES (81, 25, 629);
INSERT INTO public.games VALUES (82, 25, 105);
INSERT INTO public.games VALUES (83, 24, 665);
INSERT INTO public.games VALUES (84, 24, 458);
INSERT INTO public.games VALUES (85, 24, 298);
INSERT INTO public.games VALUES (86, 26, 298);
INSERT INTO public.games VALUES (87, 26, 146);
INSERT INTO public.games VALUES (88, 27, 706);
INSERT INTO public.games VALUES (89, 27, 251);
INSERT INTO public.games VALUES (90, 26, 347);
INSERT INTO public.games VALUES (91, 26, 594);
INSERT INTO public.games VALUES (92, 26, 49);
INSERT INTO public.games VALUES (93, 28, 832);
INSERT INTO public.games VALUES (94, 28, 969);
INSERT INTO public.games VALUES (95, 29, 181);
INSERT INTO public.games VALUES (96, 29, 994);
INSERT INTO public.games VALUES (97, 28, 279);
INSERT INTO public.games VALUES (98, 28, 112);
INSERT INTO public.games VALUES (99, 28, 952);
INSERT INTO public.games VALUES (100, 30, 317);
INSERT INTO public.games VALUES (101, 30, 984);
INSERT INTO public.games VALUES (102, 31, 774);
INSERT INTO public.games VALUES (103, 31, 777);
INSERT INTO public.games VALUES (104, 30, 890);
INSERT INTO public.games VALUES (105, 30, 699);
INSERT INTO public.games VALUES (106, 30, 19);
INSERT INTO public.games VALUES (107, 32, 634);
INSERT INTO public.games VALUES (108, 32, 587);
INSERT INTO public.games VALUES (109, 33, 426);
INSERT INTO public.games VALUES (110, 33, 394);
INSERT INTO public.games VALUES (111, 32, 222);
INSERT INTO public.games VALUES (112, 32, 812);
INSERT INTO public.games VALUES (113, 32, 833);
INSERT INTO public.games VALUES (114, 34, 747);
INSERT INTO public.games VALUES (115, 34, 109);
INSERT INTO public.games VALUES (116, 35, 188);
INSERT INTO public.games VALUES (117, 35, 264);
INSERT INTO public.games VALUES (118, 34, 484);
INSERT INTO public.games VALUES (119, 34, 63);
INSERT INTO public.games VALUES (120, 34, 946);
INSERT INTO public.games VALUES (121, 36, 874);
INSERT INTO public.games VALUES (122, 36, 434);
INSERT INTO public.games VALUES (123, 37, 912);
INSERT INTO public.games VALUES (124, 37, 996);
INSERT INTO public.games VALUES (125, 36, 17);
INSERT INTO public.games VALUES (126, 36, 815);
INSERT INTO public.games VALUES (127, 36, 46);
INSERT INTO public.games VALUES (128, 38, 694);
INSERT INTO public.games VALUES (129, 38, 655);
INSERT INTO public.games VALUES (130, 39, 104);
INSERT INTO public.games VALUES (131, 39, 976);
INSERT INTO public.games VALUES (132, 38, 795);
INSERT INTO public.games VALUES (133, 38, 200);
INSERT INTO public.games VALUES (134, 38, 890);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Abraham');
INSERT INTO public.users VALUES (2, 'user_1731209681992');
INSERT INTO public.users VALUES (3, 'user_1731209681991');
INSERT INTO public.users VALUES (4, 'user_1731210011154');
INSERT INTO public.users VALUES (5, 'user_1731210011153');
INSERT INTO public.users VALUES (6, 'Anakin');
INSERT INTO public.users VALUES (7, 'gfdsf');
INSERT INTO public.users VALUES (8, 'user_1731212520098');
INSERT INTO public.users VALUES (9, 'user_1731212520097');
INSERT INTO public.users VALUES (10, 'user_1731212772132');
INSERT INTO public.users VALUES (11, 'user_1731212772131');
INSERT INTO public.users VALUES (12, 'user_1731212845402');
INSERT INTO public.users VALUES (13, 'user_1731212845401');
INSERT INTO public.users VALUES (14, 'user_1731213516190');
INSERT INTO public.users VALUES (15, 'user_1731213516189');
INSERT INTO public.users VALUES (16, 'user_1731213528739');
INSERT INTO public.users VALUES (17, 'user_1731213528738');
INSERT INTO public.users VALUES (18, 'user_1731213548670');
INSERT INTO public.users VALUES (19, 'user_1731213548669');
INSERT INTO public.users VALUES (20, 'user_1731213662039');
INSERT INTO public.users VALUES (21, 'user_1731213662038');
INSERT INTO public.users VALUES (22, 'user_1731213681886');
INSERT INTO public.users VALUES (23, 'user_1731213681885');
INSERT INTO public.users VALUES (24, 'user_1731213722105');
INSERT INTO public.users VALUES (25, 'user_1731213722104');
INSERT INTO public.users VALUES (26, 'user_1731213732437');
INSERT INTO public.users VALUES (27, 'user_1731213732436');
INSERT INTO public.users VALUES (28, 'user_1731213762796');
INSERT INTO public.users VALUES (29, 'user_1731213762795');
INSERT INTO public.users VALUES (30, 'user_1731213887340');
INSERT INTO public.users VALUES (31, 'user_1731213887339');
INSERT INTO public.users VALUES (32, 'user_1731213894722');
INSERT INTO public.users VALUES (33, 'user_1731213894721');
INSERT INTO public.users VALUES (34, 'user_1731213910547');
INSERT INTO public.users VALUES (35, 'user_1731213910546');
INSERT INTO public.users VALUES (36, 'user_1731214101059');
INSERT INTO public.users VALUES (37, 'user_1731214101058');
INSERT INTO public.users VALUES (38, 'user_1731214178334');
INSERT INTO public.users VALUES (39, 'user_1731214178333');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 134, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


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

