--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Homebrew)
-- Dumped by pg_dump version 14.18 (Homebrew)

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

--
-- Name: mood_enum; Type: TYPE; Schema: public; Owner: sakshi
--

CREATE TYPE public.mood_enum AS ENUM (
    'happy',
    'sad',
    'neutral'
);


ALTER TYPE public.mood_enum OWNER TO sakshi;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: all_datatypes_test; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.all_datatypes_test (
    id integer NOT NULL,
    small_int_col smallint NOT NULL,
    int_col integer DEFAULT 100,
    big_int_col bigint,
    numeric_col numeric(10,2) NOT NULL,
    real_col real DEFAULT 3.14,
    double_col double precision,
    char_col character(5) NOT NULL,
    varchar_col character varying(50),
    text_col text DEFAULT 'default_text'::text,
    date_col date NOT NULL,
    time_col time without time zone DEFAULT now(),
    timestamp_col timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    bool_col boolean DEFAULT false,
    json_col json,
    jsonb_col jsonb,
    int_array_col integer[] DEFAULT ARRAY[1, 2, 3],
    mood_col public.mood_enum NOT NULL,
    unique_col character varying(50),
    not_null_col text NOT NULL,
    default_col text DEFAULT 'default_value'::text,
    dummy_fk integer,
    CONSTRAINT all_datatypes_test_numeric_col_check CHECK ((numeric_col >= (0)::numeric))
);


ALTER TABLE public.all_datatypes_test OWNER TO sakshi;

--
-- Name: all_datatypes_test_id_seq; Type: SEQUENCE; Schema: public; Owner: sakshi
--

CREATE SEQUENCE public.all_datatypes_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_datatypes_test_id_seq OWNER TO sakshi;

--
-- Name: all_datatypes_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sakshi
--

ALTER SEQUENCE public.all_datatypes_test_id_seq OWNED BY public.all_datatypes_test.id;


--
-- Name: multiple_create_test_3april; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.multiple_create_test_3april (
    id character(14) NOT NULL,
    name character varying(255),
    age integer
);

ALTER TABLE ONLY public.multiple_create_test_3april REPLICA IDENTITY FULL;


ALTER TABLE public.multiple_create_test_3april OWNER TO sakshi;

--
-- Name: multiple_create_test_5april; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.multiple_create_test_5april (
    id character(14) NOT NULL,
    name character varying(255),
    age integer
);

ALTER TABLE ONLY public.multiple_create_test_5april REPLICA IDENTITY FULL;


ALTER TABLE public.multiple_create_test_5april OWNER TO sakshi;

--
-- Name: multiple_create_test_6april; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.multiple_create_test_6april (
    id character(14) NOT NULL,
    name character varying(255),
    age integer
);

ALTER TABLE ONLY public.multiple_create_test_6april REPLICA IDENTITY FULL;


ALTER TABLE public.multiple_create_test_6april OWNER TO sakshi;

--
-- Name: notification_destinations; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.notification_destinations (
    id character(14),
    org_id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    options text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    encrypted_options bytea NOT NULL
);

ALTER TABLE ONLY public.notification_destinations REPLICA IDENTITY FULL;


ALTER TABLE public.notification_destinations OWNER TO sakshi;

--
-- Name: offer_publishers; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.offer_publishers (
    id character(14) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL,
    deleted_at bigint,
    offer_id character(14) NOT NULL,
    publisher_id character varying(50) NOT NULL,
    publish_channel character varying(50) DEFAULT 'RZP_STD_CHECKOUT'::character varying,
    total_usage integer DEFAULT 0,
    total_discount_consumed integer DEFAULT 0,
    total_cashback_consumed integer DEFAULT 0,
    starts_at bigint NOT NULL,
    ends_at bigint NOT NULL,
    state character varying(50) DEFAULT 'STATE_CREATED'::character varying,
    offer_type character varying(50) DEFAULT 'OFFER_TYPE_STAGE_REGULAR'::character varying,
    auto_apply boolean DEFAULT true,
    continue_txn_on_failure boolean DEFAULT true
);


ALTER TABLE public.offer_publishers OWNER TO sakshi;

--
-- Name: postgres_dev; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.postgres_dev (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.postgres_dev REPLICA IDENTITY FULL;


ALTER TABLE public.postgres_dev OWNER TO sakshi;

--
-- Name: test_demo; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.test_demo (
    id character(14) NOT NULL,
    test character varying(255) DEFAULT NULL::character varying,
    updated_at bigint
);


ALTER TABLE public.test_demo OWNER TO sakshi;

--
-- Name: test_dev; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.test_dev (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.test_dev REPLICA IDENTITY FULL;


ALTER TABLE public.test_dev OWNER TO sakshi;

--
-- Name: testing_v2; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.testing_v2 (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.testing_v2 REPLICA IDENTITY FULL;


ALTER TABLE public.testing_v2 OWNER TO sakshi;

--
-- Name: testing_v3; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.testing_v3 (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.testing_v3 REPLICA IDENTITY FULL;


ALTER TABLE public.testing_v3 OWNER TO sakshi;

--
-- Name: users; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(20) NOT NULL,
    user_role character varying(20) NOT NULL,
    user_unique_id text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO sakshi;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sakshi
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO sakshi;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sakshi
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_tasks; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.users_tasks (
    id integer NOT NULL,
    user_unique_id text,
    task_name character varying(255) NOT NULL,
    task_description character varying(255) NOT NULL,
    task_status character varying(255) NOT NULL,
    created_by character varying(255) NOT NULL,
    approved_by character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users_tasks OWNER TO sakshi;

--
-- Name: users_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: sakshi
--

CREATE SEQUENCE public.users_tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_tasks_id_seq OWNER TO sakshi;

--
-- Name: users_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sakshi
--

ALTER SEQUENCE public.users_tasks_id_seq OWNED BY public.users_tasks.id;


--
-- Name: v_11; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.v_11 (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.v_11 REPLICA IDENTITY FULL;


ALTER TABLE public.v_11 OWNER TO sakshi;

--
-- Name: v_11_temp_1; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.v_11_temp_1 (
    id character(14) NOT NULL
);

ALTER TABLE ONLY public.v_11_temp_1 REPLICA IDENTITY FULL;


ALTER TABLE public.v_11_temp_1 OWNER TO sakshi;

--
-- Name: all_datatypes_test id; Type: DEFAULT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.all_datatypes_test ALTER COLUMN id SET DEFAULT nextval('public.all_datatypes_test_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_tasks id; Type: DEFAULT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.users_tasks ALTER COLUMN id SET DEFAULT nextval('public.users_tasks_id_seq'::regclass);


--
-- Name: all_datatypes_test all_datatypes_test_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.all_datatypes_test
    ADD CONSTRAINT all_datatypes_test_pkey PRIMARY KEY (id);


--
-- Name: all_datatypes_test all_datatypes_test_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.all_datatypes_test
    ADD CONSTRAINT all_datatypes_test_unique_col_key UNIQUE (unique_col);


--
-- Name: multiple_create_test_3april multiple_create_test_3april_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.multiple_create_test_3april
    ADD CONSTRAINT multiple_create_test_3april_pkey PRIMARY KEY (id);


--
-- Name: multiple_create_test_5april multiple_create_test_5april_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.multiple_create_test_5april
    ADD CONSTRAINT multiple_create_test_5april_pkey PRIMARY KEY (id);


--
-- Name: multiple_create_test_6april multiple_create_test_6april_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.multiple_create_test_6april
    ADD CONSTRAINT multiple_create_test_6april_pkey PRIMARY KEY (id);


--
-- Name: offer_publishers offer_publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.offer_publishers
    ADD CONSTRAINT offer_publishers_pkey PRIMARY KEY (id);


--
-- Name: postgres_dev postgres_dev_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.postgres_dev
    ADD CONSTRAINT postgres_dev_pkey PRIMARY KEY (id);


--
-- Name: test_demo test_demo_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.test_demo
    ADD CONSTRAINT test_demo_pkey PRIMARY KEY (id);


--
-- Name: test_dev test_dev_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.test_dev
    ADD CONSTRAINT test_dev_pkey PRIMARY KEY (id);


--
-- Name: testing_v2 testing_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.testing_v2
    ADD CONSTRAINT testing_v2_pkey PRIMARY KEY (id);


--
-- Name: testing_v3 testing_v3_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.testing_v3
    ADD CONSTRAINT testing_v3_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_tasks users_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.users_tasks
    ADD CONSTRAINT users_tasks_pkey PRIMARY KEY (id);


--
-- Name: v_11 v_11_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.v_11
    ADD CONSTRAINT v_11_pkey PRIMARY KEY (id);


--
-- Name: v_11_temp_1 v_11_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.v_11_temp_1
    ADD CONSTRAINT v_11_temp_pkey PRIMARY KEY (id);


--
-- Name: idx_offer_publishers_created_at; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_created_at ON public.offer_publishers USING btree (created_at);


--
-- Name: idx_offer_publishers_offer_id_publisher_id; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_offer_id_publisher_id ON public.offer_publishers USING btree (offer_id, publisher_id);


--
-- Name: idx_offer_publishers_offer_meta; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_offer_meta ON public.offer_publishers USING btree (offer_type, publisher_id, publish_channel, state, starts_at, ends_at);


--
-- Name: idx_offer_publishers_offer_publisher_unique; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE UNIQUE INDEX idx_offer_publishers_offer_publisher_unique ON public.offer_publishers USING btree (offer_id, publisher_id, publish_channel);


--
-- Name: idx_offer_publishers_publisher; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_publisher ON public.offer_publishers USING btree (publisher_id);


--
-- Name: idx_offer_publishers_publisher_duration; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_publisher_duration ON public.offer_publishers USING btree (publisher_id, starts_at, ends_at);


--
-- Name: idx_offer_publishers_updated_at; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX idx_offer_publishers_updated_at ON public.offer_publishers USING btree (updated_at);


--
-- Name: all_datatypes_test all_datatypes_test_dummy_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.all_datatypes_test
    ADD CONSTRAINT all_datatypes_test_dummy_fk_fkey FOREIGN KEY (dummy_fk) REFERENCES public.all_datatypes_test(id);


--
-- PostgreSQL database dump complete
--

