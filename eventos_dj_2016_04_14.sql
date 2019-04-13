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
-- Name: account_bitacora; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_bitacora (
    id integer NOT NULL,
    fecha_hora timestamp with time zone NOT NULL,
    ip character varying(100) NOT NULL,
    evento character varying(100) NOT NULL,
    dato_viejo text NOT NULL,
    dato_nuevo text NOT NULL,
    tabla character varying(100) NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.account_bitacora OWNER TO myuser;

--
-- Name: account_bitacora_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_bitacora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_bitacora_id_seq OWNER TO myuser;

--
-- Name: account_bitacora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_bitacora_id_seq OWNED BY account_bitacora.id;


--
-- Name: account_funcion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_funcion (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.account_funcion OWNER TO myuser;

--
-- Name: account_funcion_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_funcion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_funcion_id_seq OWNER TO myuser;

--
-- Name: account_funcion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_funcion_id_seq OWNED BY account_funcion.id;


--
-- Name: account_funcion_ui; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_funcion_ui (
    id integer NOT NULL,
    funcion_id integer NOT NULL,
    interfazusuario_id integer NOT NULL
);


ALTER TABLE public.account_funcion_ui OWNER TO myuser;

--
-- Name: account_funcion_ui_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_funcion_ui_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_funcion_ui_id_seq OWNER TO myuser;

--
-- Name: account_funcion_ui_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_funcion_ui_id_seq OWNED BY account_funcion_ui.id;


--
-- Name: account_funcionui; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_funcionui (
    id integer NOT NULL,
    funcion_id integer NOT NULL,
    ui_id integer NOT NULL
);


ALTER TABLE public.account_funcionui OWNER TO myuser;

--
-- Name: account_funcionui_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_funcionui_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_funcionui_id_seq OWNER TO myuser;

--
-- Name: account_funcionui_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_funcionui_id_seq OWNED BY account_funcionui.id;


--
-- Name: account_interfazusuario; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_interfazusuario (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.account_interfazusuario OWNER TO myuser;

--
-- Name: account_interfazusuario_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_interfazusuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_interfazusuario_id_seq OWNER TO myuser;

--
-- Name: account_interfazusuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_interfazusuario_id_seq OWNED BY account_interfazusuario.id;


--
-- Name: account_relacion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_relacion (
    id integer NOT NULL
);


ALTER TABLE public.account_relacion OWNER TO myuser;

--
-- Name: account_relacion_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_relacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_relacion_id_seq OWNER TO myuser;

--
-- Name: account_relacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_relacion_id_seq OWNED BY account_relacion.id;


--
-- Name: account_relacion_t1; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_relacion_t1 (
    id integer NOT NULL,
    relacion_id integer NOT NULL,
    tabla1_id integer NOT NULL
);


ALTER TABLE public.account_relacion_t1 OWNER TO myuser;

--
-- Name: account_relacion_t1_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_relacion_t1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_relacion_t1_id_seq OWNER TO myuser;

--
-- Name: account_relacion_t1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_relacion_t1_id_seq OWNED BY account_relacion_t1.id;


--
-- Name: account_relacion_t2; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_relacion_t2 (
    id integer NOT NULL,
    relacion_id integer NOT NULL,
    tabla2_id integer NOT NULL
);


ALTER TABLE public.account_relacion_t2 OWNER TO myuser;

--
-- Name: account_relacion_t2_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_relacion_t2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_relacion_t2_id_seq OWNER TO myuser;

--
-- Name: account_relacion_t2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_relacion_t2_id_seq OWNED BY account_relacion_t2.id;


--
-- Name: account_rol; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_rol (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.account_rol OWNER TO myuser;

--
-- Name: account_rol_funciones; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_rol_funciones (
    id integer NOT NULL,
    rol_id integer NOT NULL,
    funcion_id integer NOT NULL
);


ALTER TABLE public.account_rol_funciones OWNER TO myuser;

--
-- Name: account_rol_funciones_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_rol_funciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_rol_funciones_id_seq OWNER TO myuser;

--
-- Name: account_rol_funciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_rol_funciones_id_seq OWNED BY account_rol_funciones.id;


--
-- Name: account_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_rol_id_seq OWNER TO myuser;

--
-- Name: account_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_rol_id_seq OWNED BY account_rol.id;


--
-- Name: account_rolfuncion; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_rolfuncion (
    id integer NOT NULL,
    funcion_id integer NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.account_rolfuncion OWNER TO myuser;

--
-- Name: account_rolfuncion_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_rolfuncion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_rolfuncion_id_seq OWNER TO myuser;

--
-- Name: account_rolfuncion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_rolfuncion_id_seq OWNED BY account_rolfuncion.id;


--
-- Name: account_tabla1; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_tabla1 (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.account_tabla1 OWNER TO myuser;

--
-- Name: account_tabla1_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_tabla1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_tabla1_id_seq OWNER TO myuser;

--
-- Name: account_tabla1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_tabla1_id_seq OWNED BY account_tabla1.id;


--
-- Name: account_tabla2; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_tabla2 (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.account_tabla2 OWNER TO myuser;

--
-- Name: account_tabla2_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_tabla2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_tabla2_id_seq OWNER TO myuser;

--
-- Name: account_tabla2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_tabla2_id_seq OWNED BY account_tabla2.id;


--
-- Name: account_usuario; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_usuario (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    telefono integer NOT NULL,
    create_at timestamp with time zone NOT NULL,
    email character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    update_at timestamp with time zone NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.account_usuario OWNER TO myuser;

--
-- Name: account_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_usuario_id_seq OWNER TO myuser;

--
-- Name: account_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_usuario_id_seq OWNED BY account_usuario.id;


--
-- Name: account_usuario_roles; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_usuario_roles (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.account_usuario_roles OWNER TO myuser;

--
-- Name: account_usuario_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_usuario_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_usuario_roles_id_seq OWNER TO myuser;

--
-- Name: account_usuario_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_usuario_roles_id_seq OWNED BY account_usuario_roles.id;


--
-- Name: account_usuariorol; Type: TABLE; Schema: public; Owner: myuser; Tablespace: 
--

CREATE TABLE account_usuariorol (
    id integer NOT NULL,
    rol_id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.account_usuariorol OWNER TO myuser;

--
-- Name: account_usuariorol_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE account_usuariorol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_usuariorol_id_seq OWNER TO myuser;

--
-- Name: account_usuariorol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE account_usuariorol_id_seq OWNED BY account_usuariorol.id;


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

ALTER TABLE ONLY account_bitacora ALTER COLUMN id SET DEFAULT nextval('account_bitacora_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcion ALTER COLUMN id SET DEFAULT nextval('account_funcion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcion_ui ALTER COLUMN id SET DEFAULT nextval('account_funcion_ui_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcionui ALTER COLUMN id SET DEFAULT nextval('account_funcionui_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_interfazusuario ALTER COLUMN id SET DEFAULT nextval('account_interfazusuario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion ALTER COLUMN id SET DEFAULT nextval('account_relacion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t1 ALTER COLUMN id SET DEFAULT nextval('account_relacion_t1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t2 ALTER COLUMN id SET DEFAULT nextval('account_relacion_t2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rol ALTER COLUMN id SET DEFAULT nextval('account_rol_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rol_funciones ALTER COLUMN id SET DEFAULT nextval('account_rol_funciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rolfuncion ALTER COLUMN id SET DEFAULT nextval('account_rolfuncion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_tabla1 ALTER COLUMN id SET DEFAULT nextval('account_tabla1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_tabla2 ALTER COLUMN id SET DEFAULT nextval('account_tabla2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuario ALTER COLUMN id SET DEFAULT nextval('account_usuario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuario_roles ALTER COLUMN id SET DEFAULT nextval('account_usuario_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuariorol ALTER COLUMN id SET DEFAULT nextval('account_usuariorol_id_seq'::regclass);


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
-- Data for Name: account_bitacora; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_bitacora (id, fecha_hora, ip, evento, dato_viejo, dato_nuevo, tabla, usuario_id) FROM stdin;
1	2016-03-08 23:41:18.374468-04	localhost	update	<class 'event_manager.models.Cliente'>	<class 'event_manager.models.Cliente'>	ModelBase	1
2	2016-03-08 23:57:00.690354-04	localhost	update	Pinto Carlos - 12333	Carlos Pinto|12333	Cliente	1
3	2016-03-09 00:08:22.907959-04	localhost	update	poma juan - 554534	juan poma|554534	Cliente	1
4	2016-03-09 00:09:19.677042-04	localhost	update	appellido name - 123456	8|name|appellido|123456	Persona	1
5	2016-03-09 00:09:43.801646-04	localhost	update	7|juan|pomada|1234567	7|juan|pomada|1234567	Persona	1
6	2016-03-09 00:11:13.036322-04	127.0.1.1	update	1|Pedro|Zapataza|765432	1|Pedro|Zapataza|765432	Persona	1
7	2016-03-09 00:19:21.674251-04	127.0.1.1	update	8|namesa|appellido|123456	8|namesa|appellido|123456	Persona	1
8	2016-03-09 00:20:03.682787-04	127.0.1.1	update	7|juaninlla|pomada|1234567	7|juaninlla|pomada|1234567	Persona	1
9	2016-03-09 00:21:05.288216-04	127.0.1.1	update	2|Juan|Perez|765432	2|Juanillo|Perez|765432	Persona	1
10	2016-03-09 00:28:10.893334-04	127.0.1.1	create		12|Lupenaaaaa|lopez|343452345	Persona	1
11	2016-03-09 00:40:16.639914-04	127.0.1.1	create		Publico|Las Palmas|2016-03-09 04:40:11+00:00|2016-03-09 04:40:14+00:00	Evento	1
12	2016-03-09 00:41:24.362213-04	127.0.1.1	create		Beneficiencia|El Paraiso|2016-03-09 04:41:20+00:00|2016-03-09 04:41:22+00:00	Evento	1
13	2016-03-09 00:45:01.140685-04	127.0.1.1	update	Beneficiencia|El Paraiso|2016-03-09 04:41:20+00:00|2016-03-09 04:41:22+00:00	Privado|Salon Eventos Emperador|2016-03-09 04:41:20+00:00|2016-03-09 04:41:22+00:00	Evento	1
14	2016-03-09 00:59:17.65037-04	127.0.1.1	update	Privado|Salon Eventos Emperador|2016-03-09 04:41:20+00:00|2016-03-09 04:41:22+00:00	Beneficiencia|Salon Eventos Emperador|2016-03-09 04:41:20+00:00|2016-03-09 04:41:22+00:00	Evento	1
\.


--
-- Name: account_bitacora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_bitacora_id_seq', 14, true);


--
-- Data for Name: account_funcion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_funcion (id, nombre) FROM stdin;
1	registrar evento
2	Gestion de clientes
\.


--
-- Name: account_funcion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_funcion_id_seq', 2, true);


--
-- Data for Name: account_funcion_ui; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_funcion_ui (id, funcion_id, interfazusuario_id) FROM stdin;
1	1	2
2	1	4
3	2	3
4	2	5
5	2	6
\.


--
-- Name: account_funcion_ui_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_funcion_ui_id_seq', 5, true);


--
-- Data for Name: account_funcionui; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_funcionui (id, funcion_id, ui_id) FROM stdin;
\.


--
-- Name: account_funcionui_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_funcionui_id_seq', 1, false);


--
-- Data for Name: account_interfazusuario; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_interfazusuario (id, nombre) FROM stdin;
1	Formulario de registro
2	Formularion de consulta de eventos
3	Formulario de registro de cliente
4	Formulario de registro de evento
5	Lista de Clientes
6	Editor de datos de cliente
\.


--
-- Name: account_interfazusuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_interfazusuario_id_seq', 6, true);


--
-- Data for Name: account_relacion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_relacion (id) FROM stdin;
1
2
3
4
\.


--
-- Name: account_relacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_relacion_id_seq', 4, true);


--
-- Data for Name: account_relacion_t1; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_relacion_t1 (id, relacion_id, tabla1_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	3	2
5	3	3
6	4	1
7	4	2
8	4	3
9	1	3
10	1	2
\.


--
-- Name: account_relacion_t1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_relacion_t1_id_seq', 10, true);


--
-- Data for Name: account_relacion_t2; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_relacion_t2 (id, relacion_id, tabla2_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	4	3
\.


--
-- Name: account_relacion_t2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_relacion_t2_id_seq', 5, true);


--
-- Data for Name: account_rol; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_rol (id, nombre) FROM stdin;
1	administrador
\.


--
-- Data for Name: account_rol_funciones; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_rol_funciones (id, rol_id, funcion_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- Name: account_rol_funciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_rol_funciones_id_seq', 2, true);


--
-- Name: account_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_rol_id_seq', 1, true);


--
-- Data for Name: account_rolfuncion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_rolfuncion (id, funcion_id, rol_id) FROM stdin;
\.


--
-- Name: account_rolfuncion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_rolfuncion_id_seq', 1, false);


--
-- Data for Name: account_tabla1; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_tabla1 (id, name) FROM stdin;
1	Bote
2	Barco
3	Velero
\.


--
-- Name: account_tabla1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_tabla1_id_seq', 3, true);


--
-- Data for Name: account_tabla2; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_tabla2 (id, name) FROM stdin;
1	Juan
2	Pedro
3	Carlos
\.


--
-- Name: account_tabla2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_tabla2_id_seq', 3, true);


--
-- Data for Name: account_usuario; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_usuario (id, password, last_login, nombre, apellido, telefono, create_at, email, is_active, is_admin, update_at, username) FROM stdin;
1	fakepass	2016-03-08 23:06:51-04	Juan	Padilla	412345	2016-03-09 00:55:40.413175-04	juan@mail.com	t	t	2016-03-08 23:07:16.561157-04	juan@mail.com
2	fakepass	2016-03-08 23:12:52-04	Pedro	Perez	4567832	2016-03-09 00:55:46.519547-04	pedro@mail.com	t	t	2016-03-08 23:13:18.763556-04	pedro@mail.co
9	pbkdf2_sha256$24000$BTuXCVPmYcgu$1voq+s/PJVLxKqUGKHswGuffhgKmmS4oxYKK7DXLKTo=	2016-03-14 06:56:09.432025-04	Manolo	lopez	7654321	2016-03-09 00:58:44.903443-04	manolo@mail.com	t	t	2016-03-09 00:57:55.690805-04	manolo@mail.com
7	pbkdf2_sha256$24000$jP5ZjMM3u3qV$tMdn3uN8imCoG5x7lNwWiUOJwaqO2woIUUg2uHJCjoA=	2016-03-09 00:58:26.129529-04	Diego	Zambrana	123456	2016-03-14 07:33:10.785453-04	diego@mail.com	t	t	2016-03-08 23:22:48.487628-04	diego@mail.com
\.


--
-- Name: account_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_usuario_id_seq', 9, true);


--
-- Data for Name: account_usuario_roles; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_usuario_roles (id, usuario_id, rol_id) FROM stdin;
1	7	1
\.


--
-- Name: account_usuario_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_usuario_roles_id_seq', 1, true);


--
-- Data for Name: account_usuariorol; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY account_usuariorol (id, rol_id, usuario_id) FROM stdin;
\.


--
-- Name: account_usuariorol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('account_usuariorol_id_seq', 1, false);


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
70	Can add bitacora	24	add_bitacora
71	Can change bitacora	24	change_bitacora
72	Can delete bitacora	24	delete_bitacora
73	Can add funcion	25	add_funcion
74	Can change funcion	25	change_funcion
75	Can delete funcion	25	delete_funcion
76	Can add rol	26	add_rol
77	Can change rol	26	change_rol
78	Can delete rol	26	delete_rol
79	Can add usuario	27	add_usuario
80	Can change usuario	27	change_usuario
81	Can delete usuario	27	delete_usuario
82	Can add interfaz usuario	28	add_interfazusuario
83	Can change interfaz usuario	28	change_interfazusuario
84	Can delete interfaz usuario	28	delete_interfazusuario
85	Can add usuario rol	29	add_usuariorol
86	Can change usuario rol	29	change_usuariorol
87	Can delete usuario rol	29	delete_usuariorol
88	Can add rol funcion	30	add_rolfuncion
89	Can change rol funcion	30	change_rolfuncion
90	Can delete rol funcion	30	delete_rolfuncion
91	Can add funcion ui	31	add_funcionui
92	Can change funcion ui	31	change_funcionui
93	Can delete funcion ui	31	delete_funcionui
94	Can add tabla1	32	add_tabla1
95	Can change tabla1	32	change_tabla1
96	Can delete tabla1	32	delete_tabla1
97	Can add tabla2	33	add_tabla2
98	Can change tabla2	33	change_tabla2
99	Can delete tabla2	33	delete_tabla2
100	Can add relacion	34	add_relacion
101	Can change relacion	34	change_relacion
102	Can delete relacion	34	delete_relacion
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('auth_permission_id_seq', 102, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$24000$UwEo2Os9pIKG$Hl8j+BfKgpgwe1KS2hI+eYi8CAbIbRtIPOPpverLC9M=	\N	f	juan				f	t	2016-03-08 22:49:43.6938-04
1	pbkdf2_sha256$24000$MtBEsBN8IbTs$g2lqdAFVgRS2xxmi25IuWC3BQ9n7cLd9ZCUUH6psCNw=	2016-03-08 23:11:52.990218-04	t	admin			admin@mail.com	t	t	2016-03-06 21:21:04.785856-04
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

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


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
1	2016-03-08 23:40:40.918064-04	8	pp nn - 12333332	1	Añadido.	14	7
2	2016-03-08 23:41:18.39655-04	7	poma juan - 55453452	1	Añadido.	14	7
3	2016-03-08 23:54:54.874205-04	5	Aguilar Pepillo - 134444	1	Añadido.	14	7
4	2016-03-08 23:56:25.391346-04	4	Aguilar Pepe - 111111	1	Añadido.	14	7
5	2016-03-08 23:57:00.692573-04	3	Pinto Carlos - 12333	1	Añadido.	14	7
6	2016-03-09 00:08:22.909933-04	7	poma juan - 554534	2	Modificado/a nit.	14	7
7	2016-03-09 00:09:19.678598-04	8	appellido name - 123456	2	Modificado/a nombre y apellido.	13	7
8	2016-03-09 00:09:43.803882-04	7	pomada juan - 1234567	2	Modificado/a apellido.	13	7
9	2016-03-09 00:11:13.038247-04	1	Zapataza Pedro - 765432	2	Modificado/a apellido.	13	7
10	2016-03-09 00:19:21.676249-04	8	appellido namesa - 123456	2	Modificado/a nombre.	13	7
11	2016-03-09 00:20:03.684418-04	7	pomada juaninlla - 1234567	2	Modificado/a nombre.	13	7
12	2016-03-09 00:21:05.29083-04	2	Perez Juanillo - 765432	2	Modificado/a nombre.	13	7
13	2016-03-09 00:28:10.894848-04	12	lopez Lupenaaaaa - 343452345	1	Añadido.	13	7
14	2016-03-09 00:40:16.641675-04	6	Publico - Las Palmas - 2016-03-09 04:40:11+00:00	1	Añadido.	10	7
15	2016-03-09 00:41:24.363574-04	7	Beneficiencia - El Paraiso - 2016-03-09 04:41:20+00:00	1	Añadido.	10	7
16	2016-03-09 00:45:01.143542-04	7	Privado - Salon Eventos Emperador - 2016-03-09 04:41:20+00:00	2	Modificado/a tipo_evento y lugar.	10	7
17	2016-03-09 00:46:02.682932-04	7	Diego Zambrana - 123456	2	Modificado/a nombre y apellido.	27	7
18	2016-03-09 00:55:40.416739-04	1	Juan Padilla - 412345	2	Modificado/a username.	27	7
19	2016-03-09 00:55:46.521873-04	2	Pedro Perez - 4567832	2	Modificado/a username.	27	7
20	2016-03-09 00:57:55.692771-04	9	Manolo lopez - 7654321	1	Añadido.	27	7
21	2016-03-09 00:58:44.905765-04	9	Manolo lopez - 7654321	2	Modificado/a is_admin.	27	7
22	2016-03-09 00:59:17.653327-04	7	Beneficiencia - Salon Eventos Emperador - 2016-03-09 04:41:20+00:00	2	Modificado/a tipo_evento.	10	9
23	2016-03-14 07:06:57.530734-04	1	Bote	1	Añadido.	32	9
24	2016-03-14 07:07:01.639876-04	2	Barco	1	Añadido.	32	9
25	2016-03-14 07:07:05.670861-04	3	Velero	1	Añadido.	32	9
26	2016-03-14 07:07:31.948883-04	1	Juan	1	Añadido.	33	9
27	2016-03-14 07:07:36.550369-04	2	Pedro	1	Añadido.	33	9
28	2016-03-14 07:07:42.530794-04	3	Carlos	1	Añadido.	33	9
29	2016-03-14 07:08:09.34888-04	1	None - None	1	Añadido.	34	9
30	2016-03-14 07:08:14.982478-04	2	None - None	1	Añadido.	34	9
31	2016-03-14 07:08:34.159645-04	3	None - None	1	Añadido.	34	9
32	2016-03-14 07:11:56.229183-04	4	None - None	1	Añadido.	34	9
33	2016-03-14 07:28:16.694856-04	1	Formulario de registro	1	Añadido.	28	9
34	2016-03-14 07:28:42.532363-04	2	Formularion de consulta de eventos	1	Añadido.	28	9
35	2016-03-14 07:29:41.752704-04	3	Formulario de registro de cliente	1	Añadido.	28	9
36	2016-03-14 07:29:53.181252-04	4	Formulario de registro de evento	1	Añadido.	28	9
37	2016-03-14 07:30:22.710029-04	1	registrar evento	1	Añadido.	25	9
38	2016-03-14 07:31:21.621083-04	5	Lista de Clientes	1	Añadido.	28	9
39	2016-03-14 07:32:21.889924-04	6	Editor de datos de cliente	1	Añadido.	28	9
40	2016-03-14 07:32:27.903803-04	2	Gestion de clientes	1	Añadido.	25	9
41	2016-03-14 07:32:50.4667-04	1	administrador	1	Añadido.	26	9
42	2016-03-14 07:33:10.794212-04	7	Diego Zambrana - 123456	2	Modificado/a roles.	27	9
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 42, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
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
24	account	bitacora
25	account	funcion
26	account	rol
27	account	usuario
28	account	interfazusuario
29	account	usuariorol
30	account	rolfuncion
31	account	funcionui
32	account	tabla1
33	account	tabla2
34	account	relacion
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_content_type_id_seq', 34, true);


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
15	account	0001_initial	2016-03-06 21:19:15.813995-04
16	event_manager	0002_auto_20160307_0153	2016-03-06 21:53:35.233138-04
17	event_manager	0003_auto_20160307_0329	2016-03-06 23:29:33.177911-04
18	account	0002_auto_20160309_0306	2016-03-08 23:06:21.681172-04
19	account	0003_auto_20160314_1105	2016-03-14 07:05:11.636797-04
20	account	0004_auto_20160314_1123	2016-03-14 07:23:08.444643-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
6iov33z9iass896kbwf006pfofjttxuz	MmM2MGFmODQ1ZjY2ZmRiNzI1NWQ5MTA3NWM5ZGI5ZmRkY2EzZDNhNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ0N2ZkNTk1OTBmNzlmNDgxMzhhZWY5NzY4MzNjNGI0YjE0YTYyZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-03-20 21:21:34.395862-04
u55jj7i6np358ya55pydl98kraixplyp	ZjNiZDZmODdhZjcyOTM4YzgyN2VkMWZhOWM4YTQ5Yzg5ODYyNGU5Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyYzA4ZWU0YjBiZDQ2MTgwMmE2MThhYWYzZTRhMGQ3NGQ2YjgxOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2016-03-28 06:56:09.455298-04
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
1	765432
2	124356789
8	12333332
5	134444
4	111111
3	12333
7	554534
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
1	4000.00	1000.00	3000.00	2016-03-07	1	1
2	3000.00	3000.00	0.00	2016-03-07	2	2
\.


--
-- Name: event_manager_contrato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_contrato_id_seq', 2, true);


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
1	2016-03-20 14:00:00-04	2016-03-21 00:00:00-04	1	2
2	2016-03-27 14:00:00-04	2016-03-28 00:00:00-04	2	2
6	2016-03-09 00:40:11-04	2016-03-09 00:40:14-04	3	1
7	2016-03-09 00:41:20-04	2016-03-09 00:41:22-04	1	3
\.


--
-- Name: event_manager_evento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_evento_id_seq', 7, true);


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
1	1
2	2
\.


--
-- Data for Name: event_manager_lugar; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_lugar (id, nombre, direccion) FROM stdin;
1	Salon Eventos Emperador	calle cochabamba #2322
2	El Paraiso	calle Montes #3333
3	Las Palmas	Oquendo #2323
\.


--
-- Name: event_manager_lugar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_lugar_id_seq', 3, true);


--
-- Data for Name: event_manager_persona; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_persona (id, nombre, apellido, ci) FROM stdin;
3	Carlos	Pinto	765432
4	Pepe	Aguilar	765432
5	Pepillo	Aguilar	765432
6	Juan	Peralta	3462734
1	Pedro	Zapataza	765432
8	namesa	appellido	123456
7	juaninlla	pomada	1234567
2	Juanillo	Perez	765432
12	Lupenaaaaa	lopez	343452345
\.


--
-- Name: event_manager_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_persona_id_seq', 12, true);


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
1	Publico
2	Privado
3	Beneficiencia
\.


--
-- Name: event_manager_tipoevento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipoevento_id_seq', 3, true);


--
-- Data for Name: event_manager_tipoexposicion; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_tipoexposicion (id, tipo) FROM stdin;
1	Pintura
2	Escultura
3	Fotografia
4	Poesia
5	Literatura
\.


--
-- Name: event_manager_tipoexposicion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipoexposicion_id_seq', 5, true);


--
-- Data for Name: event_manager_tipofiesta; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY event_manager_tipofiesta (id, tipo) FROM stdin;
1	15 años
2	Matrimonio
3	Compleaños
4	Aniversario
5	Fiesta Infantil
6	Evento Social
7	Otro
\.


--
-- Name: event_manager_tipofiesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('event_manager_tipofiesta_id_seq', 7, true);


--
-- Name: account_bitacora_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_bitacora
    ADD CONSTRAINT account_bitacora_pkey PRIMARY KEY (id);


--
-- Name: account_funcion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_funcion
    ADD CONSTRAINT account_funcion_pkey PRIMARY KEY (id);


--
-- Name: account_funcion_ui_funcion_id_56af7334_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_funcion_ui
    ADD CONSTRAINT account_funcion_ui_funcion_id_56af7334_uniq UNIQUE (funcion_id, interfazusuario_id);


--
-- Name: account_funcion_ui_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_funcion_ui
    ADD CONSTRAINT account_funcion_ui_pkey PRIMARY KEY (id);


--
-- Name: account_funcionui_funcion_id_b9480ee3_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_funcionui
    ADD CONSTRAINT account_funcionui_funcion_id_b9480ee3_uniq UNIQUE (funcion_id, ui_id);


--
-- Name: account_funcionui_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_funcionui
    ADD CONSTRAINT account_funcionui_pkey PRIMARY KEY (id);


--
-- Name: account_interfazusuario_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_interfazusuario
    ADD CONSTRAINT account_interfazusuario_pkey PRIMARY KEY (id);


--
-- Name: account_relacion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_relacion
    ADD CONSTRAINT account_relacion_pkey PRIMARY KEY (id);


--
-- Name: account_relacion_t1_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_relacion_t1
    ADD CONSTRAINT account_relacion_t1_pkey PRIMARY KEY (id);


--
-- Name: account_relacion_t1_relacion_id_bd5a380d_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_relacion_t1
    ADD CONSTRAINT account_relacion_t1_relacion_id_bd5a380d_uniq UNIQUE (relacion_id, tabla1_id);


--
-- Name: account_relacion_t2_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_relacion_t2
    ADD CONSTRAINT account_relacion_t2_pkey PRIMARY KEY (id);


--
-- Name: account_relacion_t2_relacion_id_20221b94_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_relacion_t2
    ADD CONSTRAINT account_relacion_t2_relacion_id_20221b94_uniq UNIQUE (relacion_id, tabla2_id);


--
-- Name: account_rol_funciones_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_rol_funciones
    ADD CONSTRAINT account_rol_funciones_pkey PRIMARY KEY (id);


--
-- Name: account_rol_funciones_rol_id_bb5adabc_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_rol_funciones
    ADD CONSTRAINT account_rol_funciones_rol_id_bb5adabc_uniq UNIQUE (rol_id, funcion_id);


--
-- Name: account_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_rol
    ADD CONSTRAINT account_rol_pkey PRIMARY KEY (id);


--
-- Name: account_rolfuncion_funcion_id_9cf00225_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_rolfuncion
    ADD CONSTRAINT account_rolfuncion_funcion_id_9cf00225_uniq UNIQUE (funcion_id, rol_id);


--
-- Name: account_rolfuncion_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_rolfuncion
    ADD CONSTRAINT account_rolfuncion_pkey PRIMARY KEY (id);


--
-- Name: account_tabla1_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_tabla1
    ADD CONSTRAINT account_tabla1_pkey PRIMARY KEY (id);


--
-- Name: account_tabla2_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_tabla2
    ADD CONSTRAINT account_tabla2_pkey PRIMARY KEY (id);


--
-- Name: account_usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuario
    ADD CONSTRAINT account_usuario_email_key UNIQUE (email);


--
-- Name: account_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuario
    ADD CONSTRAINT account_usuario_pkey PRIMARY KEY (id);


--
-- Name: account_usuario_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuario_roles
    ADD CONSTRAINT account_usuario_roles_pkey PRIMARY KEY (id);


--
-- Name: account_usuario_roles_usuario_id_602246ed_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuario_roles
    ADD CONSTRAINT account_usuario_roles_usuario_id_602246ed_uniq UNIQUE (usuario_id, rol_id);


--
-- Name: account_usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuario
    ADD CONSTRAINT account_usuario_username_key UNIQUE (username);


--
-- Name: account_usuariorol_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuariorol
    ADD CONSTRAINT account_usuariorol_pkey PRIMARY KEY (id);


--
-- Name: account_usuariorol_usuario_id_7c3ded89_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY account_usuariorol
    ADD CONSTRAINT account_usuariorol_usuario_id_7c3ded89_uniq UNIQUE (usuario_id, rol_id);


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
-- Name: event_manager_contrato_evento_id_44836bac_uniq; Type: CONSTRAINT; Schema: public; Owner: myuser; Tablespace: 
--

ALTER TABLE ONLY event_manager_contrato
    ADD CONSTRAINT event_manager_contrato_evento_id_44836bac_uniq UNIQUE (evento_id);


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
-- Name: account_bitacora_abfe0f96; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_bitacora_abfe0f96 ON account_bitacora USING btree (usuario_id);


--
-- Name: account_funcion_ui_88e1a870; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_funcion_ui_88e1a870 ON account_funcion_ui USING btree (interfazusuario_id);


--
-- Name: account_funcion_ui_b3fd585f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_funcion_ui_b3fd585f ON account_funcion_ui USING btree (funcion_id);


--
-- Name: account_funcionui_52d8350e; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_funcionui_52d8350e ON account_funcionui USING btree (ui_id);


--
-- Name: account_funcionui_b3fd585f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_funcionui_b3fd585f ON account_funcionui USING btree (funcion_id);


--
-- Name: account_relacion_t1_0e1bb5d2; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_relacion_t1_0e1bb5d2 ON account_relacion_t1 USING btree (tabla1_id);


--
-- Name: account_relacion_t1_d3d77f93; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_relacion_t1_d3d77f93 ON account_relacion_t1 USING btree (relacion_id);


--
-- Name: account_relacion_t2_651a0efc; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_relacion_t2_651a0efc ON account_relacion_t2 USING btree (tabla2_id);


--
-- Name: account_relacion_t2_d3d77f93; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_relacion_t2_d3d77f93 ON account_relacion_t2 USING btree (relacion_id);


--
-- Name: account_rol_funciones_592e25ad; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_rol_funciones_592e25ad ON account_rol_funciones USING btree (rol_id);


--
-- Name: account_rol_funciones_b3fd585f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_rol_funciones_b3fd585f ON account_rol_funciones USING btree (funcion_id);


--
-- Name: account_rolfuncion_592e25ad; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_rolfuncion_592e25ad ON account_rolfuncion USING btree (rol_id);


--
-- Name: account_rolfuncion_b3fd585f; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_rolfuncion_b3fd585f ON account_rolfuncion USING btree (funcion_id);


--
-- Name: account_usuario_roles_592e25ad; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_usuario_roles_592e25ad ON account_usuario_roles USING btree (rol_id);


--
-- Name: account_usuario_roles_abfe0f96; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_usuario_roles_abfe0f96 ON account_usuario_roles USING btree (usuario_id);


--
-- Name: account_usuariorol_592e25ad; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_usuariorol_592e25ad ON account_usuariorol USING btree (rol_id);


--
-- Name: account_usuariorol_abfe0f96; Type: INDEX; Schema: public; Owner: myuser; Tablespace: 
--

CREATE INDEX account_usuariorol_abfe0f96 ON account_usuariorol USING btree (usuario_id);


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
-- Name: accou_interfazusuario_id_537d7775_fk_account_interfazusuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcion_ui
    ADD CONSTRAINT accou_interfazusuario_id_537d7775_fk_account_interfazusuario_id FOREIGN KEY (interfazusuario_id) REFERENCES account_interfazusuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_bitacora_usuario_id_10d12c4e_fk_account_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_bitacora
    ADD CONSTRAINT account_bitacora_usuario_id_10d12c4e_fk_account_usuario_id FOREIGN KEY (usuario_id) REFERENCES account_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_funcion_ui_funcion_id_866f8501_fk_account_funcion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcion_ui
    ADD CONSTRAINT account_funcion_ui_funcion_id_866f8501_fk_account_funcion_id FOREIGN KEY (funcion_id) REFERENCES account_funcion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_funcionui_funcion_id_23773ac0_fk_account_funcion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcionui
    ADD CONSTRAINT account_funcionui_funcion_id_23773ac0_fk_account_funcion_id FOREIGN KEY (funcion_id) REFERENCES account_funcion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_funcionui_ui_id_9f6d5ff9_fk_account_interfazusuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_funcionui
    ADD CONSTRAINT account_funcionui_ui_id_9f6d5ff9_fk_account_interfazusuario_id FOREIGN KEY (ui_id) REFERENCES account_interfazusuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_relacion_t1_relacion_id_b17857b6_fk_account_relacion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t1
    ADD CONSTRAINT account_relacion_t1_relacion_id_b17857b6_fk_account_relacion_id FOREIGN KEY (relacion_id) REFERENCES account_relacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_relacion_t1_tabla1_id_2e518655_fk_account_tabla1_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t1
    ADD CONSTRAINT account_relacion_t1_tabla1_id_2e518655_fk_account_tabla1_id FOREIGN KEY (tabla1_id) REFERENCES account_tabla1(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_relacion_t2_relacion_id_f4119e37_fk_account_relacion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t2
    ADD CONSTRAINT account_relacion_t2_relacion_id_f4119e37_fk_account_relacion_id FOREIGN KEY (relacion_id) REFERENCES account_relacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_relacion_t2_tabla2_id_be3a217c_fk_account_tabla2_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_relacion_t2
    ADD CONSTRAINT account_relacion_t2_tabla2_id_be3a217c_fk_account_tabla2_id FOREIGN KEY (tabla2_id) REFERENCES account_tabla2(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_rol_funciones_funcion_id_558250e1_fk_account_funcion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rol_funciones
    ADD CONSTRAINT account_rol_funciones_funcion_id_558250e1_fk_account_funcion_id FOREIGN KEY (funcion_id) REFERENCES account_funcion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_rol_funciones_rol_id_5f9c181c_fk_account_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rol_funciones
    ADD CONSTRAINT account_rol_funciones_rol_id_5f9c181c_fk_account_rol_id FOREIGN KEY (rol_id) REFERENCES account_rol(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_rolfuncion_funcion_id_eb059dce_fk_account_funcion_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rolfuncion
    ADD CONSTRAINT account_rolfuncion_funcion_id_eb059dce_fk_account_funcion_id FOREIGN KEY (funcion_id) REFERENCES account_funcion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_rolfuncion_rol_id_728826fc_fk_account_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_rolfuncion
    ADD CONSTRAINT account_rolfuncion_rol_id_728826fc_fk_account_rol_id FOREIGN KEY (rol_id) REFERENCES account_rol(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_usuario_roles_rol_id_76d25246_fk_account_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuario_roles
    ADD CONSTRAINT account_usuario_roles_rol_id_76d25246_fk_account_rol_id FOREIGN KEY (rol_id) REFERENCES account_rol(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_usuario_roles_usuario_id_6f0221a6_fk_account_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuario_roles
    ADD CONSTRAINT account_usuario_roles_usuario_id_6f0221a6_fk_account_usuario_id FOREIGN KEY (usuario_id) REFERENCES account_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_usuariorol_rol_id_d07412ff_fk_account_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuariorol
    ADD CONSTRAINT account_usuariorol_rol_id_d07412ff_fk_account_rol_id FOREIGN KEY (rol_id) REFERENCES account_rol(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_usuariorol_usuario_id_e5e54db7_fk_account_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY account_usuariorol
    ADD CONSTRAINT account_usuariorol_usuario_id_e5e54db7_fk_account_usuario_id FOREIGN KEY (usuario_id) REFERENCES account_usuario(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: django_admin_log_user_id_c564eba6_fk_account_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_usuario_id FOREIGN KEY (user_id) REFERENCES account_usuario(id) DEFERRABLE INITIALLY DEFERRED;


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

