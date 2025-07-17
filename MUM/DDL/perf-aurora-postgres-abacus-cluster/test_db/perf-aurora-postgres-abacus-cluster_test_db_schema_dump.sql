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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: transactions; Type: TABLE; Schema: public; Owner: sakshi
--

CREATE TABLE public.transactions (
    id character(14) NOT NULL,
    merchant_id character(14) NOT NULL,
    source_id character(14) NOT NULL,
    source_type character varying(255) NOT NULL,
    balance_type character varying(32) NOT NULL,
    currency character(3) NOT NULL,
    credit bigint NOT NULL,
    debit bigint NOT NULL,
    channel character varying(32) DEFAULT NULL::character varying,
    on_hold boolean DEFAULT false NOT NULL,
    on_hold_reason character varying(255) DEFAULT NULL::character varying,
    meta json,
    eligible_at integer NOT NULL,
    settled_at integer,
    settlement_id character(14) DEFAULT NULL::bpchar,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    fee integer,
    tax integer,
    settlement_tag character varying(32) DEFAULT 'standard'::character varying NOT NULL,
    settleable boolean DEFAULT true NOT NULL,
    external_transaction_id character(14) DEFAULT NULL::bpchar
);


ALTER TABLE public.transactions OWNER TO sakshi;

--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: sakshi
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: transactions_created_at_idx; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX transactions_created_at_idx ON public.transactions USING btree (created_at);


--
-- Name: transactions_eligible_at_idx; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX transactions_eligible_at_idx ON public.transactions USING btree (eligible_at);


--
-- Name: transactions_merchant_id_eligible_at_created_at_idx; Type: INDEX; Schema: public; Owner: sakshi
--

CREATE INDEX transactions_merchant_id_eligible_at_created_at_idx ON public.transactions USING btree (merchant_id, eligible_at, created_at);


--
-- PostgreSQL database dump complete
--
