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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL
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
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
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

INSERT INTO public.games VALUES (321, 2018, 465, 466, 4, 2, 'Final');
INSERT INTO public.games VALUES (322, 2018, 467, 468, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (323, 2018, 466, 468, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (324, 2018, 465, 467, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (325, 2018, 466, 469, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (326, 2018, 468, 470, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (327, 2018, 467, 471, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (328, 2018, 465, 472, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (329, 2018, 468, 473, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (330, 2018, 470, 474, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (331, 2018, 467, 475, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (332, 2018, 471, 476, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (333, 2018, 466, 477, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (334, 2018, 469, 478, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (335, 2018, 472, 479, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (336, 2018, 465, 480, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (337, 2014, 481, 480, 1, 0, 'Final');
INSERT INTO public.games VALUES (338, 2014, 482, 471, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (339, 2014, 480, 482, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (340, 2014, 481, 471, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (341, 2014, 482, 483, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (342, 2014, 480, 467, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (343, 2014, 471, 473, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (344, 2014, 481, 465, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (345, 2014, 471, 484, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (346, 2014, 473, 472, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (347, 2014, 465, 485, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (348, 2014, 481, 486, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (349, 2014, 482, 476, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (350, 2014, 483, 487, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (351, 2014, 480, 474, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (352, 2014, 467, 488, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (465, 'France');
INSERT INTO public.teams VALUES (466, 'Croatia');
INSERT INTO public.teams VALUES (467, 'Belgium');
INSERT INTO public.teams VALUES (468, 'England');
INSERT INTO public.teams VALUES (469, 'Russia');
INSERT INTO public.teams VALUES (470, 'Sweden');
INSERT INTO public.teams VALUES (471, 'Brazil');
INSERT INTO public.teams VALUES (472, 'Uruguay');
INSERT INTO public.teams VALUES (473, 'Colombia');
INSERT INTO public.teams VALUES (474, 'Switzerland');
INSERT INTO public.teams VALUES (475, 'Japan');
INSERT INTO public.teams VALUES (476, 'Mexico');
INSERT INTO public.teams VALUES (477, 'Denmark');
INSERT INTO public.teams VALUES (478, 'Spain');
INSERT INTO public.teams VALUES (479, 'Portugal');
INSERT INTO public.teams VALUES (480, 'Argentina');
INSERT INTO public.teams VALUES (481, 'Germany');
INSERT INTO public.teams VALUES (482, 'Netherlands');
INSERT INTO public.teams VALUES (483, 'Costa Rica');
INSERT INTO public.teams VALUES (484, 'Chile');
INSERT INTO public.teams VALUES (485, 'Nigeria');
INSERT INTO public.teams VALUES (486, 'Algeria');
INSERT INTO public.teams VALUES (487, 'Greece');
INSERT INTO public.teams VALUES (488, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 352, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 488, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

