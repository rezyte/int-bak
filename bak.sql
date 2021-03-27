--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO jeremih;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO jeremih;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO jeremih;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO jeremih;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: admin_honeypot_loginattempt; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.admin_honeypot_loginattempt (
    id integer NOT NULL,
    username character varying(255),
    ip_address inet,
    session_key character varying(50),
    user_agent text,
    "timestamp" timestamp with time zone NOT NULL,
    path text
);


ALTER TABLE public.admin_honeypot_loginattempt OWNER TO jeremih;

--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.admin_honeypot_loginattempt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_honeypot_loginattempt_id_seq OWNER TO jeremih;

--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.admin_honeypot_loginattempt_id_seq OWNED BY public.admin_honeypot_loginattempt.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO jeremih;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO jeremih;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO jeremih;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO jeremih;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO jeremih;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO jeremih;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO jeremih;

--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content text NOT NULL,
    username character varying(164) NOT NULL,
    post_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.blog_comment OWNER TO jeremih;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO jeremih;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.blog_post (
    id integer NOT NULL,
    meta_keywords character varying(255),
    meta_description character varying(255),
    meta_author character varying(255),
    meta_copyright character varying(255),
    meta_title character varying(225),
    extra_header text,
    extra_scripts text,
    google_analytics_details text,
    title character varying(1024) NOT NULL,
    short_description text NOT NULL,
    content text NOT NULL,
    "timestamp" date NOT NULL,
    thumbnail character varying(100) NOT NULL,
    image_alt character varying(600) NOT NULL,
    featured boolean NOT NULL,
    active_post boolean NOT NULL,
    slug character varying(50) NOT NULL,
    avg_read double precision,
    author_id integer NOT NULL,
    last_edite timestamp with time zone NOT NULL
);


ALTER TABLE public.blog_post OWNER TO jeremih;

--
-- Name: blog_post_categories; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.blog_post_categories (
    id integer NOT NULL,
    post_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.blog_post_categories OWNER TO jeremih;

--
-- Name: blog_post_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.blog_post_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_categories_id_seq OWNER TO jeremih;

--
-- Name: blog_post_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.blog_post_categories_id_seq OWNED BY public.blog_post_categories.id;


--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.blog_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO jeremih;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: categories_category; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_category (
    id integer NOT NULL,
    meta_keywords character varying(255),
    meta_description character varying(255),
    meta_author character varying(255),
    meta_copyright character varying(255),
    meta_title character varying(225),
    extra_header text,
    extra_scripts text,
    google_analytics_details text,
    title character varying(64) NOT NULL,
    title_slug character varying(225),
    seo_post text NOT NULL,
    slug character varying(50),
    upper_content text NOT NULL,
    sub_category_of_id integer NOT NULL,
    is_ghost boolean NOT NULL
);


ALTER TABLE public.categories_category OWNER TO jeremih;

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO jeremih;

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories_category.id;


--
-- Name: categories_categoryapplication; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categoryapplication (
    id integer NOT NULL,
    title character varying(332) NOT NULL,
    content text NOT NULL,
    slug character varying(50) NOT NULL,
    application_image character varying(100) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.categories_categoryapplication OWNER TO jeremih;

--
-- Name: categories_categoryapplication_categories; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categoryapplication_categories (
    id integer NOT NULL,
    categoryapplication_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.categories_categoryapplication_categories OWNER TO jeremih;

--
-- Name: categories_categoryapplication_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categoryapplication_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categoryapplication_categories_id_seq OWNER TO jeremih;

--
-- Name: categories_categoryapplication_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categoryapplication_categories_id_seq OWNED BY public.categories_categoryapplication_categories.id;


--
-- Name: categories_categoryapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categoryapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categoryapplication_id_seq OWNER TO jeremih;

--
-- Name: categories_categoryapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categoryapplication_id_seq OWNED BY public.categories_categoryapplication.id;


--
-- Name: categories_categorycomment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categorycomment (
    id integer NOT NULL,
    username character varying(225) NOT NULL,
    email character varying(254),
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    is_confirmed boolean NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT categories_categorycomment_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.categories_categorycomment OWNER TO jeremih;

--
-- Name: categories_categorycomment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categorycomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categorycomment_id_seq OWNER TO jeremih;

--
-- Name: categories_categorycomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categorycomment_id_seq OWNED BY public.categories_categorycomment.id;


--
-- Name: categories_categoryquestion; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categoryquestion (
    id integer NOT NULL,
    question character varying(8192) NOT NULL,
    help_text character varying(8192),
    is_selectable boolean NOT NULL,
    type character varying(1) NOT NULL,
    num_of_choices integer,
    category_id integer NOT NULL,
    CONSTRAINT categories_categoryquestion_num_of_choices_check CHECK ((num_of_choices >= 0))
);


ALTER TABLE public.categories_categoryquestion OWNER TO jeremih;

--
-- Name: categories_categoryquestion_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categoryquestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categoryquestion_id_seq OWNER TO jeremih;

--
-- Name: categories_categoryquestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categoryquestion_id_seq OWNED BY public.categories_categoryquestion.id;


--
-- Name: categories_categorysubcomment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categorysubcomment (
    id integer NOT NULL,
    username character varying(225) NOT NULL,
    email character varying(254),
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    is_confirmed boolean NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT categories_categorysubcomment_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.categories_categorysubcomment OWNER TO jeremih;

--
-- Name: categories_categorysubcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categorysubcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categorysubcomment_id_seq OWNER TO jeremih;

--
-- Name: categories_categorysubcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categorysubcomment_id_seq OWNED BY public.categories_categorysubcomment.id;


--
-- Name: categories_categorytag; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categorytag (
    id integer NOT NULL,
    title character varying(225) NOT NULL,
    slug character varying(50) NOT NULL,
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.categories_categorytag OWNER TO jeremih;

--
-- Name: categories_categorytag_categories; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categorytag_categories (
    id integer NOT NULL,
    categorytag_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.categories_categorytag_categories OWNER TO jeremih;

--
-- Name: categories_categorytag_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categorytag_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categorytag_categories_id_seq OWNER TO jeremih;

--
-- Name: categories_categorytag_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categorytag_categories_id_seq OWNED BY public.categories_categorytag_categories.id;


--
-- Name: categories_categorytag_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categorytag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categorytag_id_seq OWNER TO jeremih;

--
-- Name: categories_categorytag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categorytag_id_seq OWNED BY public.categories_categorytag.id;


--
-- Name: categories_categoryvariation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_categoryvariation (
    id integer NOT NULL,
    value character varying(50),
    attachment character varying(100),
    selectable boolean,
    yes_or_no boolean,
    variation_id integer NOT NULL
);


ALTER TABLE public.categories_categoryvariation OWNER TO jeremih;

--
-- Name: categories_categoryvariation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_categoryvariation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categoryvariation_id_seq OWNER TO jeremih;

--
-- Name: categories_categoryvariation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_categoryvariation_id_seq OWNED BY public.categories_categoryvariation.id;


--
-- Name: categories_choicefield; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_choicefield (
    id integer NOT NULL,
    selection character varying(1024) NOT NULL
);


ALTER TABLE public.categories_choicefield OWNER TO jeremih;

--
-- Name: categories_choicefield_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_choicefield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_choicefield_id_seq OWNER TO jeremih;

--
-- Name: categories_choicefield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_choicefield_id_seq OWNED BY public.categories_choicefield.id;


--
-- Name: categories_choicefield_questions; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_choicefield_questions (
    id integer NOT NULL,
    choicefield_id integer NOT NULL,
    categoryquestion_id integer NOT NULL
);


ALTER TABLE public.categories_choicefield_questions OWNER TO jeremih;

--
-- Name: categories_choicefield_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_choicefield_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_choicefield_questions_id_seq OWNER TO jeremih;

--
-- Name: categories_choicefield_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_choicefield_questions_id_seq OWNED BY public.categories_choicefield_questions.id;


--
-- Name: categories_maincategory; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_maincategory (
    id integer NOT NULL,
    meta_keywords character varying(255),
    meta_description character varying(255),
    meta_author character varying(255),
    meta_copyright character varying(255),
    meta_title character varying(225),
    extra_header text,
    extra_scripts text,
    google_analytics_details text,
    title character varying(64) NOT NULL,
    seo_post text NOT NULL,
    slug character varying(50),
    mother_category_id integer NOT NULL
);


ALTER TABLE public.categories_maincategory OWNER TO jeremih;

--
-- Name: categories_maincategory_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_maincategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_maincategory_id_seq OWNER TO jeremih;

--
-- Name: categories_maincategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_maincategory_id_seq OWNED BY public.categories_maincategory.id;


--
-- Name: categories_mothercategory; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_mothercategory (
    id integer NOT NULL,
    meta_keywords character varying(255),
    meta_description character varying(255),
    meta_author character varying(255),
    meta_copyright character varying(255),
    meta_title character varying(225),
    extra_header text,
    extra_scripts text,
    google_analytics_details text,
    title character varying(64) NOT NULL,
    seo_post text NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.categories_mothercategory OWNER TO jeremih;

--
-- Name: categories_mothercategory_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_mothercategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_mothercategory_id_seq OWNER TO jeremih;

--
-- Name: categories_mothercategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_mothercategory_id_seq OWNED BY public.categories_mothercategory.id;


--
-- Name: categories_variation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.categories_variation (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    model character varying(64) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.categories_variation OWNER TO jeremih;

--
-- Name: categories_variation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.categories_variation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_variation_id_seq OWNER TO jeremih;

--
-- Name: categories_variation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.categories_variation_id_seq OWNED BY public.categories_variation.id;


--
-- Name: crm_address; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_address (
    id integer NOT NULL,
    title character varying(225) NOT NULL,
    address_type character varying(1) NOT NULL,
    is_active boolean NOT NULL,
    city character varying(225) NOT NULL,
    country character varying(225) NOT NULL,
    address_text text NOT NULL,
    telephone_number character varying(20) NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    customer_id integer NOT NULL,
    is_main boolean,
    CONSTRAINT crm_address_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.crm_address OWNER TO jeremih;

--
-- Name: crm_address_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_address_id_seq OWNER TO jeremih;

--
-- Name: crm_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_address_id_seq OWNED BY public.crm_address.id;


--
-- Name: crm_crmcomment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_crmcomment (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    content text NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT crm_crmcomment_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.crm_crmcomment OWNER TO jeremih;

--
-- Name: crm_crmcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_crmcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_crmcomment_id_seq OWNER TO jeremih;

--
-- Name: crm_crmcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_crmcomment_id_seq OWNED BY public.crm_crmcomment.id;


--
-- Name: crm_crmdocument; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_crmdocument (
    id integer NOT NULL,
    subject character varying(225) NOT NULL,
    docs character varying(100) NOT NULL,
    remarks text NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT crm_crmdocument_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.crm_crmdocument OWNER TO jeremih;

--
-- Name: crm_crmdocument_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_crmdocument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_crmdocument_id_seq OWNER TO jeremih;

--
-- Name: crm_crmdocument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_crmdocument_id_seq OWNED BY public.crm_crmdocument.id;


--
-- Name: crm_crmproduct; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_crmproduct (
    id integer NOT NULL,
    title character varying(543) NOT NULL,
    link text NOT NULL,
    producer_company character varying(212) NOT NULL,
    remarks text NOT NULL
);


ALTER TABLE public.crm_crmproduct OWNER TO jeremih;

--
-- Name: crm_crmproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_crmproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_crmproduct_id_seq OWNER TO jeremih;

--
-- Name: crm_crmproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_crmproduct_id_seq OWNED BY public.crm_crmproduct.id;


--
-- Name: crm_customer; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_customer (
    id integer NOT NULL,
    gender character varying(1) NOT NULL,
    name character varying(512),
    last_name character varying(512) NOT NULL,
    bio text NOT NULL,
    telephone_number character varying(22) NOT NULL,
    company character varying(512) NOT NULL,
    time_joined date NOT NULL,
    remarks text NOT NULL,
    is_active boolean NOT NULL,
    how_found character varying(1) NOT NULL
);


ALTER TABLE public.crm_customer OWNER TO jeremih;

--
-- Name: crm_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_customer_id_seq OWNER TO jeremih;

--
-- Name: crm_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_customer_id_seq OWNED BY public.crm_customer.id;


--
-- Name: crm_deal; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_deal (
    id integer NOT NULL,
    title character varying(512) NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone,
    ongoing boolean NOT NULL,
    is_closed boolean NOT NULL,
    dealer integer NOT NULL,
    description text,
    customer_id integer NOT NULL,
    CONSTRAINT crm_deal_dealer_check CHECK ((dealer >= 0))
);


ALTER TABLE public.crm_deal OWNER TO jeremih;

--
-- Name: crm_deal_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_deal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_deal_id_seq OWNER TO jeremih;

--
-- Name: crm_deal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_deal_id_seq OWNED BY public.crm_deal.id;


--
-- Name: crm_deal_products; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_deal_products (
    id integer NOT NULL,
    deal_id integer NOT NULL,
    crmproduct_id integer NOT NULL
);


ALTER TABLE public.crm_deal_products OWNER TO jeremih;

--
-- Name: crm_deal_products_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_deal_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_deal_products_id_seq OWNER TO jeremih;

--
-- Name: crm_deal_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_deal_products_id_seq OWNED BY public.crm_deal_products.id;


--
-- Name: crm_notifications; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_notifications (
    id integer NOT NULL,
    "user" integer NOT NULL,
    content text NOT NULL,
    link character varying(512000) NOT NULL,
    title character varying(1024) NOT NULL,
    time_sent timestamp with time zone NOT NULL,
    time_read timestamp with time zone NOT NULL,
    is_read boolean NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT crm_notifications_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT crm_notifications_user_check CHECK (("user" >= 0))
);


ALTER TABLE public.crm_notifications OWNER TO jeremih;

--
-- Name: crm_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_notifications_id_seq OWNER TO jeremih;

--
-- Name: crm_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_notifications_id_seq OWNED BY public.crm_notifications.id;


--
-- Name: crm_task; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.crm_task (
    id integer NOT NULL,
    title character varying(415) NOT NULL,
    start_date timestamp with time zone NOT NULL,
    is_done boolean NOT NULL,
    description text NOT NULL,
    due_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone,
    priorty character varying(1) NOT NULL,
    object_id integer NOT NULL,
    doer integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT crm_task_doer_check CHECK ((doer >= 0)),
    CONSTRAINT crm_task_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.crm_task OWNER TO jeremih;

--
-- Name: crm_task_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.crm_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crm_task_id_seq OWNER TO jeremih;

--
-- Name: crm_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.crm_task_id_seq OWNED BY public.crm_task.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: jeremih
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


ALTER TABLE public.django_admin_log OWNER TO jeremih;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO jeremih;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO jeremih;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO jeremih;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO jeremih;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO jeremih;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO jeremih;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO jeremih;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO jeremih;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: hitcount_blacklist_ip; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.hitcount_blacklist_ip (
    id integer NOT NULL,
    ip character varying(40) NOT NULL
);


ALTER TABLE public.hitcount_blacklist_ip OWNER TO jeremih;

--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.hitcount_blacklist_ip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_blacklist_ip_id_seq OWNER TO jeremih;

--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.hitcount_blacklist_ip_id_seq OWNED BY public.hitcount_blacklist_ip.id;


--
-- Name: hitcount_blacklist_user_agent; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.hitcount_blacklist_user_agent (
    id integer NOT NULL,
    user_agent character varying(255) NOT NULL
);


ALTER TABLE public.hitcount_blacklist_user_agent OWNER TO jeremih;

--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.hitcount_blacklist_user_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_blacklist_user_agent_id_seq OWNER TO jeremih;

--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.hitcount_blacklist_user_agent_id_seq OWNED BY public.hitcount_blacklist_user_agent.id;


--
-- Name: hitcount_hit; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.hitcount_hit (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    ip character varying(40) NOT NULL,
    session character varying(40) NOT NULL,
    user_agent character varying(255) NOT NULL,
    hitcount_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.hitcount_hit OWNER TO jeremih;

--
-- Name: hitcount_hit_count; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.hitcount_hit_count (
    id integer NOT NULL,
    hits integer NOT NULL,
    modified timestamp with time zone NOT NULL,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT hitcount_hit_count_hits_check CHECK ((hits >= 0)),
    CONSTRAINT hitcount_hit_count_object_pk_53e9c38f_check CHECK ((object_pk >= 0))
);


ALTER TABLE public.hitcount_hit_count OWNER TO jeremih;

--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.hitcount_hit_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_hit_count_id_seq OWNER TO jeremih;

--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.hitcount_hit_count_id_seq OWNED BY public.hitcount_hit_count.id;


--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.hitcount_hit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hitcount_hit_id_seq OWNER TO jeremih;

--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.hitcount_hit_id_seq OWNED BY public.hitcount_hit.id;


--
-- Name: merchandise_address; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_address (
    id integer NOT NULL,
    street_address character varying(100) NOT NULL,
    apartment_address character varying(100) NOT NULL,
    zip character varying(100) NOT NULL,
    address_type character varying(1) NOT NULL,
    "default" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.merchandise_address OWNER TO jeremih;

--
-- Name: merchandise_address_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_address_id_seq OWNER TO jeremih;

--
-- Name: merchandise_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_address_id_seq OWNED BY public.merchandise_address.id;


--
-- Name: merchandise_coupon; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_coupon (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    amount double precision NOT NULL
);


ALTER TABLE public.merchandise_coupon OWNER TO jeremih;

--
-- Name: merchandise_coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_coupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_coupon_id_seq OWNER TO jeremih;

--
-- Name: merchandise_coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_coupon_id_seq OWNED BY public.merchandise_coupon.id;


--
-- Name: merchandise_miniorder; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_miniorder (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(164) NOT NULL,
    phone_number character varying(15) NOT NULL,
    extra_discription text,
    is_confirmed boolean NOT NULL,
    product_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.merchandise_miniorder OWNER TO jeremih;

--
-- Name: merchandise_miniorder_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_miniorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_miniorder_id_seq OWNER TO jeremih;

--
-- Name: merchandise_miniorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_miniorder_id_seq OWNED BY public.merchandise_miniorder.id;


--
-- Name: merchandise_miniorder_users; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_miniorder_users (
    id integer NOT NULL,
    miniorder_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.merchandise_miniorder_users OWNER TO jeremih;

--
-- Name: merchandise_miniorder_users_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_miniorder_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_miniorder_users_id_seq OWNER TO jeremih;

--
-- Name: merchandise_miniorder_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_miniorder_users_id_seq OWNED BY public.merchandise_miniorder_users.id;


--
-- Name: merchandise_miniorderconfirmation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_miniorderconfirmation (
    id integer NOT NULL,
    is_confirmed boolean NOT NULL,
    confirmed_on timestamp with time zone NOT NULL,
    mini_order_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.merchandise_miniorderconfirmation OWNER TO jeremih;

--
-- Name: merchandise_miniorderconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_miniorderconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_miniorderconfirmation_id_seq OWNER TO jeremih;

--
-- Name: merchandise_miniorderconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_miniorderconfirmation_id_seq OWNED BY public.merchandise_miniorderconfirmation.id;


--
-- Name: merchandise_order; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_order (
    id integer NOT NULL,
    ref_code character varying(20),
    start_date timestamp with time zone NOT NULL,
    ordered_date timestamp with time zone NOT NULL,
    ordered boolean NOT NULL,
    being_delivered boolean NOT NULL,
    received boolean NOT NULL,
    refund_requested boolean NOT NULL,
    refund_granted boolean NOT NULL,
    billing_address_id integer,
    coupon_id integer,
    payment_id integer,
    shipping_address_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.merchandise_order OWNER TO jeremih;

--
-- Name: merchandise_order_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_order_id_seq OWNER TO jeremih;

--
-- Name: merchandise_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_order_id_seq OWNED BY public.merchandise_order.id;


--
-- Name: merchandise_order_items; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    orderitem_id integer NOT NULL
);


ALTER TABLE public.merchandise_order_items OWNER TO jeremih;

--
-- Name: merchandise_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_order_items_id_seq OWNER TO jeremih;

--
-- Name: merchandise_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_order_items_id_seq OWNED BY public.merchandise_order_items.id;


--
-- Name: merchandise_order_producer; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_order_producer (
    id integer NOT NULL,
    order_id integer NOT NULL,
    producerprofile_id integer NOT NULL
);


ALTER TABLE public.merchandise_order_producer OWNER TO jeremih;

--
-- Name: merchandise_order_producer_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_order_producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_order_producer_id_seq OWNER TO jeremih;

--
-- Name: merchandise_order_producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_order_producer_id_seq OWNED BY public.merchandise_order_producer.id;


--
-- Name: merchandise_orderitem; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_orderitem (
    id integer NOT NULL,
    ordered boolean NOT NULL,
    quantity integer NOT NULL,
    item_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.merchandise_orderitem OWNER TO jeremih;

--
-- Name: merchandise_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_orderitem_id_seq OWNER TO jeremih;

--
-- Name: merchandise_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_orderitem_id_seq OWNED BY public.merchandise_orderitem.id;


--
-- Name: merchandise_payment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_payment (
    id integer NOT NULL,
    stripe_charge_id character varying(50) NOT NULL,
    amount double precision NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.merchandise_payment OWNER TO jeremih;

--
-- Name: merchandise_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_payment_id_seq OWNER TO jeremih;

--
-- Name: merchandise_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_payment_id_seq OWNED BY public.merchandise_payment.id;


--
-- Name: merchandise_refund; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.merchandise_refund (
    id integer NOT NULL,
    reason text NOT NULL,
    accepted boolean NOT NULL,
    email character varying(254) NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.merchandise_refund OWNER TO jeremih;

--
-- Name: merchandise_refund_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.merchandise_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchandise_refund_id_seq OWNER TO jeremih;

--
-- Name: merchandise_refund_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.merchandise_refund_id_seq OWNED BY public.merchandise_refund.id;


--
-- Name: products_label; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_label (
    id integer NOT NULL,
    title character varying(164) NOT NULL,
    slug character varying(50)
);


ALTER TABLE public.products_label OWNER TO jeremih;

--
-- Name: products_label_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_label_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_label_id_seq OWNER TO jeremih;

--
-- Name: products_label_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_label_id_seq OWNED BY public.products_label.id;


--
-- Name: products_metadetail; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_metadetail (
    id integer NOT NULL,
    count integer NOT NULL,
    fake_content character varying(1234) NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT products_metadetail_count_check CHECK ((count >= 0))
);


ALTER TABLE public.products_metadetail OWNER TO jeremih;

--
-- Name: products_metadetail_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_metadetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_metadetail_id_seq OWNER TO jeremih;

--
-- Name: products_metadetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_metadetail_id_seq OWNED BY public.products_metadetail.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_product (
    id integer NOT NULL,
    meta_keywords character varying(255),
    meta_description character varying(255),
    meta_author character varying(255),
    meta_copyright character varying(255),
    meta_title character varying(225),
    extra_header text,
    extra_scripts text,
    google_analytics_details text,
    title character varying(132) NOT NULL,
    price double precision,
    second_price double precision,
    discount_price double precision,
    product_image character varying(100),
    image_alt character varying(225),
    slug character varying(50),
    stock integer NOT NULL,
    description text NOT NULL,
    minimum_order character varying(32),
    payment_type character varying(32),
    packing character varying(32),
    shipping character varying(32),
    origin character varying(32),
    made_in character varying(32),
    delivery character varying(32),
    samples character varying(24),
    remarks text,
    date_addded timestamp with time zone,
    orderd_times integer,
    short_discription text NOT NULL,
    is_confirmed boolean NOT NULL,
    producer_id integer NOT NULL
);


ALTER TABLE public.products_product OWNER TO jeremih;

--
-- Name: products_product_category; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_product_category (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.products_product_category OWNER TO jeremih;

--
-- Name: products_product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_product_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_category_id_seq OWNER TO jeremih;

--
-- Name: products_product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_product_category_id_seq OWNED BY public.products_product_category.id;


--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO jeremih;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: products_product_label_try; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_product_label_try (
    id integer NOT NULL,
    product_id integer NOT NULL,
    label_id integer NOT NULL
);


ALTER TABLE public.products_product_label_try OWNER TO jeremih;

--
-- Name: products_product_label_try_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_product_label_try_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_label_try_id_seq OWNER TO jeremih;

--
-- Name: products_product_label_try_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_product_label_try_id_seq OWNED BY public.products_product_label_try.id;


--
-- Name: products_product_producers; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_product_producers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.products_product_producers OWNER TO jeremih;

--
-- Name: products_product_producers_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_product_producers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_producers_id_seq OWNER TO jeremih;

--
-- Name: products_product_producers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_product_producers_id_seq OWNED BY public.products_product_producers.id;


--
-- Name: products_productcomment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productcomment (
    id integer NOT NULL,
    is_confirmed boolean NOT NULL,
    content text NOT NULL,
    username character varying(132),
    object_id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    is_sub boolean NOT NULL,
    content_type_id integer NOT NULL,
    parent_id integer,
    user_id integer,
    CONSTRAINT products_productcomment_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.products_productcomment OWNER TO jeremih;

--
-- Name: products_productcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productcomment_id_seq OWNER TO jeremih;

--
-- Name: products_productcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productcomment_id_seq OWNED BY public.products_productcomment.id;


--
-- Name: products_productdetail; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productdetail (
    id integer NOT NULL,
    value character varying(50),
    attachment character varying(100),
    selectable boolean,
    yes_or_no boolean,
    variation_id integer NOT NULL
);


ALTER TABLE public.products_productdetail OWNER TO jeremih;

--
-- Name: products_productdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productdetail_id_seq OWNER TO jeremih;

--
-- Name: products_productdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productdetail_id_seq OWNED BY public.products_productdetail.id;


--
-- Name: products_productdetail_products; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productdetail_products (
    id integer NOT NULL,
    productdetail_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_productdetail_products OWNER TO jeremih;

--
-- Name: products_productdetail_products_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productdetail_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productdetail_products_id_seq OWNER TO jeremih;

--
-- Name: products_productdetail_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productdetail_products_id_seq OWNED BY public.products_productdetail_products.id;


--
-- Name: products_productproducerphone; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productproducerphone (
    id integer NOT NULL,
    name character varying(225),
    phone_number character varying(20) NOT NULL,
    company character varying(130) NOT NULL,
    user_id integer
);


ALTER TABLE public.products_productproducerphone OWNER TO jeremih;

--
-- Name: products_productproducerphone_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productproducerphone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productproducerphone_id_seq OWNER TO jeremih;

--
-- Name: products_productproducerphone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productproducerphone_id_seq OWNED BY public.products_productproducerphone.id;


--
-- Name: products_productproducerphone_products; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productproducerphone_products (
    id integer NOT NULL,
    productproducerphone_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_productproducerphone_products OWNER TO jeremih;

--
-- Name: products_productproducerphone_products_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productproducerphone_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productproducerphone_products_id_seq OWNER TO jeremih;

--
-- Name: products_productproducerphone_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productproducerphone_products_id_seq OWNED BY public.products_productproducerphone_products.id;


--
-- Name: products_productsubcomment; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productsubcomment (
    id integer NOT NULL,
    is_confirmed boolean NOT NULL,
    content text NOT NULL,
    username character varying(132),
    object_id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer,
    CONSTRAINT products_productsubcomment_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.products_productsubcomment OWNER TO jeremih;

--
-- Name: products_productsubcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productsubcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productsubcomment_id_seq OWNER TO jeremih;

--
-- Name: products_productsubcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productsubcomment_id_seq OWNED BY public.products_productsubcomment.id;


--
-- Name: products_productvariation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_productvariation (
    id integer NOT NULL,
    value character varying(50) NOT NULL,
    attachment character varying(100) NOT NULL,
    variation_id integer NOT NULL
);


ALTER TABLE public.products_productvariation OWNER TO jeremih;

--
-- Name: products_productvariation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_productvariation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productvariation_id_seq OWNER TO jeremih;

--
-- Name: products_productvariation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_productvariation_id_seq OWNED BY public.products_productvariation.id;


--
-- Name: products_rating; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_rating (
    id integer NOT NULL,
    stars integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT products_rating_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.products_rating OWNER TO jeremih;

--
-- Name: products_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_rating_id_seq OWNER TO jeremih;

--
-- Name: products_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_rating_id_seq OWNED BY public.products_rating.id;


--
-- Name: products_sliderimage; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_sliderimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    image_alt character varying(225),
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT products_sliderimage_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.products_sliderimage OWNER TO jeremih;

--
-- Name: products_sliderimage_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_sliderimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_sliderimage_id_seq OWNER TO jeremih;

--
-- Name: products_sliderimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_sliderimage_id_seq OWNED BY public.products_sliderimage.id;


--
-- Name: products_variation; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.products_variation (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_variation OWNER TO jeremih;

--
-- Name: products_variation_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.products_variation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_variation_id_seq OWNER TO jeremih;

--
-- Name: products_variation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.products_variation_id_seq OWNED BY public.products_variation.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO jeremih;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO jeremih;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO jeremih;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO jeremih;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO jeremih;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO jeremih;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO jeremih;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO jeremih;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: userpanel_orderticket; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.userpanel_orderticket (
    id integer NOT NULL,
    title character varying(225) NOT NULL,
    to_who character varying(225),
    time_stamp timestamp with time zone NOT NULL,
    is_closed boolean NOT NULL,
    mini_order_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.userpanel_orderticket OWNER TO jeremih;

--
-- Name: userpanel_orderticket_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.userpanel_orderticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userpanel_orderticket_id_seq OWNER TO jeremih;

--
-- Name: userpanel_orderticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.userpanel_orderticket_id_seq OWNED BY public.userpanel_orderticket.id;


--
-- Name: userpanel_orderticketmessage; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.userpanel_orderticketmessage (
    id integer NOT NULL,
    content text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    from_admin boolean NOT NULL,
    is_active boolean NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT userpanel_orderticketmessage_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.userpanel_orderticketmessage OWNER TO jeremih;

--
-- Name: userpanel_orderticketmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.userpanel_orderticketmessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userpanel_orderticketmessage_id_seq OWNER TO jeremih;

--
-- Name: userpanel_orderticketmessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.userpanel_orderticketmessage_id_seq OWNED BY public.userpanel_orderticketmessage.id;


--
-- Name: users_producerprofile; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_producerprofile (
    profile_ptr_id integer NOT NULL,
    department character varying(132),
    job_title character varying(132),
    postal_code character varying(12),
    alternative_phone character varying(15),
    fax_number character varying(20),
    business_type character varying(20)
);


ALTER TABLE public.users_producerprofile OWNER TO jeremih;

--
-- Name: users_producerprofile_categoty; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_producerprofile_categoty (
    id integer NOT NULL,
    producerprofile_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.users_producerprofile_categoty OWNER TO jeremih;

--
-- Name: users_producerprofile_categoty_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_producerprofile_categoty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_producerprofile_categoty_id_seq OWNER TO jeremih;

--
-- Name: users_producerprofile_categoty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_producerprofile_categoty_id_seq OWNED BY public.users_producerprofile_categoty.id;


--
-- Name: users_profile; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_profile (
    id integer NOT NULL,
    gender character varying(17) NOT NULL,
    profile_picture character varying(100),
    province character varying(132),
    city character varying(132),
    company_name character varying(132),
    phone_number character varying(20),
    company_address text,
    office_address text,
    office_phone_num character varying(20),
    introduce_yourself text,
    description text,
    date_created_at timestamp with time zone NOT NULL,
    web_site character varying(120),
    user_id integer NOT NULL
);


ALTER TABLE public.users_profile OWNER TO jeremih;

--
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profile_id_seq OWNER TO jeremih;

--
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;


--
-- Name: users_tokentfa; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_tokentfa (
    id integer NOT NULL,
    code character varying(6) NOT NULL,
    gen_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_tokentfa OWNER TO jeremih;

--
-- Name: users_tokentfa_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_tokentfa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_tokentfa_id_seq OWNER TO jeremih;

--
-- Name: users_tokentfa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_tokentfa_id_seq OWNED BY public.users_tokentfa.id;


--
-- Name: users_twofactortoken; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_twofactortoken (
    id integer NOT NULL,
    code integer NOT NULL,
    gen_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_twofactortoken OWNER TO jeremih;

--
-- Name: users_twofactortoken_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_twofactortoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_twofactortoken_id_seq OWNER TO jeremih;

--
-- Name: users_twofactortoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_twofactortoken_id_seq OWNED BY public.users_twofactortoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_user (
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
    date_joined timestamp with time zone NOT NULL,
    is_producer boolean,
    role character varying(12),
    phone_number character varying(15)
);


ALTER TABLE public.users_user OWNER TO jeremih;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO jeremih;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO jeremih;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO jeremih;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: jeremih
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO jeremih;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jeremih
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO jeremih;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeremih
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: admin_honeypot_loginattempt id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.admin_honeypot_loginattempt ALTER COLUMN id SET DEFAULT nextval('public.admin_honeypot_loginattempt_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: blog_post_categories id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_post_categories_id_seq'::regclass);


--
-- Name: categories_category id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_category ALTER COLUMN id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: categories_categoryapplication id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication ALTER COLUMN id SET DEFAULT nextval('public.categories_categoryapplication_id_seq'::regclass);


--
-- Name: categories_categoryapplication_categories id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_categoryapplication_categories_id_seq'::regclass);


--
-- Name: categories_categorycomment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorycomment ALTER COLUMN id SET DEFAULT nextval('public.categories_categorycomment_id_seq'::regclass);


--
-- Name: categories_categoryquestion id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryquestion ALTER COLUMN id SET DEFAULT nextval('public.categories_categoryquestion_id_seq'::regclass);


--
-- Name: categories_categorysubcomment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorysubcomment ALTER COLUMN id SET DEFAULT nextval('public.categories_categorysubcomment_id_seq'::regclass);


--
-- Name: categories_categorytag id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag ALTER COLUMN id SET DEFAULT nextval('public.categories_categorytag_id_seq'::regclass);


--
-- Name: categories_categorytag_categories id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_categorytag_categories_id_seq'::regclass);


--
-- Name: categories_categoryvariation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryvariation ALTER COLUMN id SET DEFAULT nextval('public.categories_categoryvariation_id_seq'::regclass);


--
-- Name: categories_choicefield id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield ALTER COLUMN id SET DEFAULT nextval('public.categories_choicefield_id_seq'::regclass);


--
-- Name: categories_choicefield_questions id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield_questions ALTER COLUMN id SET DEFAULT nextval('public.categories_choicefield_questions_id_seq'::regclass);


--
-- Name: categories_maincategory id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_maincategory ALTER COLUMN id SET DEFAULT nextval('public.categories_maincategory_id_seq'::regclass);


--
-- Name: categories_mothercategory id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_mothercategory ALTER COLUMN id SET DEFAULT nextval('public.categories_mothercategory_id_seq'::regclass);


--
-- Name: categories_variation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_variation ALTER COLUMN id SET DEFAULT nextval('public.categories_variation_id_seq'::regclass);


--
-- Name: crm_address id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_address ALTER COLUMN id SET DEFAULT nextval('public.crm_address_id_seq'::regclass);


--
-- Name: crm_crmcomment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmcomment ALTER COLUMN id SET DEFAULT nextval('public.crm_crmcomment_id_seq'::regclass);


--
-- Name: crm_crmdocument id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmdocument ALTER COLUMN id SET DEFAULT nextval('public.crm_crmdocument_id_seq'::regclass);


--
-- Name: crm_crmproduct id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmproduct ALTER COLUMN id SET DEFAULT nextval('public.crm_crmproduct_id_seq'::regclass);


--
-- Name: crm_customer id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_customer ALTER COLUMN id SET DEFAULT nextval('public.crm_customer_id_seq'::regclass);


--
-- Name: crm_deal id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal ALTER COLUMN id SET DEFAULT nextval('public.crm_deal_id_seq'::regclass);


--
-- Name: crm_deal_products id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal_products ALTER COLUMN id SET DEFAULT nextval('public.crm_deal_products_id_seq'::regclass);


--
-- Name: crm_notifications id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_notifications ALTER COLUMN id SET DEFAULT nextval('public.crm_notifications_id_seq'::regclass);


--
-- Name: crm_task id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_task ALTER COLUMN id SET DEFAULT nextval('public.crm_task_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: hitcount_blacklist_ip id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_ip ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_ip_id_seq'::regclass);


--
-- Name: hitcount_blacklist_user_agent id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_user_agent_id_seq'::regclass);


--
-- Name: hitcount_hit id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_id_seq'::regclass);


--
-- Name: hitcount_hit_count id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit_count ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_count_id_seq'::regclass);


--
-- Name: merchandise_address id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_address ALTER COLUMN id SET DEFAULT nextval('public.merchandise_address_id_seq'::regclass);


--
-- Name: merchandise_coupon id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_coupon ALTER COLUMN id SET DEFAULT nextval('public.merchandise_coupon_id_seq'::regclass);


--
-- Name: merchandise_miniorder id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder ALTER COLUMN id SET DEFAULT nextval('public.merchandise_miniorder_id_seq'::regclass);


--
-- Name: merchandise_miniorder_users id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder_users ALTER COLUMN id SET DEFAULT nextval('public.merchandise_miniorder_users_id_seq'::regclass);


--
-- Name: merchandise_miniorderconfirmation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorderconfirmation ALTER COLUMN id SET DEFAULT nextval('public.merchandise_miniorderconfirmation_id_seq'::regclass);


--
-- Name: merchandise_order id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order ALTER COLUMN id SET DEFAULT nextval('public.merchandise_order_id_seq'::regclass);


--
-- Name: merchandise_order_items id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_items ALTER COLUMN id SET DEFAULT nextval('public.merchandise_order_items_id_seq'::regclass);


--
-- Name: merchandise_order_producer id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_producer ALTER COLUMN id SET DEFAULT nextval('public.merchandise_order_producer_id_seq'::regclass);


--
-- Name: merchandise_orderitem id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_orderitem ALTER COLUMN id SET DEFAULT nextval('public.merchandise_orderitem_id_seq'::regclass);


--
-- Name: merchandise_payment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_payment ALTER COLUMN id SET DEFAULT nextval('public.merchandise_payment_id_seq'::regclass);


--
-- Name: merchandise_refund id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_refund ALTER COLUMN id SET DEFAULT nextval('public.merchandise_refund_id_seq'::regclass);


--
-- Name: products_label id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_label ALTER COLUMN id SET DEFAULT nextval('public.products_label_id_seq'::regclass);


--
-- Name: products_metadetail id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_metadetail ALTER COLUMN id SET DEFAULT nextval('public.products_metadetail_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: products_product_category id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_category ALTER COLUMN id SET DEFAULT nextval('public.products_product_category_id_seq'::regclass);


--
-- Name: products_product_label_try id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_label_try ALTER COLUMN id SET DEFAULT nextval('public.products_product_label_try_id_seq'::regclass);


--
-- Name: products_product_producers id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_producers ALTER COLUMN id SET DEFAULT nextval('public.products_product_producers_id_seq'::regclass);


--
-- Name: products_productcomment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productcomment ALTER COLUMN id SET DEFAULT nextval('public.products_productcomment_id_seq'::regclass);


--
-- Name: products_productdetail id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail ALTER COLUMN id SET DEFAULT nextval('public.products_productdetail_id_seq'::regclass);


--
-- Name: products_productdetail_products id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail_products ALTER COLUMN id SET DEFAULT nextval('public.products_productdetail_products_id_seq'::regclass);


--
-- Name: products_productproducerphone id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone ALTER COLUMN id SET DEFAULT nextval('public.products_productproducerphone_id_seq'::regclass);


--
-- Name: products_productproducerphone_products id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone_products ALTER COLUMN id SET DEFAULT nextval('public.products_productproducerphone_products_id_seq'::regclass);


--
-- Name: products_productsubcomment id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productsubcomment ALTER COLUMN id SET DEFAULT nextval('public.products_productsubcomment_id_seq'::regclass);


--
-- Name: products_productvariation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productvariation ALTER COLUMN id SET DEFAULT nextval('public.products_productvariation_id_seq'::regclass);


--
-- Name: products_rating id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_rating ALTER COLUMN id SET DEFAULT nextval('public.products_rating_id_seq'::regclass);


--
-- Name: products_sliderimage id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_sliderimage ALTER COLUMN id SET DEFAULT nextval('public.products_sliderimage_id_seq'::regclass);


--
-- Name: products_variation id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_variation ALTER COLUMN id SET DEFAULT nextval('public.products_variation_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: userpanel_orderticket id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticket ALTER COLUMN id SET DEFAULT nextval('public.userpanel_orderticket_id_seq'::regclass);


--
-- Name: userpanel_orderticketmessage id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticketmessage ALTER COLUMN id SET DEFAULT nextval('public.userpanel_orderticketmessage_id_seq'::regclass);


--
-- Name: users_producerprofile_categoty id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile_categoty ALTER COLUMN id SET DEFAULT nextval('public.users_producerprofile_categoty_id_seq'::regclass);


--
-- Name: users_profile id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);


--
-- Name: users_tokentfa id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_tokentfa ALTER COLUMN id SET DEFAULT nextval('public.users_tokentfa_id_seq'::regclass);


--
-- Name: users_twofactortoken id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_twofactortoken ALTER COLUMN id SET DEFAULT nextval('public.users_twofactortoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: admin_honeypot_loginattempt; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.admin_honeypot_loginattempt (id, username, ip_address, session_key, user_agent, "timestamp", path) FROM stdin;
1	jer	127.0.0.1	\N	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0	2021-03-13 04:23:17.930898-05	/admin/login/?next=/admin/
2	jer	127.0.0.1	\N	Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0	2021-03-13 04:23:21.701958-05	/admin/login/?next=/admin/
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	53	add_permission
2	Can change permission	53	change_permission
3	Can delete permission	53	delete_permission
4	Can view permission	53	view_permission
5	Can add group	54	add_group
6	Can change group	54	change_group
7	Can delete group	54	delete_group
8	Can view group	54	view_group
9	Can add content type	1	add_contenttype
10	Can change content type	1	change_contenttype
11	Can delete content type	1	delete_contenttype
12	Can view content type	1	view_contenttype
13	Can add user	2	add_user
14	Can change user	2	change_user
15	Can delete user	2	delete_user
16	Can view user	2	view_user
17	Can add profile	3	add_profile
18	Can change profile	3	change_profile
19	Can delete profile	3	delete_profile
20	Can view profile	3	view_profile
21	Can add two factor token	5	add_twofactortoken
22	Can change two factor token	5	change_twofactortoken
23	Can delete two factor token	5	delete_twofactortoken
24	Can view two factor token	5	view_twofactortoken
25	Can add token tfa	6	add_tokentfa
26	Can change token tfa	6	change_tokentfa
27	Can delete token tfa	6	delete_tokentfa
28	Can view token tfa	6	view_tokentfa
29	Can add producer profile	4	add_producerprofile
30	Can change producer profile	4	change_producerprofile
31	Can delete producer profile	4	delete_producerprofile
32	Can view producer profile	4	view_producerprofile
33	Can add category	7	add_category
34	Can change category	7	change_category
35	Can delete category	7	delete_category
36	Can view category	7	view_category
37	Can add category question	8	add_categoryquestion
38	Can change category question	8	change_categoryquestion
39	Can delete category question	8	delete_categoryquestion
40	Can view category question	8	view_categoryquestion
41	Can add mother category	9	add_mothercategory
42	Can change mother category	9	change_mothercategory
43	Can delete mother category	9	delete_mothercategory
44	Can view mother category	9	view_mothercategory
45	Can add variation	10	add_variation
46	Can change variation	10	change_variation
47	Can delete variation	10	delete_variation
48	Can view variation	10	view_variation
49	Can add main category	11	add_maincategory
50	Can change main category	11	change_maincategory
51	Can delete main category	11	delete_maincategory
52	Can view main category	11	view_maincategory
53	Can add choice field	12	add_choicefield
54	Can change choice field	12	change_choicefield
55	Can delete choice field	12	delete_choicefield
56	Can view choice field	12	view_choicefield
57	Can add category tag	13	add_categorytag
58	Can change category tag	13	change_categorytag
59	Can delete category tag	13	delete_categorytag
60	Can view category tag	13	view_categorytag
61	Can add category sub comment	14	add_categorysubcomment
62	Can change category sub comment	14	change_categorysubcomment
63	Can delete category sub comment	14	delete_categorysubcomment
64	Can view category sub comment	14	view_categorysubcomment
65	Can add category comment	15	add_categorycomment
66	Can change category comment	15	change_categorycomment
67	Can delete category comment	15	delete_categorycomment
68	Can view category comment	15	view_categorycomment
69	Can add category application	16	add_categoryapplication
70	Can change category application	16	change_categoryapplication
71	Can delete category application	16	delete_categoryapplication
72	Can view category application	16	view_categoryapplication
73	Can add category variation	17	add_categoryvariation
74	Can change category variation	17	change_categoryvariation
75	Can delete category variation	17	delete_categoryvariation
76	Can view category variation	17	view_categoryvariation
77	Can add comment	18	add_comment
78	Can change comment	18	change_comment
79	Can delete comment	18	delete_comment
80	Can view comment	18	view_comment
81	Can add post	19	add_post
82	Can change post	19	change_post
83	Can delete post	19	delete_post
84	Can view post	19	view_post
85	Can add mini order	20	add_miniorder
86	Can change mini order	20	change_miniorder
87	Can delete mini order	20	delete_miniorder
88	Can view mini order	20	view_miniorder
89	Can add mini order confirmation	21	add_miniorderconfirmation
90	Can change mini order confirmation	21	change_miniorderconfirmation
91	Can delete mini order confirmation	21	delete_miniorderconfirmation
92	Can view mini order confirmation	21	view_miniorderconfirmation
93	Can add order item	22	add_orderitem
94	Can change order item	22	change_orderitem
95	Can delete order item	22	delete_orderitem
96	Can view order item	22	view_orderitem
97	Can add order	23	add_order
98	Can change order	23	change_order
99	Can delete order	23	delete_order
100	Can view order	23	view_order
101	Can add address	24	add_address
102	Can change address	24	change_address
103	Can delete address	24	delete_address
104	Can view address	24	view_address
105	Can add payment	25	add_payment
106	Can change payment	25	change_payment
107	Can delete payment	25	delete_payment
108	Can view payment	25	view_payment
109	Can add coupon	26	add_coupon
110	Can change coupon	26	change_coupon
111	Can delete coupon	26	delete_coupon
112	Can view coupon	26	view_coupon
113	Can add refund	27	add_refund
114	Can change refund	27	change_refund
115	Can delete refund	27	delete_refund
116	Can view refund	27	view_refund
117	Can add product	28	add_product
118	Can change product	28	change_product
119	Can delete product	28	delete_product
120	Can view product	28	view_product
121	Can add slider image	29	add_sliderimage
122	Can change slider image	29	change_sliderimage
123	Can delete slider image	29	delete_sliderimage
124	Can view slider image	29	view_sliderimage
125	Can add label	30	add_label
126	Can change label	30	change_label
127	Can delete label	30	delete_label
128	Can view label	30	view_label
129	Can add variation	31	add_variation
130	Can change variation	31	change_variation
131	Can delete variation	31	delete_variation
132	Can view variation	31	view_variation
133	Can add product variation	32	add_productvariation
134	Can change product variation	32	change_productvariation
135	Can delete product variation	32	delete_productvariation
136	Can view product variation	32	view_productvariation
137	Can add product comment	33	add_productcomment
138	Can change product comment	33	change_productcomment
139	Can delete product comment	33	delete_productcomment
140	Can view product comment	33	view_productcomment
141	Can add product sub comment	34	add_productsubcomment
142	Can change product sub comment	34	change_productsubcomment
143	Can delete product sub comment	34	delete_productsubcomment
144	Can view product sub comment	34	view_productsubcomment
145	Can add rating	35	add_rating
146	Can change rating	35	change_rating
147	Can delete rating	35	delete_rating
148	Can view rating	35	view_rating
149	Can add product producer phone	36	add_productproducerphone
150	Can change product producer phone	36	change_productproducerphone
151	Can delete product producer phone	36	delete_productproducerphone
152	Can view product producer phone	36	view_productproducerphone
153	Can add product detail	37	add_productdetail
154	Can change product detail	37	change_productdetail
155	Can delete product detail	37	delete_productdetail
156	Can view product detail	37	view_productdetail
157	Can add meta detail	38	add_metadetail
158	Can change meta detail	38	change_metadetail
159	Can delete meta detail	38	delete_metadetail
160	Can view meta detail	38	view_metadetail
161	Can add news teller emails	39	add_newstelleremails
162	Can change news teller emails	39	change_newstelleremails
163	Can delete news teller emails	39	delete_newstelleremails
164	Can view news teller emails	39	view_newstelleremails
165	Can add document	40	add_document
166	Can change document	40	change_document
167	Can delete document	40	delete_document
168	Can view document	40	view_document
169	Can add about us	41	add_aboutus
170	Can change about us	41	change_aboutus
171	Can delete about us	41	delete_aboutus
172	Can view about us	41	view_aboutus
173	Can add index slider	42	add_indexslider
174	Can change index slider	42	change_indexslider
175	Can delete index slider	42	delete_indexslider
176	Can view index slider	42	view_indexslider
177	Can add order ticket	43	add_orderticket
178	Can change order ticket	43	change_orderticket
179	Can delete order ticket	43	delete_orderticket
180	Can view order ticket	43	view_orderticket
181	Can add order ticket message	44	add_orderticketmessage
182	Can change order ticket message	44	change_orderticketmessage
183	Can delete order ticket message	44	delete_orderticketmessage
184	Can view order ticket message	44	view_orderticketmessage
185	Can add customer	45	add_customer
186	Can change customer	45	change_customer
187	Can delete customer	45	delete_customer
188	Can view customer	45	view_customer
189	Can add address	46	add_address
190	Can change address	46	change_address
191	Can delete address	46	delete_address
192	Can view address	46	view_address
193	Can add deal	47	add_deal
194	Can change deal	47	change_deal
195	Can delete deal	47	delete_deal
196	Can view deal	47	view_deal
197	Can add crm document	48	add_crmdocument
198	Can change crm document	48	change_crmdocument
199	Can delete crm document	48	delete_crmdocument
200	Can view crm document	48	view_crmdocument
201	Can add crm comment	49	add_crmcomment
202	Can change crm comment	49	change_crmcomment
203	Can delete crm comment	49	delete_crmcomment
204	Can view crm comment	49	view_crmcomment
205	Can add task	50	add_task
206	Can change task	50	change_task
207	Can delete task	50	delete_task
208	Can view task	50	view_task
209	Can add crm product	51	add_crmproduct
210	Can change crm product	51	change_crmproduct
211	Can delete crm product	51	delete_crmproduct
212	Can view crm product	51	view_crmproduct
213	Can add notifications	52	add_notifications
214	Can change notifications	52	change_notifications
215	Can delete notifications	52	delete_notifications
216	Can view notifications	52	view_notifications
217	Can add log entry	55	add_logentry
218	Can change log entry	55	change_logentry
219	Can delete log entry	55	delete_logentry
220	Can view log entry	55	view_logentry
221	Can add session	56	add_session
222	Can change session	56	change_session
223	Can delete session	56	delete_session
224	Can view session	56	view_session
225	Can add site	57	add_site
226	Can change site	57	change_site
227	Can delete site	57	delete_site
228	Can view site	57	view_site
229	Can add Token	58	add_token
230	Can change Token	58	change_token
231	Can delete Token	58	delete_token
232	Can view Token	58	view_token
233	Can add token	59	add_tokenproxy
234	Can change token	59	change_tokenproxy
235	Can delete token	59	delete_tokenproxy
236	Can view token	59	view_tokenproxy
237	Can add email address	60	add_emailaddress
238	Can change email address	60	change_emailaddress
239	Can delete email address	60	delete_emailaddress
240	Can view email address	60	view_emailaddress
241	Can add email confirmation	61	add_emailconfirmation
242	Can change email confirmation	61	change_emailconfirmation
243	Can delete email confirmation	61	delete_emailconfirmation
244	Can view email confirmation	61	view_emailconfirmation
245	Can add social account	62	add_socialaccount
246	Can change social account	62	change_socialaccount
247	Can delete social account	62	delete_socialaccount
248	Can view social account	62	view_socialaccount
249	Can add social application	63	add_socialapp
250	Can change social application	63	change_socialapp
251	Can delete social application	63	delete_socialapp
252	Can view social application	63	view_socialapp
253	Can add social application token	64	add_socialtoken
254	Can change social application token	64	change_socialtoken
255	Can delete social application token	64	delete_socialtoken
256	Can view social application token	64	view_socialtoken
257	Can add login attempt	65	add_loginattempt
258	Can change login attempt	65	change_loginattempt
259	Can delete login attempt	65	delete_loginattempt
260	Can view login attempt	65	view_loginattempt
261	Can add Blacklisted IP	66	add_blacklistip
262	Can change Blacklisted IP	66	change_blacklistip
263	Can delete Blacklisted IP	66	delete_blacklistip
264	Can view Blacklisted IP	66	view_blacklistip
265	Can add Blacklisted User Agent	67	add_blacklistuseragent
266	Can change Blacklisted User Agent	67	change_blacklistuseragent
267	Can delete Blacklisted User Agent	67	delete_blacklistuseragent
268	Can view Blacklisted User Agent	67	view_blacklistuseragent
269	Can add hit	68	add_hit
270	Can change hit	68	change_hit
271	Can delete hit	68	delete_hit
272	Can view hit	68	view_hit
273	Can add hit count	69	add_hitcount
274	Can change hit count	69	change_hitcount
275	Can delete hit count	69	delete_hitcount
276	Can view hit count	69	view_hitcount
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.blog_comment (id, "timestamp", content, username, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.blog_post (id, meta_keywords, meta_description, meta_author, meta_copyright, meta_title, extra_header, extra_scripts, google_analytics_details, title, short_description, content, "timestamp", thumbnail, image_alt, featured, active_post, slug, avg_read, author_id, last_edite) FROM stdin;
\.


--
-- Data for Name: blog_post_categories; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.blog_post_categories (id, post_id, category_id) FROM stdin;
\.


--
-- Data for Name: categories_category; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_category (id, meta_keywords, meta_description, meta_author, meta_copyright, meta_title, extra_header, extra_scripts, google_analytics_details, title, title_slug, seo_post, slug, upper_content, sub_category_of_id, is_ghost) FROM stdin;
1	\N	\N	\N	\N	\N				دستگاه شیرینگ	دستگاه شیرینگ	<p>ass</p>	shrink-machine		1	f
2	\N	\N	\N	\N	\N				اسکین پک	اسکین پک	<p>class CRMCommentCreationForm(forms.Form):</p>	skin-pack		1	t
\.


--
-- Data for Name: categories_categoryapplication; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categoryapplication (id, title, content, slug, application_image, "timestamp") FROM stdin;
\.


--
-- Data for Name: categories_categoryapplication_categories; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categoryapplication_categories (id, categoryapplication_id, category_id) FROM stdin;
\.


--
-- Data for Name: categories_categorycomment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categorycomment (id, username, email, content, "timestamp", is_confirmed, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: categories_categoryquestion; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categoryquestion (id, question, help_text, is_selectable, type, num_of_choices, category_id) FROM stdin;
1	ظرفیت؟		t	A	\N	1
\.


--
-- Data for Name: categories_categorysubcomment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categorysubcomment (id, username, email, content, "timestamp", is_confirmed, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: categories_categorytag; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categorytag (id, title, slug, content, "timestamp") FROM stdin;
\.


--
-- Data for Name: categories_categorytag_categories; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categorytag_categories (id, categorytag_id, category_id) FROM stdin;
\.


--
-- Data for Name: categories_categoryvariation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_categoryvariation (id, value, attachment, selectable, yes_or_no, variation_id) FROM stdin;
\.


--
-- Data for Name: categories_choicefield; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_choicefield (id, selection) FROM stdin;
\.


--
-- Data for Name: categories_choicefield_questions; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_choicefield_questions (id, choicefield_id, categoryquestion_id) FROM stdin;
\.


--
-- Data for Name: categories_maincategory; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_maincategory (id, meta_keywords, meta_description, meta_author, meta_copyright, meta_title, extra_header, extra_scripts, google_analytics_details, title, seo_post, slug, mother_category_id) FROM stdin;
1	\N	\N	\N	\N	\N				بسته بندی	<p>بسته بندی</p>	packing	1
\.


--
-- Data for Name: categories_mothercategory; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_mothercategory (id, meta_keywords, meta_description, meta_author, meta_copyright, meta_title, extra_header, extra_scripts, google_analytics_details, title, seo_post, slug) FROM stdin;
1	\N	\N	\N	\N	\N				ماشین آلات	<p>شس</p>	machinery
\.


--
-- Data for Name: categories_variation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.categories_variation (id, name, model, category_id) FROM stdin;
\.


--
-- Data for Name: crm_address; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_address (id, title, address_type, is_active, city, country, address_text, telephone_number, object_id, content_type_id, customer_id, is_main) FROM stdin;
\.


--
-- Data for Name: crm_crmcomment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_crmcomment (id, title, content, object_id, content_type_id) FROM stdin;
1	Call	Done and Done	1	49
2	Call	Done and Done	1	45
\.


--
-- Data for Name: crm_crmdocument; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_crmdocument (id, subject, docs, remarks, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: crm_crmproduct; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_crmproduct (id, title, link, producer_company, remarks) FROM stdin;
\.


--
-- Data for Name: crm_customer; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_customer (id, gender, name, last_name, bio, telephone_number, company, time_joined, remarks, is_active, how_found) FROM stdin;
\.


--
-- Data for Name: crm_deal; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_deal (id, title, start_time, end_time, ongoing, is_closed, dealer, description, customer_id) FROM stdin;
\.


--
-- Data for Name: crm_deal_products; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_deal_products (id, deal_id, crmproduct_id) FROM stdin;
\.


--
-- Data for Name: crm_notifications; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_notifications (id, "user", content, link, title, time_sent, time_read, is_read, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: crm_task; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.crm_task (id, title, start_date, is_done, description, due_date, end_date, priorty, object_id, doer, content_type_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-14 01:49:30.804652-05	1	ماشین آلات	1	[{"added": {}}]	9	1
2	2021-03-14 01:49:47.203463-05	1	بسته بندی	1	[{"added": {}}]	11	1
3	2021-03-14 01:50:08.560623-05	1	دستگاه شیرینگ	1	[{"added": {}}]	7	1
4	2021-03-16 04:12:05.37748-04	2	اسکین پک	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	contenttypes	contenttype
2	users	user
3	users	profile
4	users	producerprofile
5	users	twofactortoken
6	users	tokentfa
7	categories	category
8	categories	categoryquestion
9	categories	mothercategory
10	categories	variation
11	categories	maincategory
12	categories	choicefield
13	categories	categorytag
14	categories	categorysubcomment
15	categories	categorycomment
16	categories	categoryapplication
17	categories	categoryvariation
18	blog	comment
19	blog	post
20	merchandise	miniorder
21	merchandise	miniorderconfirmation
22	merchandise	orderitem
23	merchandise	order
24	merchandise	address
25	merchandise	payment
26	merchandise	coupon
27	merchandise	refund
28	products	product
29	products	sliderimage
30	products	label
31	products	variation
32	products	productvariation
33	products	productcomment
34	products	productsubcomment
35	products	rating
36	products	productproducerphone
37	products	productdetail
38	products	metadetail
39	pages	newstelleremails
40	pages	document
41	pages	aboutus
42	pages	indexslider
43	userpanel	orderticket
44	userpanel	orderticketmessage
45	crm	customer
46	crm	address
47	crm	deal
48	crm	crmdocument
49	crm	crmcomment
50	crm	task
51	crm	crmproduct
52	crm	notifications
53	auth	permission
54	auth	group
55	admin	logentry
56	sessions	session
57	sites	site
58	authtoken	token
59	authtoken	tokenproxy
60	account	emailaddress
61	account	emailconfirmation
62	socialaccount	socialaccount
63	socialaccount	socialapp
64	socialaccount	socialtoken
65	admin_honeypot	loginattempt
66	hitcount	blacklistip
67	hitcount	blacklistuseragent
68	hitcount	hit
69	hitcount	hitcount
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-03-13 04:20:30.256104-05
2	contenttypes	0002_remove_content_type_name	2021-03-13 04:20:30.497608-05
3	categories	0001_initial	2021-03-13 04:20:31.553079-05
4	auth	0001_initial	2021-03-13 04:20:54.212305-05
5	auth	0002_alter_permission_name_max_length	2021-03-13 04:20:54.50692-05
6	auth	0003_alter_user_email_max_length	2021-03-13 04:20:54.53424-05
7	auth	0004_alter_user_username_opts	2021-03-13 04:20:54.631987-05
8	auth	0005_alter_user_last_login_null	2021-03-13 04:20:54.654994-05
9	auth	0006_require_contenttypes_0002	2021-03-13 04:20:54.670702-05
10	auth	0007_alter_validators_add_error_messages	2021-03-13 04:20:54.701043-05
11	auth	0008_alter_user_username_max_length	2021-03-13 04:20:54.734894-05
12	auth	0009_alter_user_last_name_max_length	2021-03-13 04:20:54.769169-05
13	auth	0010_alter_group_name_max_length	2021-03-13 04:20:54.804764-05
14	auth	0011_update_proxy_permissions	2021-03-13 04:20:54.89411-05
15	users	0001_initial	2021-03-13 04:20:55.48622-05
16	account	0001_initial	2021-03-13 04:21:05.19306-05
17	account	0002_email_max_length	2021-03-13 04:21:05.402808-05
18	admin	0001_initial	2021-03-13 04:21:05.539328-05
19	admin	0002_logentry_remove_auto_add	2021-03-13 04:21:05.68955-05
20	admin	0003_logentry_add_action_flag_choices	2021-03-13 04:21:05.726134-05
21	admin_honeypot	0001_initial	2021-03-13 04:21:05.819822-05
22	admin_honeypot	0002_auto_20160208_0854	2021-03-13 04:21:05.846679-05
23	authtoken	0001_initial	2021-03-13 04:21:05.953528-05
24	authtoken	0002_auto_20160226_1747	2021-03-13 04:21:06.198716-05
25	authtoken	0003_tokenproxy	2021-03-13 04:21:06.235166-05
26	hitcount	0001_initial	2021-03-13 04:21:06.672633-05
27	hitcount	0002_index_ip_and_session	2021-03-13 04:21:07.174428-05
28	hitcount	0003_auto_20190608_1004	2021-03-13 04:21:07.316973-05
29	hitcount	0004_auto_20200704_0933	2021-03-13 04:21:07.463599-05
30	sessions	0001_initial	2021-03-13 04:21:07.573536-05
31	sites	0001_initial	2021-03-13 04:21:07.729709-05
32	sites	0002_alter_domain_unique	2021-03-13 04:21:07.842886-05
33	socialaccount	0001_initial	2021-03-13 04:21:08.290843-05
34	socialaccount	0002_token_max_lengths	2021-03-13 04:21:08.647662-05
35	socialaccount	0003_extra_data_default_dict	2021-03-13 04:21:08.68697-05
36	products	0001_initial	2021-03-13 04:21:25.949041-05
37	merchandise	0001_initial	2021-03-13 04:21:43.212113-05
38	blog	0001_initial	2021-03-13 04:21:58.024764-05
39	crm	0001_initial	2021-03-13 04:22:15.837688-05
67	categories	0002_category_is_ghost	2021-03-16 04:10:25.842008-04
68	crm	0002_auto_20210318_0925	2021-03-18 01:55:24.948228-04
69	blog	0002_auto_20210318_0925	2021-03-18 01:56:06.661279-04
70	userpanel	0001_initial	2021-03-27 00:39:24.957994-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
73yiel8z32ini10hyz79cav3zidt9lcr	OGViYmYyYTJjZjYxYTA1NWMzYzc4YmQ0ZGU4ZTdlNmQzMjhmYzEzNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDFiNTdkMWIwOTE2ZTM5NTI4M2I0ZjAyMjg4ZGVmNjcwNzQ0YWM2In0=	2021-03-27 05:23:33.801385-04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: hitcount_blacklist_ip; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.hitcount_blacklist_ip (id, ip) FROM stdin;
\.


--
-- Data for Name: hitcount_blacklist_user_agent; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.hitcount_blacklist_user_agent (id, user_agent) FROM stdin;
\.


--
-- Data for Name: hitcount_hit; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.hitcount_hit (id, created, ip, session, user_agent, hitcount_id, user_id) FROM stdin;
\.


--
-- Data for Name: hitcount_hit_count; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.hitcount_hit_count (id, hits, modified, object_pk, content_type_id) FROM stdin;
\.


--
-- Data for Name: merchandise_address; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_address (id, street_address, apartment_address, zip, address_type, "default", user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_coupon; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_coupon (id, code, amount) FROM stdin;
\.


--
-- Data for Name: merchandise_miniorder; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_miniorder (id, "timestamp", email, name, phone_number, extra_discription, is_confirmed, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_miniorder_users; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_miniorder_users (id, miniorder_id, user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_miniorderconfirmation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_miniorderconfirmation (id, is_confirmed, confirmed_on, mini_order_id, user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_order; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_order (id, ref_code, start_date, ordered_date, ordered, being_delivered, received, refund_requested, refund_granted, billing_address_id, coupon_id, payment_id, shipping_address_id, user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_order_items; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_order_items (id, order_id, orderitem_id) FROM stdin;
\.


--
-- Data for Name: merchandise_order_producer; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_order_producer (id, order_id, producerprofile_id) FROM stdin;
\.


--
-- Data for Name: merchandise_orderitem; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_orderitem (id, ordered, quantity, item_id, user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_payment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_payment (id, stripe_charge_id, amount, "timestamp", user_id) FROM stdin;
\.


--
-- Data for Name: merchandise_refund; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.merchandise_refund (id, reason, accepted, email, order_id) FROM stdin;
\.


--
-- Data for Name: products_label; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_label (id, title, slug) FROM stdin;
\.


--
-- Data for Name: products_metadetail; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_metadetail (id, count, fake_content, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_product (id, meta_keywords, meta_description, meta_author, meta_copyright, meta_title, extra_header, extra_scripts, google_analytics_details, title, price, second_price, discount_price, product_image, image_alt, slug, stock, description, minimum_order, payment_type, packing, shipping, origin, made_in, delivery, samples, remarks, date_addded, orderd_times, short_discription, is_confirmed, producer_id) FROM stdin;
\.


--
-- Data for Name: products_product_category; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_product_category (id, product_id, category_id) FROM stdin;
\.


--
-- Data for Name: products_product_label_try; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_product_label_try (id, product_id, label_id) FROM stdin;
\.


--
-- Data for Name: products_product_producers; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_product_producers (id, product_id, user_id) FROM stdin;
\.


--
-- Data for Name: products_productcomment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productcomment (id, is_confirmed, content, username, object_id, "timestamp", is_sub, content_type_id, parent_id, user_id) FROM stdin;
\.


--
-- Data for Name: products_productdetail; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productdetail (id, value, attachment, selectable, yes_or_no, variation_id) FROM stdin;
\.


--
-- Data for Name: products_productdetail_products; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productdetail_products (id, productdetail_id, product_id) FROM stdin;
\.


--
-- Data for Name: products_productproducerphone; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productproducerphone (id, name, phone_number, company, user_id) FROM stdin;
\.


--
-- Data for Name: products_productproducerphone_products; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productproducerphone_products (id, productproducerphone_id, product_id) FROM stdin;
\.


--
-- Data for Name: products_productsubcomment; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productsubcomment (id, is_confirmed, content, username, object_id, "timestamp", content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: products_productvariation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_productvariation (id, value, attachment, variation_id) FROM stdin;
\.


--
-- Data for Name: products_rating; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_rating (id, stars, object_id, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: products_sliderimage; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_sliderimage (id, image, image_alt, object_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: products_variation; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.products_variation (id, name, product_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: userpanel_orderticket; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.userpanel_orderticket (id, title, to_who, time_stamp, is_closed, mini_order_id, user_id) FROM stdin;
\.


--
-- Data for Name: userpanel_orderticketmessage; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.userpanel_orderticketmessage (id, content, "timestamp", from_admin, is_active, object_id, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: users_producerprofile; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_producerprofile (profile_ptr_id, department, job_title, postal_code, alternative_phone, fax_number, business_type) FROM stdin;
\.


--
-- Data for Name: users_producerprofile_categoty; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_producerprofile_categoty (id, producerprofile_id, category_id) FROM stdin;
\.


--
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_profile (id, gender, profile_picture, province, city, company_name, phone_number, company_address, office_address, office_phone_num, introduce_yourself, description, date_created_at, web_site, user_id) FROM stdin;
\.


--
-- Data for Name: users_tokentfa; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_tokentfa (id, code, gen_time, user_id) FROM stdin;
1		2021-03-13 04:22:47.151133-05	1
\.


--
-- Data for Name: users_twofactortoken; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_twofactortoken (id, code, gen_time, user_id) FROM stdin;
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_producer, role, phone_number) FROM stdin;
1	pbkdf2_sha256$150000$zxGkPz9HiQvr$serJvTppeTQa5CGf2g0v2Xng3Xxhej1eGU2pw6mz0hU=	2021-03-16 04:09:44.607789-04	t	jer				t	t	2021-03-13 04:22:46.952386-05	f	\N	\N
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jeremih
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: admin_honeypot_loginattempt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.admin_honeypot_loginattempt_id_seq', 33, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 297, true);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 1, false);


--
-- Name: blog_post_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.blog_post_categories_id_seq', 1, false);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 1, false);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 2, true);


--
-- Name: categories_categoryapplication_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categoryapplication_categories_id_seq', 1, false);


--
-- Name: categories_categoryapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categoryapplication_id_seq', 1, false);


--
-- Name: categories_categorycomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categorycomment_id_seq', 1, false);


--
-- Name: categories_categoryquestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categoryquestion_id_seq', 1, true);


--
-- Name: categories_categorysubcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categorysubcomment_id_seq', 1, false);


--
-- Name: categories_categorytag_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categorytag_categories_id_seq', 1, false);


--
-- Name: categories_categorytag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categorytag_id_seq', 1, false);


--
-- Name: categories_categoryvariation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_categoryvariation_id_seq', 1, false);


--
-- Name: categories_choicefield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_choicefield_id_seq', 1, false);


--
-- Name: categories_choicefield_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_choicefield_questions_id_seq', 1, false);


--
-- Name: categories_maincategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_maincategory_id_seq', 1, true);


--
-- Name: categories_mothercategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_mothercategory_id_seq', 1, true);


--
-- Name: categories_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.categories_variation_id_seq', 1, false);


--
-- Name: crm_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_address_id_seq', 1, false);


--
-- Name: crm_crmcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_crmcomment_id_seq', 2, true);


--
-- Name: crm_crmdocument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_crmdocument_id_seq', 1, false);


--
-- Name: crm_crmproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_crmproduct_id_seq', 1, false);


--
-- Name: crm_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_customer_id_seq', 1, false);


--
-- Name: crm_deal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_deal_id_seq', 1, false);


--
-- Name: crm_deal_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_deal_products_id_seq', 1, false);


--
-- Name: crm_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_notifications_id_seq', 1, false);


--
-- Name: crm_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.crm_task_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 99, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 70, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: hitcount_blacklist_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.hitcount_blacklist_ip_id_seq', 1, false);


--
-- Name: hitcount_blacklist_user_agent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.hitcount_blacklist_user_agent_id_seq', 1, false);


--
-- Name: hitcount_hit_count_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.hitcount_hit_count_id_seq', 1, false);


--
-- Name: hitcount_hit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.hitcount_hit_id_seq', 1, false);


--
-- Name: merchandise_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_address_id_seq', 1, false);


--
-- Name: merchandise_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_coupon_id_seq', 1, false);


--
-- Name: merchandise_miniorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_miniorder_id_seq', 1, false);


--
-- Name: merchandise_miniorder_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_miniorder_users_id_seq', 1, false);


--
-- Name: merchandise_miniorderconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_miniorderconfirmation_id_seq', 1, false);


--
-- Name: merchandise_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_order_id_seq', 1, false);


--
-- Name: merchandise_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_order_items_id_seq', 1, false);


--
-- Name: merchandise_order_producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_order_producer_id_seq', 1, false);


--
-- Name: merchandise_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_orderitem_id_seq', 1, false);


--
-- Name: merchandise_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_payment_id_seq', 1, false);


--
-- Name: merchandise_refund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.merchandise_refund_id_seq', 1, false);


--
-- Name: products_label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_label_id_seq', 1, false);


--
-- Name: products_metadetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_metadetail_id_seq', 1, false);


--
-- Name: products_product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_product_category_id_seq', 1, false);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- Name: products_product_label_try_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_product_label_try_id_seq', 1, false);


--
-- Name: products_product_producers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_product_producers_id_seq', 1, false);


--
-- Name: products_productcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productcomment_id_seq', 1, false);


--
-- Name: products_productdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productdetail_id_seq', 1, false);


--
-- Name: products_productdetail_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productdetail_products_id_seq', 1, false);


--
-- Name: products_productproducerphone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productproducerphone_id_seq', 1, false);


--
-- Name: products_productproducerphone_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productproducerphone_products_id_seq', 1, false);


--
-- Name: products_productsubcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productsubcomment_id_seq', 1, false);


--
-- Name: products_productvariation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_productvariation_id_seq', 1, false);


--
-- Name: products_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_rating_id_seq', 1, false);


--
-- Name: products_sliderimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_sliderimage_id_seq', 1, false);


--
-- Name: products_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.products_variation_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: userpanel_orderticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.userpanel_orderticket_id_seq', 1, false);


--
-- Name: userpanel_orderticketmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.userpanel_orderticketmessage_id_seq', 1, false);


--
-- Name: users_producerprofile_categoty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_producerprofile_categoty_id_seq', 1, false);


--
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 1, false);


--
-- Name: users_tokentfa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_tokentfa_id_seq', 33, true);


--
-- Name: users_twofactortoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_twofactortoken_id_seq', 1, false);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeremih
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: admin_honeypot_loginattempt admin_honeypot_loginattempt_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.admin_honeypot_loginattempt
    ADD CONSTRAINT admin_honeypot_loginattempt_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_post_categories blog_post_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_post_categories blog_post_categories_post_id_category_id_ed4f1727_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_post_id_category_id_ed4f1727_uniq UNIQUE (post_id, category_id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: categories_category categories_category_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryapplication_categories categories_categoryappli_categoryapplication_id_c_99d63607_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication_categories
    ADD CONSTRAINT categories_categoryappli_categoryapplication_id_c_99d63607_uniq UNIQUE (categoryapplication_id, category_id);


--
-- Name: categories_categoryapplication_categories categories_categoryapplication_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication_categories
    ADD CONSTRAINT categories_categoryapplication_categories_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryapplication categories_categoryapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication
    ADD CONSTRAINT categories_categoryapplication_pkey PRIMARY KEY (id);


--
-- Name: categories_categorycomment categories_categorycomment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorycomment
    ADD CONSTRAINT categories_categorycomment_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryquestion categories_categoryquestion_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryquestion
    ADD CONSTRAINT categories_categoryquestion_pkey PRIMARY KEY (id);


--
-- Name: categories_categorysubcomment categories_categorysubcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorysubcomment
    ADD CONSTRAINT categories_categorysubcomment_pkey PRIMARY KEY (id);


--
-- Name: categories_categorytag_categories categories_categorytag_c_categorytag_id_category__f239fab4_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag_categories
    ADD CONSTRAINT categories_categorytag_c_categorytag_id_category__f239fab4_uniq UNIQUE (categorytag_id, category_id);


--
-- Name: categories_categorytag_categories categories_categorytag_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag_categories
    ADD CONSTRAINT categories_categorytag_categories_pkey PRIMARY KEY (id);


--
-- Name: categories_categorytag categories_categorytag_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag
    ADD CONSTRAINT categories_categorytag_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryvariation categories_categoryvariation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryvariation
    ADD CONSTRAINT categories_categoryvariation_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryvariation categories_categoryvariation_variation_id_value_856d3cc7_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryvariation
    ADD CONSTRAINT categories_categoryvariation_variation_id_value_856d3cc7_uniq UNIQUE (variation_id, value);


--
-- Name: categories_choicefield categories_choicefield_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield
    ADD CONSTRAINT categories_choicefield_pkey PRIMARY KEY (id);


--
-- Name: categories_choicefield_questions categories_choicefield_q_choicefield_id_categoryq_ae065039_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield_questions
    ADD CONSTRAINT categories_choicefield_q_choicefield_id_categoryq_ae065039_uniq UNIQUE (choicefield_id, categoryquestion_id);


--
-- Name: categories_choicefield_questions categories_choicefield_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield_questions
    ADD CONSTRAINT categories_choicefield_questions_pkey PRIMARY KEY (id);


--
-- Name: categories_maincategory categories_maincategory_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_maincategory
    ADD CONSTRAINT categories_maincategory_pkey PRIMARY KEY (id);


--
-- Name: categories_mothercategory categories_mothercategory_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_mothercategory
    ADD CONSTRAINT categories_mothercategory_pkey PRIMARY KEY (id);


--
-- Name: categories_variation categories_variation_category_id_name_0e6a0484_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_variation
    ADD CONSTRAINT categories_variation_category_id_name_0e6a0484_uniq UNIQUE (category_id, name);


--
-- Name: categories_variation categories_variation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_variation
    ADD CONSTRAINT categories_variation_pkey PRIMARY KEY (id);


--
-- Name: crm_address crm_address_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_address
    ADD CONSTRAINT crm_address_pkey PRIMARY KEY (id);


--
-- Name: crm_crmcomment crm_crmcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmcomment
    ADD CONSTRAINT crm_crmcomment_pkey PRIMARY KEY (id);


--
-- Name: crm_crmdocument crm_crmdocument_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmdocument
    ADD CONSTRAINT crm_crmdocument_pkey PRIMARY KEY (id);


--
-- Name: crm_crmproduct crm_crmproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmproduct
    ADD CONSTRAINT crm_crmproduct_pkey PRIMARY KEY (id);


--
-- Name: crm_customer crm_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_customer
    ADD CONSTRAINT crm_customer_pkey PRIMARY KEY (id);


--
-- Name: crm_deal crm_deal_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal
    ADD CONSTRAINT crm_deal_pkey PRIMARY KEY (id);


--
-- Name: crm_deal_products crm_deal_products_deal_id_crmproduct_id_d1446821_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal_products
    ADD CONSTRAINT crm_deal_products_deal_id_crmproduct_id_d1446821_uniq UNIQUE (deal_id, crmproduct_id);


--
-- Name: crm_deal_products crm_deal_products_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal_products
    ADD CONSTRAINT crm_deal_products_pkey PRIMARY KEY (id);


--
-- Name: crm_notifications crm_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_notifications
    ADD CONSTRAINT crm_notifications_pkey PRIMARY KEY (id);


--
-- Name: crm_task crm_task_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_task
    ADD CONSTRAINT crm_task_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_ip hitcount_blacklist_ip_ip_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_ip_key UNIQUE (ip);


--
-- Name: hitcount_blacklist_ip hitcount_blacklist_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_user_agent hitcount_blacklist_user_agent_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_pkey PRIMARY KEY (id);


--
-- Name: hitcount_blacklist_user_agent hitcount_blacklist_user_agent_user_agent_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_user_agent_key UNIQUE (user_agent);


--
-- Name: hitcount_hit_count hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq UNIQUE (content_type_id, object_pk);


--
-- Name: hitcount_hit_count hitcount_hit_count_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_pkey PRIMARY KEY (id);


--
-- Name: hitcount_hit hitcount_hit_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_pkey PRIMARY KEY (id);


--
-- Name: merchandise_address merchandise_address_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_address
    ADD CONSTRAINT merchandise_address_pkey PRIMARY KEY (id);


--
-- Name: merchandise_coupon merchandise_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_coupon
    ADD CONSTRAINT merchandise_coupon_pkey PRIMARY KEY (id);


--
-- Name: merchandise_miniorder merchandise_miniorder_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder
    ADD CONSTRAINT merchandise_miniorder_pkey PRIMARY KEY (id);


--
-- Name: merchandise_miniorder_users merchandise_miniorder_users_miniorder_id_user_id_a11eccd6_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder_users
    ADD CONSTRAINT merchandise_miniorder_users_miniorder_id_user_id_a11eccd6_uniq UNIQUE (miniorder_id, user_id);


--
-- Name: merchandise_miniorder_users merchandise_miniorder_users_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder_users
    ADD CONSTRAINT merchandise_miniorder_users_pkey PRIMARY KEY (id);


--
-- Name: merchandise_miniorderconfirmation merchandise_miniorderconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorderconfirmation
    ADD CONSTRAINT merchandise_miniorderconfirmation_pkey PRIMARY KEY (id);


--
-- Name: merchandise_order_items merchandise_order_items_order_id_orderitem_id_80ee5b43_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_items
    ADD CONSTRAINT merchandise_order_items_order_id_orderitem_id_80ee5b43_uniq UNIQUE (order_id, orderitem_id);


--
-- Name: merchandise_order_items merchandise_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_items
    ADD CONSTRAINT merchandise_order_items_pkey PRIMARY KEY (id);


--
-- Name: merchandise_order merchandise_order_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_pkey PRIMARY KEY (id);


--
-- Name: merchandise_order_producer merchandise_order_produc_order_id_producerprofile_7483381f_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_producer
    ADD CONSTRAINT merchandise_order_produc_order_id_producerprofile_7483381f_uniq UNIQUE (order_id, producerprofile_id);


--
-- Name: merchandise_order_producer merchandise_order_producer_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_producer
    ADD CONSTRAINT merchandise_order_producer_pkey PRIMARY KEY (id);


--
-- Name: merchandise_orderitem merchandise_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_orderitem
    ADD CONSTRAINT merchandise_orderitem_pkey PRIMARY KEY (id);


--
-- Name: merchandise_payment merchandise_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_payment
    ADD CONSTRAINT merchandise_payment_pkey PRIMARY KEY (id);


--
-- Name: merchandise_refund merchandise_refund_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_refund
    ADD CONSTRAINT merchandise_refund_pkey PRIMARY KEY (id);


--
-- Name: products_label products_label_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_label
    ADD CONSTRAINT products_label_pkey PRIMARY KEY (id);


--
-- Name: products_metadetail products_metadetail_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_metadetail
    ADD CONSTRAINT products_metadetail_pkey PRIMARY KEY (id);


--
-- Name: products_metadetail products_metadetail_product_id_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_metadetail
    ADD CONSTRAINT products_metadetail_product_id_key UNIQUE (product_id);


--
-- Name: products_product_category products_product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_category
    ADD CONSTRAINT products_product_category_pkey PRIMARY KEY (id);


--
-- Name: products_product_category products_product_category_product_id_category_id_99b99489_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_category
    ADD CONSTRAINT products_product_category_product_id_category_id_99b99489_uniq UNIQUE (product_id, category_id);


--
-- Name: products_product_label_try products_product_label_try_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_label_try
    ADD CONSTRAINT products_product_label_try_pkey PRIMARY KEY (id);


--
-- Name: products_product_label_try products_product_label_try_product_id_label_id_14fde883_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_label_try
    ADD CONSTRAINT products_product_label_try_product_id_label_id_14fde883_uniq UNIQUE (product_id, label_id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: products_product_producers products_product_producers_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_producers
    ADD CONSTRAINT products_product_producers_pkey PRIMARY KEY (id);


--
-- Name: products_product_producers products_product_producers_product_id_user_id_bae020c4_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_producers
    ADD CONSTRAINT products_product_producers_product_id_user_id_bae020c4_uniq UNIQUE (product_id, user_id);


--
-- Name: products_productcomment products_productcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productcomment
    ADD CONSTRAINT products_productcomment_pkey PRIMARY KEY (id);


--
-- Name: products_productdetail_products products_productdetail_p_productdetail_id_product_cb98fae7_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail_products
    ADD CONSTRAINT products_productdetail_p_productdetail_id_product_cb98fae7_uniq UNIQUE (productdetail_id, product_id);


--
-- Name: products_productdetail products_productdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail
    ADD CONSTRAINT products_productdetail_pkey PRIMARY KEY (id);


--
-- Name: products_productdetail_products products_productdetail_products_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail_products
    ADD CONSTRAINT products_productdetail_products_pkey PRIMARY KEY (id);


--
-- Name: products_productproducerphone_products products_productproducer_productproducerphone_id__5ca25c27_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone_products
    ADD CONSTRAINT products_productproducer_productproducerphone_id__5ca25c27_uniq UNIQUE (productproducerphone_id, product_id);


--
-- Name: products_productproducerphone products_productproducerphone_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone
    ADD CONSTRAINT products_productproducerphone_pkey PRIMARY KEY (id);


--
-- Name: products_productproducerphone_products products_productproducerphone_products_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone_products
    ADD CONSTRAINT products_productproducerphone_products_pkey PRIMARY KEY (id);


--
-- Name: products_productsubcomment products_productsubcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productsubcomment
    ADD CONSTRAINT products_productsubcomment_pkey PRIMARY KEY (id);


--
-- Name: products_productvariation products_productvariation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productvariation
    ADD CONSTRAINT products_productvariation_pkey PRIMARY KEY (id);


--
-- Name: products_productvariation products_productvariation_variation_id_value_bb575a97_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productvariation
    ADD CONSTRAINT products_productvariation_variation_id_value_bb575a97_uniq UNIQUE (variation_id, value);


--
-- Name: products_rating products_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_rating
    ADD CONSTRAINT products_rating_pkey PRIMARY KEY (id);


--
-- Name: products_rating products_rating_user_id_object_id_3584ee2d_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_rating
    ADD CONSTRAINT products_rating_user_id_object_id_3584ee2d_uniq UNIQUE (user_id, object_id);


--
-- Name: products_sliderimage products_sliderimage_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_sliderimage
    ADD CONSTRAINT products_sliderimage_pkey PRIMARY KEY (id);


--
-- Name: products_variation products_variation_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_variation
    ADD CONSTRAINT products_variation_pkey PRIMARY KEY (id);


--
-- Name: products_variation products_variation_product_id_name_4c6a1fbb_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_variation
    ADD CONSTRAINT products_variation_product_id_name_4c6a1fbb_uniq UNIQUE (product_id, name);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: userpanel_orderticket userpanel_orderticket_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticket
    ADD CONSTRAINT userpanel_orderticket_pkey PRIMARY KEY (id);


--
-- Name: userpanel_orderticketmessage userpanel_orderticketmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticketmessage
    ADD CONSTRAINT userpanel_orderticketmessage_pkey PRIMARY KEY (id);


--
-- Name: users_producerprofile_categoty users_producerprofile_ca_producerprofile_id_categ_08b2d963_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile_categoty
    ADD CONSTRAINT users_producerprofile_ca_producerprofile_id_categ_08b2d963_uniq UNIQUE (producerprofile_id, category_id);


--
-- Name: users_producerprofile_categoty users_producerprofile_categoty_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile_categoty
    ADD CONSTRAINT users_producerprofile_categoty_pkey PRIMARY KEY (id);


--
-- Name: users_producerprofile users_producerprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile
    ADD CONSTRAINT users_producerprofile_pkey PRIMARY KEY (profile_ptr_id);


--
-- Name: users_profile users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- Name: users_profile users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- Name: users_tokentfa users_tokentfa_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_tokentfa
    ADD CONSTRAINT users_tokentfa_pkey PRIMARY KEY (id);


--
-- Name: users_twofactortoken users_twofactortoken_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_twofactortoken
    ADD CONSTRAINT users_twofactortoken_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_phone_number_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_phone_number_key UNIQUE (phone_number);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- Name: blog_comment_user_id_59a54155; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_comment_user_id_59a54155 ON public.blog_comment USING btree (user_id);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_categories_category_id_2211dae5; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_post_categories_category_id_2211dae5 ON public.blog_post_categories USING btree (category_id);


--
-- Name: blog_post_categories_post_id_c34e7be1; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_post_categories_post_id_c34e7be1 ON public.blog_post_categories USING btree (post_id);


--
-- Name: blog_post_slug_b95473f2; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: categories_category_slug_6fddebb1; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_category_slug_6fddebb1 ON public.categories_category USING btree (slug);


--
-- Name: categories_category_slug_6fddebb1_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_category_slug_6fddebb1_like ON public.categories_category USING btree (slug varchar_pattern_ops);


--
-- Name: categories_category_sub_category_of_id_72576107; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_category_sub_category_of_id_72576107 ON public.categories_category USING btree (sub_category_of_id);


--
-- Name: categories_categoryapplica_categoryapplication_id_9d6578f7; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryapplica_categoryapplication_id_9d6578f7 ON public.categories_categoryapplication_categories USING btree (categoryapplication_id);


--
-- Name: categories_categoryapplication_categories_category_id_7f99ca7a; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryapplication_categories_category_id_7f99ca7a ON public.categories_categoryapplication_categories USING btree (category_id);


--
-- Name: categories_categoryapplication_slug_220d8ee3; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryapplication_slug_220d8ee3 ON public.categories_categoryapplication USING btree (slug);


--
-- Name: categories_categoryapplication_slug_220d8ee3_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryapplication_slug_220d8ee3_like ON public.categories_categoryapplication USING btree (slug varchar_pattern_ops);


--
-- Name: categories_categorycomment_content_type_id_be6e583b; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorycomment_content_type_id_be6e583b ON public.categories_categorycomment USING btree (content_type_id);


--
-- Name: categories_categoryquestion_category_id_20aeda9e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryquestion_category_id_20aeda9e ON public.categories_categoryquestion USING btree (category_id);


--
-- Name: categories_categorysubcomment_content_type_id_cd150a88; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorysubcomment_content_type_id_cd150a88 ON public.categories_categorysubcomment USING btree (content_type_id);


--
-- Name: categories_categorytag_categories_category_id_bba8bd49; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorytag_categories_category_id_bba8bd49 ON public.categories_categorytag_categories USING btree (category_id);


--
-- Name: categories_categorytag_categories_categorytag_id_d2be2210; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorytag_categories_categorytag_id_d2be2210 ON public.categories_categorytag_categories USING btree (categorytag_id);


--
-- Name: categories_categorytag_slug_138440cf; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorytag_slug_138440cf ON public.categories_categorytag USING btree (slug);


--
-- Name: categories_categorytag_slug_138440cf_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categorytag_slug_138440cf_like ON public.categories_categorytag USING btree (slug varchar_pattern_ops);


--
-- Name: categories_categoryvariation_variation_id_e66ef9ae; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_categoryvariation_variation_id_e66ef9ae ON public.categories_categoryvariation USING btree (variation_id);


--
-- Name: categories_choicefield_questions_categoryquestion_id_ae0fc189; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_choicefield_questions_categoryquestion_id_ae0fc189 ON public.categories_choicefield_questions USING btree (categoryquestion_id);


--
-- Name: categories_choicefield_questions_choicefield_id_15b7088d; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_choicefield_questions_choicefield_id_15b7088d ON public.categories_choicefield_questions USING btree (choicefield_id);


--
-- Name: categories_maincategory_mother_category_id_e6f2f895; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_maincategory_mother_category_id_e6f2f895 ON public.categories_maincategory USING btree (mother_category_id);


--
-- Name: categories_maincategory_slug_ed0e12ff; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_maincategory_slug_ed0e12ff ON public.categories_maincategory USING btree (slug);


--
-- Name: categories_maincategory_slug_ed0e12ff_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_maincategory_slug_ed0e12ff_like ON public.categories_maincategory USING btree (slug varchar_pattern_ops);


--
-- Name: categories_mothercategory_slug_43ec02da; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_mothercategory_slug_43ec02da ON public.categories_mothercategory USING btree (slug);


--
-- Name: categories_mothercategory_slug_43ec02da_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_mothercategory_slug_43ec02da_like ON public.categories_mothercategory USING btree (slug varchar_pattern_ops);


--
-- Name: categories_variation_category_id_a6dc6e92; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX categories_variation_category_id_a6dc6e92 ON public.categories_variation USING btree (category_id);


--
-- Name: crm_address_content_type_id_cd0d43db; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_address_content_type_id_cd0d43db ON public.crm_address USING btree (content_type_id);


--
-- Name: crm_address_customer_id_ca5a61db; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_address_customer_id_ca5a61db ON public.crm_address USING btree (customer_id);


--
-- Name: crm_crmcomment_content_type_id_a64c789f; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_crmcomment_content_type_id_a64c789f ON public.crm_crmcomment USING btree (content_type_id);


--
-- Name: crm_crmdocument_content_type_id_24280759; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_crmdocument_content_type_id_24280759 ON public.crm_crmdocument USING btree (content_type_id);


--
-- Name: crm_deal_customer_id_c9a60a59; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_deal_customer_id_c9a60a59 ON public.crm_deal USING btree (customer_id);


--
-- Name: crm_deal_products_crmproduct_id_d1c91030; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_deal_products_crmproduct_id_d1c91030 ON public.crm_deal_products USING btree (crmproduct_id);


--
-- Name: crm_deal_products_deal_id_28fd8bfd; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_deal_products_deal_id_28fd8bfd ON public.crm_deal_products USING btree (deal_id);


--
-- Name: crm_notifications_content_type_id_d7eacd15; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_notifications_content_type_id_d7eacd15 ON public.crm_notifications USING btree (content_type_id);


--
-- Name: crm_task_content_type_id_0df759aa; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX crm_task_content_type_id_0df759aa ON public.crm_task USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: hitcount_blacklist_ip_ip_b1955e95_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_blacklist_ip_ip_b1955e95_like ON public.hitcount_blacklist_ip USING btree (ip varchar_pattern_ops);


--
-- Name: hitcount_blacklist_user_agent_user_agent_fbf2061c_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_blacklist_user_agent_user_agent_fbf2061c_like ON public.hitcount_blacklist_user_agent USING btree (user_agent varchar_pattern_ops);


--
-- Name: hitcount_hit_count_content_type_id_4a734fe1; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_count_content_type_id_4a734fe1 ON public.hitcount_hit_count USING btree (content_type_id);


--
-- Name: hitcount_hit_created_79adf7bc; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_created_79adf7bc ON public.hitcount_hit USING btree (created);


--
-- Name: hitcount_hit_hitcount_id_b7971910; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_hitcount_id_b7971910 ON public.hitcount_hit USING btree (hitcount_id);


--
-- Name: hitcount_hit_ip_a52a62aa; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_ip_a52a62aa ON public.hitcount_hit USING btree (ip);


--
-- Name: hitcount_hit_ip_a52a62aa_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_ip_a52a62aa_like ON public.hitcount_hit USING btree (ip varchar_pattern_ops);


--
-- Name: hitcount_hit_session_5be83758; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_session_5be83758 ON public.hitcount_hit USING btree (session);


--
-- Name: hitcount_hit_session_5be83758_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_session_5be83758_like ON public.hitcount_hit USING btree (session varchar_pattern_ops);


--
-- Name: hitcount_hit_user_id_f7067f66; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX hitcount_hit_user_id_f7067f66 ON public.hitcount_hit USING btree (user_id);


--
-- Name: merchandise_address_user_id_2c26b7e2; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_address_user_id_2c26b7e2 ON public.merchandise_address USING btree (user_id);


--
-- Name: merchandise_miniorder_product_id_8beaa3ee; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorder_product_id_8beaa3ee ON public.merchandise_miniorder USING btree (product_id);


--
-- Name: merchandise_miniorder_user_id_6a857e16; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorder_user_id_6a857e16 ON public.merchandise_miniorder USING btree (user_id);


--
-- Name: merchandise_miniorder_users_miniorder_id_16a0e581; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorder_users_miniorder_id_16a0e581 ON public.merchandise_miniorder_users USING btree (miniorder_id);


--
-- Name: merchandise_miniorder_users_user_id_e3a545e5; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorder_users_user_id_e3a545e5 ON public.merchandise_miniorder_users USING btree (user_id);


--
-- Name: merchandise_miniorderconfirmation_mini_order_id_8d019d7b; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorderconfirmation_mini_order_id_8d019d7b ON public.merchandise_miniorderconfirmation USING btree (mini_order_id);


--
-- Name: merchandise_miniorderconfirmation_user_id_09593932; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_miniorderconfirmation_user_id_09593932 ON public.merchandise_miniorderconfirmation USING btree (user_id);


--
-- Name: merchandise_order_billing_address_id_d8be1c1d; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_billing_address_id_d8be1c1d ON public.merchandise_order USING btree (billing_address_id);


--
-- Name: merchandise_order_coupon_id_cada80de; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_coupon_id_cada80de ON public.merchandise_order USING btree (coupon_id);


--
-- Name: merchandise_order_items_order_id_6c0860c8; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_items_order_id_6c0860c8 ON public.merchandise_order_items USING btree (order_id);


--
-- Name: merchandise_order_items_orderitem_id_4bd245ea; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_items_orderitem_id_4bd245ea ON public.merchandise_order_items USING btree (orderitem_id);


--
-- Name: merchandise_order_payment_id_925be8d7; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_payment_id_925be8d7 ON public.merchandise_order USING btree (payment_id);


--
-- Name: merchandise_order_producer_order_id_bca3755e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_producer_order_id_bca3755e ON public.merchandise_order_producer USING btree (order_id);


--
-- Name: merchandise_order_producer_producerprofile_id_b83cb66a; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_producer_producerprofile_id_b83cb66a ON public.merchandise_order_producer USING btree (producerprofile_id);


--
-- Name: merchandise_order_shipping_address_id_b99f4678; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_shipping_address_id_b99f4678 ON public.merchandise_order USING btree (shipping_address_id);


--
-- Name: merchandise_order_user_id_fa8c8878; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_order_user_id_fa8c8878 ON public.merchandise_order USING btree (user_id);


--
-- Name: merchandise_orderitem_item_id_0b1de3f9; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_orderitem_item_id_0b1de3f9 ON public.merchandise_orderitem USING btree (item_id);


--
-- Name: merchandise_orderitem_user_id_2b363bf7; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_orderitem_user_id_2b363bf7 ON public.merchandise_orderitem USING btree (user_id);


--
-- Name: merchandise_payment_user_id_f0559efd; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_payment_user_id_f0559efd ON public.merchandise_payment USING btree (user_id);


--
-- Name: merchandise_refund_order_id_b6047679; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX merchandise_refund_order_id_b6047679 ON public.merchandise_refund USING btree (order_id);


--
-- Name: products_label_slug_34f818d1; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_label_slug_34f818d1 ON public.products_label USING btree (slug);


--
-- Name: products_label_slug_34f818d1_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_label_slug_34f818d1_like ON public.products_label USING btree (slug varchar_pattern_ops);


--
-- Name: products_metadetail_user_id_3fcd6871; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_metadetail_user_id_3fcd6871 ON public.products_metadetail USING btree (user_id);


--
-- Name: products_product_category_category_id_6bd7b606; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_category_category_id_6bd7b606 ON public.products_product_category USING btree (category_id);


--
-- Name: products_product_category_product_id_08fb2842; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_category_product_id_08fb2842 ON public.products_product_category USING btree (product_id);


--
-- Name: products_product_label_try_label_id_d0f0be05; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_label_try_label_id_d0f0be05 ON public.products_product_label_try USING btree (label_id);


--
-- Name: products_product_label_try_product_id_c10885be; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_label_try_product_id_c10885be ON public.products_product_label_try USING btree (product_id);


--
-- Name: products_product_producer_id_be45bf24; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_producer_id_be45bf24 ON public.products_product USING btree (producer_id);


--
-- Name: products_product_producers_product_id_121f5fb3; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_producers_product_id_121f5fb3 ON public.products_product_producers USING btree (product_id);


--
-- Name: products_product_producers_user_id_825bd22b; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_producers_user_id_825bd22b ON public.products_product_producers USING btree (user_id);


--
-- Name: products_product_slug_70d3148d; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_slug_70d3148d ON public.products_product USING btree (slug);


--
-- Name: products_product_slug_70d3148d_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_product_slug_70d3148d_like ON public.products_product USING btree (slug varchar_pattern_ops);


--
-- Name: products_productcomment_content_type_id_44e459d8; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productcomment_content_type_id_44e459d8 ON public.products_productcomment USING btree (content_type_id);


--
-- Name: products_productcomment_parent_id_876d3ab7; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productcomment_parent_id_876d3ab7 ON public.products_productcomment USING btree (parent_id);


--
-- Name: products_productcomment_user_id_29c59a46; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productcomment_user_id_29c59a46 ON public.products_productcomment USING btree (user_id);


--
-- Name: products_productdetail_products_product_id_3ace9c6f; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productdetail_products_product_id_3ace9c6f ON public.products_productdetail_products USING btree (product_id);


--
-- Name: products_productdetail_products_productdetail_id_b6664917; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productdetail_products_productdetail_id_b6664917 ON public.products_productdetail_products USING btree (productdetail_id);


--
-- Name: products_productdetail_variation_id_8bc44520; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productdetail_variation_id_8bc44520 ON public.products_productdetail USING btree (variation_id);


--
-- Name: products_productproducerph_productproducerphone_id_e24568ff; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productproducerph_productproducerphone_id_e24568ff ON public.products_productproducerphone_products USING btree (productproducerphone_id);


--
-- Name: products_productproducerphone_products_product_id_7c0cba4c; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productproducerphone_products_product_id_7c0cba4c ON public.products_productproducerphone_products USING btree (product_id);


--
-- Name: products_productproducerphone_user_id_01bdc98c; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productproducerphone_user_id_01bdc98c ON public.products_productproducerphone USING btree (user_id);


--
-- Name: products_productsubcomment_content_type_id_be26cf87; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productsubcomment_content_type_id_be26cf87 ON public.products_productsubcomment USING btree (content_type_id);


--
-- Name: products_productsubcomment_user_id_5376ebbf; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productsubcomment_user_id_5376ebbf ON public.products_productsubcomment USING btree (user_id);


--
-- Name: products_productvariation_variation_id_3abec4ae; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_productvariation_variation_id_3abec4ae ON public.products_productvariation USING btree (variation_id);


--
-- Name: products_rating_content_type_id_9026441f; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_rating_content_type_id_9026441f ON public.products_rating USING btree (content_type_id);


--
-- Name: products_rating_user_id_f9283a7e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_rating_user_id_f9283a7e ON public.products_rating USING btree (user_id);


--
-- Name: products_rating_user_id_object_id_3584ee2d_idx; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_rating_user_id_object_id_3584ee2d_idx ON public.products_rating USING btree (user_id, object_id);


--
-- Name: products_sliderimage_content_type_id_e2733e46; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_sliderimage_content_type_id_e2733e46 ON public.products_sliderimage USING btree (content_type_id);


--
-- Name: products_variation_product_id_58e457dc; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX products_variation_product_id_58e457dc ON public.products_variation USING btree (product_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: userpanel_orderticket_mini_order_id_0316da58; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX userpanel_orderticket_mini_order_id_0316da58 ON public.userpanel_orderticket USING btree (mini_order_id);


--
-- Name: userpanel_orderticket_user_id_24876d67; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX userpanel_orderticket_user_id_24876d67 ON public.userpanel_orderticket USING btree (user_id);


--
-- Name: userpanel_orderticketmessage_content_type_id_fc6fbee4; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX userpanel_orderticketmessage_content_type_id_fc6fbee4 ON public.userpanel_orderticketmessage USING btree (content_type_id);


--
-- Name: userpanel_orderticketmessage_user_id_84682161; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX userpanel_orderticketmessage_user_id_84682161 ON public.userpanel_orderticketmessage USING btree (user_id);


--
-- Name: users_producerprofile_categoty_category_id_4b393d42; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_producerprofile_categoty_category_id_4b393d42 ON public.users_producerprofile_categoty USING btree (category_id);


--
-- Name: users_producerprofile_categoty_producerprofile_id_62622dda; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_producerprofile_categoty_producerprofile_id_62622dda ON public.users_producerprofile_categoty USING btree (producerprofile_id);


--
-- Name: users_tokentfa_user_id_bf4acbc5; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_tokentfa_user_id_bf4acbc5 ON public.users_tokentfa USING btree (user_id);


--
-- Name: users_twofactortoken_user_id_95cd7ae3; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_twofactortoken_user_id_95cd7ae3 ON public.users_twofactortoken USING btree (user_id);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_phone_number_aff54ffd_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_phone_number_aff54ffd_like ON public.users_user USING btree (phone_number varchar_pattern_ops);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: jeremih
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_user_id_59a54155_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_user_id_59a54155_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_users_user_id FOREIGN KEY (author_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_categories blog_post_categories_category_id_2211dae5_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_category_id_2211dae5_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_categories blog_post_categories_post_id_c34e7be1_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.blog_post_categories
    ADD CONSTRAINT blog_post_categories_post_id_c34e7be1_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_category categories_category_sub_category_of_id_72576107_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_sub_category_of_id_72576107_fk_categorie FOREIGN KEY (sub_category_of_id) REFERENCES public.categories_maincategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryapplication_categories categories_categorya_category_id_7f99ca7a_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication_categories
    ADD CONSTRAINT categories_categorya_category_id_7f99ca7a_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryapplication_categories categories_categorya_categoryapplication__9d6578f7_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryapplication_categories
    ADD CONSTRAINT categories_categorya_categoryapplication__9d6578f7_fk_categorie FOREIGN KEY (categoryapplication_id) REFERENCES public.categories_categoryapplication(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categorycomment categories_categoryc_content_type_id_be6e583b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorycomment
    ADD CONSTRAINT categories_categoryc_content_type_id_be6e583b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryquestion categories_categoryq_category_id_20aeda9e_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryquestion
    ADD CONSTRAINT categories_categoryq_category_id_20aeda9e_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categorysubcomment categories_categorys_content_type_id_cd150a88_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorysubcomment
    ADD CONSTRAINT categories_categorys_content_type_id_cd150a88_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categorytag_categories categories_categoryt_category_id_bba8bd49_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag_categories
    ADD CONSTRAINT categories_categoryt_category_id_bba8bd49_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categorytag_categories categories_categoryt_categorytag_id_d2be2210_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categorytag_categories
    ADD CONSTRAINT categories_categoryt_categorytag_id_d2be2210_fk_categorie FOREIGN KEY (categorytag_id) REFERENCES public.categories_categorytag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryvariation categories_categoryv_variation_id_e66ef9ae_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_categoryvariation
    ADD CONSTRAINT categories_categoryv_variation_id_e66ef9ae_fk_categorie FOREIGN KEY (variation_id) REFERENCES public.categories_variation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_choicefield_questions categories_choicefie_categoryquestion_id_ae0fc189_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield_questions
    ADD CONSTRAINT categories_choicefie_categoryquestion_id_ae0fc189_fk_categorie FOREIGN KEY (categoryquestion_id) REFERENCES public.categories_categoryquestion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_choicefield_questions categories_choicefie_choicefield_id_15b7088d_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_choicefield_questions
    ADD CONSTRAINT categories_choicefie_choicefield_id_15b7088d_fk_categorie FOREIGN KEY (choicefield_id) REFERENCES public.categories_choicefield(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_maincategory categories_maincateg_mother_category_id_e6f2f895_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_maincategory
    ADD CONSTRAINT categories_maincateg_mother_category_id_e6f2f895_fk_categorie FOREIGN KEY (mother_category_id) REFERENCES public.categories_mothercategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_variation categories_variation_category_id_a6dc6e92_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.categories_variation
    ADD CONSTRAINT categories_variation_category_id_a6dc6e92_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_address crm_address_content_type_id_cd0d43db_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_address
    ADD CONSTRAINT crm_address_content_type_id_cd0d43db_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_address crm_address_customer_id_ca5a61db_fk_crm_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_address
    ADD CONSTRAINT crm_address_customer_id_ca5a61db_fk_crm_customer_id FOREIGN KEY (customer_id) REFERENCES public.crm_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_crmcomment crm_crmcomment_content_type_id_a64c789f_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmcomment
    ADD CONSTRAINT crm_crmcomment_content_type_id_a64c789f_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_crmdocument crm_crmdocument_content_type_id_24280759_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_crmdocument
    ADD CONSTRAINT crm_crmdocument_content_type_id_24280759_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_deal crm_deal_customer_id_c9a60a59_fk_crm_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal
    ADD CONSTRAINT crm_deal_customer_id_c9a60a59_fk_crm_customer_id FOREIGN KEY (customer_id) REFERENCES public.crm_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_deal_products crm_deal_products_crmproduct_id_d1c91030_fk_crm_crmproduct_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal_products
    ADD CONSTRAINT crm_deal_products_crmproduct_id_d1c91030_fk_crm_crmproduct_id FOREIGN KEY (crmproduct_id) REFERENCES public.crm_crmproduct(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_deal_products crm_deal_products_deal_id_28fd8bfd_fk_crm_deal_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_deal_products
    ADD CONSTRAINT crm_deal_products_deal_id_28fd8bfd_fk_crm_deal_id FOREIGN KEY (deal_id) REFERENCES public.crm_deal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_notifications crm_notifications_content_type_id_d7eacd15_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_notifications
    ADD CONSTRAINT crm_notifications_content_type_id_d7eacd15_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crm_task crm_task_content_type_id_0df759aa_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.crm_task
    ADD CONSTRAINT crm_task_content_type_id_0df759aa_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit_count hitcount_hit_count_content_type_id_4a734fe1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_4a734fe1_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id FOREIGN KEY (hitcount_id) REFERENCES public.hitcount_hit_count(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hitcount_hit hitcount_hit_user_id_f7067f66_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_user_id_f7067f66_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_address merchandise_address_user_id_2c26b7e2_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_address
    ADD CONSTRAINT merchandise_address_user_id_2c26b7e2_fk_users_profile_id FOREIGN KEY (user_id) REFERENCES public.users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorderconfirmation merchandise_miniorde_mini_order_id_8d019d7b_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorderconfirmation
    ADD CONSTRAINT merchandise_miniorde_mini_order_id_8d019d7b_fk_merchandi FOREIGN KEY (mini_order_id) REFERENCES public.merchandise_miniorder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorder_users merchandise_miniorde_miniorder_id_16a0e581_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder_users
    ADD CONSTRAINT merchandise_miniorde_miniorder_id_16a0e581_fk_merchandi FOREIGN KEY (miniorder_id) REFERENCES public.merchandise_miniorder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorder merchandise_miniorde_product_id_8beaa3ee_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder
    ADD CONSTRAINT merchandise_miniorde_product_id_8beaa3ee_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorderconfirmation merchandise_miniorde_user_id_09593932_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorderconfirmation
    ADD CONSTRAINT merchandise_miniorde_user_id_09593932_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorder merchandise_miniorder_user_id_6a857e16_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder
    ADD CONSTRAINT merchandise_miniorder_user_id_6a857e16_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_miniorder_users merchandise_miniorder_users_user_id_e3a545e5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_miniorder_users
    ADD CONSTRAINT merchandise_miniorder_users_user_id_e3a545e5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order merchandise_order_billing_address_id_d8be1c1d_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_billing_address_id_d8be1c1d_fk_merchandi FOREIGN KEY (billing_address_id) REFERENCES public.merchandise_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order merchandise_order_coupon_id_cada80de_fk_merchandise_coupon_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_coupon_id_cada80de_fk_merchandise_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.merchandise_coupon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order_items merchandise_order_it_order_id_6c0860c8_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_items
    ADD CONSTRAINT merchandise_order_it_order_id_6c0860c8_fk_merchandi FOREIGN KEY (order_id) REFERENCES public.merchandise_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order_items merchandise_order_it_orderitem_id_4bd245ea_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_items
    ADD CONSTRAINT merchandise_order_it_orderitem_id_4bd245ea_fk_merchandi FOREIGN KEY (orderitem_id) REFERENCES public.merchandise_orderitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order merchandise_order_payment_id_925be8d7_fk_merchandise_payment_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_payment_id_925be8d7_fk_merchandise_payment_id FOREIGN KEY (payment_id) REFERENCES public.merchandise_payment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order_producer merchandise_order_pr_order_id_bca3755e_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_producer
    ADD CONSTRAINT merchandise_order_pr_order_id_bca3755e_fk_merchandi FOREIGN KEY (order_id) REFERENCES public.merchandise_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order_producer merchandise_order_pr_producerprofile_id_b83cb66a_fk_users_pro; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order_producer
    ADD CONSTRAINT merchandise_order_pr_producerprofile_id_b83cb66a_fk_users_pro FOREIGN KEY (producerprofile_id) REFERENCES public.users_producerprofile(profile_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order merchandise_order_shipping_address_id_b99f4678_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_shipping_address_id_b99f4678_fk_merchandi FOREIGN KEY (shipping_address_id) REFERENCES public.merchandise_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_order merchandise_order_user_id_fa8c8878_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_order
    ADD CONSTRAINT merchandise_order_user_id_fa8c8878_fk_users_profile_id FOREIGN KEY (user_id) REFERENCES public.users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_orderitem merchandise_orderitem_item_id_0b1de3f9_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_orderitem
    ADD CONSTRAINT merchandise_orderitem_item_id_0b1de3f9_fk_products_product_id FOREIGN KEY (item_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_orderitem merchandise_orderitem_user_id_2b363bf7_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_orderitem
    ADD CONSTRAINT merchandise_orderitem_user_id_2b363bf7_fk_users_profile_id FOREIGN KEY (user_id) REFERENCES public.users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_payment merchandise_payment_user_id_f0559efd_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_payment
    ADD CONSTRAINT merchandise_payment_user_id_f0559efd_fk_users_profile_id FOREIGN KEY (user_id) REFERENCES public.users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: merchandise_refund merchandise_refund_order_id_b6047679_fk_merchandise_order_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.merchandise_refund
    ADD CONSTRAINT merchandise_refund_order_id_b6047679_fk_merchandise_order_id FOREIGN KEY (order_id) REFERENCES public.merchandise_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_metadetail products_metadetail_product_id_792f5ee0_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_metadetail
    ADD CONSTRAINT products_metadetail_product_id_792f5ee0_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_metadetail products_metadetail_user_id_3fcd6871_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_metadetail
    ADD CONSTRAINT products_metadetail_user_id_3fcd6871_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_category products_product_cat_category_id_6bd7b606_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_category
    ADD CONSTRAINT products_product_cat_category_id_6bd7b606_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_category products_product_cat_product_id_08fb2842_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_category
    ADD CONSTRAINT products_product_cat_product_id_08fb2842_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_label_try products_product_lab_label_id_d0f0be05_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_label_try
    ADD CONSTRAINT products_product_lab_label_id_d0f0be05_fk_products_ FOREIGN KEY (label_id) REFERENCES public.products_label(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_label_try products_product_lab_product_id_c10885be_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_label_try
    ADD CONSTRAINT products_product_lab_product_id_c10885be_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_producers products_product_pro_product_id_121f5fb3_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_producers
    ADD CONSTRAINT products_product_pro_product_id_121f5fb3_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_producer_id_be45bf24_fk_users_pro; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_producer_id_be45bf24_fk_users_pro FOREIGN KEY (producer_id) REFERENCES public.users_producerprofile(profile_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product_producers products_product_producers_user_id_825bd22b_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_product_producers
    ADD CONSTRAINT products_product_producers_user_id_825bd22b_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productcomment products_productcomm_content_type_id_44e459d8_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productcomment
    ADD CONSTRAINT products_productcomm_content_type_id_44e459d8_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productcomment products_productcomm_parent_id_876d3ab7_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productcomment
    ADD CONSTRAINT products_productcomm_parent_id_876d3ab7_fk_products_ FOREIGN KEY (parent_id) REFERENCES public.products_productcomment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productcomment products_productcomment_user_id_29c59a46_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productcomment
    ADD CONSTRAINT products_productcomment_user_id_29c59a46_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productdetail_products products_productdeta_product_id_3ace9c6f_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail_products
    ADD CONSTRAINT products_productdeta_product_id_3ace9c6f_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productdetail_products products_productdeta_productdetail_id_b6664917_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail_products
    ADD CONSTRAINT products_productdeta_productdetail_id_b6664917_fk_products_ FOREIGN KEY (productdetail_id) REFERENCES public.products_productdetail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productdetail products_productdeta_variation_id_8bc44520_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productdetail
    ADD CONSTRAINT products_productdeta_variation_id_8bc44520_fk_categorie FOREIGN KEY (variation_id) REFERENCES public.categories_variation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productproducerphone_products products_productprod_product_id_7c0cba4c_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone_products
    ADD CONSTRAINT products_productprod_product_id_7c0cba4c_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productproducerphone_products products_productprod_productproducerphone_e24568ff_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone_products
    ADD CONSTRAINT products_productprod_productproducerphone_e24568ff_fk_products_ FOREIGN KEY (productproducerphone_id) REFERENCES public.products_productproducerphone(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productproducerphone products_productproducerphone_user_id_01bdc98c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productproducerphone
    ADD CONSTRAINT products_productproducerphone_user_id_01bdc98c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productsubcomment products_productsubc_content_type_id_be26cf87_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productsubcomment
    ADD CONSTRAINT products_productsubc_content_type_id_be26cf87_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productsubcomment products_productsubcomment_user_id_5376ebbf_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productsubcomment
    ADD CONSTRAINT products_productsubcomment_user_id_5376ebbf_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_productvariation products_productvari_variation_id_3abec4ae_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_productvariation
    ADD CONSTRAINT products_productvari_variation_id_3abec4ae_fk_products_ FOREIGN KEY (variation_id) REFERENCES public.products_variation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_rating products_rating_content_type_id_9026441f_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_rating
    ADD CONSTRAINT products_rating_content_type_id_9026441f_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_rating products_rating_user_id_f9283a7e_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_rating
    ADD CONSTRAINT products_rating_user_id_f9283a7e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_sliderimage products_sliderimage_content_type_id_e2733e46_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_sliderimage
    ADD CONSTRAINT products_sliderimage_content_type_id_e2733e46_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_variation products_variation_product_id_58e457dc_fk_products_product_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.products_variation
    ADD CONSTRAINT products_variation_product_id_58e457dc_fk_products_product_id FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userpanel_orderticketmessage userpanel_orderticke_content_type_id_fc6fbee4_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticketmessage
    ADD CONSTRAINT userpanel_orderticke_content_type_id_fc6fbee4_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userpanel_orderticket userpanel_orderticke_mini_order_id_0316da58_fk_merchandi; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticket
    ADD CONSTRAINT userpanel_orderticke_mini_order_id_0316da58_fk_merchandi FOREIGN KEY (mini_order_id) REFERENCES public.merchandise_miniorder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userpanel_orderticket userpanel_orderticket_user_id_24876d67_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticket
    ADD CONSTRAINT userpanel_orderticket_user_id_24876d67_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userpanel_orderticketmessage userpanel_orderticketmessage_user_id_84682161_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.userpanel_orderticketmessage
    ADD CONSTRAINT userpanel_orderticketmessage_user_id_84682161_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_producerprofile_categoty users_producerprofil_category_id_4b393d42_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile_categoty
    ADD CONSTRAINT users_producerprofil_category_id_4b393d42_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_producerprofile_categoty users_producerprofil_producerprofile_id_62622dda_fk_users_pro; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile_categoty
    ADD CONSTRAINT users_producerprofil_producerprofile_id_62622dda_fk_users_pro FOREIGN KEY (producerprofile_id) REFERENCES public.users_producerprofile(profile_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_producerprofile users_producerprofil_profile_ptr_id_5a5586af_fk_users_pro; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_producerprofile
    ADD CONSTRAINT users_producerprofil_profile_ptr_id_5a5586af_fk_users_pro FOREIGN KEY (profile_ptr_id) REFERENCES public.users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile users_profile_user_id_2112e78d_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_tokentfa users_tokentfa_user_id_bf4acbc5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_tokentfa
    ADD CONSTRAINT users_tokentfa_user_id_bf4acbc5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_twofactortoken users_twofactortoken_user_id_95cd7ae3_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_twofactortoken
    ADD CONSTRAINT users_twofactortoken_user_id_95cd7ae3_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jeremih
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

