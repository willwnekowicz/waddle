--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authorizations; Type: TABLE; Schema: public; Owner: william; Tablespace: 
--

CREATE TABLE authorizations (
    id integer NOT NULL,
    user_id integer,
    provider character varying(255),
    uid character varying(255),
    token character varying(255),
    secret character varying(255),
    profile_page character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.authorizations OWNER TO william;

--
-- Name: authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: william
--

CREATE SEQUENCE authorizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authorizations_id_seq OWNER TO william;

--
-- Name: authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: william
--

ALTER SEQUENCE authorizations_id_seq OWNED BY authorizations.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: william; Tablespace: 
--

CREATE TABLE locations (
    id integer NOT NULL,
    name character varying(255),
    latitude numeric,
    longitude numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.locations OWNER TO william;

--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: william
--

CREATE SEQUENCE locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locations_id_seq OWNER TO william;

--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: william
--

ALTER SEQUENCE locations_id_seq OWNED BY locations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: william; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO william;

--
-- Name: statuses; Type: TABLE; Schema: public; Owner: william; Tablespace: 
--

CREATE TABLE statuses (
    id integer NOT NULL,
    provider character varying(255),
    providers_guid character varying(255),
    type character varying(255),
    timezone_offset integer,
    location_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    posted_at timestamp without time zone
);


ALTER TABLE public.statuses OWNER TO william;

--
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: william
--

CREATE SEQUENCE statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO william;

--
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: william
--

ALTER SEQUENCE statuses_id_seq OWNED BY statuses.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: william; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    provider character varying(255),
    uid character varying(255),
    username character varying(255)
);


ALTER TABLE public.users OWNER TO william;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: william
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO william;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: william
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: william
--

ALTER TABLE ONLY authorizations ALTER COLUMN id SET DEFAULT nextval('authorizations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: william
--

ALTER TABLE ONLY locations ALTER COLUMN id SET DEFAULT nextval('locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: william
--

ALTER TABLE ONLY statuses ALTER COLUMN id SET DEFAULT nextval('statuses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: william
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: authorizations; Type: TABLE DATA; Schema: public; Owner: william
--

COPY authorizations (id, user_id, provider, uid, token, secret, profile_page, created_at, updated_at) FROM stdin;
1	1	foursquare	10167491	QD2VROVUTELVJIPPS3X4HQUED11VHMYNMVDM3I5NZ50IB3BX	\N	\N	2014-03-29 19:20:50.719345	2014-03-29 19:20:50.719345
2	11	twitter	32316084	32316084-5NvYuvQyOTnOZDBoTVUZwtfT2YTrGpiYBTOto9uFs	o889RBP43UCRJ2s0o3wTitzBSOD5f3ywZpDfShr5cCbOw	\N	2014-03-29 19:23:55.968681	2014-03-29 20:53:00.442382
\.


--
-- Name: authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: william
--

SELECT pg_catalog.setval('authorizations_id_seq', 2, true);


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: william
--

COPY locations (id, name, latitude, longitude, created_at, updated_at) FROM stdin;
13	JuiceTank Innovation Lab	40.5376121751606	-74.5230531692505	2014-03-30 01:49:58.886546	2014-03-30 01:49:58.886546
14	Palazzone 1960	40.892972	-74.252023	2014-03-30 01:49:58.894502	2014-03-30 01:49:58.894502
15	Golds Gym	40.8956372418028	-74.2249053807892	2014-03-30 01:49:58.898018	2014-03-30 01:49:58.898018
16	Versailles Diner	40.8865657804319	-74.2811769047477	2014-03-30 01:49:58.901326	2014-03-30 01:49:58.901326
17	Maryland House Travel Plaza	39.4972191732879	-76.2322425842285	2014-03-30 01:49:58.904495	2014-03-30 01:49:58.904495
18	Chipotle Mexican Grill	40.8886008119303	-74.25208568573	2014-03-30 01:49:58.907599	2014-03-30 01:49:58.907599
19	Pilgrim Diner	40.8359771474462	-74.2273235321045	2014-03-30 01:49:58.910636	2014-03-30 01:49:58.910636
20	Chipotle Mexican Grill	40.8886008119303	-74.25208568573	2014-03-30 01:49:58.913562	2014-03-30 01:49:58.913562
21	Jackie's Grillette	40.84172	-74.208214	2014-03-30 01:49:58.916546	2014-03-30 01:49:58.916546
22	Polonia Bakery	40.8665102713093	-74.1225995368642	2014-03-30 01:49:58.919429	2014-03-30 01:49:58.919429
23	Tick Tock Diner	40.8367361080575	-74.1524362564087	2014-03-30 01:49:58.939684	2014-03-30 01:49:58.939684
24	TGI Fridays	40.89116378	-74.2515707	2014-03-30 01:49:58.942921	2014-03-30 01:49:58.942921
25	Sky Acres Airport (44N)	41.7065615337243	-73.7342691421509	2014-03-30 01:49:58.945992	2014-03-30 01:49:58.945992
26	Sandanona - Orvis Gun Club	41.7990766162074	-73.7153381620762	2014-03-30 01:49:58.948991	2014-03-30 01:49:58.948991
27	Camelback Mountain Resort	41.0517632342264	-75.3553571909053	2014-03-30 01:49:58.95229	2014-03-30 01:49:58.95229
28	Mount Airy Casino Resort	41.1132447836074	-75.3210639953613	2014-03-30 01:49:58.955325	2014-03-30 01:49:58.955325
29	Pocono Mountains Municipal Airport (KMPO)	41.1385459334141	-75.3747976944509	2014-03-30 01:49:58.95822	2014-03-30 01:49:58.95822
30	Newark Liberty International Airport (EWR)	40.6896849354109	-74.1793870925903	2014-03-30 01:49:58.961025	2014-03-30 01:49:58.961025
31	Palm Beach International Airport (PBI)	26.6879565151844	-80.0902462005615	2014-03-30 01:49:58.963829	2014-03-30 01:49:58.963829
32	Palm Beach County Park Airport (LNA)	26.5879514941035	-80.0865125656128	2014-03-30 01:49:58.966589	2014-03-30 01:49:58.966589
\.


--
-- Name: locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: william
--

SELECT pg_catalog.setval('locations_id_seq', 32, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: william
--

COPY schema_migrations (version) FROM stdin;
20140329153603
20140329171013
20140329175227
20140329184535
20140329205226
20140329220657
20140329221406
20140330014738
\.


--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: william
--

COPY statuses (id, provider, providers_guid, type, timezone_offset, location_id, user_id, created_at, updated_at, posted_at) FROM stdin;
3	foursquare	533747fb498ee6ff03e6e9e3	checkin	-240	13	1	2014-03-30 01:49:58.891881	2014-03-30 01:49:58.891881	\N
4	foursquare	53308857498e871241b16cd6	checkin	-240	14	1	2014-03-30 01:49:58.89606	2014-03-30 01:49:58.89606	\N
5	foursquare	53307920498e954c5d83adb7	checkin	-240	15	1	2014-03-30 01:49:58.899619	2014-03-30 01:49:58.899619	\N
6	foursquare	532f8520498eaabb82584b61	checkin	-240	16	1	2014-03-30 01:49:58.902807	2014-03-30 01:49:58.902807	\N
7	foursquare	532f2d0d11d2dd9262ca74e9	checkin	-240	17	1	2014-03-30 01:49:58.905945	2014-03-30 01:49:58.905945	\N
8	foursquare	5328b075498e0721bfd2c396	checkin	-240	18	1	2014-03-30 01:49:58.909072	2014-03-30 01:49:58.909072	\N
9	foursquare	5318e03f498ea17c82a39799	checkin	-300	19	1	2014-03-30 01:49:58.91198	2014-03-30 01:49:58.91198	\N
10	foursquare	5317756111d2988b0f5e844d	checkin	-300	20	1	2014-03-30 01:49:58.914962	2014-03-30 01:49:58.914962	\N
11	foursquare	5316288c498ef11fb1c32334	checkin	-300	21	1	2014-03-30 01:49:58.917882	2014-03-30 01:49:58.917882	\N
12	foursquare	530f89ef498efd6979bef792	checkin	-300	22	1	2014-03-30 01:49:58.937593	2014-03-30 01:49:58.937593	\N
13	foursquare	530f7bc8498e03b57857a915	checkin	-300	23	1	2014-03-30 01:49:58.941199	2014-03-30 01:49:58.941199	\N
14	foursquare	530d42d8498eeb1261e394de	checkin	-300	24	1	2014-03-30 01:49:58.944367	2014-03-30 01:49:58.944367	\N
15	foursquare	530a3f8911d2e493f3be4d80	checkin	-300	25	1	2014-03-30 01:49:58.947382	2014-03-30 01:49:58.947382	\N
16	foursquare	530a2b7b498e4e31b87aa51b	checkin	-300	26	1	2014-03-30 01:49:58.9506	2014-03-30 01:49:58.9506	\N
17	foursquare	53093032498ec7ca8baab34d	checkin	-300	27	1	2014-03-30 01:49:58.953702	2014-03-30 01:49:58.953702	\N
18	foursquare	5308c6b2498e243edd8f2388	checkin	-300	28	1	2014-03-30 01:49:58.956725	2014-03-30 01:49:58.956725	\N
19	foursquare	53080fe1498ef1c93545bbe9	checkin	-300	29	1	2014-03-30 01:49:58.959524	2014-03-30 01:49:58.959524	\N
20	foursquare	52f3cb4c498ec161d302e55e	checkin	-300	30	1	2014-03-30 01:49:58.962336	2014-03-30 01:49:58.962336	\N
21	foursquare	52f3922e498ec8f815279b7b	checkin	-300	31	1	2014-03-30 01:49:58.965136	2014-03-30 01:49:58.965136	\N
22	foursquare	52f184cb11d29125f2634eaa	checkin	-300	32	1	2014-03-30 01:49:58.967888	2014-03-30 01:49:58.967888	\N
\.


--
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: william
--

SELECT pg_catalog.setval('statuses_id_seq', 22, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: william
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, provider, uid, username) FROM stdin;
1	william.wnekowicz@gmail.com	$2a$10$IeAFhmTmVHeoV1gg/7BuTOOBR6yRSEOyVraBEXillra0Z1tpZLy32	\N	\N	\N	3	2014-03-29 19:22:29.479298	2014-03-29 19:21:57.063744	127.0.0.1	127.0.0.1	2014-03-29 19:20:50.706414	2014-03-29 19:22:29.480311	\N	\N	William Wnękowicz
11	\N	$2a$10$HWilWff7ERxLWpSWSPQs9uSsM4bCMZTD9WXvGMRvSGA.Z6maFm9RG	\N	\N	\N	2	2014-03-29 23:52:49.148282	2014-03-29 20:53:00.444987	127.0.0.1	127.0.0.1	2014-03-29 20:53:00.437466	2014-03-29 23:52:49.149306	\N	\N	William Wnekowicz
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: william
--

SELECT pg_catalog.setval('users_id_seq', 11, true);


--
-- Name: authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: william; Tablespace: 
--

ALTER TABLE ONLY authorizations
    ADD CONSTRAINT authorizations_pkey PRIMARY KEY (id);


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: william; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: william; Tablespace: 
--

ALTER TABLE ONLY statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: william; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_authorizations_on_user_id; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE INDEX index_authorizations_on_user_id ON authorizations USING btree (user_id);


--
-- Name: index_statuses_on_location_id; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE INDEX index_statuses_on_location_id ON statuses USING btree (location_id);


--
-- Name: index_statuses_on_user_id; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE INDEX index_statuses_on_user_id ON statuses USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: william; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: william
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM william;
GRANT ALL ON SCHEMA public TO william;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

