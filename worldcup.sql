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
    round character varying(40) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_id_seq OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (119, 2018, 'Final', 355, 357, 4, 2);
INSERT INTO public.games VALUES (120, 2018, 'Third Place', 356, 359, 2, 0);
INSERT INTO public.games VALUES (121, 2018, 'Semi-Final', 357, 359, 2, 1);
INSERT INTO public.games VALUES (122, 2018, 'Semi-Final', 355, 356, 1, 0);
INSERT INTO public.games VALUES (123, 2018, 'Quarter-Final', 357, 358, 3, 2);
INSERT INTO public.games VALUES (124, 2018, 'Quarter-Final', 359, 363, 2, 0);
INSERT INTO public.games VALUES (125, 2018, 'Quarter-Final', 356, 360, 2, 1);
INSERT INTO public.games VALUES (126, 2018, 'Quarter-Final', 355, 361, 2, 0);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 359, 362, 2, 1);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 363, 377, 1, 0);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 356, 364, 3, 2);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 360, 365, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 357, 366, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 358, 367, 2, 1);
INSERT INTO public.games VALUES (133, 2018, 'Eighth-Final', 361, 368, 2, 1);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 355, 369, 4, 3);
INSERT INTO public.games VALUES (135, 2014, 'Final', 370, 369, 1, 0);
INSERT INTO public.games VALUES (136, 2014, 'Third Place', 371, 360, 3, 0);
INSERT INTO public.games VALUES (137, 2014, 'Semi-Final', 369, 371, 1, 0);
INSERT INTO public.games VALUES (138, 2014, 'Semi-Final', 370, 360, 7, 1);
INSERT INTO public.games VALUES (139, 2014, 'Quarter-Final', 371, 372, 1, 0);
INSERT INTO public.games VALUES (140, 2014, 'Quarter-Final', 369, 356, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Quarter-Final', 360, 362, 2, 1);
INSERT INTO public.games VALUES (142, 2014, 'Quarter-Final', 370, 355, 1, 0);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 360, 373, 2, 1);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 362, 361, 2, 0);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 355, 374, 2, 0);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 370, 375, 2, 1);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 371, 365, 2, 1);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 372, 376, 2, 1);
INSERT INTO public.games VALUES (149, 2014, 'Eighth-Final', 369, 377, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 356, 378, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (355, 'France');
INSERT INTO public.teams VALUES (356, 'Belgium');
INSERT INTO public.teams VALUES (357, 'Croatia');
INSERT INTO public.teams VALUES (358, 'Russia');
INSERT INTO public.teams VALUES (359, 'England');
INSERT INTO public.teams VALUES (360, 'Brazil');
INSERT INTO public.teams VALUES (361, 'Uruguay');
INSERT INTO public.teams VALUES (362, 'Colombia');
INSERT INTO public.teams VALUES (363, 'Sweden');
INSERT INTO public.teams VALUES (364, 'Japan');
INSERT INTO public.teams VALUES (365, 'Mexico');
INSERT INTO public.teams VALUES (366, 'Denmark');
INSERT INTO public.teams VALUES (367, 'Spain');
INSERT INTO public.teams VALUES (368, 'Portugal');
INSERT INTO public.teams VALUES (369, 'Argentina');
INSERT INTO public.teams VALUES (370, 'Germany');
INSERT INTO public.teams VALUES (371, 'Netherlands');
INSERT INTO public.teams VALUES (372, 'Costa Rica');
INSERT INTO public.teams VALUES (373, 'Chile');
INSERT INTO public.teams VALUES (374, 'Nigeria');
INSERT INTO public.teams VALUES (375, 'Algeria');
INSERT INTO public.teams VALUES (376, 'Greece');
INSERT INTO public.teams VALUES (377, 'Switzerland');
INSERT INTO public.teams VALUES (378, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 150, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_team_id_seq', 378, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams team_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_name_key UNIQUE (name);


--
-- Name: teams team_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);


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

