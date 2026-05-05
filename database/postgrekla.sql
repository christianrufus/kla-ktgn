--
-- PostgreSQL database dump
--

\restrict Ve8j0p62Qb2aJkVC2F2kqdS4hAmTDBu10BnuBA7uiThLKBpp0XJpcLygLreCAKB

-- Dumped from database version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: agenda; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.agenda (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    tanggal date NOT NULL,
    keterangan character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.agenda OWNER TO kla_user;

--
-- Name: agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.agenda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agenda_id_seq OWNER TO kla_user;

--
-- Name: agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.agenda_id_seq OWNED BY public.agenda.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO kla_user;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO kla_user;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.contact (
    id bigint NOT NULL,
    nama character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    subjek character varying(255) NOT NULL,
    isi text NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.contact OWNER TO kla_user;

--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_id_seq OWNER TO kla_user;

--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- Name: data_dukung; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.data_dukung (
    id bigint NOT NULL,
    opd_id bigint NOT NULL,
    indikator_id bigint NOT NULL,
    description text,
    created_by bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.data_dukung OWNER TO kla_user;

--
-- Name: data_dukung_files; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.data_dukung_files (
    id bigint NOT NULL,
    data_dukung_id bigint NOT NULL,
    file character varying(255),
    original_name character varying(255) NOT NULL,
    mime_type character varying(255) NOT NULL,
    size integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.data_dukung_files OWNER TO kla_user;

--
-- Name: data_dukung_files_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.data_dukung_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_dukung_files_id_seq OWNER TO kla_user;

--
-- Name: data_dukung_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.data_dukung_files_id_seq OWNED BY public.data_dukung_files.id;


--
-- Name: data_dukung_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.data_dukung_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_dukung_id_seq OWNER TO kla_user;

--
-- Name: data_dukung_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.data_dukung_id_seq OWNED BY public.data_dukung.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO kla_user;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO kla_user;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: indikators; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.indikators (
    id bigint NOT NULL,
    klaster_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.indikators OWNER TO kla_user;

--
-- Name: indikators_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.indikators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indikators_id_seq OWNER TO kla_user;

--
-- Name: indikators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.indikators_id_seq OWNED BY public.indikators.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO kla_user;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO kla_user;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO kla_user;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: kategori; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.kategori (
    id bigint NOT NULL,
    name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kategori OWNER TO kla_user;

--
-- Name: kategori_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.kategori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kategori_id_seq OWNER TO kla_user;

--
-- Name: kategori_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.kategori_id_seq OWNED BY public.kategori.id;


--
-- Name: klasters; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.klasters (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.klasters OWNER TO kla_user;

--
-- Name: klasters_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.klasters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.klasters_id_seq OWNER TO kla_user;

--
-- Name: klasters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.klasters_id_seq OWNED BY public.klasters.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.media (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    file character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    slide_show integer,
    hits integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.media OWNER TO kla_user;

--
-- Name: COLUMN media.slide_show; Type: COMMENT; Schema: public; Owner: kla_user
--

COMMENT ON COLUMN public.media.slide_show IS 'Status untuk media slideshow (1 = true, 0/null = false)';


--
-- Name: COLUMN media.hits; Type: COMMENT; Schema: public; Owner: kla_user
--

COMMENT ON COLUMN public.media.hits IS 'Memunculkan berapa kali file di download';


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO kla_user;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO kla_user;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO kla_user;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    kategori_id integer DEFAULT 0 NOT NULL,
    title character varying(255),
    content text,
    image character varying(255),
    created_by integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    counter integer DEFAULT 0 NOT NULL,
    flag character varying(20) DEFAULT 'kegiatan'::character varying NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.news OWNER TO kla_user;

--
-- Name: COLUMN news.status; Type: COMMENT; Schema: public; Owner: kla_user
--

COMMENT ON COLUMN public.news.status IS '0=menunggu persetujuan, 1=disetujui, 2=ditolak';


--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO kla_user;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: opds; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.opds (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.opds OWNER TO kla_user;

--
-- Name: opds_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.opds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opds_id_seq OWNER TO kla_user;

--
-- Name: opds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.opds_id_seq OWNED BY public.opds.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO kla_user;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO kla_user;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: program_kerjas; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.program_kerjas (
    id bigint NOT NULL,
    opd_id bigint NOT NULL,
    description text,
    tahun integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.program_kerjas OWNER TO kla_user;

--
-- Name: program_kerjas_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.program_kerjas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.program_kerjas_id_seq OWNER TO kla_user;

--
-- Name: program_kerjas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.program_kerjas_id_seq OWNED BY public.program_kerjas.id;


--
-- Name: setting; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.setting (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    page character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    image character varying(300),
    content text,
    type character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.setting OWNER TO kla_user;

--
-- Name: setting_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.setting_id_seq OWNER TO kla_user;

--
-- Name: setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.setting_id_seq OWNED BY public.setting.id;


--
-- Name: statistic; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public.statistic (
    id bigint NOT NULL,
    ip character varying(20),
    os character varying(30),
    browser character varying(120),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    last_activity timestamp(0) without time zone
);


ALTER TABLE public.statistic OWNER TO kla_user;

--
-- Name: statistic_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.statistic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statistic_id_seq OWNER TO kla_user;

--
-- Name: statistic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.statistic_id_seq OWNED BY public.statistic.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: kla_user
--

CREATE TABLE public."user" (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public."user" OWNER TO kla_user;

--
-- Name: COLUMN "user".status; Type: COMMENT; Schema: public; Owner: kla_user
--

COMMENT ON COLUMN public."user".status IS '1=admin, 0=user';


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: kla_user
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO kla_user;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kla_user
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: agenda id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.agenda ALTER COLUMN id SET DEFAULT nextval('public.agenda_id_seq'::regclass);


--
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- Name: data_dukung id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung ALTER COLUMN id SET DEFAULT nextval('public.data_dukung_id_seq'::regclass);


--
-- Name: data_dukung_files id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung_files ALTER COLUMN id SET DEFAULT nextval('public.data_dukung_files_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: indikators id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.indikators ALTER COLUMN id SET DEFAULT nextval('public.indikators_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: kategori id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.kategori ALTER COLUMN id SET DEFAULT nextval('public.kategori_id_seq'::regclass);


--
-- Name: klasters id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.klasters ALTER COLUMN id SET DEFAULT nextval('public.klasters_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: opds id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.opds ALTER COLUMN id SET DEFAULT nextval('public.opds_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: program_kerjas id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.program_kerjas ALTER COLUMN id SET DEFAULT nextval('public.program_kerjas_id_seq'::regclass);


--
-- Name: setting id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.setting ALTER COLUMN id SET DEFAULT nextval('public.setting_id_seq'::regclass);


--
-- Name: statistic id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.statistic ALTER COLUMN id SET DEFAULT nextval('public.statistic_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: agenda; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.agenda (id, title, tanggal, keterangan, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.cache (key, value, expiration) FROM stdin;
admin@admin.com|10.10.10.244:timer	i:1751314107;	1751314107
admin@admin.com|10.10.10.244	i:5;	1751314107
admin@mail.com|10.10.10.244:timer	i:1751314132;	1751314132
admin@mail.com|10.10.10.244	i:5;	1751314132
kla@katingankab.go.id|10.10.10.244:timer	i:1751314163;	1751314163
&#039;=&#039;&#039;or&#039;@gmail.com|10.10.10.244:timer	i:1764505164;	1764505164
kla@katingankab.go.id|10.10.10.244	i:5;	1751314163
admin@katingankab.go.id|10.10.10.244:timer	i:1751314186;	1751314186
&#039;=&#039;&#039;or&#039;@gmail.com|10.10.10.244	i:1;	1764505164
admin@demo.com|10.10.10.244:timer	i:1769959466;	1769959466
admin@demo.com|10.10.10.244	i:1;	1769959466
admin@katingankab.go.id|10.10.10.244	i:5;	1751314186
student@demo.com|10.10.10.244:timer	i:1769959479;	1769959479
student@demo.com|10.10.10.244	i:1;	1769959479
instructor@demo.com|10.10.10.244:timer	i:1769959496;	1769959496
instructor@demo.com|10.10.10.244	i:1;	1769959496
admin@kla-katingan.go.id|10.10.10.244:timer	i:1776422198;	1776422198
admin@kla-katingan.go.id|10.10.10.244	i:1;	1776422198
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.contact (id, nama, email, subjek, isi, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: data_dukung; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.data_dukung (id, opd_id, indikator_id, description, created_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: data_dukung_files; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.data_dukung_files (id, data_dukung_id, file, original_name, mime_type, size, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: indikators; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.indikators (id, klaster_id, name, created_at, updated_at) FROM stdin;
1	1	Persentase anak yang teregistrasi dan mendapatkan Kutipan Akta Kelahiran	2025-06-04 07:24:30	2025-06-04 07:24:30
2	1	Tersedia fasilitas informasi layak anak	2025-06-04 07:24:30	2025-06-04 07:24:30
3	1	Jumlah kelompok anak, termasuk Forum Anak, yang ada di kabupaten/kota, kecamatan dan desa/kelurahan	2025-06-04 07:24:30	2025-06-04 07:24:30
4	2	Persentase usia perkawinan pertama di bawah 18 (delapan belas) tahun	2025-06-04 07:24:30	2025-06-04 07:24:30
5	2	Tersedia lembaga konsultasi bagi orang tua/keluarga tentang pengasuhan dan perawatan anak	2025-06-04 07:24:30	2025-06-04 07:24:30
6	2	Tersedia lembaga kesejahteraan sosial anak	2025-06-04 07:24:30	2025-06-04 07:24:30
7	3	Angka kematian bayi	2025-06-04 07:24:30	2025-06-04 07:24:30
8	3	Prevalensi kekurangan gizi pada balita	2025-06-04 07:24:30	2025-06-04 07:24:30
9	3	Persentase air susu ibu (ASI) eksklusif	2025-06-04 07:24:30	2025-06-04 07:24:30
10	3	Jumlah pojok ASI	2025-06-04 07:24:30	2025-06-04 07:24:30
11	3	Persentase imunisasi dasar lengkap	2025-06-04 07:24:30	2025-06-04 07:24:30
12	3	Jumlah lembaga yang memberikan pelayanan kesehatan reproduksi dan mental	2025-06-04 07:24:30	2025-06-04 07:24:30
13	3	Jumlah anak dari keluarga miskin yang memperoleh akses peningkatan kesejahteraan	2025-06-04 07:24:30	2025-06-04 07:24:30
14	3	Persentase rumah tangga dengan akses air bersih	2025-06-04 07:24:30	2025-06-04 07:24:30
15	3	Tersedia kawasan tanpa rokok	2025-06-04 07:24:30	2025-06-04 07:24:30
16	4	Angka partisipasi pendidikan anak usia dini	2025-06-04 07:24:30	2025-06-04 07:24:30
17	4	Persentase wajib belajar pendidikan 12 (dua belas) tahun	2025-06-04 07:24:30	2025-06-04 07:24:30
18	4	Persentase sekolah ramah anak	2025-06-04 07:24:30	2025-06-04 07:24:30
19	4	Jumlah sekolah yang memiliki program, sarana dan prasarana perjalanan anak ke dan dari sekolah	2025-06-04 07:24:30	2025-06-04 07:24:30
20	4	Tersedia fasilitas untuk kegiatan kreatif dan rekreatif yang ramah anak, di luar sekolah, yang dapat diakses semua anak	2025-06-04 07:24:30	2025-06-04 07:24:30
21	5	Persentase anak yang memerlukan perlindungan khusus dan memperoleh pelayanan	2025-06-04 07:24:30	2025-06-04 07:24:30
22	5	Persentase kasus anak berhadapan dengan hukum (ABH) yang diselesaikan dengan pendekatan keadilan restoratif (restorative justice)	2025-06-04 07:24:30	2025-06-04 07:24:30
23	5	Adanya mekanisme penanggulangan bencana yang memperhatikan kepentingan anak	2025-06-04 07:24:30	2025-06-04 07:24:30
24	5	Persentase anak yang dibebaskan dari bentuk-bentuk pekerjaan terburuk anak	2025-06-04 07:24:30	2025-06-04 07:24:30
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.kategori (id, name, created_at, updated_at) FROM stdin;
1	Klaster 1 - Hak Sipil dan Kebebasan	2025-06-04 07:24:30	2025-06-04 07:24:30
2	Klaster 2 - Lingkungan Keluarga dan Pengasuhan Alternatif	2025-06-04 07:24:30	2025-06-04 07:24:30
3	Klaster 3 - Kesehatan Dasar dan Kesejahteraan	2025-06-04 07:24:30	2025-06-04 07:24:30
4	Klaster 4 - Pendidikan, Pemanfaatan Waktu Luang, dan Kegiatan Budaya	2025-06-04 07:24:30	2025-06-04 07:24:30
5	Klaster 5 - Perlindungan Khusus	2025-06-04 07:24:30	2025-06-04 07:24:30
\.


--
-- Data for Name: klasters; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.klasters (id, name, created_at, updated_at) FROM stdin;
1	Klaster 1 - Hak Sipil dan Kebebasan	2025-06-04 07:24:30	2025-06-04 07:24:30
2	Klaster 2 - Lingkungan Keluarga dan Pengasuhan Alternatif	2025-06-04 07:24:30	2025-06-04 07:24:30
3	Klaster 3 - Kesehatan Dasar dan Kesejahteraan	2025-06-04 07:24:30	2025-06-04 07:24:30
4	Klaster 4 - Pendidikan, Pemanfaatan Waktu Luang, dan Kegiatan Budaya	2025-06-04 07:24:30	2025-06-04 07:24:30
5	Klaster 5 - Perlindungan Khusus	2025-06-04 07:24:30	2025-06-04 07:24:30
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.media (id, name, file, path, created_at, updated_at, slide_show, hits) FROM stdin;
3	Katingan Diberi Penghargaan Sebagai Kabupaten Layak Anak	1749025513_katingan-diberi-penghargaan-sebagai-kabupaten-layak-anak.jpg	/storage/media/1749025513_katingan-diberi-penghargaan-sebagai-kabupaten-layak-anak.jpg	2025-06-04 08:25:13	2025-06-04 08:25:43	1	0
7	Perda No 6 Tahun 2016 KLA Katingan	1749094592_perda-no-6-tahun-2016-kla-katingan.pdf	/storage/media/1749094592_perda-no-6-tahun-2016-kla-katingan.pdf	2025-06-05 03:36:32	2025-06-05 03:36:32	0	0
8	Penetapan Peringkat Standardisasi RBRA Tahun 2021	1749094681_penetapan-peringkat-standardisasi-rbra-tahun-2021.pdf	/storage/media/1749094681_penetapan-peringkat-standardisasi-rbra-tahun-2021.pdf	2025-06-05 03:38:01	2025-06-05 03:38:01	0	0
10	tes	1749393892_tes.pdf	/storage/media/1749393892_tes.pdf	2025-06-08 14:44:52	2025-06-08 14:44:52	0	0
4	Stop Bullying	1749025622_stop-bullying.jpg	/storage/media/1749025622_stop-bullying.jpg	2025-06-04 08:27:02	2025-06-13 08:51:09	1	0
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000001_create_cache_table	1
2	0001_01_01_000002_create_jobs_table	1
3	2024_01_01_000001_create_agenda_table	1
4	2024_01_01_000002_create_contact_table	1
5	2024_01_01_000003_create_kategori_table	1
6	2024_01_01_000004_create_media_table	1
7	2024_01_01_000005_create_news_table	1
8	2024_01_01_000006_create_setting_table	1
9	2024_01_01_000007_create_statistic_table	1
10	2024_01_01_000008_create_user_table	1
11	2024_03_20_000001_create_opds_table	1
12	2024_03_21_000001_create_klasters_table	1
13	2024_03_21_000002_create_indikators_table	1
14	2024_03_22_000002_create_data_dukungs_table	1
15	2024_03_22_000003_create_data_dukung_files_table	1
16	2024_03_25_000001_add_status_to_news_table	1
17	2024_06_15_000001_create_program_kerjas_table	1
18	2025_03_04_071747_create_personal_access_tokens_table	1
19	2025_03_20_010034_add_last_activity_to_statistic_table	1
20	2025_04_07_144959_update_file_column_in_data_dukung_table	1
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.news (id, kategori_id, title, content, image, created_by, created_at, updated_at, counter, flag, status) FROM stdin;
13	2	test berita	tes ini berita	/storage/news/1777508893_test-berita.jpeg	1	2026-04-30 00:28:13	2026-04-30 00:35:56	1	kegiatan	0
12	1	TikTok Tutup 780 Ribu Akun Anak, Pemerintah Desak Platform Lain	<p style="text-align: justify;">Jakarta, 14 April 2026 - Menteri Komunikasi dan Digital Meutya Hafid menyatakan upaya pelindungan anak di ruang digital mulai menunjukkan hasil nyata. Hingga 10 April 2026, platform TikTok telah menonaktifkan sekitar 780 ribu akun milik pengguna berusia di bawah 16 tahun di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">Langkah ini merupakan bagian dari implementasi Peraturan Pemerintah Nomor 17 Tahun 2025 tentang Tata Kelola Penyelenggaraan Sistem Elektronik dalam Pelindungan Anak (PP TUNAS).</p>\r\n\r\n<p style="text-align: justify;">"Kami mencatat TikTok menjadi platform pertama yang melaporkan bahwa per tanggal 10 April 2026, telah menonaktifkan 780 ribu akun anak di bawah 16 tahun untuk Indonesia," ungkap Meutya dalam Konferensi Pers di Kantor Kementerian Komdigi, Jakarta Pusat, Selasa (14/4/2026).</p>\r\n\r\n<p style="text-align: justify;">Meutya menyampaikan apresiasi kepada platform TikTok yang telah memutuskan bergabung dalam gerakan bersama untuk melindungi anak-anak, khususnya di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">“TikTok telah menyerahkan surat komitmen kepatuhan kepada Pemerintah Republik Indonesia, mempublikasikan batas usia minimum 16 tahun melalui Help Center, serta berkomitmen melakukan pembaruan berkala atas implementasinya,” jelasnya.</p>\r\n\r\n<p style="text-align: justify;">Meutya menegaskan hal itu menjadi langkah awal yang sangat positif dan menjadi kemenangan bagi publik, khususnya orang tua dan anak-anak di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">"Kita harapkan juga muncul dari platform lainnya untuk segera menyampaikan jumlah akun yang sudah dilakukan penanganan atau takedown," ujarnya.</p>\r\n\r\n<p style="text-align: justify;">Sementara itu, terkait platform Roblox, Kemkomdigi mencatat adanya perkembangan di tingkat global.</p>\r\n\r\n<p style="text-align: justify;">Roblox dilaporkan telah melakukan penyesuaian pengaturan (adjustment setting) dan menghadirkan fitur baru secara global dari kantor pusatnya di Amerika Serikat, sebagai bagian dari upaya pelindungan anak.</p>\r\n\r\n<p style="text-align: justify;">Namun demikian, pemerintah menilai langkah tersebut belum sepenuhnya memenuhi ketentuan PP TUNAS di Indonesia.</p>\r\n\r\n<p style="text-align: justify;">"Masih ada loophole (celah) yang membolehkan komunikasi atau chat dengan orang tak dikenal," jelasnya.</p>\r\n\r\n<p style="text-align: justify;">Kemkomdigi menegaskan hingga saat ini Roblox belum dapat dikategorikan sebagai platform yang patuh terhadap PP TUNAS.</p>\r\n\r\n<p style="text-align: justify;">"Dengan berat hati meskipun sudah melakukan adjustment yang cukup banyak, kami belum dapat menerima proposal dari Roblox untuk menyatakan bahwa platform Roblox telah mematuhi PP TUNAS," tandasnya.</p>\r\n\r\n<p style="text-align: justify;">Meutya menegaskan bahwa kepatuhan terhadap PP TUNAS bukanlah pilihan, melainkan kewajiban yang harus dijalankan oleh setiap penyelenggara sistem elektronik.</p>\r\n\r\n<p style="text-align: justify;">Kemkomdigi akan terus melakukan pemantauan dan evaluasi secara berkala, serta akan mengambil langkah tegas terhadap platform yang belum memenuhi ketentuan yang berlaku.<br />\r\n </p>	/storage/news/1777468340_tiktok-tutup-780-ribu-akun-anak-pemerintah-desak-platform-lain.jpeg	1	2026-04-29 13:12:20	2026-04-30 02:40:45	3	kegiatan	1
\.


--
-- Data for Name: opds; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.opds (id, name, created_at, updated_at) FROM stdin;
1	Dinas Kesehatan	2025-06-04 07:24:30	2025-06-04 07:24:30
2	Dinas Pemberdayaan Perempuan dan Perlindungan Anak	2025-06-04 07:24:30	2025-06-04 07:24:30
3	Dinas Komunikasi Informatika, Statistik dan Persandian	2025-06-04 07:24:30	2025-06-04 07:24:30
4	Dinas Pendidikan	2025-06-04 07:24:30	2025-06-04 07:24:30
5	Dinas Pemberdayaan Masyarakat dan Desa	2025-06-04 07:24:30	2025-06-04 07:24:30
6	Dinas Perhubungan	2025-06-04 07:24:30	2025-06-04 07:24:30
7	Dinas Sosial	2025-06-04 07:24:30	2025-06-04 07:24:30
8	Dinas Kependudukan dan Pencatatan Sipil	2025-06-04 07:24:30	2025-06-04 07:24:30
9	Dinas Lingkungan Hidup	2025-06-04 07:24:30	2025-06-04 07:24:30
10	Dinas Perumahan Rakyat, Kawasan Permukiman serta Pertanahan	2025-06-04 07:24:30	2025-06-04 07:24:30
11	Dinas Koperasi, Usaha Kecil Menengah, dan Perdagangan	2025-06-04 07:24:30	2025-06-04 07:24:30
12	Badan Penanggulangan Bencana Daerah	2025-06-04 07:24:30	2025-06-04 07:24:30
13	Badan Perencanaan Pembangunan Daerah, Penelitian dan Pengembangan	2025-06-04 07:24:30	2025-06-04 07:24:30
14	Satuan Polisi Pamong Praja	2025-06-04 07:24:30	2025-06-04 07:24:30
15	RSUD Mas Amsyar	2025-06-04 07:24:30	2025-06-04 07:24:30
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
72	App\\Models\\User	6	api_token	c09e259f41e543df04e85b36a5f25f4f3f3ddebb3a93360da8e52d90fb4b2be3	["*"]	\N	\N	2026-04-30 02:35:39	2026-04-30 02:35:39
71	App\\Models\\User	1	api_token	21aca90df1f26f900fbe0eccbede57fb5136d763928acd53a1631235f97fa265	["*"]	2026-04-30 02:55:17	\N	2026-04-30 02:35:04	2026-04-30 02:55:17
31	App\\Models\\User	5	api_token	3b52a4fdf75ced9921dc624ed5d09b8e2641daa2347c7d411033a9a3e74aa8de	["*"]	2025-06-19 10:16:46	\N	2025-06-19 08:41:27	2025-06-19 10:16:46
\.


--
-- Data for Name: program_kerjas; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.program_kerjas (id, opd_id, description, tahun, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: setting; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.setting (id, name, page, url, image, content, type, created_at, updated_at) FROM stdin;
1	HAK SIPIL DAN KEBEBASAN	klaster1	pemenuhan-hak-anak/klaster-1	\N	<div style="background-color: #ffffff; border: 1px solid #e5e7eb; border-radius: 8px; margin-bottom: 20px;">\r\n<div style="padding: 16px; display: flex; gap: 8px; align-items: flex-start;"><!-- Icon Container -->\r\n<div style="flex-shrink: 0;">\r\n<div style="width: 32px; height: 32px; background-color: #d76d3e; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 4px rgba(215, 109, 62, 0.2);"><!-- SVG ikon informasi --><svg fill="none" height="20" stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewbox="0 0 24 24" width="20" xmlns="http://www.w3.org/2000/svg"> <path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm0 15h0"></path> <path d="M12 8h0"></path> </svg></div>\r\n</div>\r\n\r\n<div style="flex: 1;">\r\n<h3 style="font-size: 18px; font-weight: 500; color: #111827; margin: 0;">Klaster 1: Hak Sipil dan Kebebasan</h3>\r\n\r\n<p style="color: #4b5563; margin: 4px 0;">Untuk klaster hak sipil dan kebebasan meliputi:</p>\r\n<!-- Indikator List -->\r\n\r\n<div style="display: flex; flex-direction: column; gap: 8px;"><!-- Indikator Item -->\r\n<div style="display: flex; gap: 8px; background-color: #ffe0b2; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #d76d3e; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">a</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase anak yang teregistrasi dan mendapatkan Kutipan Akta Kelahiran</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 8px; background-color: #ffe0b2; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #d76d3e; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">b</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Tersedia fasilitas informasi layak anak</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 8px; background-color: #ffe0b2; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #d76d3e; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">c</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Jumlah kelompok anak, termasuk Forum Anak, yang ada di kabupaten/kota, kecamatan dan desa/kelurahan</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	statis	2025-06-04 07:42:46	2025-06-04 07:42:46
2	LINGKUNGAN KELUARGA DAN PENGASUHAN ALTERNATIF	klaster2	pemenuhan-hak-anak/klaster-2	\N	<div style="background-color: #ffffff; border: 1px solid #e5e7eb; border-radius: 8px; margin-bottom: 20px;">\r\n<div style="padding: 16px; display: flex; gap: 12px;"><!-- Icon Container -->\r\n<div style="flex-shrink: 0; padding-top: 2px;">\r\n<div style="width: 32px; height: 32px; background-color: #f97316; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 4px rgba(249, 115, 22, 0.2);"><!-- SVG ikon keluarga --><svg fill="none" height="20" stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewbox="0 0 24 24" width="20" xmlns="http://www.w3.org/2000/svg"> <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path> <circle cx="9" cy="7" r="4"></circle> <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path> <path d="M16 3.13a4 4 0 0 1 0 7.75"></path> </svg></div>\r\n</div>\r\n\r\n<div style="flex: 1;">\r\n<h3 style="font-size: 18px; font-weight: 500; color: #111827; margin: 0; padding-top: 4px;">Klaster 2 : Lingkungan Keluarga dan Pengasuhan Alternatif</h3>\r\n\r\n<p style="color: #4b5563; margin: 12px 0;">Indikator KLA untuk klaster lingkungan keluarga dan pengasuhan alternatif meliputi:</p>\r\n<!-- Indikator List -->\r\n\r\n<div style="display: flex; flex-direction: column; gap: 8px;"><!-- Indikator Item -->\r\n<div style="display: flex; gap: 12px; background-color: #FFFFE0; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #f97316; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">a</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase usia perkawinan pertama di bawah 18 (delapan belas) tahun</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #FFFFE0; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #f97316; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">b</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Tersedia lembaga konsultasi bagi orang tua/keluarga tentang pengasuhan dan perawatan anak</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #FFFFE0; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #f97316; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">c</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Tersedia lembaga kesejahteraan sosial anak</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	statis	2025-06-04 07:44:28	2025-06-04 07:44:28
3	KESEHATAN DASAR DAN KESEJAHTERAAN	klaster3	pemenuhan-hak-anak/klaster-3	\N	<div style="background-color: #e0f2f1; border: 1px solid #e5e7eb; border-radius: 8px; margin-bottom: 20px;">\r\n<div style="padding: 16px; display: flex; gap: 12px; align-items: flex-start;"><!-- Icon Container -->\r\n<div style="flex-shrink: 0; padding-top: 2px;">\r\n<div style="width: 32px; height: 32px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 4px rgba(76, 175, 80, 0.2);"><!-- SVG ikon kesehatan --><svg fill="none" height="20" stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewbox="0 0 24 24" width="20" xmlns="http://www.w3.org/2000/svg"> <path d="M12 2v20m-7-7h14"></path> <path d="M5 12h14"></path> <path d="M12 2l-2 2m2-2l2 2"></path> <path d="M12 8v4"></path> <path d="M12 16h0"></path> </svg></div>\r\n</div>\r\n\r\n<div style="flex: 1;">\r\n<h3 style="font-size: 18px; font-weight: 500; color: #111827; margin: 0; padding-top: 4px;">Klaster 3 : Kesehatan Dasar dan Kesejahteraan</h3>\r\n\r\n<p style="color: #4b5563; margin: 12px 0;">Indikator KLA untuk klaster kesehatan dasar dan kesejahteraan yang meliputi:</p>\r\n<!-- Indikator List -->\r\n\r\n<div style="display: flex; flex-direction: column; gap: 8px;"><!-- Indikator Item -->\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">a</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Angka kematian bayi</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">b</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Prevalensi kekurangan gizi pada balita</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">c</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase air susu ibu (ASI) eksklusif</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">d</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Jumlah pojok ASI</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">e</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase imunisasi dasar lengkap</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">f</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Jumlah lembaga yang memberikan pelayanan kesehatan reproduksi dan mental</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">g</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Jumlah anak dari keluarga miskin yang memperoleh akses peningkatan kesejahteraan</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">h</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase rumah tangga dengan akses air bersih</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #b2dfdb; padding: 12px; border-radius: 8px; align-items: flex-start;">\r\n<div style="width: 24px; height: 24px; background-color: #4caf50; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">i</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Tersedia kawasan tanpa rokok</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	statis	2025-06-04 07:45:24	2025-06-04 07:45:24
4	PENDIDIKAN DAN KEBUDAYAAN	klaster4	pemenuhan-hak-anak/klaster-4	\N	<div style="background-color: #e3f2fd; border: 1px solid #e5e7eb; border-radius: 8px; margin-bottom: 20px;">\r\n<div style="padding: 16px; display: flex; gap: 12px; align-items: flex-start;"><!-- Icon Container -->\r\n<div style="flex-shrink: 0; padding-top: 2px;">\r\n<div style="width: 32px; height: 32px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 4px rgba(33, 150, 243, 0.2);"><!-- SVG ikon pendidikan --><svg fill="none" height="20" stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewbox="0 0 24 24" width="20" xmlns="http://www.w3.org/2000/svg"> <path d="M12 2l-10 5 10 5 10-5-10-5z"></path> <path d="M2 12l10 5 10-5"></path> <path d="M2 12v8a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-8"></path> </svg></div>\r\n</div>\r\n\r\n<div style="flex: 1;">\r\n<h3 style="font-size: 18px; font-weight: 500; color: #111827; margin: 0; padding-top: 4px;">Klaster 4 : Pendidikan, Pemanfaatan Waktu Luang, dan Kegiatan Budaya</h3>\r\n\r\n<p style="color: #4b5563; margin: 12px 0;">Indikator KLA untuk klaster pendidikan, pemanfaatan waktu luang, dan kegiatan budaya meliputi:</p>\r\n<!-- Indikator List -->\r\n\r\n<div style="display: flex; flex-direction: column; gap: 8px;"><!-- Indikator Item -->\r\n<div style="display: flex; gap: 12px; background-color: #bbdefb; padding: 12px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">a</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Angka partisipasi pendidikan anak usia dini</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #bbdefb; padding: 12px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">b</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase wajib belajar pendidikan 12 (dua belas) tahun</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #bbdefb; padding: 12px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">c</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase sekolah ramah anak</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #bbdefb; padding: 12px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">d</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Jumlah sekolah yang memiliki program, sarana dan prasarana perjalanan anak ke dan dari sekolah</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 12px; background-color: #bbdefb; padding: 12px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #2196f3; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">e</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Tersedia fasilitas untuk kegiatan kreatif dan rekreatif yang ramah anak, di luar sekolah, yang dapat diakses semua anak</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	statis	2025-06-04 07:46:45	2025-06-04 07:46:45
5	PERLINDUNGAN KHUSUS	klaster5	perlindungan-khusus-anak/klaster-5	\N	<div style="background-color: #f8bbd0; border: 1px solid #e5e7eb; border-radius: 8px; margin-bottom: 20px;">\r\n<div style="padding: 16px; display: flex; gap: 12px; align-items: flex-start;"><!-- Icon Container -->\r\n<div style="flex-shrink: 0;">\r\n<div style="width: 32px; height: 32px; background-color: #e91e63; border-radius: 50%; display: flex; align-items: center; justify-content: center; box-shadow: 0 2px 4px rgba(233, 30, 99, 0.2);"><!-- SVG ikon perlindungan --><svg fill="none" height="20" stroke="white" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewbox="0 0 24 24" width="20" xmlns="http://www.w3.org/2000/svg"> <path d="M12 2l-10 5v6c0 5.25 3.75 9.75 10 11 6.25-1.25 10-5.75 10-11V7l-10-5z"></path> </svg></div>\r\n</div>\r\n\r\n<div style="flex: 1;">\r\n<h3 style="font-size: 18px; font-weight: 500; color: #111827; margin: 0;">Klaster 5 : Perlindungan Khusus</h3>\r\n\r\n<p style="color: #4b5563; margin: 8px 0;">Indikator KLA untuk klaster perlindungan khusus meliputi:</p>\r\n<!-- Indikator List -->\r\n\r\n<div style="display: flex; flex-direction: column; gap: 4px;"><!-- Indikator Item -->\r\n<div style="display: flex; gap: 8px; background-color: #f48fb1; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #e91e63; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">a</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase anak yang memerlukan perlindungan khusus dan memperoleh pelayanan</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 8px; background-color: #f48fb1; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #e91e63; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">b</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase kasus anak berhadapan dengan hukum (ABH) yang diselesaikan dengan pendekatan keadilan restoratif (restorative justice)</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 8px; background-color: #f48fb1; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #e91e63; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">c</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Adanya mekanisme penanggulangan bencana yang memperhatikan kepentingan anak</p>\r\n</div>\r\n\r\n<div style="display: flex; gap: 8px; background-color: #f48fb1; padding: 8px; border-radius: 8px; align-items: center;">\r\n<div style="width: 24px; height: 24px; background-color: #e91e63; border-radius: 50%; display: flex; align-items: center; justify-content: center; flex-shrink: 0;"><span style="color: white; font-weight: 500; font-size: 14px;">d</span></div>\r\n\r\n<p style="color: #374151; margin: 0; flex: 1;">Persentase anak yang dibebaskan dari bentuk-bentuk pekerjaan terburuk anak</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	statis	2025-06-04 07:47:22	2025-06-04 07:47:22
6	tes	tes	https://www.youtube.com/watch?v=KYUWcOvlx_U	\N	tes	video	2025-06-08 14:47:51	2025-06-08 14:47:51
\.


--
-- Data for Name: statistic; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public.statistic (id, ip, os, browser, created_at, updated_at, last_activity) FROM stdin;
20	10.10.10.1	Windows	Edge [70344801bd]	2025-06-12 03:19:31	2025-06-12 03:59:20	2025-06-12 03:59:20
30	10.10.10.1	Windows	Edge [aab2d4e5b4]	2025-06-15 13:30:39	2025-06-15 13:36:48	2025-06-15 13:36:48
27	10.10.10.1	Windows	Chrome [90aa563da2]	2025-06-13 08:11:15	2025-06-13 08:12:35	2025-06-13 08:12:35
3	10.10.10.1	AndroidOS	Chrome	2025-06-06 03:37:59	2025-06-06 23:02:37	2025-06-06 23:02:37
4	10.10.10.1	AndroidOS	Chrome	2025-06-07 02:24:10	2025-06-07 02:24:10	2025-06-07 02:24:10
8	10.10.10.1	Windows	Edge [149f902d5e]	2025-06-09 11:38:28	2025-06-09 11:47:10	2025-06-09 11:47:10
1	10.10.10.1	Windows	Chrome	2025-06-04 07:27:37	2025-06-04 22:07:52	2025-06-04 22:07:52
10	10.10.10.1	Windows	Edge [0da9af0a29]	2025-06-09 12:12:43	2025-06-09 12:13:04	2025-06-09 12:13:04
11	10.10.10.1	AndroidOS	Chrome [221bcbc5cd]	2025-06-09 22:07:04	2025-06-09 22:07:04	2025-06-09 22:07:04
12	10.10.10.1	AndroidOS	Chrome [549cdb928e]	2025-06-09 22:07:29	2025-06-09 22:07:29	2025-06-09 22:07:29
13	10.10.10.1	Windows	Chrome [aa9f2ec34c]	2025-06-10 07:29:23	2025-06-10 07:31:23	2025-06-10 07:31:23
5	10.10.10.1	AndroidOS	Chrome	2025-06-08 00:53:14	2025-06-08 13:02:33	2025-06-08 13:02:33
6	10.10.10.1	Windows	Chrome [d14ea336ce]	2025-06-08 14:38:02	2025-06-08 14:38:02	2025-06-08 14:38:02
14	10.10.10.1	Windows	Edge [da2285ed5e]	2025-06-10 08:28:14	2025-06-10 08:31:24	2025-06-10 08:31:24
15	10.10.10.1	Windows	Edge [802603c8d8]	2025-06-10 08:54:07	2025-06-10 08:54:07	2025-06-10 08:54:07
40	10.10.10.244	Windows	Edge [69461036e3]	2025-06-18 03:25:18	2025-06-18 03:31:45	2025-06-18 03:31:45
33	10.10.10.1	AndroidOS	Chrome [f00723d7ff]	2025-06-16 06:13:13	2025-06-16 06:13:13	2025-06-16 06:13:13
16	10.10.10.1	AndroidOS	Chrome [2b0076b5b2]	2025-06-11 10:23:13	2025-06-11 21:49:01	2025-06-11 21:49:01
17	10.10.10.1	Windows	Chrome [8599a8a5ea]	2025-06-12 01:44:51	2025-06-12 01:44:51	2025-06-12 01:44:51
32	10.10.10.1	Windows	Edge [609c33240e]	2025-06-16 06:12:07	2025-06-16 08:09:37	2025-06-16 08:09:37
67	10.10.10.244	0	Chrome [832ae41dbf]	2025-06-20 14:53:20	2025-06-20 14:53:21	2025-06-20 14:53:21
36	10.10.10.1	Windows	Chrome [14a2d642ee]	2025-06-17 03:08:45	2025-06-17 03:08:45	2025-06-17 03:08:45
60	10.10.10.244	Windows	Chrome [f8d2fa589e]	2025-06-20 01:02:34	2025-06-20 03:44:06	2025-06-20 03:44:06
7	10.10.10.1	Windows	Chrome [712a88e0d9]	2025-06-08 14:48:30	2025-06-08 15:06:11	2025-06-08 15:06:11
18	10.10.10.1	Windows	Edge [03d447afdc]	2025-06-12 02:09:13	2025-06-12 02:09:40	2025-06-12 02:09:40
68	10.10.10.244	0	Chrome [3dfbbdae87]	2025-06-22 07:17:58	2025-06-22 07:17:58	2025-06-22 07:17:58
59	10.10.10.244	Windows	Chrome [bff8beb96f]	2025-06-20 01:01:04	2025-06-20 01:01:11	2025-06-20 01:01:11
2	10.10.10.1	AndroidOS	Firefox	2025-06-05 00:30:12	2025-06-05 12:55:09	2025-06-05 12:55:09
54	10.10.10.244	Windows	Edge [808a62d5a0]	2025-06-19 19:33:14	2025-06-19 19:47:17	2025-06-19 19:47:17
31	10.10.10.1	Windows	Chrome [8b3d16c42c]	2025-06-16 06:09:46	2025-06-16 08:26:05	2025-06-16 08:26:05
55	10.10.10.244	Windows	Edge [7f0607caf9]	2025-06-19 20:42:40	2025-06-19 20:42:40	2025-06-19 20:42:40
50	10.10.10.244	Windows	Edge [2192aed1e7]	2025-06-19 09:41:00	2025-06-19 10:46:52	2025-06-19 10:46:52
9	10.10.10.1	Windows	Chrome [e3aca3dfca]	2025-06-09 11:40:38	2025-06-09 11:41:04	2025-06-09 11:41:04
21	10.10.10.1	Windows	Edge [9734652aaa]	2025-06-12 03:48:12	2025-06-12 04:52:06	2025-06-12 04:52:06
22	10.10.10.1	AndroidOS	Chrome [61679335d3]	2025-06-12 08:43:53	2025-06-12 08:43:53	2025-06-12 08:43:53
42	10.10.10.244	Windows	Edge [f84f7a1a99]	2025-06-18 04:19:42	2025-06-18 04:46:08	2025-06-18 04:46:08
23	10.10.10.1	Linux	Chrome [9c83609a3a]	2025-06-12 08:43:53	2025-06-12 08:44:18	2025-06-12 08:44:18
24	10.10.10.1	AndroidOS	Chrome [449ffedc1a]	2025-06-12 21:06:15	2025-06-12 21:06:16	2025-06-12 21:06:16
25	10.10.10.1	Windows	Chrome [d037177a9a]	2025-06-13 02:48:06	2025-06-13 02:48:08	2025-06-13 02:48:08
45	10.10.10.244	0	Chrome [b3ce0ab86e]	2025-06-19 01:06:30	2025-06-19 01:06:31	2025-06-19 01:06:31
41	10.10.10.244	Linux	Chrome [714cf0c9e4]	2025-06-18 03:26:03	2025-06-18 04:50:59	2025-06-18 04:50:59
19	10.10.10.1	Windows	Chrome [063cf69843]	2025-06-12 02:24:00	2025-06-12 03:54:11	2025-06-12 03:54:11
34	10.10.10.1	Linux	Chrome [8be579144e]	2025-06-16 06:13:14	2025-06-16 06:28:46	2025-06-16 06:28:46
26	10.10.10.1	Windows	Edge [0e6d717b3e]	2025-06-13 06:03:18	2025-06-13 08:51:12	2025-06-13 08:51:12
28	10.10.10.1	OS X	Chrome [8f5a2df60a]	2025-06-13 20:27:46	2025-06-13 20:27:46	2025-06-13 20:27:46
51	10.10.10.244	Windows	Chrome [c52d96a755]	2025-06-19 10:15:50	2025-06-19 10:15:51	2025-06-19 10:15:51
35	10.10.10.244	Windows	Chrome [819685868c]	2025-06-17 02:10:14	2025-06-17 05:04:36	2025-06-17 05:04:36
29	10.10.10.1	Linux	Chrome [c1fb3180a2]	2025-06-15 10:05:47	2025-06-15 10:07:30	2025-06-15 10:07:30
38	10.10.10.1	Windows	Chrome [91a11c0a27]	2025-06-17 03:50:05	2025-06-17 03:50:07	2025-06-17 03:50:07
56	10.10.10.244	Linux	Chrome [391d065398]	2025-06-19 23:28:30	2025-06-19 23:28:44	2025-06-19 23:28:44
37	10.10.10.244	Windows	Chrome [ac14e67447]	2025-06-17 03:49:48	2025-06-17 03:51:49	2025-06-17 03:51:49
39	10.10.10.244	Windows	Edge [a2137d9df1]	2025-06-17 08:31:01	2025-06-17 08:37:04	2025-06-17 08:37:04
44	10.10.10.244	Windows	Edge [effb273f55]	2025-06-19 00:52:14	2025-06-19 05:24:58	2025-06-19 05:24:58
46	10.10.10.244	Windows	Edge [8c13b42372]	2025-06-19 01:31:13	2025-06-19 08:49:49	2025-06-19 08:49:49
63	10.10.10.244	Windows	Chrome [a68c6b1d66]	2025-06-20 03:11:05	2025-06-20 03:11:05	2025-06-20 03:11:05
47	10.10.10.244	Linux	Chrome [fe574b809e]	2025-06-19 09:04:40	2025-06-19 09:04:54	2025-06-19 09:04:54
43	10.10.10.244	Linux	Chrome [3299d3943d]	2025-06-18 11:36:14	2025-06-18 22:36:47	2025-06-18 22:36:47
48	10.10.10.244	Linux	Chrome [2f439bb280]	2025-06-19 09:07:47	2025-06-19 09:07:47	2025-06-19 09:07:47
49	10.10.10.244	Linux	Chrome [fd58cdf625]	2025-06-19 09:12:49	2025-06-19 09:12:50	2025-06-19 09:12:50
52	10.10.10.244	Linux	Chrome [f70ec0b8c4]	2025-06-19 11:48:44	2025-06-19 11:49:17	2025-06-19 11:49:17
53	10.10.10.244	0	Chrome [62a6bc083b]	2025-06-19 18:52:50	2025-06-19 18:52:51	2025-06-19 18:52:51
62	10.10.10.244	Windows	Edge [5b53e1cd1a]	2025-06-20 02:27:37	2025-06-20 03:13:06	2025-06-20 03:13:06
61	10.10.10.244	Windows	Edge [eba235c036]	2025-06-20 01:19:16	2025-06-20 02:12:00	2025-06-20 02:12:00
58	10.10.10.244	Linux	Chrome [caa7cacda8]	2025-06-20 00:57:24	2025-06-20 04:00:01	2025-06-20 04:00:01
65	10.10.10.244	Windows	Edge [e2056553a9]	2025-06-20 05:57:10	2025-06-20 05:57:10	2025-06-20 05:57:10
57	10.10.10.244	Windows	Chrome [dab016b7ee]	2025-06-20 00:51:54	2025-06-20 01:12:25	2025-06-20 01:12:25
64	10.10.10.244	Windows	Chrome [6e7fec4578]	2025-06-20 03:22:55	2025-06-20 03:25:09	2025-06-20 03:25:09
66	10.10.10.244	AndroidOS	Chrome [02bccdc5a5]	2025-06-20 08:09:59	2025-06-20 08:09:59	2025-06-20 08:09:59
69	10.10.10.244	Windows	Edge [1163730b67]	2025-06-22 08:33:04	2025-06-22 09:06:34	2025-06-22 09:06:34
70	10.10.10.244	Windows	Edge [8c141eba29]	2025-06-22 14:37:56	2025-06-22 15:08:15	2025-06-22 15:08:15
72	10.10.10.244	Windows	Edge [5ee9d9f96f]	2025-06-23 09:22:18	2025-06-23 09:59:17	2025-06-23 09:59:17
71	10.10.10.244	Windows	Edge [bc83205a26]	2025-06-23 08:36:53	2025-06-23 09:23:17	2025-06-23 09:23:17
73	10.10.10.244	AndroidOS	Chrome [fd8cfa2e57]	2025-06-23 18:26:04	2025-06-23 18:26:05	2025-06-23 18:26:05
74	10.10.10.244	Windows	Chrome [42849c29d4]	2025-06-24 08:10:33	2025-06-24 08:11:10	2025-06-24 08:11:10
75	10.10.10.244	0	Chrome [e8c9ffa910]	2025-06-24 08:15:07	2025-06-24 08:24:05	2025-06-24 08:24:05
76	10.10.10.244	Windows	Chrome [ab77abf550]	2025-06-24 10:33:53	2025-06-24 10:33:54	2025-06-24 10:33:54
77	10.10.10.244	Windows	Chrome [0200066a70]	2025-06-24 13:53:31	2025-06-24 13:55:32	2025-06-24 13:55:32
78	10.10.10.244	AndroidOS	Chrome [798d406e2a]	2025-06-24 14:40:09	2025-06-24 14:40:09	2025-06-24 14:40:09
79	10.10.10.244	0	Chrome [50536d32fc]	2025-06-29 08:41:06	2025-06-29 08:44:59	2025-06-29 08:44:59
80	10.10.10.244	Linux	Chrome [8bc945832a]	2025-06-29 12:00:30	2025-06-29 12:00:31	2025-06-29 12:00:31
95	10.10.10.244	Windows	Chrome [4c72963fc1]	2025-07-08 02:02:41	2025-07-08 02:05:19	2025-07-08 02:05:19
96	10.10.10.244	0	Chrome [9ccc51a18a]	2025-07-08 03:38:11	2025-07-08 03:38:11	2025-07-08 03:38:11
97	10.10.10.244	AndroidOS	Chrome [1d3af69416]	2025-07-09 07:35:11	2025-07-09 07:35:11	2025-07-09 07:35:11
98	10.10.10.244	0	Chrome [9fe5b505a2]	2025-07-09 21:06:35	2025-07-09 21:06:36	2025-07-09 21:06:36
99	10.10.10.244	Windows	Edge [d11b57badf]	2025-07-11 02:40:42	2025-07-11 02:40:43	2025-07-11 02:40:43
100	10.10.10.244	0	Chrome [92d6b4085a]	2025-07-12 03:38:19	2025-07-12 03:38:20	2025-07-12 03:38:20
101	10.10.10.244	0	Chrome [465dbf0fe6]	2025-07-12 22:44:19	2025-07-12 22:44:21	2025-07-12 22:44:21
102	10.10.10.244	0	Chrome [1059b0eb77]	2025-07-13 20:26:59	2025-07-13 20:26:59	2025-07-13 20:26:59
103	10.10.10.244	Windows	Chrome [161194b604]	2025-07-14 01:04:09	2025-07-14 01:04:09	2025-07-14 01:04:09
118	10.10.10.244	AndroidOS	Chrome [bf37660521]	2025-07-24 14:56:12	2025-07-24 14:56:12	2025-07-24 14:56:12
104	10.10.10.244	Linux	Chrome [2f19947cb9]	2025-07-14 04:08:53	2025-07-14 04:09:08	2025-07-14 04:09:08
105	10.10.10.244	0	Chrome [3f60a72614]	2025-07-14 22:07:46	2025-07-14 22:07:47	2025-07-14 22:07:47
106	10.10.10.244	0	Chrome [55b12526c6]	2025-07-16 07:31:00	2025-07-16 07:31:01	2025-07-16 07:31:01
119	10.10.10.244	iOS	Safari [69c0b325bd]	2025-07-24 16:02:44	2025-07-24 16:02:44	2025-07-24 16:02:44
126	10.10.10.244	Windows	Chrome [d64efad4ea]	2025-07-28 05:02:24	2025-07-28 08:09:10	2025-07-28 08:09:10
107	10.10.10.244	Windows	Chrome [23b9e60cd6]	2025-07-17 00:51:53	2025-07-17 00:57:55	2025-07-17 00:57:55
108	10.10.10.244	Windows	Chrome [94f12ec9e8]	2025-07-18 07:14:43	2025-07-18 07:14:45	2025-07-18 07:14:45
81	10.10.10.244	Windows	Chrome [19c25c06a9]	2025-06-30 01:43:57	2025-06-30 04:46:05	2025-06-30 04:46:05
109	10.10.10.244	0	Chrome [b63a5572df]	2025-07-20 16:18:53	2025-07-20 16:18:56	2025-07-20 16:18:56
110	10.10.10.244	0	Chrome [1c9c524f4f]	2025-07-21 00:54:49	2025-07-21 00:54:50	2025-07-21 00:54:50
111	10.10.10.244	Windows	Chrome [2af16ba52c]	2025-07-21 02:01:02	2025-07-21 02:01:02	2025-07-21 02:01:02
112	10.10.10.244	Windows	Chrome [65aebea3c8]	2025-07-22 01:24:19	2025-07-22 01:24:20	2025-07-22 01:24:20
113	10.10.10.244	Windows	Chrome [ff5e809105]	2025-07-24 01:53:09	2025-07-24 01:53:09	2025-07-24 01:53:09
114	10.10.10.244	0	Chrome [f97ef3f3a7]	2025-07-24 07:38:20	2025-07-24 07:38:21	2025-07-24 07:38:21
120	10.10.10.244	Windows	Chrome [4ceba068af]	2025-07-25 01:21:12	2025-07-25 01:23:14	2025-07-25 01:23:14
83	10.10.10.244	Windows	Chrome [06941ac65a]	2025-06-30 20:05:43	2025-06-30 20:09:19	2025-06-30 20:09:19
84	10.10.10.244	Windows	Chrome [42648049d7]	2025-07-01 09:11:58	2025-07-01 09:11:59	2025-07-01 09:11:59
85	10.10.10.244	AndroidOS	Chrome [adc179f6fe]	2025-07-01 13:12:11	2025-07-01 13:12:13	2025-07-01 13:12:13
86	10.10.10.244	AndroidOS	Chrome [c55f3267a7]	2025-07-02 04:51:48	2025-07-02 04:51:48	2025-07-02 04:51:48
82	10.10.10.244	0	Chrome [10f737aa3c]	2025-06-30 03:19:12	2025-06-30 03:19:13	2025-06-30 03:19:13
87	10.10.10.244	0	Chrome [b976eb0974]	2025-07-02 18:57:18	2025-07-02 18:57:19	2025-07-02 18:57:19
88	10.10.10.244	0	Chrome [b0fe9eca2a]	2025-07-03 08:42:05	2025-07-03 08:42:05	2025-07-03 08:42:05
89	10.10.10.244	AndroidOS	Chrome [39a330704b]	2025-07-03 11:40:33	2025-07-03 11:40:34	2025-07-03 11:40:34
90	10.10.10.244	0	Chrome [c39e7842ce]	2025-07-04 03:16:44	2025-07-04 03:16:46	2025-07-04 03:16:46
91	10.10.10.244	0	Chrome [532622dd37]	2025-07-04 15:44:07	2025-07-04 15:59:56	2025-07-04 15:59:56
92	10.10.10.244	0	Chrome [6a876d27d8]	2025-07-05 21:09:26	2025-07-05 21:09:29	2025-07-05 21:09:29
93	10.10.10.244	0	Chrome [da88479157]	2025-07-07 08:59:55	2025-07-07 08:59:56	2025-07-07 08:59:56
121	10.10.10.244	iOS	Safari [053dc9cab2]	2025-07-25 10:33:41	2025-07-25 10:33:41	2025-07-25 10:33:41
94	10.10.10.244	Windows	Chrome [24848e4424]	2025-07-08 01:33:56	2025-07-08 01:35:58	2025-07-08 01:35:58
122	10.10.10.244	AndroidOS	Chrome [b2bb5e415b]	2025-07-26 03:43:56	2025-07-26 03:46:44	2025-07-26 03:46:44
123	10.10.10.244	AndroidOS	Chrome [9523e1a114]	2025-07-26 04:05:10	2025-07-26 04:05:11	2025-07-26 04:05:11
124	10.10.10.244	Windows	Chrome [84c0d58e62]	2025-07-27 05:24:17	2025-07-27 05:24:17	2025-07-27 05:24:17
125	10.10.10.244	0	Chrome [0810866266]	2025-07-27 20:21:31	2025-07-27 20:21:31	2025-07-27 20:21:31
116	10.10.10.244	AndroidOS	Chrome [0ef6bfdd1c]	2025-07-24 10:36:20	2025-07-24 10:39:27	2025-07-24 10:39:27
136	10.10.10.244	Windows	Chrome [ef6d1ee62c]	2025-08-01 02:02:41	2025-08-01 02:06:11	2025-08-01 02:06:11
115	10.10.10.244	Linux	Chrome [ca0df1f56c]	2025-07-24 10:35:49	2025-07-24 10:56:10	2025-07-24 10:56:10
117	10.10.10.244	AndroidOS	Chrome [e77e5e3946]	2025-07-24 10:56:57	2025-07-24 10:56:57	2025-07-24 10:56:57
128	10.10.10.244	OS X	Firefox [165efa9958]	2025-07-28 17:05:04	2025-07-28 17:06:03	2025-07-28 17:06:03
129	10.10.10.244	0	Chrome [d126ccc369]	2025-07-29 00:00:46	2025-07-29 00:00:46	2025-07-29 00:00:46
130	10.10.10.244	Windows	Chrome [6ef6e372a9]	2025-07-29 01:20:13	2025-07-29 01:22:14	2025-07-29 01:22:14
131	10.10.10.244	Windows	Chrome [37e541265d]	2025-07-30 00:55:51	2025-07-30 00:55:52	2025-07-30 00:55:52
132	10.10.10.244	Windows	Chrome [c813f763ac]	2025-07-31 01:29:03	2025-07-31 01:29:04	2025-07-31 01:29:04
133	10.10.10.244	Windows	Edge [df0e11223b]	2025-07-31 01:32:07	2025-07-31 01:32:07	2025-07-31 01:32:07
134	10.10.10.244	Windows	Chrome [67bb05fd03]	2025-07-31 01:39:48	2025-07-31 01:39:49	2025-07-31 01:39:49
127	10.10.10.244	Windows	Chrome [7b25934bd8]	2025-07-28 06:42:53	2025-07-28 06:44:42	2025-07-28 06:44:42
140	10.10.10.244	AndroidOS	Chrome [1418305c91]	2025-08-04 08:15:25	2025-08-04 08:15:26	2025-08-04 08:15:26
135	10.10.10.244	AndroidOS	Chrome [99901eb15c]	2025-07-31 14:10:33	2025-07-31 14:42:16	2025-07-31 14:42:16
144	10.10.10.244	0	Chrome [4dc8917907]	2025-08-06 05:45:42	2025-08-06 05:45:44	2025-08-06 05:45:44
138	10.10.10.244	Windows	Chrome [4b61ed999c]	2025-08-04 06:38:26	2025-08-04 08:56:40	2025-08-04 08:56:40
142	10.10.10.244	Windows	Chrome [da853b6d20]	2025-08-04 09:58:55	2025-08-04 09:58:56	2025-08-04 09:58:56
137	10.10.10.244	Windows	Chrome [4992ed5705]	2025-08-04 06:36:20	2025-08-04 07:08:03	2025-08-04 07:08:03
141	10.10.10.244	Windows	Chrome [5e6c53633c]	2025-08-04 09:58:36	2025-08-04 10:08:38	2025-08-04 10:08:38
139	10.10.10.244	Windows	Chrome [4b3de6edeb]	2025-08-04 06:38:43	2025-08-04 09:00:47	2025-08-04 09:00:47
143	10.10.10.244	Windows	Chrome [6670216b11]	2025-08-05 13:57:06	2025-08-05 14:08:32	2025-08-05 14:08:32
146	10.10.10.244	Windows	Chrome [eb7351b74e]	2025-08-08 01:24:13	2025-08-08 01:24:14	2025-08-08 01:24:14
145	10.10.10.244	Windows	Chrome [80feff9972]	2025-08-07 03:00:51	2025-08-07 03:02:53	2025-08-07 03:02:53
147	10.10.10.244	Windows	Chrome [f5894fef6a]	2025-08-09 03:17:36	2025-08-09 03:18:03	2025-08-09 03:18:03
148	10.10.10.244	0	Chrome [4f056506ad]	2025-08-09 08:13:27	2025-08-09 08:13:28	2025-08-09 08:13:28
149	10.10.10.244	0	Chrome [8d1d508c3a]	2025-08-09 08:19:09	2025-08-09 08:19:10	2025-08-09 08:19:10
150	10.10.10.244	0	Chrome [21c7226d9f]	2025-08-10 02:42:39	2025-08-10 02:42:41	2025-08-10 02:42:41
151	10.10.10.244	Windows	Chrome [47ff97d061]	2025-08-11 01:26:24	2025-08-11 01:42:25	2025-08-11 01:42:25
152	10.10.10.244	Windows	Chrome [330b653589]	2025-08-11 10:36:41	2025-08-11 10:36:41	2025-08-11 10:36:41
153	10.10.10.244	AndroidOS	Chrome [98aaba24f9]	2025-08-11 13:24:05	2025-08-11 13:24:06	2025-08-11 13:24:06
180	10.10.10.244	Windows	Chrome [69f1dfa9a4]	2025-08-25 03:21:29	2025-08-25 09:14:45	2025-08-25 09:14:45
177	10.10.10.244	AndroidOS	Chrome [352491a81b]	2025-08-23 08:38:22	2025-08-23 08:46:52	2025-08-23 08:46:52
154	10.10.10.244	AndroidOS	Chrome [2da57ad815]	2025-08-12 05:37:13	2025-08-12 23:00:11	2025-08-12 23:00:11
155	10.10.10.244	Windows	Chrome [ec6319957b]	2025-08-13 01:05:46	2025-08-13 01:05:46	2025-08-13 01:05:46
169	10.10.10.244	Windows	Chrome [59d2621809]	2025-08-19 03:05:54	2025-08-19 09:01:40	2025-08-19 09:01:40
170	10.10.10.244	AndroidOS	Chrome [5f52ad6b38]	2025-08-19 12:58:50	2025-08-19 12:58:51	2025-08-19 12:58:51
171	10.10.10.244	Windows	Chrome [f3287a0696]	2025-08-20 01:01:28	2025-08-20 01:01:28	2025-08-20 01:01:28
178	10.10.10.244	0	Chrome [cea1665b7c]	2025-08-24 14:21:53	2025-08-24 14:21:55	2025-08-24 14:21:55
172	10.10.10.244	Windows	Chrome [0fee83488f]	2025-08-20 01:21:08	2025-08-20 01:25:10	2025-08-20 01:25:10
173	10.10.10.244	Windows	Chrome [04351e6194]	2025-08-21 01:52:25	2025-08-21 01:52:25	2025-08-21 01:52:25
156	10.10.10.244	Windows	Chrome [79df56e137]	2025-08-13 08:40:26	2025-08-13 08:59:53	2025-08-13 08:59:53
157	10.10.10.244	Windows	Chrome [e9911bd649]	2025-08-14 01:15:57	2025-08-14 01:15:57	2025-08-14 01:15:57
158	10.10.10.244	AndroidOS	Chrome [da28fdee63]	2025-08-14 01:29:05	2025-08-14 01:29:05	2025-08-14 01:29:05
159	10.10.10.244	Windows	Chrome [a682b11c06]	2025-08-15 01:06:05	2025-08-15 01:10:06	2025-08-15 01:10:06
160	10.10.10.244	AndroidOS	Chrome [ccf7a54236]	2025-08-15 06:15:20	2025-08-15 06:15:21	2025-08-15 06:15:21
161	10.10.10.244	0	Chrome [79c002a746]	2025-08-16 13:52:10	2025-08-16 13:52:12	2025-08-16 13:52:12
162	10.10.10.244	0	Chrome [f939fab5e2]	2025-08-16 20:11:44	2025-08-16 20:11:46	2025-08-16 20:11:45
174	10.10.10.244	AndroidOS	Chrome [c3283f4c88]	2025-08-21 21:31:03	2025-08-21 21:31:04	2025-08-21 21:31:04
163	10.10.10.244	AndroidOS	Chrome [bf5c9bb71c]	2025-08-17 03:52:56	2025-08-17 04:04:43	2025-08-17 04:04:43
164	10.10.10.244	0	Chrome [62a10f036d]	2025-08-17 09:14:56	2025-08-17 09:14:57	2025-08-17 09:14:57
165	10.10.10.244	0	Chrome [f573868ffe]	2025-08-18 04:25:44	2025-08-18 04:25:44	2025-08-18 04:25:44
166	10.10.10.244	AndroidOS	Chrome [eed45572b4]	2025-08-19 00:15:38	2025-08-19 00:16:22	2025-08-19 00:16:22
175	10.10.10.244	Windows	Chrome [08fc3db9fe]	2025-08-22 00:53:46	2025-08-22 00:53:47	2025-08-22 00:53:47
167	10.10.10.244	Windows	Chrome [80c6633b38]	2025-08-19 01:02:51	2025-08-19 01:04:53	2025-08-19 01:04:53
168	10.10.10.244	Windows	Chrome [b0c1077cfc]	2025-08-19 02:47:50	2025-08-19 02:47:58	2025-08-19 02:47:58
179	10.10.10.244	Windows	Chrome [e02c349387]	2025-08-25 00:55:02	2025-08-25 00:55:02	2025-08-25 00:55:02
182	10.10.10.244	Windows	Chrome [4379349c73]	2025-08-26 01:16:42	2025-08-26 01:16:43	2025-08-26 01:16:43
183	10.10.10.244	Windows	Chrome [42d0d5a27c]	2025-08-27 01:00:43	2025-08-27 01:00:44	2025-08-27 01:00:44
210	10.10.10.244	AndroidOS	Chrome [7c2f56a643]	2025-09-09 23:08:12	2025-09-09 23:08:13	2025-09-09 23:08:13
197	10.10.10.244	Windows	Chrome [4d3e9fcbeb]	2025-09-03 02:26:39	2025-09-03 02:26:50	2025-09-03 02:26:50
198	10.10.10.244	0	Chrome [5c83df3f73]	2025-09-05 20:43:45	2025-09-05 20:43:46	2025-09-05 20:43:46
184	10.10.10.244	Windows	Chrome [e783b911de]	2025-08-27 03:58:53	2025-08-27 06:40:55	2025-08-27 06:40:55
185	10.10.10.244	Windows	Chrome [d88b602e7e]	2025-08-28 01:15:36	2025-08-28 01:15:37	2025-08-28 01:15:37
186	10.10.10.244	Windows	Edge [298d470d9c]	2025-08-29 04:25:19	2025-08-29 04:27:21	2025-08-29 04:27:21
187	10.10.10.244	Windows	Chrome [df1f598d84]	2025-08-29 09:00:40	2025-08-29 09:00:42	2025-08-29 09:00:42
188	10.10.10.244	0	Chrome [c5ce785b74]	2025-08-29 15:36:41	2025-08-29 15:36:41	2025-08-29 15:36:41
189	10.10.10.244	Windows	Chrome [728e7a46b2]	2025-09-01 02:02:39	2025-09-01 02:02:40	2025-09-01 02:02:40
190	10.10.10.244	Windows	Chrome [533c22fa91]	2025-09-01 02:36:51	2025-09-01 02:36:51	2025-09-01 02:36:51
191	10.10.10.244	Windows	Chrome [6d86153a6e]	2025-09-02 00:49:39	2025-09-02 00:49:40	2025-09-02 00:49:40
199	10.10.10.244	Windows	Chrome [305f0f8923]	2025-09-08 03:18:15	2025-09-08 03:20:15	2025-09-08 03:20:15
200	10.10.10.244	0	Chrome [1d51dcf359]	2025-09-08 11:00:27	2025-09-08 11:00:28	2025-09-08 11:00:28
201	10.10.10.244	Windows	Chrome [0b6351a500]	2025-09-09 03:39:00	2025-09-09 03:39:00	2025-09-09 03:39:00
202	10.10.10.244	Windows	Chrome [22cd81bf3b]	2025-09-09 13:47:15	2025-09-09 13:47:15	2025-09-09 13:47:15
203	10.10.10.244	AndroidOS	Chrome [d929597335]	2025-09-09 18:18:18	2025-09-09 18:18:21	2025-09-09 18:18:21
176	10.10.10.244	Windows	Chrome [96fc8f9ab5]	2025-08-23 03:15:16	2025-08-23 07:11:37	2025-08-23 07:11:37
204	10.10.10.244	AndroidOS	Chrome [5cc8afa06e]	2025-09-09 19:48:47	2025-09-09 19:48:49	2025-09-09 19:48:49
205	10.10.10.244	AndroidOS	Chrome [d156fd2851]	2025-09-09 21:08:16	2025-09-09 21:08:16	2025-09-09 21:08:16
193	10.10.10.244	Windows	Edge [27d7cbb186]	2025-09-02 06:28:53	2025-09-02 06:29:29	2025-09-02 06:29:29
206	10.10.10.244	AndroidOS	Chrome [fe9bfa51a9]	2025-09-09 21:38:25	2025-09-09 21:38:25	2025-09-09 21:38:25
192	10.10.10.244	Windows	Chrome [e2c6262b86]	2025-09-02 01:40:08	2025-09-02 07:17:39	2025-09-02 07:17:39
181	10.10.10.244	0	Chrome [6ebdbe724a]	2025-08-25 09:14:20	2025-08-25 09:14:20	2025-08-25 09:14:20
194	10.10.10.244	0	Chrome [071811e080]	2025-09-02 09:13:59	2025-09-02 09:14:02	2025-09-02 09:14:02
195	10.10.10.244	0	Chrome [47529f8cae]	2025-09-02 10:47:31	2025-09-02 10:47:32	2025-09-02 10:47:32
207	10.10.10.244	AndroidOS	Chrome [6cb3f086c6]	2025-09-09 22:08:14	2025-09-09 22:08:15	2025-09-09 22:08:15
196	10.10.10.244	Windows	Chrome [deeb54cc56]	2025-09-03 01:29:47	2025-09-03 01:31:49	2025-09-03 01:31:49
208	10.10.10.244	AndroidOS	Chrome [5b3ffa2e49]	2025-09-09 22:38:15	2025-09-09 22:38:19	2025-09-09 22:38:19
209	10.10.10.244	AndroidOS	Chrome [c803c12c32]	2025-09-09 22:48:06	2025-09-09 22:48:08	2025-09-09 22:48:08
211	10.10.10.244	Windows	Chrome [46ed608f73]	2025-09-10 00:11:04	2025-09-10 00:11:05	2025-09-10 00:11:05
212	10.10.10.244	AndroidOS	Chrome [8115b37582]	2025-09-10 03:19:15	2025-09-10 03:19:16	2025-09-10 03:19:16
213	10.10.10.244	AndroidOS	Chrome [e9885afce4]	2025-09-10 03:34:49	2025-09-10 03:34:51	2025-09-10 03:34:51
214	10.10.10.244	0	Chrome [56f41e8ce9]	2025-09-10 09:29:44	2025-09-10 09:29:45	2025-09-10 09:29:45
215	10.10.10.244	Windows	Chrome [a82b29711b]	2025-09-11 00:11:38	2025-09-11 00:11:38	2025-09-11 00:11:38
216	10.10.10.244	Windows	Chrome [1b0400cc79]	2025-09-12 02:02:21	2025-09-12 02:02:22	2025-09-12 02:02:22
217	10.10.10.244	0	Chrome [2ef4664669]	2025-09-13 03:36:04	2025-09-13 03:36:05	2025-09-13 03:36:05
218	10.10.10.244	Windows	Chrome [58b8d9e0f8]	2025-09-15 00:09:10	2025-09-15 00:09:10	2025-09-15 00:09:10
219	10.10.10.244	Windows	Chrome [fb3297672e]	2025-09-15 01:57:16	2025-09-15 01:57:17	2025-09-15 01:57:17
220	10.10.10.244	0	Chrome [e4749eca6d]	2025-09-15 02:24:45	2025-09-15 02:24:47	2025-09-15 02:24:47
221	10.10.10.244	Windows	Chrome [3b984d4d20]	2025-09-15 08:12:09	2025-09-15 08:12:13	2025-09-15 08:12:13
223	10.10.10.244	Windows	Chrome [a246e0c41f]	2025-09-16 00:17:11	2025-09-16 00:17:11	2025-09-16 00:17:11
222	10.10.10.244	Windows	Chrome [7f6c6498c8]	2025-09-15 09:34:21	2025-09-15 09:42:22	2025-09-15 09:42:22
224	10.10.10.244	Windows	Chrome [d270c38c1d]	2025-09-16 01:28:23	2025-09-16 01:28:24	2025-09-16 01:28:24
225	10.10.10.244	0	Chrome [645b3a799e]	2025-09-16 22:47:55	2025-09-16 22:47:56	2025-09-16 22:47:56
226	10.10.10.244	Windows	Chrome [c515084167]	2025-09-17 02:18:47	2025-09-17 02:18:47	2025-09-17 02:18:47
227	10.10.10.244	Windows	Chrome [221237de53]	2025-09-18 00:49:31	2025-09-18 00:49:31	2025-09-18 00:49:31
228	10.10.10.244	0	Chrome [a8f22331e6]	2025-09-18 09:48:47	2025-09-18 09:48:47	2025-09-18 09:48:47
229	10.10.10.244	0	Chrome [d083c24529]	2025-09-18 13:18:57	2025-09-18 13:18:57	2025-09-18 13:18:57
230	10.10.10.244	Windows	Chrome [bc7ecdaaf9]	2025-09-19 00:26:43	2025-09-19 00:26:44	2025-09-19 00:26:44
231	10.10.10.244	0	Chrome [6cfb362aa0]	2025-09-19 19:43:21	2025-09-19 19:43:24	2025-09-19 19:43:24
232	10.10.10.244	0	Chrome [c2f00d5cc3]	2025-09-21 01:50:23	2025-09-21 01:50:24	2025-09-21 01:50:24
233	10.10.10.244	0	Chrome [b378dbaea1]	2025-09-21 16:35:15	2025-09-21 16:35:16	2025-09-21 16:35:16
234	10.10.10.244	Windows	Chrome [4aac36673d]	2025-09-22 00:07:29	2025-09-22 00:07:29	2025-09-22 00:07:29
235	10.10.10.244	Windows	Chrome [0b67defa63]	2025-09-23 00:48:13	2025-09-23 00:50:14	2025-09-23 00:50:14
236	10.10.10.244	Windows	Chrome [5e36896070]	2025-09-24 00:08:26	2025-09-24 00:08:27	2025-09-24 00:08:27
237	10.10.10.244	Windows	Chrome [e0565ffdd0]	2025-09-25 00:14:09	2025-09-25 00:14:09	2025-09-25 00:14:09
238	10.10.10.244	Windows	Chrome [997823a63e]	2025-09-26 00:19:06	2025-09-26 00:19:07	2025-09-26 00:19:07
262	10.10.10.244	0	Chrome [f1e179b6bf]	2025-10-10 07:04:49	2025-10-10 07:04:50	2025-10-10 07:04:50
239	10.10.10.244	AndroidOS	Chrome [b9ae513c7d]	2025-09-26 01:23:35	2025-09-26 01:39:12	2025-09-26 01:39:12
240	10.10.10.244	AndroidOS	Chrome [f216bf8493]	2025-09-26 01:39:12	2025-09-26 01:39:12	2025-09-26 01:39:12
241	10.10.10.244	0	Chrome [61519b3717]	2025-09-26 09:48:14	2025-09-26 09:48:15	2025-09-26 09:48:15
242	10.10.10.244	0	Chrome [cd132ee871]	2025-09-26 19:10:50	2025-09-26 19:10:50	2025-09-26 19:10:50
243	10.10.10.244	Windows	Chrome [f19def8535]	2025-09-28 23:55:50	2025-09-28 23:55:51	2025-09-28 23:55:51
244	10.10.10.244	Windows	Chrome [7c204e47fb]	2025-09-30 00:17:15	2025-09-30 00:17:16	2025-09-30 00:17:16
245	10.10.10.244	0	Chrome [17f998c802]	2025-09-30 13:47:05	2025-09-30 13:47:06	2025-09-30 13:47:06
246	10.10.10.244	Windows	Chrome [30502d8ab4]	2025-10-01 01:10:12	2025-10-01 01:12:13	2025-10-01 01:12:13
247	10.10.10.244	Windows	Chrome [3d45c4431e]	2025-10-02 00:18:17	2025-10-02 00:18:17	2025-10-02 00:18:17
263	10.10.10.244	Windows	Chrome [8adbafa5a3]	2025-10-10 07:33:57	2025-10-10 07:33:59	2025-10-10 07:33:59
248	10.10.10.244	AndroidOS	Chrome [e39361b82e]	2025-10-02 04:43:36	2025-10-02 04:44:09	2025-10-02 04:44:09
249	10.10.10.244	Windows	Chrome [32b3f42038]	2025-10-03 00:39:02	2025-10-03 00:39:02	2025-10-03 00:39:02
250	10.10.10.244	0	Chrome [d5135c0265]	2025-10-03 21:16:37	2025-10-03 21:16:38	2025-10-03 21:16:38
251	10.10.10.244	0	Chrome [c88c08227a]	2025-10-04 10:34:54	2025-10-04 10:34:58	2025-10-04 10:34:58
252	10.10.10.244	0	Chrome [51fd3c386d]	2025-10-04 15:13:28	2025-10-04 20:23:15	2025-10-04 20:23:15
253	10.10.10.244	Windows	Chrome [614bae1ba6]	2025-10-06 01:27:46	2025-10-06 01:27:46	2025-10-06 01:27:46
254	10.10.10.244	0	Chrome [b68b5f24c9]	2025-10-06 04:37:32	2025-10-06 04:37:33	2025-10-06 04:37:33
255	10.10.10.244	Windows	Chrome [d1536f1fe1]	2025-10-07 00:11:24	2025-10-07 00:11:24	2025-10-07 00:11:24
256	10.10.10.244	0	Chrome [ffe0fe1979]	2025-10-07 01:49:18	2025-10-07 01:49:21	2025-10-07 01:49:21
257	10.10.10.244	0	Chrome [4fb93cd10a]	2025-10-07 07:22:36	2025-10-07 07:22:37	2025-10-07 07:22:37
264	10.10.10.244	0	Chrome [e8ac0ff345]	2025-10-11 05:06:29	2025-10-11 05:06:39	2025-10-11 05:06:39
265	10.10.10.244	Linux	Opera [60e572c36b]	2025-10-12 09:45:24	2025-10-12 09:45:26	2025-10-12 09:45:26
266	10.10.10.244	0	Chrome [0455b1abc6]	2025-10-12 10:58:50	2025-10-12 20:30:16	2025-10-12 20:30:16
258	10.10.10.244	Windows	Chrome [ba9d822df7]	2025-10-08 00:19:32	2025-10-08 00:34:10	2025-10-08 00:34:10
259	10.10.10.244	Windows	Chrome [aa537d8df5]	2025-10-08 19:02:35	2025-10-08 19:03:43	2025-10-08 19:03:43
260	10.10.10.244	Windows	Chrome [c3fe4bf8bf]	2025-10-09 00:21:26	2025-10-09 00:21:27	2025-10-09 00:21:27
261	10.10.10.244	Windows	Chrome [381038e7d5]	2025-10-10 00:44:53	2025-10-10 00:44:53	2025-10-10 00:44:53
279	10.10.10.244	0	Chrome [a038ff2116]	2025-10-19 05:54:53	2025-10-19 05:54:54	2025-10-19 05:54:54
269	10.10.10.244	0	Chrome [dca3020d54]	2025-10-14 05:02:50	2025-10-14 05:02:51	2025-10-14 05:02:51
270	10.10.10.244	AndroidOS	Chrome [b476ad5ec0]	2025-10-14 07:23:30	2025-10-14 07:23:31	2025-10-14 07:23:31
267	10.10.10.244	Windows	Chrome [3bbac24f41]	2025-10-14 04:18:30	2025-10-14 08:00:36	2025-10-14 08:00:36
271	10.10.10.244	AndroidOS	Chrome [533606e117]	2025-10-14 08:38:56	2025-10-14 08:38:59	2025-10-14 08:38:59
272	10.10.10.244	AndroidOS	Chrome [c6150e1a2f]	2025-10-14 10:28:21	2025-10-14 10:28:25	2025-10-14 10:28:25
273	10.10.10.244	AndroidOS	Chrome [65eb0544dd]	2025-10-14 16:28:20	2025-10-14 16:28:20	2025-10-14 16:28:20
274	10.10.10.244	Windows	Chrome [ecf74ae6af]	2025-10-15 00:04:50	2025-10-15 00:04:50	2025-10-15 00:04:50
268	10.10.10.244	Windows	Chrome [405504d895]	2025-10-14 04:26:31	2025-10-14 04:36:32	2025-10-14 04:36:32
283	10.10.10.244	0	Chrome [fcea2a1bfa]	2025-10-20 11:32:03	2025-10-20 16:21:20	2025-10-20 16:21:20
280	10.10.10.244	Windows	Chrome [22f8a06c7b]	2025-10-20 00:40:06	2025-10-20 00:40:34	2025-10-20 00:40:34
281	10.10.10.244	Windows	Chrome [dd0644f60c]	2025-10-20 02:01:06	2025-10-20 02:01:06	2025-10-20 02:01:06
282	10.10.10.244	AndroidOS	Chrome [94f911fe32]	2025-10-20 04:54:28	2025-10-20 04:55:12	2025-10-20 04:55:12
289	10.10.10.244	Windows	Chrome [3b3fa0ad85]	2025-10-22 00:58:53	2025-10-22 01:06:54	2025-10-22 01:06:54
284	10.10.10.244	Windows	Chrome [acddf666c1]	2025-10-20 13:29:33	2025-10-20 13:29:37	2025-10-20 13:29:37
285	10.10.10.244	Linux	Chrome [36a1cef4db]	2025-10-20 13:29:38	2025-10-20 13:29:39	2025-10-20 13:29:39
275	10.10.10.244	Windows	Chrome [9d21752582]	2025-10-15 02:31:32	2025-10-15 03:57:19	2025-10-15 03:57:19
276	10.10.10.244	AndroidOS	Chrome [dc47076129]	2025-10-15 05:48:10	2025-10-15 05:48:11	2025-10-15 05:48:11
277	10.10.10.244	Windows	Chrome [d4558cf106]	2025-10-15 08:36:39	2025-10-15 08:36:39	2025-10-15 08:36:39
278	10.10.10.244	Windows	Chrome [e805383970]	2025-10-15 08:45:39	2025-10-15 08:45:39	2025-10-15 08:45:39
286	10.10.10.244	0	Mozilla [95dd8cab09]	2025-10-20 13:42:24	2025-10-20 13:42:25	2025-10-20 13:42:25
287	10.10.10.244	0	Chrome [8036352a40]	2025-10-20 21:43:03	2025-10-20 21:43:05	2025-10-20 21:43:05
288	10.10.10.244	Windows	Chrome [270ba70eee]	2025-10-21 00:51:20	2025-10-21 00:53:21	2025-10-21 00:53:21
290	10.10.10.244	Windows	Chrome [b2e09406d9]	2025-10-23 00:16:18	2025-10-23 00:16:18	2025-10-23 00:16:18
291	10.10.10.244	Windows	Chrome [61f2736173]	2025-10-23 00:49:27	2025-10-23 03:54:44	2025-10-23 03:54:44
292	10.10.10.244	AndroidOS	Chrome [864cb6c2aa]	2025-10-23 05:46:59	2025-10-23 05:47:00	2025-10-23 05:47:00
293	10.10.10.244	Windows	Chrome [ed7895e819]	2025-10-23 17:28:06	2025-10-23 17:28:07	2025-10-23 17:28:07
294	10.10.10.244	ChromeOS	Chrome [6e1f84607d]	2025-10-26 15:02:39	2025-10-26 15:02:42	2025-10-26 15:02:42
295	10.10.10.244	OS X	Chrome [f182a1d549]	2025-10-27 05:13:59	2025-10-27 05:13:59	2025-10-27 05:13:59
297	10.10.10.244	0	Chrome [43b9f31f52]	2025-10-28 11:18:06	2025-10-28 11:18:06	2025-10-28 11:18:06
296	10.10.10.244	Windows	Chrome [a08c3f7b20]	2025-10-28 08:53:43	2025-10-28 08:55:44	2025-10-28 08:55:44
298	10.10.10.244	0	Chrome [df4b11d36b]	2025-10-28 22:28:40	2025-10-28 22:28:40	2025-10-28 22:28:40
299	10.10.10.244	Windows	Chrome [65793eceb6]	2025-10-29 00:55:53	2025-10-29 00:55:53	2025-10-29 00:55:53
300	10.10.10.244	Linux	Chrome [456a6d5305]	2025-10-29 06:04:15	2025-10-29 06:04:40	2025-10-29 06:04:40
301	10.10.10.244	Windows	Chrome [f77419d7a2]	2025-10-29 06:05:30	2025-10-29 06:05:32	2025-10-29 06:05:32
302	10.10.10.244	Linux	Firefox [3709939f62]	2025-10-29 06:06:26	2025-10-29 06:06:27	2025-10-29 06:06:27
303	10.10.10.244	AndroidOS	Chrome [7612c199fc]	2025-10-29 07:02:55	2025-10-29 07:02:56	2025-10-29 07:02:56
304	10.10.10.244	Windows	Chrome [1063493b6d]	2025-10-30 00:51:44	2025-10-30 00:51:44	2025-10-30 00:51:44
333	10.10.10.244	Windows	Chrome [b8961ecfca]	2025-11-19 00:27:49	2025-11-19 00:27:51	2025-11-19 00:27:51
334	10.10.10.244	Windows	Chrome [92131b3217]	2025-11-20 00:41:05	2025-11-20 00:41:05	2025-11-20 00:41:05
335	10.10.10.244	Windows	Chrome [e12308f035]	2025-11-21 01:18:17	2025-11-21 01:18:18	2025-11-21 01:18:18
305	10.10.10.244	Windows	Chrome [599f2efe98]	2025-10-30 09:37:52	2025-10-30 09:47:53	2025-10-30 09:47:53
336	10.10.10.244	Windows	Chrome [e146f275f4]	2025-11-23 10:51:17	2025-11-23 10:51:17	2025-11-23 10:51:17
337	10.10.10.244	Windows	Chrome [3be9ac8a35]	2025-11-24 00:49:33	2025-11-24 00:49:34	2025-11-24 00:49:34
306	10.10.10.244	Windows	Chrome [9e764b6813]	2025-10-30 14:33:10	2025-10-30 14:33:18	2025-10-30 14:33:18
307	10.10.10.244	Windows	Chrome [aa8de0f2be]	2025-10-31 00:39:38	2025-10-31 00:39:38	2025-10-31 00:39:38
308	10.10.10.244	0	Chrome [db39de4763]	2025-11-01 04:20:24	2025-11-01 04:20:26	2025-11-01 04:20:26
309	10.10.10.244	OS X	Chrome [f5706a6da5]	2025-11-01 13:53:40	2025-11-01 13:53:40	2025-11-01 13:53:40
310	10.10.10.244	Windows	Chrome [e6d80af060]	2025-11-03 01:10:50	2025-11-03 01:10:51	2025-11-03 01:10:51
311	10.10.10.244	Windows	Edge [09e57124c0]	2025-11-03 06:19:36	2025-11-03 06:19:36	2025-11-03 06:19:36
312	10.10.10.244	0	Chrome [17f99df933]	2025-11-03 14:42:27	2025-11-03 14:42:27	2025-11-03 14:42:27
313	10.10.10.244	Windows	Chrome [e7dcfd6542]	2025-11-04 01:07:10	2025-11-04 01:07:11	2025-11-04 01:07:11
314	10.10.10.244	0	Chrome [cefe8cabf7]	2025-11-04 16:59:11	2025-11-04 16:59:12	2025-11-04 16:59:12
315	10.10.10.244	Windows	Chrome [b7084b6268]	2025-11-05 00:56:42	2025-11-05 00:56:43	2025-11-05 00:56:43
316	10.10.10.244	Windows	Chrome [b56272ebda]	2025-11-05 02:39:03	2025-11-05 02:39:04	2025-11-05 02:39:04
317	10.10.10.244	Windows	Chrome [3aa9a74aac]	2025-11-06 01:42:57	2025-11-06 01:42:57	2025-11-06 01:42:57
318	10.10.10.244	Windows	Chrome [cebcf86b08]	2025-11-06 06:31:13	2025-11-06 06:31:13	2025-11-06 06:31:13
319	10.10.10.244	Windows	Chrome [a388113b22]	2025-11-06 12:36:25	2025-11-06 12:38:26	2025-11-06 12:38:26
320	10.10.10.244	Windows	Chrome [9f80be170f]	2025-11-06 13:33:07	2025-11-06 13:33:35	2025-11-06 13:33:35
321	10.10.10.244	Windows	Chrome [43c5973fc3]	2025-11-07 00:52:07	2025-11-07 00:52:08	2025-11-07 00:52:08
338	10.10.10.244	AndroidOS	Chrome [d7bcb66f8e]	2025-11-24 08:23:36	2025-11-24 08:23:36	2025-11-24 08:23:36
322	10.10.10.244	Windows	Chrome [a65e25e0af]	2025-11-07 02:21:45	2025-11-07 02:23:47	2025-11-07 02:23:47
339	10.10.10.244	AndroidOS	Chrome [91188a9507]	2025-11-24 11:18:27	2025-11-24 11:18:28	2025-11-24 11:18:28
353	10.10.10.244	Windows	Chrome [85437bff16]	2025-12-02 02:46:28	2025-12-02 02:46:49	2025-12-02 02:46:49
323	10.10.10.244	Windows	Chrome [54b69f2e05]	2025-11-08 01:49:11	2025-11-08 01:49:45	2025-11-08 01:49:45
324	10.10.10.244	Windows	Chrome [dc3d6bd244]	2025-11-11 00:11:41	2025-11-11 00:11:41	2025-11-11 00:11:41
325	10.10.10.244	0	Chrome [13938ae408]	2025-11-11 08:24:40	2025-11-11 08:40:37	2025-11-11 08:40:37
326	10.10.10.244	Windows	Chrome [83a3c68a95]	2025-11-12 00:14:58	2025-11-12 00:14:58	2025-11-12 00:14:58
327	10.10.10.244	Windows	Chrome [ed60a2c66c]	2025-11-13 00:58:05	2025-11-13 00:58:06	2025-11-13 00:58:06
340	10.10.10.244	ChromeOS	Chrome [107c776f21]	2025-11-24 16:10:32	2025-11-24 16:12:34	2025-11-24 16:12:34
341	10.10.10.244	Windows	Chrome [72bb72c63a]	2025-11-25 00:53:53	2025-11-25 00:53:54	2025-11-25 00:53:54
342	10.10.10.244	OS X	Chrome [a3ed48abc6]	2025-11-25 01:20:23	2025-11-25 01:20:23	2025-11-25 01:20:23
328	10.10.10.244	Windows	Chrome [20b41e5f60]	2025-11-13 07:06:56	2025-11-13 07:13:56	2025-11-13 07:13:56
329	10.10.10.244	Windows	Chrome [ac27e60357]	2025-11-17 00:37:25	2025-11-17 00:37:26	2025-11-17 00:37:26
330	10.10.10.244	Windows	Chrome [cbaa3b979d]	2025-11-17 02:09:00	2025-11-17 02:09:00	2025-11-17 02:09:00
331	10.10.10.244	0	Chrome [e7d18414ca]	2025-11-17 03:45:43	2025-11-17 04:01:43	2025-11-17 04:01:43
332	10.10.10.244	Windows	Chrome [04edf013d6]	2025-11-18 00:42:52	2025-11-18 00:42:52	2025-11-18 00:42:52
343	10.10.10.244	AndroidOS	Chrome [c9ffc823a6]	2025-11-26 04:19:10	2025-11-26 04:19:11	2025-11-26 04:19:11
344	10.10.10.244	Windows	Chrome [efd50f66ea]	2025-11-26 04:33:17	2025-11-26 04:33:17	2025-11-26 04:33:17
345	10.10.10.244	Windows	Chrome [c16ab54e14]	2025-11-26 06:16:13	2025-11-26 06:16:14	2025-11-26 06:16:14
346	10.10.10.244	0	Chrome [0924b09cd6]	2025-11-26 12:56:23	2025-11-26 12:56:24	2025-11-26 12:56:24
347	10.10.10.244	Windows	Chrome [ca626b33d1]	2025-11-27 00:52:43	2025-11-27 00:52:43	2025-11-27 00:52:43
360	10.10.10.244	Windows	Chrome [e743d588a9]	2025-12-03 16:07:36	2025-12-03 16:08:29	2025-12-03 16:08:29
348	10.10.10.244	Windows	Chrome [178c312d01]	2025-11-30 12:17:52	2025-11-30 12:20:32	2025-11-30 12:20:32
349	10.10.10.244	Windows	Chrome [95ebb3ad93]	2025-11-30 21:45:28	2025-11-30 21:45:28	2025-11-30 21:45:28
350	10.10.10.244	OS X	Safari [d365733d65]	2025-11-30 23:59:35	2025-11-30 23:59:35	2025-11-30 23:59:35
351	10.10.10.244	Windows	Chrome [af43bc1d6a]	2025-12-01 06:22:37	2025-12-01 06:22:37	2025-12-01 06:22:37
352	10.10.10.244	Windows	Chrome [67328129ea]	2025-12-02 01:07:29	2025-12-02 01:07:30	2025-12-02 01:07:30
354	10.10.10.244	Windows	Chrome [65f16a612c]	2025-12-02 08:45:50	2025-12-02 08:45:58	2025-12-02 08:45:58
361	10.10.10.244	OS X	Safari [80bd41d858]	2025-12-04 01:00:16	2025-12-04 01:00:16	2025-12-04 01:00:16
355	10.10.10.244	0	Chrome [f051dbccdd]	2025-12-02 09:05:25	2025-12-02 09:05:26	2025-12-02 09:05:26
356	10.10.10.244	Windows	Chrome [2ebaccc2e2]	2025-12-03 02:07:02	2025-12-03 02:07:02	2025-12-03 02:07:02
362	10.10.10.244	Windows	Chrome [6273abad46]	2025-12-04 01:40:09	2025-12-04 01:40:09	2025-12-04 01:40:09
357	10.10.10.244	Windows	Chrome [ef4b728b85]	2025-12-03 02:33:48	2025-12-03 02:34:52	2025-12-03 02:34:52
358	10.10.10.244	Windows	Chrome [e31b5e323b]	2025-12-03 08:45:06	2025-12-03 08:47:07	2025-12-03 08:47:07
359	10.10.10.244	Windows	Chrome [09ef3012b3]	2025-12-03 16:07:31	2025-12-03 16:07:31	2025-12-03 16:07:31
365	10.10.10.244	AndroidOS	Safari [47a02d0068]	2025-12-06 00:34:07	2025-12-06 00:34:08	2025-12-06 00:34:08
363	10.10.10.244	Windows	Firefox [85a6f9d1e3]	2025-12-05 03:03:08	2025-12-05 03:17:13	2025-12-05 03:17:13
364	10.10.10.244	AndroidOS	Safari [c454d080b1]	2025-12-05 22:06:16	2025-12-05 22:06:17	2025-12-05 22:06:17
366	10.10.10.244	AndroidOS	Chrome [9a26c9f899]	2025-12-06 04:20:36	2025-12-06 04:20:38	2025-12-06 04:20:38
368	10.10.10.244	Linux	Chrome [c7fcdbb67c]	2025-12-06 04:47:36	2025-12-06 04:47:37	2025-12-06 04:47:37
367	10.10.10.244	AndroidOS	Chrome [a813007ca8]	2025-12-06 04:46:00	2025-12-06 04:48:11	2025-12-06 04:48:11
369	10.10.10.244	0	Mozilla [eaa81500f2]	2025-12-06 17:20:15	2025-12-06 17:20:19	2025-12-06 17:20:19
370	10.10.10.244	0	Chrome [be910764bb]	2025-12-07 13:57:19	2025-12-07 13:57:21	2025-12-07 13:57:21
371	10.10.10.244	Windows	Chrome [5fec0cd1fd]	2025-12-08 01:07:16	2025-12-08 01:07:16	2025-12-08 01:07:16
372	10.10.10.244	Windows	Chrome [8d7b93bf46]	2025-12-09 02:38:18	2025-12-09 02:38:19	2025-12-09 02:38:19
373	10.10.10.244	AndroidOS	Chrome [d746641fb9]	2025-12-09 16:55:51	2025-12-09 16:55:51	2025-12-09 16:55:51
374	10.10.10.244	0	Mozilla [e3e38b5929]	2025-12-09 20:30:16	2025-12-09 20:30:18	2025-12-09 20:30:18
375	10.10.10.244	Windows	Chrome [426379b08e]	2025-12-10 01:16:09	2025-12-10 01:16:10	2025-12-10 01:16:10
376	10.10.10.244	ChromeOS	Chrome [3c0dd7ad22]	2025-12-10 09:43:39	2025-12-10 09:43:40	2025-12-10 09:43:40
377	10.10.10.244	Windows	Chrome [776c5ee937]	2025-12-11 00:52:46	2025-12-11 00:52:46	2025-12-11 00:52:46
378	10.10.10.244	Windows	Chrome [b460240dbe]	2025-12-12 01:57:08	2025-12-12 01:57:08	2025-12-12 01:57:08
379	10.10.10.244	0	Chrome [0218f79f2a]	2025-12-14 12:58:20	2025-12-14 12:58:21	2025-12-14 12:58:21
380	10.10.10.244	Windows	Chrome [daf3c434e1]	2025-12-15 00:45:10	2025-12-15 00:45:10	2025-12-15 00:45:10
381	10.10.10.244	Windows	Chrome [a5691d5f08]	2025-12-16 01:41:49	2025-12-16 01:41:50	2025-12-16 01:41:50
382	10.10.10.244	Linux	Chrome [719809c76f]	2025-12-16 12:28:46	2025-12-16 12:28:47	2025-12-16 12:28:47
383	10.10.10.244	AndroidOS	Chrome [a16ab33931]	2025-12-17 00:23:35	2025-12-17 00:23:36	2025-12-17 00:23:36
384	10.10.10.244	Windows	Chrome [38b7795d6a]	2025-12-17 01:07:24	2025-12-17 01:07:24	2025-12-17 01:07:24
385	10.10.10.244	Windows	Chrome [6e94f6e29f]	2025-12-18 01:57:05	2025-12-18 01:57:07	2025-12-18 01:57:07
386	10.10.10.244	Windows	Chrome [81d2096c76]	2025-12-19 01:39:28	2025-12-19 01:39:28	2025-12-19 01:39:28
387	10.10.10.244	0	Mozilla [e1a2e4e0c5]	2025-12-19 06:59:20	2025-12-19 06:59:22	2025-12-19 06:59:22
388	10.10.10.244	0	Mozilla [888467905f]	2025-12-19 07:19:54	2025-12-19 07:19:57	2025-12-19 07:19:57
389	10.10.10.244	0	Chrome [c06e74f4a4]	2025-12-20 19:45:07	2025-12-20 19:45:09	2025-12-20 19:45:09
390	10.10.10.244	0	Chrome [f9e53c0f0d]	2025-12-21 00:02:03	2025-12-21 00:02:03	2025-12-21 00:02:03
391	10.10.10.244	Windows	Chrome [be3346097a]	2025-12-22 00:28:32	2025-12-22 00:28:32	2025-12-22 00:28:32
392	10.10.10.244	Windows	Chrome [1411a12535]	2025-12-23 00:53:22	2025-12-23 00:53:22	2025-12-23 00:53:22
393	10.10.10.244	Windows	Chrome [ef21acb931]	2025-12-24 01:20:32	2025-12-24 01:20:33	2025-12-24 01:20:33
394	10.10.10.244	AndroidOS	Chrome [19bfcfa45b]	2025-12-25 10:31:10	2025-12-25 10:31:11	2025-12-25 10:31:11
395	10.10.10.244	0	Chrome [cbed8d40c5]	2025-12-25 10:31:44	2025-12-25 10:31:47	2025-12-25 10:31:47
396	10.10.10.244	AndroidOS	Chrome [73c30b104c]	2025-12-25 10:31:45	2025-12-25 10:31:48	2025-12-25 10:31:48
397	10.10.10.244	AndroidOS	Chrome [3612f2373a]	2025-12-25 11:02:51	2025-12-25 11:02:51	2025-12-25 11:02:51
415	10.10.10.244	0	Chrome [615aae4d0b]	2026-01-02 01:37:07	2026-01-02 01:37:08	2026-01-02 01:37:08
398	10.10.10.244	OS X	Chrome [972a257bd1]	2025-12-25 19:44:49	2025-12-25 19:45:20	2025-12-25 19:45:20
399	10.10.10.244	0	Chrome [106734b35c]	2025-12-26 14:51:23	2025-12-26 14:51:27	2025-12-26 14:51:27
400	10.10.10.244	iOS	Safari [814e495432]	2025-12-27 16:21:58	2025-12-27 16:41:44	2025-12-27 16:41:44
401	10.10.10.244	AndroidOS	Chrome [b5476b62ec]	2025-12-28 08:18:09	2025-12-28 08:18:09	2025-12-28 08:18:09
402	10.10.10.244	Windows	Chrome [2033eb9ecf]	2025-12-29 01:12:00	2025-12-29 01:12:01	2025-12-29 01:12:01
403	10.10.10.244	AndroidOS	Chrome [59b56d6bae]	2025-12-29 02:12:58	2025-12-29 02:12:59	2025-12-29 02:12:59
404	10.10.10.244	AndroidOS	Chrome [eb07432d4f]	2025-12-29 07:41:25	2025-12-29 07:41:26	2025-12-29 07:41:26
405	10.10.10.244	Windows	Chrome [4ea8015144]	2025-12-29 13:40:48	2025-12-29 13:40:54	2025-12-29 13:40:54
406	10.10.10.244	Windows	Chrome [ded2a4069f]	2025-12-30 01:16:29	2025-12-30 01:16:34	2025-12-30 01:16:34
407	10.10.10.244	OS X	Safari [8ce3e5682d]	2025-12-30 06:36:47	2025-12-30 06:36:48	2025-12-30 06:36:48
416	10.10.10.244	0	Chrome [7fae3547cc]	2026-01-04 16:10:08	2026-01-04 16:10:10	2026-01-04 16:10:10
408	10.10.10.244	Windows	Chrome [a4c780f993]	2025-12-30 06:41:30	2025-12-30 06:45:31	2025-12-30 06:45:31
409	10.10.10.244	Windows	Chrome [1a8b87d6c7]	2025-12-30 07:06:35	2025-12-30 07:06:35	2025-12-30 07:06:35
410	10.10.10.244	Windows	Chrome [e86e112440]	2025-12-30 15:32:47	2025-12-30 15:32:47	2025-12-30 15:32:47
412	10.10.10.244	Linux	Chrome [a77343b5a9]	2026-01-01 06:51:26	2026-01-01 06:51:27	2026-01-01 06:51:27
411	10.10.10.244	OS X	Safari [c1b73ef961]	2026-01-01 06:51:26	2026-01-01 06:51:27	2026-01-01 06:51:27
413	10.10.10.244	Linux	Chrome [35a6b5f918]	2026-01-01 06:51:41	2026-01-01 06:51:42	2026-01-01 06:51:42
414	10.10.10.244	Linux	Chrome [5c5dc77084]	2026-01-01 09:08:17	2026-01-01 09:08:17	2026-01-01 09:08:17
417	10.10.10.244	AndroidOS	Chrome [aa6c7bb35a]	2026-01-04 16:10:09	2026-01-04 16:10:11	2026-01-04 16:10:11
418	10.10.10.244	0	Chrome [3f7dfd23ea]	2026-01-27 23:04:49	2026-01-27 23:04:50	2026-01-27 23:04:50
419	10.10.10.244	AndroidOS	Chrome [5bff27d4d2]	2026-01-28 15:03:32	2026-01-28 15:03:33	2026-01-28 15:03:33
420	10.10.10.244	AndroidOS	Chrome [9428da61d0]	2026-01-28 16:57:46	2026-01-28 16:57:46	2026-01-28 16:57:46
431	10.10.10.244	Windows	Chrome [66fb4ff77a]	2026-02-12 09:07:59	2026-02-12 09:10:00	2026-02-12 09:10:00
421	10.10.10.244	AndroidOS	Chrome [11d24b0e42]	2026-01-29 05:38:23	2026-01-29 05:39:56	2026-01-29 05:39:56
422	10.10.10.244	AndroidOS	Chrome [1799df0cf2]	2026-01-29 16:10:59	2026-01-29 16:10:59	2026-01-29 16:10:59
423	10.10.10.244	iOS	Safari [b9ba4d48db]	2026-01-29 21:43:39	2026-01-29 21:43:39	2026-01-29 21:43:39
424	10.10.10.244	AndroidOS	Chrome [e4e737abb8]	2026-02-03 01:46:54	2026-02-03 01:46:57	2026-02-03 01:46:57
425	10.10.10.244	OS X	Chrome [4e9fcf9535]	2026-02-03 02:24:06	2026-02-03 02:24:06	2026-02-03 02:24:06
426	10.10.10.244	AndroidOS	Chrome [b8096cae43]	2026-02-03 04:35:48	2026-02-03 04:35:49	2026-02-03 04:35:49
427	10.10.10.244	0	Chrome [114f0e0501]	2026-02-04 15:49:59	2026-02-04 15:50:04	2026-02-04 15:50:04
428	10.10.10.244	AndroidOS	Chrome [7d84614274]	2026-02-11 03:23:47	2026-02-11 03:23:47	2026-02-11 03:23:47
429	10.10.10.244	Windows	Chrome [674a63ef00]	2026-02-11 07:57:19	2026-02-11 07:57:21	2026-02-11 07:57:21
430	10.10.10.244	Windows	Chrome [0e484620dd]	2026-02-12 03:06:17	2026-02-12 03:06:17	2026-02-12 03:06:17
437	10.10.10.244	AndroidOS	Safari [7c3840f865]	2026-02-15 00:32:41	2026-02-15 00:32:42	2026-02-15 00:32:42
432	10.10.10.244	AndroidOS	Firefox [ec645767ed]	2026-02-12 12:10:43	2026-02-12 12:10:59	2026-02-12 12:10:59
433	10.10.10.244	AndroidOS	Safari [cd57f487ae]	2026-02-14 22:31:14	2026-02-14 22:31:15	2026-02-14 22:31:15
434	10.10.10.244	AndroidOS	Safari [c818812cbe]	2026-02-14 22:34:04	2026-02-14 22:34:05	2026-02-14 22:34:05
435	10.10.10.244	AndroidOS	Chrome [678cfbad8d]	2026-02-14 23:28:45	2026-02-14 23:28:45	2026-02-14 23:28:45
436	10.10.10.244	AndroidOS	Chrome [2e807f1828]	2026-02-14 23:35:40	2026-02-14 23:35:41	2026-02-14 23:35:41
438	10.10.10.244	AndroidOS	Safari [4cd996b13e]	2026-02-15 00:34:42	2026-02-15 00:34:43	2026-02-15 00:34:43
439	10.10.10.244	AndroidOS	Safari [ae71584a79]	2026-02-15 01:33:58	2026-02-15 01:33:59	2026-02-15 01:33:59
440	10.10.10.244	AndroidOS	Safari [28df270388]	2026-02-15 01:37:14	2026-02-15 01:37:14	2026-02-15 01:37:14
441	10.10.10.244	AndroidOS	Chrome [78dacb6f1e]	2026-02-15 02:53:22	2026-02-15 02:53:23	2026-02-15 02:53:23
442	10.10.10.244	Linux	Chrome [17c6a6ec7a]	2026-02-17 03:52:59	2026-02-17 03:52:59	2026-02-17 03:52:59
443	10.10.10.244	Linux	Chrome [b6525941c3]	2026-02-17 03:55:49	2026-02-17 03:55:49	2026-02-17 03:55:49
444	10.10.10.244	Linux	Chrome [ed59c6a4bd]	2026-02-17 03:56:14	2026-02-17 03:56:17	2026-02-17 03:56:17
445	10.10.10.244	AndroidOS	Chrome [60fa34d536]	2026-02-17 17:31:46	2026-02-17 17:31:47	2026-02-17 17:31:47
446	10.10.10.244	0	Chrome [3f7ef9f418]	2026-02-19 15:15:51	2026-02-19 15:15:53	2026-02-19 15:15:53
447	10.10.10.244	AndroidOS	Chrome [150f9349f0]	2026-02-19 15:15:51	2026-02-19 15:15:54	2026-02-19 15:15:54
448	10.10.10.244	AndroidOS	Chrome [840a9efbce]	2026-02-21 07:09:02	2026-02-21 07:13:03	2026-02-21 07:13:03
449	10.10.10.244	AndroidOS	Chrome [1607626d7b]	2026-02-21 17:47:09	2026-02-21 17:47:10	2026-02-21 17:47:10
450	10.10.10.244	0	Mozilla [cec7b6d19f]	2026-02-22 00:10:07	2026-02-22 00:10:09	2026-02-22 00:10:09
451	10.10.10.244	0	Chrome [9529cf25cb]	2026-02-22 01:24:59	2026-02-22 01:25:00	2026-02-22 01:25:00
452	10.10.10.244	0	Mozilla [2fe472f4a1]	2026-02-22 02:09:27	2026-02-22 02:09:28	2026-02-22 02:09:28
453	10.10.10.244	ChromeOS	Chrome [0067750930]	2026-02-28 12:41:46	2026-02-28 12:41:53	2026-02-28 12:41:53
454	10.10.10.244	0	Chrome [6c049dbc9b]	2026-03-01 00:11:00	2026-03-01 00:11:02	2026-03-01 00:11:02
455	10.10.10.244	Windows	Chrome [a081e09614]	2026-03-01 06:45:33	2026-03-01 06:45:34	2026-03-01 06:45:34
456	10.10.10.244	AndroidOS	Safari [26403f5dbd]	2026-03-02 00:37:22	2026-03-02 00:37:23	2026-03-02 00:37:23
457	10.10.10.244	AndroidOS	Chrome [4424168f91]	2026-03-02 01:45:03	2026-03-02 01:45:04	2026-03-02 01:45:04
458	10.10.10.244	AndroidOS	Safari [5eea6b3503]	2026-03-02 02:45:58	2026-03-02 02:45:59	2026-03-02 02:45:59
459	10.10.10.244	AndroidOS	Safari [31da52b053]	2026-03-02 04:03:47	2026-03-02 04:03:48	2026-03-02 04:03:48
460	10.10.10.244	AndroidOS	Chrome [1d79a20a2d]	2026-03-02 06:11:25	2026-03-02 06:11:30	2026-03-02 06:11:30
461	10.10.10.244	0	Chrome [7e6123b371]	2026-03-03 16:49:01	2026-03-03 16:49:02	2026-03-03 16:49:02
462	10.10.10.244	AndroidOS	Chrome [ba55616854]	2026-03-03 16:49:01	2026-03-03 16:49:03	2026-03-03 16:49:03
463	10.10.10.244	AndroidOS	Chrome [7095b9dfbf]	2026-03-03 18:54:21	2026-03-03 18:54:26	2026-03-03 18:54:26
464	10.10.10.244	AndroidOS	Chrome [d34278d49c]	2026-03-04 15:31:53	2026-03-04 15:31:53	2026-03-04 15:31:53
465	10.10.10.244	Linux	Chrome [798699c6ad]	2026-03-05 04:31:40	2026-03-05 04:31:41	2026-03-05 04:31:41
466	10.10.10.244	Linux	Chrome [afff2585cc]	2026-03-05 05:30:41	2026-03-05 05:30:42	2026-03-05 05:30:42
467	10.10.10.244	Linux	Chrome [627fa91482]	2026-03-05 05:30:54	2026-03-05 05:30:56	2026-03-05 05:30:56
468	10.10.10.244	Linux	Chrome [0930f50d11]	2026-03-05 05:31:26	2026-03-05 05:31:27	2026-03-05 05:31:27
469	10.10.10.244	AndroidOS	Chrome [412622350d]	2026-03-07 01:14:16	2026-03-07 01:14:17	2026-03-07 01:14:17
470	10.10.10.244	0	Chrome [ca805bae70]	2026-03-07 03:19:36	2026-03-07 03:19:36	2026-03-07 03:19:36
471	10.10.10.244	iOS	Safari [7bbe12c425]	2026-03-08 16:13:01	2026-03-08 16:13:02	2026-03-08 16:13:02
472	10.10.10.244	AndroidOS	Chrome [0f3f69bc30]	2026-03-09 19:28:48	2026-03-09 19:28:48	2026-03-09 19:28:48
473	10.10.10.244	AndroidOS	Chrome [47979b7917]	2026-03-11 08:08:39	2026-03-11 08:08:45	2026-03-11 08:08:45
474	10.10.10.244	AndroidOS	Chrome [a821bef522]	2026-03-11 08:56:33	2026-03-11 08:56:38	2026-03-11 08:56:38
475	10.10.10.244	OS X	Chrome [82e14360d1]	2026-03-14 18:55:13	2026-03-14 18:55:15	2026-03-14 18:55:15
476	10.10.10.244	Windows	Chrome [6030ec0021]	2026-03-18 06:20:37	2026-03-18 06:20:38	2026-03-18 06:20:38
477	10.10.10.244	Windows	Chrome [5f6bbb7aa2]	2026-03-18 17:19:12	2026-03-18 17:19:12	2026-03-18 17:19:12
478	10.10.10.244	Windows	Chrome [6baa257c77]	2026-03-19 09:42:27	2026-03-19 09:42:28	2026-03-19 09:42:28
479	10.10.10.244	AndroidOS	Chrome [fbfc4421c9]	2026-03-23 14:18:48	2026-03-23 14:18:54	2026-03-23 14:18:54
480	10.10.10.244	AndroidOS	Chrome [217a2be8e3]	2026-03-24 04:52:32	2026-03-24 04:52:33	2026-03-24 04:52:33
481	10.10.10.244	AndroidOS	Chrome [dd53cfbd96]	2026-03-24 23:09:32	2026-03-24 23:09:37	2026-03-24 23:09:37
482	10.10.10.244	0	Chrome [c55d376171]	2026-03-25 06:34:47	2026-03-25 06:34:50	2026-03-25 06:34:50
483	10.10.10.244	Windows	Chrome [b93210db10]	2026-03-25 06:56:47	2026-03-25 06:56:48	2026-03-25 06:56:48
484	10.10.10.244	Windows	Chrome [1e0bbf63c8]	2026-03-26 03:55:19	2026-03-26 03:55:20	2026-03-26 03:55:20
485	10.10.10.244	AndroidOS	Chrome [990caac8ee]	2026-03-26 10:44:56	2026-03-26 10:44:57	2026-03-26 10:44:57
486	10.10.10.244	Windows	Chrome [a5d9bb4224]	2026-03-29 18:55:52	2026-03-29 18:55:53	2026-03-29 18:55:53
487	10.10.10.244	AndroidOS	Chrome [ad2ac93ac8]	2026-03-30 19:06:17	2026-03-30 19:06:17	2026-03-30 19:06:17
488	10.10.10.244	Windows	Chrome [d19aba66fc]	2026-03-31 07:22:54	2026-03-31 07:22:55	2026-03-31 07:22:55
489	10.10.10.244	Windows	Chrome [c7ba6d8213]	2026-04-02 19:38:04	2026-04-02 19:38:06	2026-04-02 19:38:06
490	10.10.10.244	AndroidOS	Chrome [b3ca2c20f3]	2026-04-03 06:07:09	2026-04-03 06:07:12	2026-04-03 06:07:12
491	10.10.10.244	0	Chrome [b7ac6df3fc]	2026-04-03 06:07:10	2026-04-03 06:07:13	2026-04-03 06:07:13
492	10.10.10.244	AndroidOS	Chrome [1608de7909]	2026-04-04 08:07:49	2026-04-04 08:07:49	2026-04-04 08:07:49
507	10.10.10.244	AndroidOS	Safari [e0ca0a1669]	2026-04-12 14:42:22	2026-04-12 14:42:23	2026-04-12 14:42:23
508	10.10.10.244	AndroidOS	Safari [2130c6505b]	2026-04-12 16:23:18	2026-04-12 16:23:19	2026-04-12 16:23:19
500	10.10.10.244	Windows	Chrome [6a008360de]	2026-04-11 05:02:22	2026-04-11 05:03:01	2026-04-11 05:03:01
493	10.10.10.244	Windows	Firefox [8a427841d7]	2026-04-05 16:32:12	2026-04-05 16:44:21	2026-04-05 16:44:21
494	10.10.10.244	AndroidOS	Safari [57003ae8fd]	2026-04-06 09:11:22	2026-04-06 09:11:23	2026-04-06 09:11:23
495	10.10.10.244	AndroidOS	Safari [7e210ee91b]	2026-04-06 12:47:44	2026-04-06 12:47:45	2026-04-06 12:47:45
496	10.10.10.244	AndroidOS	Safari [d41c9a23df]	2026-04-06 15:28:36	2026-04-06 15:28:37	2026-04-06 15:28:37
497	10.10.10.244	Windows	Firefox [7a1d6d53a1]	2026-04-09 01:03:03	2026-04-09 01:08:03	2026-04-09 01:08:03
498	10.10.10.244	AndroidOS	Safari [413074f9d8]	2026-04-09 19:40:03	2026-04-09 19:40:04	2026-04-09 19:40:04
499	10.10.10.244	0	Chrome [c43180fd29]	2026-04-09 23:34:59	2026-04-09 23:35:01	2026-04-09 23:35:01
501	10.10.10.244	AndroidOS	Safari [60e453a877]	2026-04-11 18:24:19	2026-04-11 18:24:21	2026-04-11 18:24:21
502	10.10.10.244	AndroidOS	Safari [ebb8c35765]	2026-04-11 20:07:16	2026-04-11 20:07:17	2026-04-11 20:07:17
503	10.10.10.244	AndroidOS	Safari [61a6f95c28]	2026-04-11 21:27:08	2026-04-11 21:27:09	2026-04-11 21:27:09
504	10.10.10.244	AndroidOS	Chrome [fdf6134eda]	2026-04-12 01:00:47	2026-04-12 01:00:47	2026-04-12 01:00:47
505	10.10.10.244	AndroidOS	Safari [ecc9d8e2b4]	2026-04-12 07:29:57	2026-04-12 07:29:58	2026-04-12 07:29:58
506	10.10.10.244	AndroidOS	Safari [689846d56d]	2026-04-12 11:05:02	2026-04-12 11:05:03	2026-04-12 11:05:03
509	10.10.10.244	AndroidOS	Chrome [303a5fbbed]	2026-04-14 04:57:36	2026-04-14 04:57:48	2026-04-14 04:57:48
510	10.10.10.244	0	Chrome [ef43b34ace]	2026-04-14 04:57:39	2026-04-14 04:57:48	2026-04-14 04:57:48
511	10.10.10.244	AndroidOS	Safari [7c5ba821dc]	2026-04-15 07:29:22	2026-04-15 07:29:23	2026-04-15 07:29:23
512	10.10.10.244	AndroidOS	Safari [66f3636da9]	2026-04-15 09:10:34	2026-04-15 09:10:34	2026-04-15 09:10:34
513	10.10.10.244	AndroidOS	Safari [db60aa3379]	2026-04-15 09:15:40	2026-04-15 09:15:41	2026-04-15 09:15:41
514	10.10.10.244	AndroidOS	Safari [8dcd89b9ea]	2026-04-15 10:34:02	2026-04-15 10:34:04	2026-04-15 10:34:04
515	10.10.10.244	AndroidOS	Safari [fca136545b]	2026-04-15 11:53:21	2026-04-15 11:53:22	2026-04-15 11:53:22
516	10.10.10.244	AndroidOS	Safari [0bed0130fb]	2026-04-15 14:57:26	2026-04-15 14:57:27	2026-04-15 14:57:27
517	10.10.10.244	AndroidOS	Chrome [b84bdb955a]	2026-04-15 18:11:23	2026-04-15 18:11:23	2026-04-15 18:11:23
518	10.10.10.244	Windows	Chrome [83cfad54b7]	2026-04-16 02:03:05	2026-04-16 02:03:06	2026-04-16 02:03:06
520	10.10.10.244	Windows	Chrome [4405126fbb]	2026-04-16 07:10:36	2026-04-16 07:10:36	2026-04-16 07:10:36
519	10.10.10.244	Windows	Chrome [3e3200348e]	2026-04-16 04:42:19	2026-04-16 05:02:26	2026-04-16 05:02:26
521	10.10.10.244	OS X	Chrome [6c3136d624]	2026-04-16 07:26:44	2026-04-16 07:26:46	2026-04-16 07:26:46
522	10.10.10.244	Windows	Edge [9011ba79f3]	2026-04-16 07:37:01	2026-04-16 07:37:01	2026-04-16 07:37:01
551	10.10.10.244	AndroidOS	Safari [d2f3f658c0]	2026-04-20 18:58:44	2026-04-20 18:58:44	2026-04-20 18:58:44
524	10.10.10.244	Windows	Edge [b6e4be166f]	2026-04-16 07:39:05	2026-04-16 07:39:05	2026-04-16 07:39:05
552	10.10.10.244	AndroidOS	Safari [d78a08108b]	2026-04-20 19:02:21	2026-04-20 19:02:22	2026-04-20 19:02:22
553	10.10.10.244	AndroidOS	Safari [201f974fae]	2026-04-20 20:06:57	2026-04-20 20:06:58	2026-04-20 20:06:58
535	10.10.10.244	Windows	Chrome [8e0f9b1fa0]	2026-04-17 13:33:40	2026-04-17 13:39:58	2026-04-17 13:39:58
536	10.10.10.244	AndroidOS	Chrome [ddfc9e0e27]	2026-04-17 13:40:49	2026-04-17 13:40:49	2026-04-17 13:40:49
554	10.10.10.244	AndroidOS	Safari [4b6178cb6b]	2026-04-20 20:09:25	2026-04-20 20:09:26	2026-04-20 20:09:26
555	10.10.10.244	Windows	Firefox [1eca47c80a]	2026-04-21 01:43:57	2026-04-21 01:43:58	2026-04-21 01:43:58
556	10.10.10.244	Windows	Chrome [53f84c75d8]	2026-04-21 02:51:54	2026-04-21 02:51:54	2026-04-21 02:51:54
557	10.10.10.244	AndroidOS	Safari [d6f21b1fbf]	2026-04-21 08:58:00	2026-04-21 08:58:00	2026-04-21 08:58:00
523	10.10.10.244	Windows	Chrome [7e0dabcb7d]	2026-04-16 07:38:41	2026-04-16 10:44:06	2026-04-16 10:44:06
525	10.10.10.244	AndroidOS	Safari [afbbeff69c]	2026-04-16 14:07:58	2026-04-16 14:07:59	2026-04-16 14:07:59
526	10.10.10.244	Windows	Chrome [a0f9e6aba2]	2026-04-16 23:05:30	2026-04-16 23:05:32	2026-04-16 23:05:32
527	10.10.10.244	Windows	Chrome [a66f586ef4]	2026-04-17 05:10:56	2026-04-17 05:10:56	2026-04-17 05:10:56
528	10.10.10.244	AndroidOS	Chrome [eefe842ead]	2026-04-17 05:43:08	2026-04-17 05:43:13	2026-04-17 05:43:13
529	10.10.10.244	Windows	Chrome [0dd3310dd6]	2026-04-17 08:41:36	2026-04-17 08:41:36	2026-04-17 08:41:36
530	10.10.10.244	Windows	Chrome [94eaa339e9]	2026-04-17 09:58:18	2026-04-17 09:58:18	2026-04-17 09:58:18
534	10.10.10.244	Windows	Chrome [c9d77bbf2c]	2026-04-17 12:10:51	2026-04-17 13:53:27	2026-04-17 13:53:27
537	10.10.10.244	AndroidOS	Safari [6b2cf50b37]	2026-04-17 17:17:29	2026-04-17 17:17:29	2026-04-17 17:17:29
531	10.10.10.244	Windows	Chrome [3f955de4e4]	2026-04-17 10:29:10	2026-04-17 10:33:03	2026-04-17 10:33:03
532	10.10.10.244	iOS	Safari [a4e1f0df95]	2026-04-17 10:34:08	2026-04-17 10:34:08	2026-04-17 10:34:08
533	10.10.10.244	Windows	Chrome [f2f47007a4]	2026-04-17 10:55:30	2026-04-17 10:55:30	2026-04-17 10:55:30
538	10.10.10.244	AndroidOS	Safari [a12a542397]	2026-04-17 17:35:40	2026-04-17 17:35:41	2026-04-17 17:35:41
539	10.10.10.244	AndroidOS	Safari [c5f4477548]	2026-04-17 18:48:14	2026-04-17 18:48:14	2026-04-17 18:48:14
540	10.10.10.244	AndroidOS	Safari [89f90afe89]	2026-04-17 18:52:31	2026-04-17 18:52:31	2026-04-17 18:52:31
541	10.10.10.244	AndroidOS	Safari [50bcd5897a]	2026-04-17 19:59:09	2026-04-17 19:59:09	2026-04-17 19:59:09
542	10.10.10.244	AndroidOS	Safari [57b16a4b89]	2026-04-17 20:02:19	2026-04-17 20:02:21	2026-04-17 20:02:21
543	10.10.10.244	AndroidOS	Safari [7a52adfbf2]	2026-04-17 21:21:55	2026-04-17 21:21:56	2026-04-17 21:21:56
558	10.10.10.244	AndroidOS	Safari [dd7d0504ff]	2026-04-21 09:20:30	2026-04-21 09:20:31	2026-04-21 09:20:31
544	10.10.10.244	AndroidOS	Chrome [ca03a2053f]	2026-04-20 01:18:35	2026-04-20 01:19:03	2026-04-20 01:19:03
559	10.10.10.244	AndroidOS	Safari [3e506b596c]	2026-04-21 11:40:50	2026-04-21 11:40:51	2026-04-21 11:40:51
560	10.10.10.244	AndroidOS	Safari [7f26d2bf2f]	2026-04-21 11:43:41	2026-04-21 11:43:42	2026-04-21 11:43:42
561	10.10.10.244	AndroidOS	Safari [3faa82f537]	2026-04-21 13:36:08	2026-04-21 13:36:08	2026-04-21 13:36:08
562	10.10.10.244	AndroidOS	Safari [7d8f0f3e3f]	2026-04-21 16:46:28	2026-04-21 16:46:28	2026-04-21 16:46:28
576	10.10.10.244	AndroidOS	Safari [e9c6e95fe8]	2026-04-23 11:05:57	2026-04-23 11:05:58	2026-04-23 11:05:58
577	10.10.10.244	AndroidOS	Safari [04888e4d04]	2026-04-23 11:07:34	2026-04-23 11:07:35	2026-04-23 11:07:35
578	10.10.10.244	AndroidOS	Safari [1d4d9a4ca7]	2026-04-23 11:08:39	2026-04-23 11:08:40	2026-04-23 11:08:40
563	10.10.10.244	Windows	Chrome [3e56321fde]	2026-04-22 01:15:41	2026-04-22 02:07:40	2026-04-22 02:07:40
564	10.10.10.244	Windows	Edge [16fa897f7f]	2026-04-22 05:18:54	2026-04-22 05:18:54	2026-04-22 05:18:54
545	10.10.10.244	Windows	Chrome [461ca0c3e8]	2026-04-20 08:33:17	2026-04-20 09:08:14	2026-04-20 09:08:14
546	10.10.10.244	AndroidOS	Safari [f3ca12a603]	2026-04-20 13:24:05	2026-04-20 13:24:05	2026-04-20 13:24:05
547	10.10.10.244	AndroidOS	Safari [80a581b092]	2026-04-20 13:27:51	2026-04-20 13:27:52	2026-04-20 13:27:52
579	10.10.10.244	AndroidOS	Safari [ad9ce3e1d1]	2026-04-23 11:11:57	2026-04-23 11:11:58	2026-04-23 11:11:58
548	10.10.10.244	AndroidOS	Safari [03f60dfbc4]	2026-04-20 14:56:36	2026-04-20 14:56:37	2026-04-20 14:56:37
549	10.10.10.244	AndroidOS	Safari [513f45bdb5]	2026-04-20 16:52:03	2026-04-20 16:52:04	2026-04-20 16:52:04
550	10.10.10.244	AndroidOS	Safari [baba04f969]	2026-04-20 16:54:34	2026-04-20 16:54:36	2026-04-20 16:54:36
565	10.10.10.244	AndroidOS	Chrome [7b9ea4c9ee]	2026-04-22 08:35:55	2026-04-22 08:36:17	2026-04-22 08:36:17
566	10.10.10.244	0	Chrome [65bd0cba7d]	2026-04-22 16:37:42	2026-04-22 16:37:43	2026-04-22 16:37:43
567	10.10.10.244	Windows	Chrome [60081cc02f]	2026-04-22 17:37:45	2026-04-22 17:37:46	2026-04-22 17:37:46
568	10.10.10.244	Windows	Chrome [6137a0c567]	2026-04-22 18:23:02	2026-04-22 18:23:02	2026-04-22 18:23:02
569	10.10.10.244	Windows	Chrome [094917f018]	2026-04-22 18:23:08	2026-04-22 18:23:08	2026-04-22 18:23:08
570	10.10.10.244	Windows	Chrome [c302626bf4]	2026-04-22 18:23:12	2026-04-22 18:23:12	2026-04-22 18:23:12
571	10.10.10.244	Windows	Chrome [974c82b4e0]	2026-04-22 21:08:14	2026-04-22 21:08:14	2026-04-22 21:08:14
572	10.10.10.244	AndroidOS	Chrome [f4b3591707]	2026-04-22 23:54:10	2026-04-22 23:54:10	2026-04-22 23:54:10
574	10.10.10.244	AndroidOS	Chrome [34dba9c4eb]	2026-04-23 05:43:28	2026-04-23 05:43:29	2026-04-23 05:43:29
573	10.10.10.244	AndroidOS	Chrome [bc30051e57]	2026-04-23 05:43:21	2026-04-23 05:46:59	2026-04-23 05:46:59
575	10.10.10.244	AndroidOS	Chrome [139d1dcf71]	2026-04-23 05:46:59	2026-04-23 05:47:00	2026-04-23 05:47:00
580	10.10.10.244	Windows	Chrome [7bb84770ff]	2026-04-23 12:37:13	2026-04-23 12:37:14	2026-04-23 12:37:14
581	10.10.10.244	Windows	Chrome [d9d5b81f7e]	2026-04-23 12:49:13	2026-04-23 12:49:14	2026-04-23 12:49:14
584	10.10.10.244	AndroidOS	Safari [ccf19e27e3]	2026-04-24 08:59:27	2026-04-24 08:59:28	2026-04-24 08:59:28
585	10.10.10.244	AndroidOS	Safari [cf2a4b8c5f]	2026-04-25 09:34:37	2026-04-25 09:34:38	2026-04-25 09:34:38
582	10.10.10.244	Windows	Chrome [6e0f709e72]	2026-04-24 02:44:34	2026-04-24 02:54:00	2026-04-24 02:54:00
583	10.10.10.244	AndroidOS	Safari [9f275c77c4]	2026-04-24 08:49:34	2026-04-24 08:49:35	2026-04-24 08:49:35
586	10.10.10.244	AndroidOS	Safari [6e112434e2]	2026-04-25 09:36:46	2026-04-25 09:36:47	2026-04-25 09:36:47
587	10.10.10.244	AndroidOS	Safari [89e36eb5a8]	2026-04-25 11:08:18	2026-04-25 11:08:20	2026-04-25 11:08:20
588	10.10.10.244	AndroidOS	Safari [3b86bd8060]	2026-04-25 11:10:07	2026-04-25 11:10:09	2026-04-25 11:10:09
589	10.10.10.244	AndroidOS	Safari [8097c5325a]	2026-04-25 12:52:36	2026-04-25 12:52:37	2026-04-25 12:52:37
590	10.10.10.244	AndroidOS	Safari [de8faaa180]	2026-04-25 12:54:46	2026-04-25 12:54:46	2026-04-25 12:54:46
591	10.10.10.244	AndroidOS	Safari [4ec0743ef5]	2026-04-25 14:14:58	2026-04-25 14:14:59	2026-04-25 14:14:59
592	10.10.10.244	AndroidOS	Safari [0294fbb5c5]	2026-04-25 14:17:09	2026-04-25 14:17:10	2026-04-25 14:17:10
593	10.10.10.244	AndroidOS	Safari [ae5182de38]	2026-04-25 17:01:57	2026-04-25 17:01:58	2026-04-25 17:01:58
594	10.10.10.244	AndroidOS	Safari [d748630dea]	2026-04-25 17:03:38	2026-04-25 17:03:39	2026-04-25 17:03:39
595	10.10.10.244	OS X	Chrome [53c6f34e06]	2026-04-26 03:53:35	2026-04-26 03:53:35	2026-04-26 03:53:35
596	10.10.10.244	AndroidOS	Safari [f9515f18e2]	2026-04-26 15:29:24	2026-04-26 15:29:26	2026-04-26 15:29:26
597	10.10.10.244	AndroidOS	Safari [239f544c30]	2026-04-26 15:32:29	2026-04-26 15:32:30	2026-04-26 15:32:30
598	10.10.10.244	Windows	Chrome [fd0bbfdd1b]	2026-04-26 17:05:41	2026-04-26 17:05:41	2026-04-26 17:05:41
599	10.10.10.244	0	Chrome [3dbdd0e339]	2026-04-27 07:49:36	2026-04-27 07:49:37	2026-04-27 07:49:37
600	10.10.10.244	Windows	Chrome [7aaacea72f]	2026-04-27 09:09:57	2026-04-27 09:09:57	2026-04-27 09:09:57
601	10.10.10.244	OS X	Chrome [f87f83c722]	2026-04-27 10:50:05	2026-04-27 10:50:06	2026-04-27 10:50:06
607	10.10.10.244	Windows	Chrome [d3a794116c]	2026-04-28 02:26:47	2026-04-28 02:28:14	2026-04-28 02:28:14
602	10.10.10.244	Windows	Chrome [3fbb1c7eea]	2026-04-27 23:51:35	2026-04-27 23:52:59	2026-04-27 23:52:59
605	10.10.10.244	Windows	Chrome [7030df5b47]	2026-04-28 02:25:08	2026-04-28 03:41:05	2026-04-28 03:41:05
615	10.10.10.244	Windows	Chrome [c4b5894853]	2026-04-30 00:23:43	2026-04-30 00:35:33	2026-04-30 00:35:33
616	10.10.10.244	Windows	Chrome [6df3380379]	2026-04-30 01:36:39	2026-04-30 01:36:39	2026-04-30 01:36:39
604	10.10.10.244	AndroidOS	Chrome [9cf2e58a0d]	2026-04-28 01:09:02	2026-04-28 03:50:41	2026-04-28 03:50:41
618	10.10.10.244	Windows	Chrome [9e0fa18bff]	2026-04-30 02:34:46	2026-04-30 02:34:47	2026-04-30 02:34:47
608	10.10.10.244	Windows	Chrome [7faeee455c]	2026-04-28 03:48:10	2026-04-28 03:55:56	2026-04-28 03:55:56
609	10.10.10.244	AndroidOS	Chrome [2242fc1870]	2026-04-28 05:05:58	2026-04-28 05:09:55	2026-04-28 05:09:55
610	10.10.10.244	AndroidOS	Safari [33159cf7b6]	2026-04-28 09:51:03	2026-04-28 09:51:04	2026-04-28 09:51:04
611	10.10.10.244	AndroidOS	Safari [f9e9a4fdb8]	2026-04-28 09:53:18	2026-04-28 09:53:19	2026-04-28 09:53:19
612	10.10.10.244	Windows	Chrome [7cdd62667e]	2026-04-29 11:42:23	2026-04-29 11:42:23	2026-04-29 11:42:23
613	10.10.10.244	Windows	Chrome [ccc174f400]	2026-04-29 11:43:29	2026-04-29 11:45:13	2026-04-29 11:45:13
617	10.10.10.244	Windows	Chrome [0c39203f66]	2026-04-30 02:33:27	2026-04-30 03:07:45	2026-04-30 03:07:45
614	10.10.10.244	Windows	Chrome [d082328452]	2026-04-29 13:12:31	2026-04-29 13:34:17	2026-04-29 13:34:17
603	10.10.10.244	Windows	Chrome [2dbb11fe5d]	2026-04-28 01:05:33	2026-04-28 02:18:51	2026-04-28 02:18:51
606	10.10.10.244	Windows	Chrome [7fdddc2660]	2026-04-28 02:26:29	2026-04-28 02:26:30	2026-04-28 02:26:30
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: kla_user
--

COPY public."user" (id, name, email, email_verified_at, password, remember_token, status, created_at, updated_at) FROM stdin;
3	User Demo	user@gmail.com	\N	$2y$12$oOdmyNKatqFNFeOCKzci.eafzq8NwbFvgPkPwNWJBFt7e1X6UTNj6	\N	0	2025-06-04 07:24:30	2025-06-04 07:24:30
4	User KLA	user@kla-katingan.go.id	\N	$2y$12$SJHzw99jt0aKhm49cnAFVOPGCNPv2Gc5Enyavkk86QVkuUH5yIT8q	\N	0	2025-06-04 07:24:30	2025-06-04 07:24:30
5	kak rina	kakrina@gmail.com	\N	$2y$12$W/E6AC2Qx7//ct/WOX9aFewUFrBXySULwjKwH/E1nM35/4/xkbmz6	\N	0	2025-06-19 08:40:09	2025-06-19 08:40:09
2	Bidang TI	ti.diskominfokatingan@gmail.com	\N	$2y$12$EgyacuKRLp2bgWEFNZL6quEti7OiEGyRIk2GMANU/ZUAMIswCyRdG	\N	1	2025-06-04 07:24:29	2025-07-08 02:04:10
6	Userdemo2	user2@gmail.com	\N	$2y$12$EOKYiQA9UGNLHVjHmpLeNOcGW4PNX0O6MABYKMNcmu5RPOjMeNsIq	\N	0	2026-04-28 03:49:35	2026-04-28 03:49:35
1	Administrator	admin@gmail.com	\N	$2y$12$3Tyav4K2Of/aKaNufya2tu2pklic/YL8KsTB02fiOtv3dNO7CMIwC	X4XAnDhJlu6hM1LeZ2ccNum5OlYyy1MoHxGpGlSPpMFX8E6n0oZ49Ns5QKtk	1	2025-06-04 07:24:29	2026-04-17 13:38:11
\.


--
-- Name: agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.agenda_id_seq', 1, true);


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.contact_id_seq', 4, true);


--
-- Name: data_dukung_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.data_dukung_files_id_seq', 7, true);


--
-- Name: data_dukung_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.data_dukung_id_seq', 4, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: indikators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.indikators_id_seq', 24, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: kategori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.kategori_id_seq', 5, true);


--
-- Name: klasters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.klasters_id_seq', 5, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.media_id_seq', 30, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.migrations_id_seq', 20, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.news_id_seq', 14, true);


--
-- Name: opds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.opds_id_seq', 15, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 72, true);


--
-- Name: program_kerjas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.program_kerjas_id_seq', 17, true);


--
-- Name: setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.setting_id_seq', 8, true);


--
-- Name: statistic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.statistic_id_seq', 618, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kla_user
--

SELECT pg_catalog.setval('public.user_id_seq', 6, true);


--
-- Name: agenda agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.agenda
    ADD CONSTRAINT agenda_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: data_dukung_files data_dukung_files_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung_files
    ADD CONSTRAINT data_dukung_files_pkey PRIMARY KEY (id);


--
-- Name: data_dukung data_dukung_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung
    ADD CONSTRAINT data_dukung_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: indikators indikators_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.indikators
    ADD CONSTRAINT indikators_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id);


--
-- Name: klasters klasters_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.klasters
    ADD CONSTRAINT klasters_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: opds opds_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.opds
    ADD CONSTRAINT opds_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: program_kerjas program_kerjas_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.program_kerjas
    ADD CONSTRAINT program_kerjas_pkey PRIMARY KEY (id);


--
-- Name: setting setting_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.setting
    ADD CONSTRAINT setting_pkey PRIMARY KEY (id);


--
-- Name: statistic statistic_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.statistic
    ADD CONSTRAINT statistic_pkey PRIMARY KEY (id);


--
-- Name: user user_email_unique; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_unique UNIQUE (email);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: kla_user
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: news_created_by_index; Type: INDEX; Schema: public; Owner: kla_user
--

CREATE INDEX news_created_by_index ON public.news USING btree (created_by);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: kla_user
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: data_dukung data_dukung_created_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung
    ADD CONSTRAINT data_dukung_created_by_foreign FOREIGN KEY (created_by) REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: data_dukung_files data_dukung_files_data_dukung_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung_files
    ADD CONSTRAINT data_dukung_files_data_dukung_id_foreign FOREIGN KEY (data_dukung_id) REFERENCES public.data_dukung(id) ON DELETE CASCADE;


--
-- Name: data_dukung data_dukung_indikator_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung
    ADD CONSTRAINT data_dukung_indikator_id_foreign FOREIGN KEY (indikator_id) REFERENCES public.indikators(id) ON DELETE CASCADE;


--
-- Name: data_dukung data_dukung_opd_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.data_dukung
    ADD CONSTRAINT data_dukung_opd_id_foreign FOREIGN KEY (opd_id) REFERENCES public.opds(id) ON DELETE CASCADE;


--
-- Name: indikators indikators_klaster_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.indikators
    ADD CONSTRAINT indikators_klaster_id_foreign FOREIGN KEY (klaster_id) REFERENCES public.klasters(id) ON DELETE CASCADE;


--
-- Name: news news_kategori_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_kategori_id_foreign FOREIGN KEY (kategori_id) REFERENCES public.kategori(id);


--
-- Name: program_kerjas program_kerjas_opd_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kla_user
--

ALTER TABLE ONLY public.program_kerjas
    ADD CONSTRAINT program_kerjas_opd_id_foreign FOREIGN KEY (opd_id) REFERENCES public.opds(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict Ve8j0p62Qb2aJkVC2F2kqdS4hAmTDBu10BnuBA7uiThLKBpp0XJpcLygLreCAKB

