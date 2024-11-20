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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(255) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 1, 2, 2, 4);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 3, 4, 0, 2);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 2, 4, 1, 2);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1, 3, 0, 1);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 2, 5, 2, 3);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 4, 6, 0, 2);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 3, 7, 1, 2);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 1, 8, 0, 2);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 4, 9, 1, 2);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 6, 10, 0, 1);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 3, 11, 2, 3);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 7, 12, 0, 2);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 2, 13, 1, 2);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 5, 14, 1, 2);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 8, 15, 1, 2);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 1, 16, 3, 4);
INSERT INTO public.games VALUES (177, 2014, 'Final', 17, 16, 0, 1);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 18, 7, 0, 3);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 16, 18, 0, 1);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 17, 7, 1, 7);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 18, 19, 0, 1);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 16, 3, 0, 1);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 7, 9, 1, 2);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 17, 1, 0, 1);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 7, 20, 1, 2);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 9, 8, 0, 2);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 1, 21, 0, 2);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 17, 22, 1, 2);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 18, 12, 1, 2);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 19, 23, 1, 2);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 16, 10, 0, 1);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 3, 24, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 1);
INSERT INTO public.teams VALUES ('Croatia', 2);
INSERT INTO public.teams VALUES ('Belgium', 3);
INSERT INTO public.teams VALUES ('England', 4);
INSERT INTO public.teams VALUES ('Russia', 5);
INSERT INTO public.teams VALUES ('Sweden', 6);
INSERT INTO public.teams VALUES ('Brazil', 7);
INSERT INTO public.teams VALUES ('Uruguay', 8);
INSERT INTO public.teams VALUES ('Colombia', 9);
INSERT INTO public.teams VALUES ('Switzerland', 10);
INSERT INTO public.teams VALUES ('Japan', 11);
INSERT INTO public.teams VALUES ('Mexico', 12);
INSERT INTO public.teams VALUES ('Denmark', 13);
INSERT INTO public.teams VALUES ('Spain', 14);
INSERT INTO public.teams VALUES ('Portugal', 15);
INSERT INTO public.teams VALUES ('Argentina', 16);
INSERT INTO public.teams VALUES ('Germany', 17);
INSERT INTO public.teams VALUES ('Netherlands', 18);
INSERT INTO public.teams VALUES ('Costa Rica', 19);
INSERT INTO public.teams VALUES ('Chile', 20);
INSERT INTO public.teams VALUES ('Nigeria', 21);
INSERT INTO public.teams VALUES ('Algeria', 22);
INSERT INTO public.teams VALUES ('Greece', 23);
INSERT INTO public.teams VALUES ('United States', 24);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

