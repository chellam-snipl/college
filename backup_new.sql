--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: books; Type: TABLE; Schema: public; Owner: supranimbus07
--

CREATE TABLE books (
    id integer NOT NULL,
    name character varying,
    department character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE books OWNER TO supranimbus07;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus07
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO supranimbus07;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus07
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: supranimbus07
--

CREATE TABLE customers (
    id integer NOT NULL,
    customername character varying,
    contactname character varying,
    address character varying,
    city character varying,
    postalcode character varying,
    country character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO supranimbus07;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus07
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO supranimbus07;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus07
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: supranimbus07
--

CREATE TABLE departments (
    id integer NOT NULL,
    name character varying,
    department character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE departments OWNER TO supranimbus07;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus07
--

CREATE SEQUENCE departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departments_id_seq OWNER TO supranimbus07;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus07
--

ALTER SEQUENCE departments_id_seq OWNED BY departments.id;


--
-- Name: libraries; Type: TABLE; Schema: public; Owner: supranimbus07
--

CREATE TABLE libraries (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE libraries OWNER TO supranimbus07;

--
-- Name: libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus07
--

CREATE SEQUENCE libraries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE libraries_id_seq OWNER TO supranimbus07;

--
-- Name: libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus07
--

ALTER SEQUENCE libraries_id_seq OWNED BY libraries.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus07
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus07;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY departments ALTER COLUMN id SET DEFAULT nextval('departments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY libraries ALTER COLUMN id SET DEFAULT nextval('libraries_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: supranimbus07
--

COPY books (id, name, department, year, created_at, updated_at) FROM stdin;
1	asdfsdf354345345	sdfsdfs	343	2016-09-07 07:47:59.698244	2016-09-07 07:48:34.975739
2	12121wewewe	sdfsdfsdf	343433445	2016-09-07 07:49:25.825291	2016-09-07 07:51:00.87661
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus07
--

SELECT pg_catalog.setval('books_id_seq', 3, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: supranimbus07
--

COPY customers (id, customername, contactname, address, city, postalcode, country, created_at, updated_at) FROM stdin;
4	dfsafsdf	sdfsdfdsf	sdfsdfsdf	sdfsdfsdf	fgdfgfdg	fdgdfgdfg	2016-09-14 04:40:36.703087	2016-09-14 04:40:36.703087
5	adasd	asdasda	sadasd	erwerwe	sfdsdf	sdfdsf	2016-09-14 04:41:54.149238	2016-09-14 04:41:54.149238
1	Viji	Viji	kajlkjlk	berlin	jkljlkjl	germany	2016-09-14 04:34:35.938779	2016-09-14 04:51:14.237912
3	Darshana	Viji	asfdjs	Mexico	jkljkljlkj	Mexico	2016-09-14 04:35:35.232822	2016-09-14 04:51:46.864408
2	Anandhi	Lakshmi	sdfsdf	Paris	dsfsdfsd	France	2016-09-14 04:34:51.910059	2016-09-14 04:52:09.076306
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus07
--

SELECT pg_catalog.setval('customers_id_seq', 5, true);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: supranimbus07
--

COPY departments (id, name, department, year, created_at, updated_at) FROM stdin;
1	AAABBB		2017	2016-09-07 07:41:15.004885	2016-09-07 07:41:15.004885
\.


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus07
--

SELECT pg_catalog.setval('departments_id_seq', 1, true);


--
-- Data for Name: libraries; Type: TABLE DATA; Schema: public; Owner: supranimbus07
--

COPY libraries (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus07
--

SELECT pg_catalog.setval('libraries_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus07
--

COPY schema_migrations (version) FROM stdin;
20160907040741
20160907072226
20160907072505
20160914042125
\.


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus07
--

ALTER TABLE ONLY libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus07
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

