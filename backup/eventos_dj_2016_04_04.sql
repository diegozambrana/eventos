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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO myuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO myuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO myuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO myuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO myuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO myuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO myuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO myuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO myuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO myuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO myuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO myuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO myuser;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO myuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO myuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO myuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO myuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO myuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO myuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO myuser;

--
-- Name: event_manager_artista; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_artista (
    persona_id integer NOT NULL,
    nombre_artistico character varying(255) NOT NULL,
    biografia text NOT NULL
);


ALTER TABLE public.event_manager_artista OWNER TO myuser;

--
-- Name: event_manager_banda; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_banda (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text NOT NULL,
    estilo_id integer NOT NULL
);


ALTER TABLE public.event_manager_banda OWNER TO myuser;

--
-- Name: event_manager_banda_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_banda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_banda_id_seq OWNER TO myuser;

--
-- Name: event_manager_banda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_banda_id_seq OWNED BY event_manager_banda.id;


--
-- Name: event_manager_cliente; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_cliente (
    persona_id integer NOT NULL,
    nit integer NOT NULL
);


ALTER TABLE public.event_manager_cliente OWNER TO myuser;

--
-- Name: event_manager_concierto; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_concierto (
    evento_id integer NOT NULL,
    titulo character varying(255) NOT NULL
);


ALTER TABLE public.event_manager_concierto OWNER TO myuser;

--
-- Name: event_manager_contrato; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_contrato (
    id integer NOT NULL,
    costo_total numeric(10,2) NOT NULL,
    a_cuenta numeric(10,2) NOT NULL,
    saldo numeric(10,2) NOT NULL,
    fecha date NOT NULL,
    evento_id integer NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE public.event_manager_contrato OWNER TO myuser;

--
-- Name: event_manager_contrato_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_contrato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_contrato_id_seq OWNER TO myuser;

--
-- Name: event_manager_contrato_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_contrato_id_seq OWNED BY event_manager_contrato.id;


--
-- Name: event_manager_estilomusical; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_estilomusical (
    id integer NOT NULL,
    estilo character varying(100) NOT NULL
);


ALTER TABLE public.event_manager_estilomusical OWNER TO myuser;

--
-- Name: event_manager_estilomusical_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_estilomusical_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_estilomusical_id_seq OWNER TO myuser;

--
-- Name: event_manager_estilomusical_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_estilomusical_id_seq OWNED BY event_manager_estilomusical.id;


--
-- Name: event_manager_evento; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_evento (
    id integer NOT NULL,
    inicio timestamp with time zone NOT NULL,
    fin timestamp with time zone NOT NULL,
    lugar_id integer NOT NULL,
    tipo_evento_id integer NOT NULL
);


ALTER TABLE public.event_manager_evento OWNER TO myuser;

--
-- Name: event_manager_evento_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_evento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_evento_id_seq OWNER TO myuser;

--
-- Name: event_manager_evento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_evento_id_seq OWNED BY event_manager_evento.id;


--
-- Name: event_manager_expone; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_expone (
    id integer NOT NULL,
    artista_id integer NOT NULL,
    exposicion_id integer NOT NULL
);


ALTER TABLE public.event_manager_expone OWNER TO myuser;

--
-- Name: event_manager_expone_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_expone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_expone_id_seq OWNER TO myuser;

--
-- Name: event_manager_expone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_expone_id_seq OWNED BY event_manager_expone.id;


--
-- Name: event_manager_exposicion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_exposicion (
    evento_id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text NOT NULL,
    tipo_exposicion_id integer NOT NULL
);


ALTER TABLE public.event_manager_exposicion OWNER TO myuser;

--
-- Name: event_manager_fiesta; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_fiesta (
    evento_id integer NOT NULL,
    tipo_fiesta_id integer NOT NULL
);


ALTER TABLE public.event_manager_fiesta OWNER TO myuser;

--
-- Name: event_manager_lugar; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_lugar (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    direccion character varying(250) NOT NULL
);


ALTER TABLE public.event_manager_lugar OWNER TO myuser;

--
-- Name: event_manager_lugar_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_lugar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_lugar_id_seq OWNER TO myuser;

--
-- Name: event_manager_lugar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_lugar_id_seq OWNED BY event_manager_lugar.id;


--
-- Name: event_manager_persona; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_persona (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    ci integer NOT NULL
);


ALTER TABLE public.event_manager_persona OWNER TO myuser;

--
-- Name: event_manager_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_persona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_persona_id_seq OWNER TO myuser;

--
-- Name: event_manager_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_persona_id_seq OWNED BY event_manager_persona.id;


--
-- Name: event_manager_presentacion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_presentacion (
    id integer NOT NULL,
    banda_id integer NOT NULL,
    concierto_id integer NOT NULL
);


ALTER TABLE public.event_manager_presentacion OWNER TO myuser;

--
-- Name: event_manager_presentacion_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_presentacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_presentacion_id_seq OWNER TO myuser;

--
-- Name: event_manager_presentacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_presentacion_id_seq OWNED BY event_manager_presentacion.id;


--
-- Name: event_manager_tipoevento; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_tipoevento (
    id integer NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.event_manager_tipoevento OWNER TO myuser;

--
-- Name: event_manager_tipoevento_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_tipoevento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_tipoevento_id_seq OWNER TO myuser;

--
-- Name: event_manager_tipoevento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_tipoevento_id_seq OWNED BY event_manager_tipoevento.id;


--
-- Name: event_manager_tipoexposicion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_tipoexposicion (
    id integer NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.event_manager_tipoexposicion OWNER TO myuser;

--
-- Name: event_manager_tipoexposicion_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_tipoexposicion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_tipoexposicion_id_seq OWNER TO myuser;

--
-- Name: event_manager_tipoexposicion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_tipoexposicion_id_seq OWNED BY event_manager_tipoexposicion.id;


--
-- Name: event_manager_tipofiesta; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE event_manager_tipofiesta (
    id integer NOT NULL,
    tipo character varying(250) NOT NULL
);


ALTER TABLE public.event_manager_tipofiesta OWNER TO myuser;

--
-- Name: event_manager_tipofiesta_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE event_manager_tipofiesta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_manager_tipofiesta_id_seq OWNER TO myuser;

--
-- Name: event_manager_tipofiesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE event_manager_tipofiesta_id_seq OWNED BY event_manager_tipofiesta.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_banda ALTER COLUMN id SET DEFAULT nextval('event_manager_banda_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_contrato ALTER COLUMN id SET DEFAULT nextval('event_manager_contrato_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_estilomusical ALTER COLUMN id SET DEFAULT nextval('event_manager_estilomusical_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_evento ALTER COLUMN id SET DEFAULT nextval('event_manager_evento_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_expone ALTER COLUMN id SET DEFAULT nextval('event_manager_expone_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_lugar ALTER COLUMN id SET DEFAULT nextval('event_manager_lugar_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_persona ALTER COLUMN id SET DEFAULT nextval('event_manager_persona_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_presentacion ALTER COLUMN id SET DEFAULT nextval('event_manager_presentacion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_tipoevento ALTER COLUMN id SET DEFAULT nextval('event_manager_tipoevento_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_tipoexposicion ALTER COLUMN id SET DEFAULT nextval('event_manager_tipoexposicion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_tipofiesta ALTER COLUMN id SET DEFAULT nextval('event_manager_tipofiesta_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add token	7	add_token
20	Can change token	7	change_token
21	Can delete token	7	delete_token
22	Can add lugar	8	add_lugar
23	Can change lugar	8	change_lugar
24	Can delete lugar	8	delete_lugar
25	Can add tipo evento	9	add_tipoevento
26	Can change tipo evento	9	change_tipoevento
27	Can delete tipo evento	9	delete_tipoevento
28	Can add evento	10	add_evento
29	Can change evento	10	change_evento
30	Can delete evento	10	delete_evento
31	Can add tipo fiesta	11	add_tipofiesta
32	Can change tipo fiesta	11	change_tipofiesta
33	Can delete tipo fiesta	11	delete_tipofiesta
34	Can add fiesta	12	add_fiesta
35	Can change fiesta	12	change_fiesta
36	Can delete fiesta	12	delete_fiesta
37	Can add persona	13	add_persona
38	Can change persona	13	change_persona
39	Can delete persona	13	delete_persona
40	Can add cliente	14	add_cliente
41	Can change cliente	14	change_cliente
42	Can delete cliente	14	delete_cliente
43	Can add contrato	15	add_contrato
44	Can change contrato	15	change_contrato
45	Can delete contrato	15	delete_contrato
46	Can add tipo exposicion	16	add_tipoexposicion
47	Can change tipo exposicion	16	change_tipoexposicion
48	Can delete tipo exposicion	16	delete_tipoexposicion
49	Can add exposicion	17	add_exposicion
50	Can change exposicion	17	change_exposicion
51	Can delete exposicion	17	delete_exposicion
52	Can add artista	18	add_artista
53	Can change artista	18	change_artista
54	Can delete artista	18	delete_artista
55	Can add expone	19	add_expone
56	Can change expone	19	change_expone
57	Can delete expone	19	delete_expone
58	Can add concierto	20	add_concierto
59	Can change concierto	20	change_concierto
60	Can delete concierto	20	delete_concierto
61	Can add estilo musical	21	add_estilomusical
62	Can change estilo musical	21	change_estilomusical
63	Can delete estilo musical	21	delete_estilomusical
64	Can add banda	22	add_banda
65	Can change banda	22	change_banda
66	Can delete banda	22	delete_banda
67	Can add presentacion	23	add_presentacion
68	Can change presentacion	23	change_presentacion
69	Can delete presentacion	23	delete_presentacion
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	event_manager	lugar
9	event_manager	tipoevento
10	event_manager	evento
11	event_manager	tipofiesta
12	event_manager	fiesta
13	event_manager	persona
14	event_manager	cliente
15	event_manager	contrato
16	event_manager	tipoexposicion
17	event_manager	exposicion
18	event_manager	artista
19	event_manager	expone
20	event_manager	concierto
21	event_manager	estilomusical
22	event_manager	banda
23	event_manager	presentacion
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-03-03 23:26:04.373477-04
2	auth	0001_initial	2016-03-03 23:26:05.268874-04
3	admin	0001_initial	2016-03-03 23:26:05.520732-04
4	admin	0002_logentry_remove_auto_add	2016-03-03 23:26:05.586639-04
5	contenttypes	0002_remove_content_type_name	2016-03-03 23:26:05.730217-04
6	auth	0002_alter_permission_name_max_length	2016-03-03 23:26:05.851264-04
7	auth	0003_alter_user_email_max_length	2016-03-03 23:26:05.896131-04
8	auth	0004_alter_user_username_opts	2016-03-03 23:26:05.92797-04
9	auth	0005_alter_user_last_login_null	2016-03-03 23:26:05.961107-04
10	auth	0006_require_contenttypes_0002	2016-03-03 23:26:05.972041-04
11	auth	0007_alter_validators_add_error_messages	2016-03-03 23:26:06.003761-04
12	authtoken	0001_initial	2016-03-03 23:26:06.171579-04
13	sessions	0001_initial	2016-03-03 23:26:06.358038-04
14	event_manager	0001_initial	2016-03-04 13:25:03.173051-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: event_manager_artista; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_artista (persona_id, nombre_artistico, biografia) FROM stdin;
\.


--
-- Data for Name: event_manager_banda; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_banda (id, nombre, descripcion, estilo_id) FROM stdin;
\.


--
-- Name: event_manager_banda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_banda_id_seq', 1, false);


--
-- Data for Name: event_manager_cliente; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_cliente (persona_id, nit) FROM stdin;
\.


--
-- Data for Name: event_manager_concierto; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_concierto (evento_id, titulo) FROM stdin;
\.


--
-- Data for Name: event_manager_contrato; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_contrato (id, costo_total, a_cuenta, saldo, fecha, evento_id, cliente_id) FROM stdin;
\.


--
-- Name: event_manager_contrato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_contrato_id_seq', 1, false);


--
-- Data for Name: event_manager_estilomusical; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_estilomusical (id, estilo) FROM stdin;
\.


--
-- Name: event_manager_estilomusical_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_estilomusical_id_seq', 1, false);


--
-- Data for Name: event_manager_evento; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_evento (id, inicio, fin, lugar_id, tipo_evento_id) FROM stdin;
\.


--
-- Name: event_manager_evento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_evento_id_seq', 1, false);


--
-- Data for Name: event_manager_expone; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_expone (id, artista_id, exposicion_id) FROM stdin;
\.


--
-- Name: event_manager_expone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_expone_id_seq', 1, false);


--
-- Data for Name: event_manager_exposicion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_exposicion (evento_id, titulo, descripcion, tipo_exposicion_id) FROM stdin;
\.


--
-- Data for Name: event_manager_fiesta; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_fiesta (evento_id, tipo_fiesta_id) FROM stdin;
\.


--
-- Data for Name: event_manager_lugar; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_lugar (id, nombre, direccion) FROM stdin;
\.


--
-- Name: event_manager_lugar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_lugar_id_seq', 1, false);


--
-- Data for Name: event_manager_persona; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_persona (id, nombre, apellido, ci) FROM stdin;
\.


--
-- Name: event_manager_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_persona_id_seq', 1, false);


--
-- Data for Name: event_manager_presentacion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_presentacion (id, banda_id, concierto_id) FROM stdin;
\.


--
-- Name: event_manager_presentacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_presentacion_id_seq', 1, false);


--
-- Data for Name: event_manager_tipoevento; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_tipoevento (id, tipo) FROM stdin;
\.


--
-- Name: event_manager_tipoevento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipoevento_id_seq', 1, false);


--
-- Data for Name: event_manager_tipoexposicion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_tipoexposicion (id, tipo) FROM stdin;
\.


--
-- Name: event_manager_tipoexposicion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipoexposicion_id_seq', 1, false);


--
-- Data for Name: event_manager_tipofiesta; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_tipofiesta (id, tipo) FROM stdin;
\.


--
-- Name: event_manager_tipofiesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipofiesta_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: event_manager_artista_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_artista
    ADD CONSTRAINT event_manager_artista_pkey PRIMARY KEY (persona_id);


--
-- Name: event_manager_banda_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_banda
    ADD CONSTRAINT event_manager_banda_pkey PRIMARY KEY (id);


--
-- Name: event_manager_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_cliente
    ADD CONSTRAINT event_manager_cliente_pkey PRIMARY KEY (persona_id);


--
-- Name: event_manager_concierto_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_concierto
    ADD CONSTRAINT event_manager_concierto_pkey PRIMARY KEY (evento_id);


--
-- Name: event_manager_contrato_evento_id_1aca3462_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_contrato
    ADD CONSTRAINT event_manager_contrato_evento_id_1aca3462_uniq UNIQUE (evento_id, cliente_id);


--
-- Name: event_manager_contrato_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_contrato
    ADD CONSTRAINT event_manager_contrato_pkey PRIMARY KEY (id);


--
-- Name: event_manager_estilomusical_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_estilomusical
    ADD CONSTRAINT event_manager_estilomusical_pkey PRIMARY KEY (id);


--
-- Name: event_manager_evento_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_evento
    ADD CONSTRAINT event_manager_evento_pkey PRIMARY KEY (id);


--
-- Name: event_manager_expone_exposicion_id_9adaa92c_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_expone
    ADD CONSTRAINT event_manager_expone_exposicion_id_9adaa92c_uniq UNIQUE (exposicion_id, artista_id);


--
-- Name: event_manager_expone_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_expone
    ADD CONSTRAINT event_manager_expone_pkey PRIMARY KEY (id);


--
-- Name: event_manager_exposicion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_exposicion
    ADD CONSTRAINT event_manager_exposicion_pkey PRIMARY KEY (evento_id);


--
-- Name: event_manager_fiesta_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_fiesta
    ADD CONSTRAINT event_manager_fiesta_pkey PRIMARY KEY (evento_id);


--
-- Name: event_manager_lugar_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_lugar
    ADD CONSTRAINT event_manager_lugar_pkey PRIMARY KEY (id);


--
-- Name: event_manager_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_persona
    ADD CONSTRAINT event_manager_persona_pkey PRIMARY KEY (id);


--
-- Name: event_manager_presentacion_banda_id_2f53bd2e_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_presentacion
    ADD CONSTRAINT event_manager_presentacion_banda_id_2f53bd2e_uniq UNIQUE (banda_id, concierto_id);


--
-- Name: event_manager_presentacion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_presentacion
    ADD CONSTRAINT event_manager_presentacion_pkey PRIMARY KEY (id);


--
-- Name: event_manager_tipoevento_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_tipoevento
    ADD CONSTRAINT event_manager_tipoevento_pkey PRIMARY KEY (id);


--
-- Name: event_manager_tipoexposicion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_tipoexposicion
    ADD CONSTRAINT event_manager_tipoexposicion_pkey PRIMARY KEY (id);


--
-- Name: event_manager_tipofiesta_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_tipofiesta
    ADD CONSTRAINT event_manager_tipofiesta_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: event_manager_banda_754f0119; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_banda_754f0119 ON event_manager_banda USING btree (estilo_id);


--
-- Name: event_manager_contrato_4a860110; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_contrato_4a860110 ON event_manager_contrato USING btree (cliente_id);


--
-- Name: event_manager_contrato_afb29da0; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_contrato_afb29da0 ON event_manager_contrato USING btree (evento_id);


--
-- Name: event_manager_evento_2dfa5f7f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_evento_2dfa5f7f ON event_manager_evento USING btree (lugar_id);


--
-- Name: event_manager_evento_ef5461f7; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_evento_ef5461f7 ON event_manager_evento USING btree (tipo_evento_id);


--
-- Name: event_manager_expone_0d825ef3; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_expone_0d825ef3 ON event_manager_expone USING btree (exposicion_id);


--
-- Name: event_manager_expone_700e7aba; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_expone_700e7aba ON event_manager_expone USING btree (artista_id);


--
-- Name: event_manager_exposicion_974bba22; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_exposicion_974bba22 ON event_manager_exposicion USING btree (tipo_exposicion_id);


--
-- Name: event_manager_fiesta_9b77aea2; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_fiesta_9b77aea2 ON event_manager_fiesta USING btree (tipo_fiesta_id);


--
-- Name: event_manager_presentacion_1543dd17; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_presentacion_1543dd17 ON event_manager_presentacion USING btree (banda_id);


--
-- Name: event_manager_presentacion_bceb5b2d; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX event_manager_presentacion_bceb5b2d ON event_manager_presentacion USING btree (concierto_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ev_exposicion_id_10171188_fk_event_manager_exposicion_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_expone
    ADD CONSTRAINT ev_exposicion_id_10171188_fk_event_manager_exposicion_evento_id FOREIGN KEY (exposicion_id) REFERENCES event_manager_exposicion(evento_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: even_concierto_id_a9cd0c36_fk_event_manager_concierto_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_presentacion
    ADD CONSTRAINT even_concierto_id_a9cd0c36_fk_event_manager_concierto_evento_id FOREIGN KEY (concierto_id) REFERENCES event_manager_concierto(evento_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_m_artista_id_b19f1727_fk_event_manager_artista_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_expone
    ADD CONSTRAINT event_m_artista_id_b19f1727_fk_event_manager_artista_persona_id FOREIGN KEY (artista_id) REFERENCES event_manager_artista(persona_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_m_cliente_id_7a7ae133_fk_event_manager_cliente_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_contrato
    ADD CONSTRAINT event_m_cliente_id_7a7ae133_fk_event_manager_cliente_persona_id FOREIGN KEY (cliente_id) REFERENCES event_manager_cliente(persona_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_ma_tipo_evento_id_2828da14_fk_event_manager_tipoevento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_evento
    ADD CONSTRAINT event_ma_tipo_evento_id_2828da14_fk_event_manager_tipoevento_id FOREIGN KEY (tipo_evento_id) REFERENCES event_manager_tipoevento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_ma_tipo_fiesta_id_65d30ab9_fk_event_manager_tipofiesta_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_fiesta
    ADD CONSTRAINT event_ma_tipo_fiesta_id_65d30ab9_fk_event_manager_tipofiesta_id FOREIGN KEY (tipo_fiesta_id) REFERENCES event_manager_tipofiesta(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_mana_estilo_id_f9ae3514_fk_event_manager_estilomusical_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_banda
    ADD CONSTRAINT event_mana_estilo_id_f9ae3514_fk_event_manager_estilomusical_id FOREIGN KEY (estilo_id) REFERENCES event_manager_estilomusical(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_a_persona_id_c2872a47_fk_event_manager_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_artista
    ADD CONSTRAINT event_manager_a_persona_id_c2872a47_fk_event_manager_persona_id FOREIGN KEY (persona_id) REFERENCES event_manager_persona(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_c_persona_id_87e7d658_fk_event_manager_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_cliente
    ADD CONSTRAINT event_manager_c_persona_id_87e7d658_fk_event_manager_persona_id FOREIGN KEY (persona_id) REFERENCES event_manager_persona(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_con_evento_id_44836bac_fk_event_manager_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_contrato
    ADD CONSTRAINT event_manager_con_evento_id_44836bac_fk_event_manager_evento_id FOREIGN KEY (evento_id) REFERENCES event_manager_evento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_con_evento_id_fa2e7670_fk_event_manager_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_concierto
    ADD CONSTRAINT event_manager_con_evento_id_fa2e7670_fk_event_manager_evento_id FOREIGN KEY (evento_id) REFERENCES event_manager_evento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_event_lugar_id_97ae0a31_fk_event_manager_lugar_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_evento
    ADD CONSTRAINT event_manager_event_lugar_id_97ae0a31_fk_event_manager_lugar_id FOREIGN KEY (lugar_id) REFERENCES event_manager_lugar(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_exp_evento_id_18a22dcf_fk_event_manager_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_exposicion
    ADD CONSTRAINT event_manager_exp_evento_id_18a22dcf_fk_event_manager_evento_id FOREIGN KEY (evento_id) REFERENCES event_manager_evento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_fie_evento_id_651739d0_fk_event_manager_evento_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_fiesta
    ADD CONSTRAINT event_manager_fie_evento_id_651739d0_fk_event_manager_evento_id FOREIGN KEY (evento_id) REFERENCES event_manager_evento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_manager_prese_banda_id_2a5069d7_fk_event_manager_banda_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_presentacion
    ADD CONSTRAINT event_manager_prese_banda_id_2a5069d7_fk_event_manager_banda_id FOREIGN KEY (banda_id) REFERENCES event_manager_banda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tipo_exposicion_id_9afacde5_fk_event_manager_tipoexposicion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY event_manager_exposicion
    ADD CONSTRAINT tipo_exposicion_id_9afacde5_fk_event_manager_tipoexposicion_id FOREIGN KEY (tipo_exposicion_id) REFERENCES event_manager_tipoexposicion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT ALL ON SCHEMA public TO myuser;


--
-- PostgreSQL database dump complete
--

