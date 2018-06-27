--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 9.6.9

-- Started on 2018-06-26 16:44:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2343 (class 1262 OID 16607)
-- Name: educational_center; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE educational_center WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE educational_center OWNER TO postgres;

\connect educational_center

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 192 (class 1259 OID 16893)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ecuser;

--
-- TOC entry 191 (class 1259 OID 16891)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ecuser;

--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 194 (class 1259 OID 16903)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ecuser;

--
-- TOC entry 193 (class 1259 OID 16901)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ecuser;

--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 190 (class 1259 OID 16885)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ecuser;

--
-- TOC entry 189 (class 1259 OID 16883)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ecuser;

--
-- TOC entry 2348 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 196 (class 1259 OID 16911)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ecuser;

--
-- TOC entry 198 (class 1259 OID 16921)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ecuser;

--
-- TOC entry 197 (class 1259 OID 16919)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ecuser;

--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 195 (class 1259 OID 16909)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ecuser;

--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 200 (class 1259 OID 16929)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ecuser;

--
-- TOC entry 199 (class 1259 OID 16927)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ecuser;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 204 (class 1259 OID 17019)
-- Name: class_app_group; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_group (
    id integer NOT NULL,
    level integer NOT NULL,
    letter character varying(1) NOT NULL,
    team_leader_id integer NOT NULL
);


ALTER TABLE public.class_app_group OWNER TO ecuser;

--
-- TOC entry 203 (class 1259 OID 17017)
-- Name: class_app_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_group_id_seq OWNER TO ecuser;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 203
-- Name: class_app_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_group_id_seq OWNED BY public.class_app_group.id;


--
-- TOC entry 206 (class 1259 OID 17027)
-- Name: class_app_journal; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_journal (
    id integer NOT NULL,
    date date NOT NULL,
    score character varying(1) NOT NULL,
    student_id_id integer NOT NULL,
    subject_id_id integer NOT NULL
);


ALTER TABLE public.class_app_journal OWNER TO ecuser;

--
-- TOC entry 205 (class 1259 OID 17025)
-- Name: class_app_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_journal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_journal_id_seq OWNER TO ecuser;

--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 205
-- Name: class_app_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_journal_id_seq OWNED BY public.class_app_journal.id;


--
-- TOC entry 208 (class 1259 OID 17035)
-- Name: class_app_parent; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_parent (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    patronymic character varying(20) NOT NULL,
    birthday date NOT NULL,
    work_place character varying(300) NOT NULL,
    email character varying(254) NOT NULL,
    student_id_id integer NOT NULL
);


ALTER TABLE public.class_app_parent OWNER TO ecuser;

--
-- TOC entry 207 (class 1259 OID 17033)
-- Name: class_app_parent_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_parent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_parent_id_seq OWNER TO ecuser;

--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 207
-- Name: class_app_parent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_parent_id_seq OWNED BY public.class_app_parent.id;


--
-- TOC entry 210 (class 1259 OID 17046)
-- Name: class_app_student; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_student (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    patronymic character varying(20) NOT NULL,
    birthday date NOT NULL,
    group_id_id integer NOT NULL
);


ALTER TABLE public.class_app_student OWNER TO ecuser;

--
-- TOC entry 209 (class 1259 OID 17044)
-- Name: class_app_student_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_student_id_seq OWNER TO ecuser;

--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 209
-- Name: class_app_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_student_id_seq OWNED BY public.class_app_student.id;


--
-- TOC entry 212 (class 1259 OID 17054)
-- Name: class_app_subject; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_subject (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.class_app_subject OWNER TO ecuser;

--
-- TOC entry 211 (class 1259 OID 17052)
-- Name: class_app_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_subject_id_seq OWNER TO ecuser;

--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 211
-- Name: class_app_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_subject_id_seq OWNED BY public.class_app_subject.id;


--
-- TOC entry 214 (class 1259 OID 17062)
-- Name: class_app_teacher; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.class_app_teacher (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    patronymic character varying(20) NOT NULL,
    birthday date NOT NULL,
    recipe_date date NOT NULL,
    specialization character varying(20) NOT NULL
);


ALTER TABLE public.class_app_teacher OWNER TO ecuser;

--
-- TOC entry 213 (class 1259 OID 17060)
-- Name: class_app_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.class_app_teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_app_teacher_id_seq OWNER TO ecuser;

--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 213
-- Name: class_app_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.class_app_teacher_id_seq OWNED BY public.class_app_teacher.id;


--
-- TOC entry 202 (class 1259 OID 16989)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO ecuser;

--
-- TOC entry 201 (class 1259 OID 16987)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ecuser;

--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 188 (class 1259 OID 16875)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ecuser;

--
-- TOC entry 187 (class 1259 OID 16873)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ecuser;

--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 16864)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ecuser;

--
-- TOC entry 185 (class 1259 OID 16862)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ecuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ecuser;

--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 215 (class 1259 OID 17100)
-- Name: django_session; Type: TABLE; Schema: public; Owner: ecuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ecuser;

--
-- TOC entry 2097 (class 2604 OID 16896)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2098 (class 2604 OID 16906)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2096 (class 2604 OID 16888)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2099 (class 2604 OID 16914)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2100 (class 2604 OID 16924)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2101 (class 2604 OID 16932)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2104 (class 2604 OID 17022)
-- Name: class_app_group id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_group ALTER COLUMN id SET DEFAULT nextval('public.class_app_group_id_seq'::regclass);


--
-- TOC entry 2105 (class 2604 OID 17030)
-- Name: class_app_journal id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_journal ALTER COLUMN id SET DEFAULT nextval('public.class_app_journal_id_seq'::regclass);


--
-- TOC entry 2106 (class 2604 OID 17038)
-- Name: class_app_parent id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_parent ALTER COLUMN id SET DEFAULT nextval('public.class_app_parent_id_seq'::regclass);


--
-- TOC entry 2107 (class 2604 OID 17049)
-- Name: class_app_student id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_student ALTER COLUMN id SET DEFAULT nextval('public.class_app_student_id_seq'::regclass);


--
-- TOC entry 2108 (class 2604 OID 17057)
-- Name: class_app_subject id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_subject ALTER COLUMN id SET DEFAULT nextval('public.class_app_subject_id_seq'::regclass);


--
-- TOC entry 2109 (class 2604 OID 17065)
-- Name: class_app_teacher id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_teacher ALTER COLUMN id SET DEFAULT nextval('public.class_app_teacher_id_seq'::regclass);


--
-- TOC entry 2102 (class 2604 OID 16992)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2095 (class 2604 OID 16878)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2094 (class 2604 OID 16867)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2314 (class 0 OID 16893)
-- Dependencies: 192
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ecuser
--



--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 191
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2316 (class 0 OID 16903)
-- Dependencies: 194
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ecuser
--



--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2312 (class 0 OID 16885)
-- Dependencies: 190
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add Класс', 7, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change Класс', 7, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete Класс', 7, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add Журнал', 8, 'add_journal');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change Журнал', 8, 'change_journal');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete Журнал', 8, 'delete_journal');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add Родитель', 9, 'add_parent');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change Родитель', 9, 'change_parent');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete Родитель', 9, 'delete_parent');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can add Ученик', 10, 'add_student');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can change Ученик', 10, 'change_student');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can delete Ученик', 10, 'delete_student');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can add Предмет', 11, 'add_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can change Предмет', 11, 'change_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can delete Предмет', 11, 'delete_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add Преподаватель', 12, 'add_teacher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change Преподаватель', 12, 'change_teacher');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete Преподаватель', 12, 'delete_teacher');


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 189
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 2318 (class 0 OID 16911)
-- Dependencies: 196
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$100000$ryjfV8Z8BzxF$UY58fcGLlEcG6N+d7m2ph0XbwsxFP4UL3Z+9GDD6geo=', '2018-06-26 16:16:23.472621+03', true, 'admin', '', '', 'admin@mail.net', true, true, '2018-06-26 16:16:11.245921+03');


--
-- TOC entry 2320 (class 0 OID 16921)
-- Dependencies: 198
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ecuser
--



--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 2322 (class 0 OID 16929)
-- Dependencies: 200
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ecuser
--



--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2326 (class 0 OID 17019)
-- Dependencies: 204
-- Data for Name: class_app_group; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_group (id, level, letter, team_leader_id) VALUES (1, 11, 'А', 1);
INSERT INTO public.class_app_group (id, level, letter, team_leader_id) VALUES (2, 6, 'Б', 2);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 203
-- Name: class_app_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_group_id_seq', 2, true);


--
-- TOC entry 2328 (class 0 OID 17027)
-- Dependencies: 206
-- Data for Name: class_app_journal; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_journal (id, date, score, student_id_id, subject_id_id) VALUES (1, '2018-06-01', 'Н', 1, 1);
INSERT INTO public.class_app_journal (id, date, score, student_id_id, subject_id_id) VALUES (2, '2018-06-03', '2', 1, 2);


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 205
-- Name: class_app_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_journal_id_seq', 2, true);


--
-- TOC entry 2330 (class 0 OID 17035)
-- Dependencies: 208
-- Data for Name: class_app_parent; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_parent (id, first_name, last_name, patronymic, birthday, work_place, email, student_id_id) VALUES (1, 'Людмила', 'Ученикова', 'Петровна', '1985-02-20', 'Домохозяйка', 'AnonimFakeov@gmail.com', 1);


--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 207
-- Name: class_app_parent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_parent_id_seq', 1, true);


--
-- TOC entry 2332 (class 0 OID 17046)
-- Dependencies: 210
-- Data for Name: class_app_student; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_student (id, first_name, last_name, patronymic, birthday, group_id_id) VALUES (1, 'Иван', 'Учеников', 'Семенович', '2005-07-02', 1);


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 209
-- Name: class_app_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_student_id_seq', 1, true);


--
-- TOC entry 2334 (class 0 OID 17054)
-- Dependencies: 212
-- Data for Name: class_app_subject; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_subject (id, name) VALUES (1, 'Математика');
INSERT INTO public.class_app_subject (id, name) VALUES (2, 'Рисование');
INSERT INTO public.class_app_subject (id, name) VALUES (3, 'Литература');
INSERT INTO public.class_app_subject (id, name) VALUES (4, 'Химия');
INSERT INTO public.class_app_subject (id, name) VALUES (5, 'Физика');


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 211
-- Name: class_app_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_subject_id_seq', 5, true);


--
-- TOC entry 2336 (class 0 OID 17062)
-- Dependencies: 214
-- Data for Name: class_app_teacher; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.class_app_teacher (id, first_name, last_name, patronymic, birthday, recipe_date, specialization) VALUES (1, 'Татьяна', 'Училкина', 'Петровна', '1990-01-01', '2017-06-01', 'Биология');
INSERT INTO public.class_app_teacher (id, first_name, last_name, patronymic, birthday, recipe_date, specialization) VALUES (2, 'Тамара', 'Вернидуб', 'Ивановна', '1965-05-16', '2000-06-30', 'Математика');
INSERT INTO public.class_app_teacher (id, first_name, last_name, patronymic, birthday, recipe_date, specialization) VALUES (3, 'Наталья', 'Петренко', 'Александровна', '1984-11-11', '2005-03-30', 'Литература');
INSERT INTO public.class_app_teacher (id, first_name, last_name, patronymic, birthday, recipe_date, specialization) VALUES (4, 'Жанна', 'Петрова', 'Алексеевна', '1980-12-16', '2017-10-21', 'Физика');


--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 213
-- Name: class_app_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.class_app_teacher_id_seq', 4, true);


--
-- TOC entry 2324 (class 0 OID 16989)
-- Dependencies: 202
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2018-06-26 16:17:50.904627+03', '1', 'Teacher object (1)', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2018-06-26 16:19:24.397981+03', '1', 'Group object (1)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2018-06-26 16:30:13.037109+03', '1', 'Учеников Иван Семенович', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2018-06-26 16:31:32.43466+03', '1', 'Ученикова Людмила Петровна', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2018-06-26 16:31:48.423575+03', '1', 'Математика', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2018-06-26 16:31:59.536213+03', '2', 'Рисование', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2018-06-26 16:32:12.623961+03', '3', 'Литература', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2018-06-26 16:32:28.978907+03', '4', 'Химия', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2018-06-26 16:32:39.516512+03', '5', 'Физика', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2018-06-26 16:34:29.039786+03', '2', 'Вернидуб Тамара Ивановна', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2018-06-26 16:34:31.438923+03', '2', '6-Б', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2018-06-26 16:36:01.083055+03', '3', 'Петренко Наталья Александровна', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2018-06-26 16:37:04.960716+03', '4', 'Петрова Жанна Алексеевна', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2018-06-26 16:38:04.822143+03', '1', 'Journal object (1)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2018-06-26 16:40:09.392273+03', '2', 'Journal object (2)', 1, '[{"added": {}}]', 8, 1);


--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- TOC entry 2310 (class 0 OID 16875)
-- Dependencies: 188
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'class_app', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'class_app', 'journal');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'class_app', 'parent');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'class_app', 'student');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'class_app', 'subject');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'class_app', 'teacher');


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 2308 (class 0 OID 16864)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2018-06-26 16:14:51.091337+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2018-06-26 16:14:52.240402+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2018-06-26 16:14:52.446414+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-06-26 16:14:52.470416+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-06-26 16:14:52.499417+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-06-26 16:14:52.505418+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-06-26 16:14:52.516418+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-06-26 16:14:52.524419+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-06-26 16:14:52.531419+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-06-26 16:14:52.533419+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-26 16:14:52.54042+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0008_alter_user_username_max_length', '2018-06-26 16:14:52.605423+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2018-06-26 16:14:52.626425+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'class_app', '0001_initial', '2018-06-26 16:14:53.482474+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'sessions', '0001_initial', '2018-06-26 16:14:53.658484+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'class_app', '0002_auto_20180626_1639', '2018-06-26 16:39:34.827294+03');


--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- TOC entry 2337 (class 0 OID 17100)
-- Dependencies: 215
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ecuser
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('8y6dazgcj9lbsd27ofv3x2i6p1a6rjqp', 'NDUyMWRkNWE4ZmI2NWU3MTFkYTM3ZGVlOGU0ZDJiODk1MzRjZDBhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZTk4MzAzM2RmMjllMWZlNDRmNDY0MmE5NWEwMTc4NjdiYmIxNzk0In0=', '2018-07-10 16:16:23.491622+03');


--
-- TOC entry 2123 (class 2606 OID 16900)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2128 (class 2606 OID 16955)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2131 (class 2606 OID 16908)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2125 (class 2606 OID 16898)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2118 (class 2606 OID 16941)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2120 (class 2606 OID 16890)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2139 (class 2606 OID 16926)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2142 (class 2606 OID 16970)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2133 (class 2606 OID 16916)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2145 (class 2606 OID 16934)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2148 (class 2606 OID 16984)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2136 (class 2606 OID 17012)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2154 (class 2606 OID 17069)
-- Name: class_app_group class_app_group_level_letter_cdc8d209_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_group
    ADD CONSTRAINT class_app_group_level_letter_cdc8d209_uniq UNIQUE (level, letter);


--
-- TOC entry 2156 (class 2606 OID 17024)
-- Name: class_app_group class_app_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_group
    ADD CONSTRAINT class_app_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2159 (class 2606 OID 17032)
-- Name: class_app_journal class_app_journal_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_journal
    ADD CONSTRAINT class_app_journal_pkey PRIMARY KEY (id);


--
-- TOC entry 2163 (class 2606 OID 17043)
-- Name: class_app_parent class_app_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_parent
    ADD CONSTRAINT class_app_parent_pkey PRIMARY KEY (id);


--
-- TOC entry 2167 (class 2606 OID 17051)
-- Name: class_app_student class_app_student_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_student
    ADD CONSTRAINT class_app_student_pkey PRIMARY KEY (id);


--
-- TOC entry 2169 (class 2606 OID 17059)
-- Name: class_app_subject class_app_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_subject
    ADD CONSTRAINT class_app_subject_pkey PRIMARY KEY (id);


--
-- TOC entry 2171 (class 2606 OID 17067)
-- Name: class_app_teacher class_app_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_teacher
    ADD CONSTRAINT class_app_teacher_pkey PRIMARY KEY (id);


--
-- TOC entry 2151 (class 2606 OID 16998)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2113 (class 2606 OID 16882)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2115 (class 2606 OID 16880)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 16872)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2174 (class 2606 OID 17107)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2121 (class 1259 OID 16943)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2126 (class 1259 OID 16956)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2129 (class 1259 OID 16957)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2116 (class 1259 OID 16942)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2137 (class 1259 OID 16972)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2140 (class 1259 OID 16971)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2143 (class 1259 OID 16986)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2146 (class 1259 OID 16985)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2134 (class 1259 OID 17013)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2157 (class 1259 OID 17094)
-- Name: class_app_group_team_leader_id_6356d1d0; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX class_app_group_team_leader_id_6356d1d0 ON public.class_app_group USING btree (team_leader_id);


--
-- TOC entry 2160 (class 1259 OID 17082)
-- Name: class_app_journal_student_id_id_b04adafa; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX class_app_journal_student_id_id_b04adafa ON public.class_app_journal USING btree (student_id_id);


--
-- TOC entry 2161 (class 1259 OID 17088)
-- Name: class_app_journal_subject_id_id_1dd1515d; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX class_app_journal_subject_id_id_1dd1515d ON public.class_app_journal USING btree (subject_id_id);


--
-- TOC entry 2164 (class 1259 OID 17076)
-- Name: class_app_parent_student_id_id_983ad657; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX class_app_parent_student_id_id_983ad657 ON public.class_app_parent USING btree (student_id_id);


--
-- TOC entry 2165 (class 1259 OID 17075)
-- Name: class_app_student_group_id_id_2ef6b078; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX class_app_student_group_id_id_2ef6b078 ON public.class_app_student USING btree (group_id_id);


--
-- TOC entry 2149 (class 1259 OID 17009)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2152 (class 1259 OID 17010)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2172 (class 1259 OID 17109)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2175 (class 1259 OID 17108)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ecuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2178 (class 2606 OID 16949)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2177 (class 2606 OID 16944)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2176 (class 2606 OID 16935)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2180 (class 2606 OID 16964)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2179 (class 2606 OID 16959)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2182 (class 2606 OID 16978)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2181 (class 2606 OID 16973)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2185 (class 2606 OID 17095)
-- Name: class_app_group class_app_group_team_leader_id_6356d1d0_fk_class_app_teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_group
    ADD CONSTRAINT class_app_group_team_leader_id_6356d1d0_fk_class_app_teacher_id FOREIGN KEY (team_leader_id) REFERENCES public.class_app_teacher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2186 (class 2606 OID 17083)
-- Name: class_app_journal class_app_journal_student_id_id_b04adafa_fk_class_app; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_journal
    ADD CONSTRAINT class_app_journal_student_id_id_b04adafa_fk_class_app FOREIGN KEY (student_id_id) REFERENCES public.class_app_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2187 (class 2606 OID 17089)
-- Name: class_app_journal class_app_journal_subject_id_id_1dd1515d_fk_class_app; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_journal
    ADD CONSTRAINT class_app_journal_subject_id_id_1dd1515d_fk_class_app FOREIGN KEY (subject_id_id) REFERENCES public.class_app_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2188 (class 2606 OID 17077)
-- Name: class_app_parent class_app_parent_student_id_id_983ad657_fk_class_app_student_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_parent
    ADD CONSTRAINT class_app_parent_student_id_id_983ad657_fk_class_app_student_id FOREIGN KEY (student_id_id) REFERENCES public.class_app_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2189 (class 2606 OID 17070)
-- Name: class_app_student class_app_student_group_id_id_2ef6b078_fk_class_app_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.class_app_student
    ADD CONSTRAINT class_app_student_group_id_id_2ef6b078_fk_class_app_group_id FOREIGN KEY (group_id_id) REFERENCES public.class_app_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2183 (class 2606 OID 16999)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2184 (class 2606 OID 17004)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2018-06-26 16:44:30

--
-- PostgreSQL database dump complete
--

