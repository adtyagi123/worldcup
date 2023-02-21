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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (889, 890, 65, 2018, 'Final', 4, 2);
INSERT INTO public.games VALUES (891, 892, 66, 2018, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (890, 892, 67, 2018, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (889, 891, 68, 2018, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (890, 893, 69, 2018, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (892, 894, 70, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (891, 895, 71, 2018, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (889, 896, 72, 2018, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (892, 897, 73, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (894, 898, 74, 2018, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (891, 899, 75, 2018, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (895, 900, 76, 2018, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (890, 901, 77, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (893, 902, 78, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (896, 903, 79, 2018, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (889, 904, 80, 2018, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (905, 904, 81, 2014, 'Final', 1, 0);
INSERT INTO public.games VALUES (906, 895, 82, 2014, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (904, 906, 83, 2014, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (905, 895, 84, 2014, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (906, 907, 85, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (904, 891, 86, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (895, 897, 87, 2014, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (905, 889, 88, 2014, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (895, 908, 89, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (897, 896, 90, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (889, 909, 91, 2014, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (905, 910, 92, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (906, 900, 93, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (907, 911, 94, 2014, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (904, 898, 95, 2014, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (891, 912, 96, 2014, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (889, 'France');
INSERT INTO public.teams VALUES (890, 'Croatia');
INSERT INTO public.teams VALUES (891, 'Belgium');
INSERT INTO public.teams VALUES (892, 'England');
INSERT INTO public.teams VALUES (893, 'Russia');
INSERT INTO public.teams VALUES (894, 'Sweden');
INSERT INTO public.teams VALUES (895, 'Brazil');
INSERT INTO public.teams VALUES (896, 'Uruguay');
INSERT INTO public.teams VALUES (897, 'Colombia');
INSERT INTO public.teams VALUES (898, 'Switzerland');
INSERT INTO public.teams VALUES (899, 'Japan');
INSERT INTO public.teams VALUES (900, 'Mexico');
INSERT INTO public.teams VALUES (901, 'Denmark');
INSERT INTO public.teams VALUES (902, 'Spain');
INSERT INTO public.teams VALUES (903, 'Portugal');
INSERT INTO public.teams VALUES (904, 'Argentina');
INSERT INTO public.teams VALUES (905, 'Germany');
INSERT INTO public.teams VALUES (906, 'Netherlands');
INSERT INTO public.teams VALUES (907, 'Costa Rica');
INSERT INTO public.teams VALUES (908, 'Chile');
INSERT INTO public.teams VALUES (909, 'Nigeria');
INSERT INTO public.teams VALUES (910, 'Algeria');
INSERT INTO public.teams VALUES (911, 'Greece');
INSERT INTO public.teams VALUES (912, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 97, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 921, true);


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

