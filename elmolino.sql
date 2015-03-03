--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.0
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-03-03 07:58:00 ECT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 225 (class 3079 OID 11863)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 225
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16387)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO elmolino;

--
-- TOC entry 173 (class 1259 OID 16390)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO elmolino;

--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 173
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 174 (class 1259 OID 16392)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO elmolino;

--
-- TOC entry 175 (class 1259 OID 16395)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO elmolino;

--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 175
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 176 (class 1259 OID 16397)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO elmolino;

--
-- TOC entry 177 (class 1259 OID 16400)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO elmolino;

--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 177
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 178 (class 1259 OID 16402)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO elmolino;

--
-- TOC entry 179 (class 1259 OID 16405)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO elmolino;

--
-- TOC entry 180 (class 1259 OID 16408)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO elmolino;

--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 181 (class 1259 OID 16410)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO elmolino;

--
-- TOC entry 2376 (class 0 OID 0)
-- Dependencies: 181
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 182 (class 1259 OID 16412)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO elmolino;

--
-- TOC entry 183 (class 1259 OID 16415)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO elmolino;

--
-- TOC entry 2377 (class 0 OID 0)
-- Dependencies: 183
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 184 (class 1259 OID 16417)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
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


ALTER TABLE django_admin_log OWNER TO elmolino;

--
-- TOC entry 185 (class 1259 OID 16424)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO elmolino;

--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 186 (class 1259 OID 16426)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO elmolino;

--
-- TOC entry 187 (class 1259 OID 16429)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO elmolino;

--
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 188 (class 1259 OID 16431)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO elmolino;

--
-- TOC entry 189 (class 1259 OID 16437)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO elmolino;

--
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 189
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 190 (class 1259 OID 16439)
-- Name: django_session; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO elmolino;

--
-- TOC entry 191 (class 1259 OID 16445)
-- Name: web_carrito; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_carrito (
    id integer NOT NULL,
    codigo character varying(20) NOT NULL,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    product_id integer,
    servicio_id integer,
    usuario_id integer NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE web_carrito OWNER TO elmolino;

--
-- TOC entry 192 (class 1259 OID 16448)
-- Name: web_carrito_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_carrito_id_seq OWNER TO elmolino;

--
-- TOC entry 2381 (class 0 OID 0)
-- Dependencies: 192
-- Name: web_carrito_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_carrito_id_seq OWNED BY web_carrito.id;


--
-- TOC entry 193 (class 1259 OID 16450)
-- Name: web_cat_foro; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cat_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    cat_foro_padre_id integer,
    cliente_id integer NOT NULL
);


ALTER TABLE web_cat_foro OWNER TO elmolino;

--
-- TOC entry 194 (class 1259 OID 16453)
-- Name: web_cat_foro_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cat_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cat_foro_id_seq OWNER TO elmolino;

--
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 194
-- Name: web_cat_foro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cat_foro_id_seq OWNED BY web_cat_foro.id;


--
-- TOC entry 195 (class 1259 OID 16455)
-- Name: web_cat_producto; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cat_producto (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    imagen_cat character varying(100) NOT NULL,
    tipo character varying(2) NOT NULL
);


ALTER TABLE web_cat_producto OWNER TO elmolino;

--
-- TOC entry 196 (class 1259 OID 16458)
-- Name: web_cat_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cat_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cat_producto_id_seq OWNER TO elmolino;

--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 196
-- Name: web_cat_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cat_producto_id_seq OWNED BY web_cat_producto.id;


--
-- TOC entry 197 (class 1259 OID 16460)
-- Name: web_cat_servicio; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cat_servicio (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    codigo character varying(5) NOT NULL,
    imagen_cat character varying(100) NOT NULL
);


ALTER TABLE web_cat_servicio OWNER TO elmolino;

--
-- TOC entry 198 (class 1259 OID 16463)
-- Name: web_cat_servicio_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cat_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cat_servicio_id_seq OWNER TO elmolino;

--
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 198
-- Name: web_cat_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cat_servicio_id_seq OWNED BY web_cat_servicio.id;


--
-- TOC entry 199 (class 1259 OID 16465)
-- Name: web_cliente; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cliente (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    correo character varying(30) NOT NULL,
    cedula character varying(10) NOT NULL,
    telefono character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE web_cliente OWNER TO elmolino;

--
-- TOC entry 200 (class 1259 OID 16468)
-- Name: web_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cliente_id_seq OWNER TO elmolino;

--
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 200
-- Name: web_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cliente_id_seq OWNED BY web_cliente.id;


--
-- TOC entry 201 (class 1259 OID 16470)
-- Name: web_comentario; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_comentario (
    id integer NOT NULL,
    tema character varying(20) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(1000) NOT NULL,
    cproducto_id integer,
    cusuario_id integer NOT NULL,
    cservicio_id integer,
    cforo_id integer
);


ALTER TABLE web_comentario OWNER TO elmolino;

--
-- TOC entry 202 (class 1259 OID 16476)
-- Name: web_comentario_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_comentario_id_seq OWNER TO elmolino;

--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 202
-- Name: web_comentario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_comentario_id_seq OWNED BY web_comentario.id;


--
-- TOC entry 203 (class 1259 OID 16478)
-- Name: web_cotizacion; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cotizacion (
    id integer NOT NULL,
    costo_total double precision NOT NULL,
    fecha date NOT NULL,
    cliente_id integer NOT NULL
);


ALTER TABLE web_cotizacion OWNER TO elmolino;

--
-- TOC entry 204 (class 1259 OID 16481)
-- Name: web_cotizacion_detalle; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_cotizacion_detalle (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    valor_unitario double precision NOT NULL,
    cotizacion_id integer NOT NULL,
    product_id integer,
    servicio_id integer,
    total double precision NOT NULL
);


ALTER TABLE web_cotizacion_detalle OWNER TO elmolino;

--
-- TOC entry 205 (class 1259 OID 16484)
-- Name: web_cotizacion_detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cotizacion_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cotizacion_detalle_id_seq OWNER TO elmolino;

--
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 205
-- Name: web_cotizacion_detalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cotizacion_detalle_id_seq OWNED BY web_cotizacion_detalle.id;


--
-- TOC entry 206 (class 1259 OID 16486)
-- Name: web_cotizacion_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_cotizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_cotizacion_id_seq OWNER TO elmolino;

--
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 206
-- Name: web_cotizacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_cotizacion_id_seq OWNED BY web_cotizacion.id;


--
-- TOC entry 207 (class 1259 OID 16488)
-- Name: web_elmolino; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_elmolino (
    id integer NOT NULL,
    correo character varying(5000) NOT NULL,
    direccion character varying(5000) NOT NULL,
    historia character varying(5000) NOT NULL,
    mision character varying(5000) NOT NULL,
    telefono character varying(5000) NOT NULL,
    vision character varying(5000) NOT NULL,
    mapa character varying(5000) NOT NULL
);


ALTER TABLE web_elmolino OWNER TO elmolino;

--
-- TOC entry 208 (class 1259 OID 16494)
-- Name: web_elmolino_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_elmolino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_elmolino_id_seq OWNER TO elmolino;

--
-- TOC entry 2389 (class 0 OID 0)
-- Dependencies: 208
-- Name: web_elmolino_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_elmolino_id_seq OWNED BY web_elmolino.id;


--
-- TOC entry 209 (class 1259 OID 16496)
-- Name: web_foro; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    tema character varying(30) NOT NULL,
    ccomentario character varying(5000) NOT NULL,
    cat_foro_id integer NOT NULL,
    usuario_id integer NOT NULL,
    coment_small character varying(250)
);


ALTER TABLE web_foro OWNER TO elmolino;

--
-- TOC entry 210 (class 1259 OID 16499)
-- Name: web_foro_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_foro_id_seq OWNER TO elmolino;

--
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 210
-- Name: web_foro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_foro_id_seq OWNED BY web_foro.id;


--
-- TOC entry 211 (class 1259 OID 16501)
-- Name: web_galeria; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_galeria (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    activa boolean NOT NULL
);


ALTER TABLE web_galeria OWNER TO elmolino;

--
-- TOC entry 212 (class 1259 OID 16504)
-- Name: web_galeria_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_galeria_id_seq OWNER TO elmolino;

--
-- TOC entry 2391 (class 0 OID 0)
-- Dependencies: 212
-- Name: web_galeria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_galeria_id_seq OWNED BY web_galeria.id;


--
-- TOC entry 213 (class 1259 OID 16506)
-- Name: web_menu; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_menu (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    url character varying(30) NOT NULL,
    nivel smallint NOT NULL,
    padre_id integer,
    acceso_id integer
);


ALTER TABLE web_menu OWNER TO elmolino;

--
-- TOC entry 214 (class 1259 OID 16509)
-- Name: web_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_menu_id_seq OWNER TO elmolino;

--
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 214
-- Name: web_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_menu_id_seq OWNED BY web_menu.id;


--
-- TOC entry 215 (class 1259 OID 16511)
-- Name: web_oferta; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_oferta (
    id integer NOT NULL,
    nombre character varying(1500) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE web_oferta OWNER TO elmolino;

--
-- TOC entry 216 (class 1259 OID 16517)
-- Name: web_oferta_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_oferta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_oferta_id_seq OWNER TO elmolino;

--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 216
-- Name: web_oferta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_oferta_id_seq OWNED BY web_oferta.id;


--
-- TOC entry 217 (class 1259 OID 16519)
-- Name: web_producto; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_producto (
    id integer NOT NULL,
    codigo character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL,
    nombre_comun character varying(20),
    nombre_cientifico character varying(20) NOT NULL,
    altura_maxima character varying(10),
    agua character varying(1) NOT NULL,
    sol character varying(1) NOT NULL,
    crecimiento character varying(5),
    detalle character varying(5000) NOT NULL,
    costo double precision NOT NULL,
    cantidad double precision NOT NULL,
    imagen character varying(100) NOT NULL,
    imagen1 character varying(100) NOT NULL,
    imagen2 character varying(100) NOT NULL,
    cat_producto_id integer NOT NULL,
    variedad_id integer NOT NULL
);


ALTER TABLE web_producto OWNER TO elmolino;

--
-- TOC entry 218 (class 1259 OID 16525)
-- Name: web_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_producto_id_seq OWNER TO elmolino;

--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 218
-- Name: web_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_producto_id_seq OWNED BY web_producto.id;


--
-- TOC entry 224 (class 1259 OID 16886)
-- Name: web_servicio_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_servicio_id_seq OWNER TO elmolino;

--
-- TOC entry 223 (class 1259 OID 16874)
-- Name: web_servicio; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_servicio (
    id integer DEFAULT nextval('web_servicio_id_seq'::regclass) NOT NULL,
    codigo character varying(6) NOT NULL,
    nombre character varying(20) NOT NULL,
    costo double precision NOT NULL,
    cat_servicio_id integer NOT NULL,
    duracion character varying(10),
    descripcion character varying(2000)
);


ALTER TABLE web_servicio OWNER TO elmolino;

--
-- TOC entry 219 (class 1259 OID 16532)
-- Name: web_siguenos; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_siguenos (
    id integer NOT NULL,
    red character varying(5000) NOT NULL,
    url character varying(5000) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE web_siguenos OWNER TO elmolino;

--
-- TOC entry 220 (class 1259 OID 16538)
-- Name: web_siguenos_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_siguenos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_siguenos_id_seq OWNER TO elmolino;

--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 220
-- Name: web_siguenos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_siguenos_id_seq OWNED BY web_siguenos.id;


--
-- TOC entry 221 (class 1259 OID 16540)
-- Name: web_variedad; Type: TABLE; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE TABLE web_variedad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    origen character varying(20),
    situacion character varying(20),
    cultivo character varying(20),
    poda character varying(20),
    multiplicacion character varying(20)
);


ALTER TABLE web_variedad OWNER TO elmolino;

--
-- TOC entry 222 (class 1259 OID 16543)
-- Name: web_variedad_id_seq; Type: SEQUENCE; Schema: public; Owner: elmolino
--

CREATE SEQUENCE web_variedad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_variedad_id_seq OWNER TO elmolino;

--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 222
-- Name: web_variedad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: elmolino
--

ALTER SEQUENCE web_variedad_id_seq OWNED BY web_variedad.id;


--
-- TOC entry 2051 (class 2604 OID 16545)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2052 (class 2604 OID 16546)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2053 (class 2604 OID 16547)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2054 (class 2604 OID 16548)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2055 (class 2604 OID 16549)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2056 (class 2604 OID 16550)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2057 (class 2604 OID 16551)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 16552)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 16553)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2061 (class 2604 OID 16554)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_carrito ALTER COLUMN id SET DEFAULT nextval('web_carrito_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 16555)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cat_foro ALTER COLUMN id SET DEFAULT nextval('web_cat_foro_id_seq'::regclass);


--
-- TOC entry 2063 (class 2604 OID 16556)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cat_producto ALTER COLUMN id SET DEFAULT nextval('web_cat_producto_id_seq'::regclass);


--
-- TOC entry 2064 (class 2604 OID 16557)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cat_servicio ALTER COLUMN id SET DEFAULT nextval('web_cat_servicio_id_seq'::regclass);


--
-- TOC entry 2065 (class 2604 OID 16558)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cliente ALTER COLUMN id SET DEFAULT nextval('web_cliente_id_seq'::regclass);


--
-- TOC entry 2066 (class 2604 OID 16559)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_comentario ALTER COLUMN id SET DEFAULT nextval('web_comentario_id_seq'::regclass);


--
-- TOC entry 2067 (class 2604 OID 16560)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cotizacion ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_id_seq'::regclass);


--
-- TOC entry 2068 (class 2604 OID 16561)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cotizacion_detalle ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_detalle_id_seq'::regclass);


--
-- TOC entry 2069 (class 2604 OID 16562)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_elmolino ALTER COLUMN id SET DEFAULT nextval('web_elmolino_id_seq'::regclass);


--
-- TOC entry 2070 (class 2604 OID 16563)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_foro ALTER COLUMN id SET DEFAULT nextval('web_foro_id_seq'::regclass);


--
-- TOC entry 2071 (class 2604 OID 16564)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_galeria ALTER COLUMN id SET DEFAULT nextval('web_galeria_id_seq'::regclass);


--
-- TOC entry 2072 (class 2604 OID 16565)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_menu ALTER COLUMN id SET DEFAULT nextval('web_menu_id_seq'::regclass);


--
-- TOC entry 2073 (class 2604 OID 16566)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_oferta ALTER COLUMN id SET DEFAULT nextval('web_oferta_id_seq'::regclass);


--
-- TOC entry 2074 (class 2604 OID 16567)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_producto ALTER COLUMN id SET DEFAULT nextval('web_producto_id_seq'::regclass);


--
-- TOC entry 2075 (class 2604 OID 16569)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_siguenos ALTER COLUMN id SET DEFAULT nextval('web_siguenos_id_seq'::regclass);


--
-- TOC entry 2076 (class 2604 OID 16570)
-- Name: id; Type: DEFAULT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_variedad ALTER COLUMN id SET DEFAULT nextval('web_variedad_id_seq'::regclass);


--
-- TOC entry 2311 (class 0 OID 16387)
-- Dependencies: 172
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY auth_group (id, name) FROM stdin;
1	admin
2	all
3	registrado
\.


--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 173
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_group_id_seq', 3, true);


--
-- TOC entry 2313 (class 0 OID 16392)
-- Dependencies: 174
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
\.


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 175
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 142, true);


--
-- TOC entry 2315 (class 0 OID 16397)
-- Dependencies: 176
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: elmolino
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
19	Can add cliente	7	add_cliente
20	Can change cliente	7	change_cliente
21	Can delete cliente	7	delete_cliente
22	Can add variedad	8	add_variedad
23	Can change variedad	8	change_variedad
24	Can delete variedad	8	delete_variedad
25	Can add cat_producto	9	add_cat_producto
26	Can change cat_producto	9	change_cat_producto
27	Can delete cat_producto	9	delete_cat_producto
28	Can add producto	10	add_producto
29	Can change producto	10	change_producto
30	Can delete producto	10	delete_producto
31	Can add cat_servicio	11	add_cat_servicio
32	Can change cat_servicio	11	change_cat_servicio
33	Can delete cat_servicio	11	delete_cat_servicio
34	Can add servicio	12	add_servicio
35	Can change servicio	12	change_servicio
36	Can delete servicio	12	delete_servicio
37	Can add carrito	13	add_carrito
38	Can change carrito	13	change_carrito
39	Can delete carrito	13	delete_carrito
40	Can add cotizacion	14	add_cotizacion
41	Can change cotizacion	14	change_cotizacion
42	Can delete cotizacion	14	delete_cotizacion
43	Can add cotizacion_detalle	15	add_cotizacion_detalle
44	Can change cotizacion_detalle	15	change_cotizacion_detalle
45	Can delete cotizacion_detalle	15	delete_cotizacion_detalle
46	Can add cat_foro	16	add_cat_foro
47	Can change cat_foro	16	change_cat_foro
48	Can delete cat_foro	16	delete_cat_foro
49	Can add foro	17	add_foro
50	Can change foro	17	change_foro
51	Can delete foro	17	delete_foro
52	Can add comentario	18	add_comentario
53	Can change comentario	18	change_comentario
54	Can delete comentario	18	delete_comentario
55	Can add galeria	19	add_galeria
56	Can change galeria	19	change_galeria
57	Can delete galeria	19	delete_galeria
58	Can add menu	20	add_menu
59	Can change menu	20	change_menu
60	Can delete menu	20	delete_menu
61	Can add elmolino	21	add_elmolino
62	Can change elmolino	21	change_elmolino
63	Can delete elmolino	21	delete_elmolino
64	Can add oferta	22	add_oferta
65	Can change oferta	22	change_oferta
66	Can delete oferta	22	delete_oferta
67	Can add siguenos	23	add_siguenos
68	Can change siguenos	23	change_siguenos
69	Can delete siguenos	23	delete_siguenos
\.


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 177
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);


--
-- TOC entry 2317 (class 0 OID 16402)
-- Dependencies: 178
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$15000$WX20FTr0rtk8$TOfPvWhS08U7bd0JJopiBj6rUyteEnpQ/tTGfarzaT4=	2015-02-05 14:59:23.458768-05	t	maribeluchis				t	t	2015-05-02 14:55:45-05
1	pbkdf2_sha256$15000$sQE3jN68gIcf$/ij8U/0he9GZ7/cnwkuFDif58doeH69NilFguPMk08M=	2015-03-02 21:47:29.185299-05	t	palichis			palichis@solid-ec.org	t	t	2015-01-27 18:58:51.356681-05
\.


--
-- TOC entry 2318 (class 0 OID 16405)
-- Dependencies: 179
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 181
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- TOC entry 2321 (class 0 OID 16412)
-- Dependencies: 182
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 183
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2323 (class 0 OID 16417)
-- Dependencies: 184
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-01-27 19:00:40.195587-05	1	1	1		19	1
2	2015-01-27 19:00:48.144338-05	2	2	1		19	1
3	2015-01-27 19:01:21.975511-05	1	Inicio	1		20	1
4	2015-01-27 19:02:24.108605-05	1	historia	1		21	1
5	2015-01-27 19:02:47.307489-05	1	vivero	1		22	1
6	2015-01-27 19:02:58.526773-05	2	huerto	1		22	1
7	2015-01-27 19:03:06.091263-05	3	servicio	1		22	1
8	2015-01-27 19:07:54.848844-05	1	Interiores	1		9	1
9	2015-01-27 19:09:40.381587-05	2	Exteriores	1		9	1
10	2015-01-27 19:55:55.963075-05	1	Interiores	2	Modificado/a tipo.	9	1
11	2015-01-27 19:56:14.411342-05	1	Interiores	2	Modificado/a tipo.	9	1
12	2015-01-27 19:56:34.036374-05	2	Jardines	2	Modificado/a nombre.	9	1
13	2015-01-27 19:58:28.001574-05	3	Exteriores	1		9	1
14	2015-01-27 22:02:21.395356-05	1	Gardenia-Gardenia	1		8	1
15	2015-01-27 22:02:42.163388-05	1	I001-Gardenia	1		10	1
16	2015-01-27 22:10:49.775863-05	2	I002-a	1		10	1
17	2015-01-27 22:12:09.754271-05	2	I002-a	2	Modificado/a nombre.	10	1
18	2015-01-28 15:51:10.735069-05	1	I001-Gardenia	2	Modificado/a detalle.	10	1
19	2015-01-28 15:52:19.139512-05	1	I001-Gardenia	2	Modificado/a detalle.	10	1
20	2015-01-28 16:30:08.37244-05	2	I002-Magnoliophyta	2	Modificado/a nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, crecimiento y detalle.	10	1
21	2015-01-28 16:33:44.778404-05	2	productos	1		20	1
22	2015-01-28 16:33:58.178631-05	3	Vivero	1		20	1
23	2015-01-28 16:35:56.101352-05	3	Vivero	2	Modificado/a padre y nivel.	20	1
24	2015-01-28 16:36:24.989859-05	2	Huerto	2	Modificado/a nombre y url.	20	1
25	2015-01-28 16:36:43.017137-05	4	Servicios	1		20	1
26	2015-01-28 17:28:13.71747-05	2	contacto	1		21	1
27	2015-01-28 17:36:21.033307-05	2	contacto	2	Modificado/a texto.	21	1
28	2015-01-28 18:33:56.290991-05	4	Servicios	2	No ha cambiado ningún campo.	20	1
29	2015-01-28 18:34:24.355465-05	1	elmolino object	3		21	1
30	2015-01-28 18:39:16.901391-05	2	elmolino object	2	Modificado/a historia, mision, vision, direccion, telefono y correo.	21	1
31	2015-01-28 18:53:48.309911-05	2	elmolino object	2	Modificado/a mapa.	21	1
32	2015-01-28 18:56:09.613821-05	2	elmolino object	2	Modificado/a mapa.	21	1
33	2015-01-28 19:02:04.387462-05	1	siguenos object	1		23	1
34	2015-01-28 19:02:29.869926-05	2	siguenos object	1		23	1
35	2015-01-28 19:10:40.098699-05	2	elmolino object	2	Modificado/a mapa.	21	1
36	2015-01-28 19:26:45.002591-05	2	elmolino object	2	Modificado/a mapa.	21	1
37	2015-01-28 20:07:40.419445-05	1	prueba	1		18	1
38	2015-01-28 20:20:48.256332-05	1	prueba	2	Modificado/a descripcion.	18	1
39	2015-01-28 20:22:37.893004-05	1	prueba	2	No ha cambiado ningún campo.	18	1
40	2015-01-28 20:22:53.938429-05	2	prueba 2	1		18	1
41	2015-01-28 20:27:33.919047-05	2	prueba 2	2	Modificado/a cusuario.	18	1
42	2015-01-28 20:33:23.185215-05	2	prueba 2	2	Modificado/a descripcion.	18	1
43	2015-01-28 20:35:09.586888-05	1	prueba	2	Modificado/a fecha y cusuario.	18	1
44	2015-01-28 20:37:42.36933-05	3	I002-Margarita	1		10	1
45	2015-02-01 13:12:47.688641-05	1	Noticias	1		16	1
46	2015-02-01 13:13:38.721063-05	1	prueba	2	No ha cambiado ningún campo.	18	1
47	2015-02-01 13:13:43.893626-05	1	prueba	2	No ha cambiado ningún campo.	18	1
48	2015-02-01 13:20:34.411775-05	1	noticias	2	Modificado/a nombre.	16	1
49	2015-02-01 13:31:12.998313-05	1	nueva pagina	1		17	1
50	2015-02-01 13:35:58.812247-05	1	nueva pagina	2	No ha cambiado ningún campo.	17	1
51	2015-02-01 13:37:09.926659-05	2	Secreto de las plant	1		17	1
52	2015-02-01 13:39:32.309967-05	3	Brasil: mucha más 	1		17	1
53	2015-02-01 14:13:18.874488-05	4	hidroponico	1		9	1
54	2015-02-01 14:18:52.084408-05	4	h001-	1		10	1
55	2015-02-01 14:21:44.414428-05	1	P001-poda	1		11	1
56	2015-02-01 14:27:07.638334-05	1	P001-poda	2	Modificado/a imagen.	11	1
57	2015-02-01 14:30:01.38985-05	1	pa001-Poda Arboles	1		12	1
58	2015-02-01 14:49:31.643529-05	4	h001-coliflor	2	Modificado/a nombre_comun.	10	1
59	2015-02-01 14:49:37.548727-05	4	h001-coliflor	2	No ha cambiado ningún campo.	10	1
60	2015-02-01 14:50:22.463917-05	4	h001-coliflors	2	Modificado/a nombre.	10	1
61	2015-02-01 14:50:31.563674-05	4	h001-coliflor	2	Modificado/a nombre y nombre_comun.	10	1
62	2015-02-01 14:54:51.561639-05	2	prueba 2	2	No ha cambiado ningún campo.	18	1
63	2015-02-01 14:55:19.489385-05	3	prueba3	1		18	1
64	2015-02-01 14:56:38.579159-05	3	prueba3	2	Modificado/a descripcion.	18	1
65	2015-02-01 15:32:09.432498-05	1	pa001-Poda Arboles	1		12	1
66	2015-02-01 16:05:48.684719-05	5	El Molino	1		20	1
67	2015-02-01 16:30:11.804571-05	1	admin	1		3	1
68	2015-02-01 16:30:17.782203-05	5	El Molino	2	Modificado/a acceso.	20	1
69	2015-02-01 16:30:24.567371-05	4	Servicios	2	Modificado/a acceso.	20	1
70	2015-02-01 16:30:29.302079-05	3	Vivero	2	Modificado/a acceso.	20	1
71	2015-02-01 16:30:33.004032-05	3	Vivero	2	No ha cambiado ningún campo.	20	1
72	2015-02-01 16:30:37.795835-05	2	Huerto	2	Modificado/a acceso.	20	1
73	2015-02-01 16:30:43.529556-05	1	Inicio	2	Modificado/a acceso.	20	1
74	2015-02-01 16:30:58.164449-05	2	ALL	1		3	1
75	2015-02-01 16:31:03.81434-05	5	El Molino	2	Modificado/a acceso.	20	1
76	2015-02-01 16:31:09.56742-05	4	Servicios	2	Modificado/a acceso.	20	1
77	2015-02-01 16:31:14.901952-05	3	Vivero	2	Modificado/a acceso.	20	1
78	2015-02-01 16:31:21.709561-05	1	Inicio	2	Modificado/a acceso.	20	1
79	2015-02-01 16:31:26.901301-05	2	Huerto	2	Modificado/a acceso.	20	1
80	2015-02-01 16:31:30.667894-05	3	Vivero	2	No ha cambiado ningún campo.	20	1
81	2015-02-01 16:32:34.425237-05	3	register	1		3	1
82	2015-02-01 16:32:40.884701-05	6	Salir	1		20	1
83	2015-02-01 17:01:10.860246-05	2	all	2	Modificado/a name.	3	1
84	2015-02-01 17:07:33.373045-05	3	registrar	2	Modificado/a name.	3	1
85	2015-02-01 17:12:44.170441-05	6	Salir	2	No ha cambiado ningún campo.	20	1
86	2015-02-01 17:13:46.699298-05	6	Salir	2	No ha cambiado ningún campo.	20	1
87	2015-02-01 17:13:57.872331-05	5	El Molino	2	No ha cambiado ningún campo.	20	1
88	2015-02-01 17:14:06.408478-05	4	Servicios	2	No ha cambiado ningún campo.	20	1
89	2015-02-01 17:14:16.00077-05	5	El Molino	2	No ha cambiado ningún campo.	20	1
90	2015-02-01 17:14:19.123883-05	6	Salir	2	No ha cambiado ningún campo.	20	1
91	2015-02-01 17:14:32.874778-05	6	Salir	2	Modificado/a acceso.	20	1
92	2015-02-01 17:14:40.65155-05	6	Salir	2	Modificado/a acceso.	20	1
93	2015-02-01 17:15:21.67047-05	3	registrar	2	Modificado/a permissions.	3	1
94	2015-02-01 17:19:57.06763-05	7	Compras	1		20	1
95	2015-02-01 17:28:43.245969-05	3	registrado	2	Modificado/a name y permissions.	3	1
96	2015-02-01 17:31:51.36184-05	6	Salir	2	No ha cambiado ningún campo.	20	1
97	2015-02-01 17:43:34.029877-05	6	Salir	2	Modificado/a url.	20	1
98	2015-02-05 11:40:45.789674-05	8	Ingresar	1		20	1
99	2015-02-05 12:43:06.563055-05	9	carrito	1		20	1
100	2015-02-05 12:44:06.081708-05	9	carrito	2	Modificado/a url.	20	1
101	2015-02-05 12:45:43.645177-05	9	carrito	2	Modificado/a url.	20	1
102	2015-02-05 13:28:07.102767-05	2	2.0 I002-Tulipan	1		13	1
103	2015-02-05 13:45:24.183103-05	2	2 I002-Tulipan	2	No ha cambiado ningún campo.	13	1
104	2015-02-05 13:48:52.456652-05	2	2 I002-Tulipan	2	No ha cambiado ningún campo.	13	1
105	2015-02-05 13:49:04.487556-05	3	3 None	1		13	1
106	2015-02-05 14:55:45.195753-05	2	maribeluchis	1		4	1
107	2015-02-05 14:59:09.812626-05	2	maribeluchis	2	Modificado/a is_staff y is_superuser.	4	1
108	2015-02-05 15:32:47.814458-05	6	Salir	2	No ha cambiado ningún campo.	20	2
109	2015-02-12 12:09:50.146812-05	1	Paul Ochoa	1		7	1
110	2015-03-02 18:59:15.37976-05	2	elmolino object	2	Modificado/a mapa.	21	1
111	2015-03-02 18:59:43.990718-05	2	elmolino object	2	Modificado/a mapa.	21	1
112	2015-03-02 19:01:24.578635-05	2	elmolino object	2	Modificado/a direccion, telefono y correo.	21	1
113	2015-03-02 19:01:53.44246-05	1	siguenos object	2	Modificado/a url.	23	1
114	2015-03-02 19:12:20.357904-05	3	Brasil: mucha más 	2	Modificado/a coment_small y comentario.	17	1
115	2015-03-02 19:12:38.523732-05	2	Secreto de las plant	2	Modificado/a coment_small y comentario.	17	1
116	2015-03-02 19:12:50.308936-05	1	nueva pagina	2	Modificado/a coment_small y comentario.	17	1
117	2015-03-02 19:12:52.718875-05	1	nueva pagina	2	No ha cambiado ningún campo.	17	1
118	2015-03-02 19:37:30.100837-05	2	Secreto de las plant	2	Modificado/a comentario.	17	1
119	2015-03-02 19:58:17.673953-05	4	cualquiera	1		18	1
120	2015-03-02 21:56:43.46145-05	14	11111111111111111111	2	Modificado/a descripcion.	18	1
121	2015-03-02 21:57:28.619151-05	14	11111111111111111111	2	Modificado/a descripcion.	18	1
\.


--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 121, true);


--
-- TOC entry 2325 (class 0 OID 16426)
-- Dependencies: 186
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	cliente	web	cliente
8	variedad	web	variedad
9	cat_producto	web	cat_producto
10	producto	web	producto
11	cat_servicio	web	cat_servicio
12	servicio	web	servicio
13	carrito	web	carrito
14	cotizacion	web	cotizacion
15	cotizacion_detalle	web	cotizacion_detalle
16	cat_foro	web	cat_foro
17	foro	web	foro
18	comentario	web	comentario
19	galeria	web	galeria
20	menu	web	menu
21	elmolino	web	elmolino
22	oferta	web	oferta
23	siguenos	web	siguenos
\.


--
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 187
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);


--
-- TOC entry 2327 (class 0 OID 16431)
-- Dependencies: 188
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-01-27 18:58:29.724791-05
2	auth	0001_initial	2015-01-27 18:58:29.84986-05
3	admin	0001_initial	2015-01-27 18:58:29.888492-05
4	sessions	0001_initial	2015-01-27 18:58:29.902904-05
5	web	0001_initial	2015-01-27 18:59:17.340057-05
6	web	0002_auto_20150128_2051	2015-01-28 15:51:58.837889-05
7	web	0003_auto_20150128_2331	2015-01-28 18:31:57.682247-05
8	web	0004_elmolino_mapa	2015-01-28 18:53:30.675931-05
9	web	0005_siguenos_imagen	2015-01-28 18:58:01.120598-05
10	web	0006_comentario_cproducto	2015-01-28 20:05:39.594303-05
11	web	0007_comentario_cusuario	2015-01-28 20:24:19.023694-05
12	web	0008_auto_20150129_0133	2015-01-28 20:33:04.057683-05
13	web	0009_auto_20150129_0134	2015-01-28 20:34:48.253405-05
14	web	0010_auto_20150201_1803	2015-02-01 13:03:22.068843-05
15	web	0011_auto_20150201_1812	2015-02-01 13:12:07.362396-05
16	web	0012_cat_servicio_imagen	2015-02-01 14:26:24.225665-05
17	web	0013_auto_20150201_1928	2015-02-01 14:28:47.674754-05
18	web	0014_comentario_cservicio	2015-02-01 14:53:27.659353-05
19	web	0015_auto_20150201_1954	2015-02-01 14:54:14.405487-05
20	web	0016_auto_20150201_2014	2015-02-01 15:14:34.57325-05
21	web	0002_auto_20150201_2020	2015-02-01 15:24:12.251704-05
22	web	0003_auto_20150201_2029	2015-02-01 15:29:21.367635-05
23	web	0004_auto_20150201_2113	2015-02-01 16:13:44.395586-05
24	web	0002_auto_20150205_1741	2015-02-05 12:41:22.918657-05
25	web	0003_auto_20150205_1845	2015-02-05 13:45:12.92047-05
26	web	0004_auto_20150205_1932	2015-02-05 14:32:09.10654-05
27	web	0005_auto_20150212_1356	2015-02-12 08:57:28.528209-05
28	web	0006_auto_20150212_1658	2015-02-12 11:58:44.629664-05
29	web	0007_auto_20150303_0011	2015-03-02 19:11:32.634911-05
30	web	0008_auto_20150303_0042	2015-03-02 19:42:32.1258-05
31	web	0009_auto_20150303_0045	2015-03-02 19:45:16.052209-05
32	web	0010_auto_20150303_0046	2015-03-02 19:46:16.898213-05
33	web	0011_auto_20150303_0050	2015-03-02 19:50:19.949443-05
34	web	0012_auto_20150303_0238	2015-03-02 21:38:24.403576-05
\.


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 189
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('django_migrations_id_seq', 34, true);


--
-- TOC entry 2329 (class 0 OID 16439)
-- Dependencies: 190
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
byuo6ca9wcjfn2arvf2cgtrqxwwr6ugc	MWJkOGU3MTcxNDEzNzdhMGJlYjQwOWQ3NzRlNjY5YjNiMzY5MzIzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM3OWRkNTk5MjllNWQ4MmFiNzY1ZWI1NmRmZDU4MDkwOGNlYzNlYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-02-10 18:59:57.612185-05
3dl31iuj63ao0wiqhkebrq3kqxpgo47t	ZGVkMTViZWI0ZjlhNTFiNzJmNzRkYmJmYzA3MTg3MjY5ZjIyY2Y5NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRiMTA4ZmMyM2FkMzhiYjJmNDUzMzJhMGNiMTY4YmRkZDhlODk0OGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-02-19 14:59:23.572722-05
8aqvoyd4vd5douik553qo9tawb0kzmsb	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-19 14:59:23.63641-05
nfiqhj7ck10ta1n7hj465uounmn7hs5h	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-15 19:37:27.221608-05
r6k9jy2pzbwrykmzmhgg2vi5x9myql6y	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-15 17:43:40.176395-05
usr5x17rq4clo7nn1zxsb0vzkne6dhau	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-25 20:08:26.232504-05
ne518uqrk6yzc90ul706y7vzkhscvh3x	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-15 17:45:33.689993-05
7dhm6ayfxhwqr1tpk0ya7afim9ptc1a0	MWJkOGU3MTcxNDEzNzdhMGJlYjQwOWQ3NzRlNjY5YjNiMzY5MzIzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM3OWRkNTk5MjllNWQ4MmFiNzY1ZWI1NmRmZDU4MDkwOGNlYzNlYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-02-26 09:40:11.649105-05
ocpu7tzbxlmusq1ce07f2mgch1ux9qul	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-15 17:47:24.303609-05
s96ywgd0ce0cjchnfr72z646u9kviqqu	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-15 19:35:41.219072-05
kplpb00ssfj16sot21hzcutxpkd1iqjf	MWJkOGU3MTcxNDEzNzdhMGJlYjQwOWQ3NzRlNjY5YjNiMzY5MzIzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM3OWRkNTk5MjllNWQ4MmFiNzY1ZWI1NmRmZDU4MDkwOGNlYzNlYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-03-16 21:47:29.196569-05
p9u3l929liydfhdzf7hp2doogrwp5uwx	YjRlODk3YWI0MDMzOGI3YTZkMjcyYmYzZjhmZDI5ZDdmNjM0NmFiNzp7fQ==	2015-02-19 14:57:48.30325-05
\.


--
-- TOC entry 2330 (class 0 OID 16445)
-- Dependencies: 191
-- Data for Name: web_carrito; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_carrito (id, codigo, fecha, cantidad, product_id, servicio_id, usuario_id, total) FROM stdin;
13	2	2015-02-05	1	3	\N	2	0
14	2	2015-02-05	2	\N	1	2	0
15	2	2015-02-05	1	2	\N	2	0
38	1	2015-03-02	1	4	\N	1	3
\.


--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 192
-- Name: web_carrito_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_carrito_id_seq', 38, true);


--
-- TOC entry 2332 (class 0 OID 16450)
-- Dependencies: 193
-- Data for Name: web_cat_foro; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cat_foro (id, fecha, nombre, descripcion, cat_foro_padre_id, cliente_id) FROM stdin;
1	2015-02-01	noticias	Noticias promociones	\N	1
\.


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 194
-- Name: web_cat_foro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cat_foro_id_seq', 1, true);


--
-- TOC entry 2334 (class 0 OID 16455)
-- Dependencies: 195
-- Data for Name: web_cat_producto; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cat_producto (id, nombre, imagen_cat, tipo) FROM stdin;
1	Interiores	cat_productos/interior.jpg	VI
2	Jardines	cat_productos/esterior.jpg	VI
3	Exteriores	cat_productos/exte.jpeg	VI
4	hidroponico	cat_productos/hidro.png	HU
\.


--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 196
-- Name: web_cat_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cat_producto_id_seq', 4, true);


--
-- TOC entry 2336 (class 0 OID 16460)
-- Dependencies: 197
-- Data for Name: web_cat_servicio; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cat_servicio (id, nombre, codigo, imagen_cat) FROM stdin;
1	poda	P001	servicio/poda.jpe
\.


--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 198
-- Name: web_cat_servicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cat_servicio_id_seq', 1, true);


--
-- TOC entry 2338 (class 0 OID 16465)
-- Dependencies: 199
-- Data for Name: web_cliente; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cliente (id, nombre, apellido, correo, cedula, telefono, usuario_id) FROM stdin;
1	Paul	Ochoa	palichis@solid-ec.org	0104763099	4082150	1
\.


--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 200
-- Name: web_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cliente_id_seq', 1, true);


--
-- TOC entry 2340 (class 0 OID 16470)
-- Dependencies: 201
-- Data for Name: web_comentario; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_comentario (id, tema, fecha, descripcion, cproducto_id, cusuario_id, cservicio_id, cforo_id) FROM stdin;
1	prueba	2015-01-28 20:35:01-05	prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de comentario prueba de c	1	1	\N	\N
2	prueba 2	2015-01-28 19:00:00-05	prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2prueba 2	1	1	\N	\N
3	prueba3	2015-02-01 14:55:19.488441-05	Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias promociones Noticias prom	\N	1	1	\N
4	cualquiera	2015-03-02 19:58:17.56229-05	algo rarop	\N	2	\N	1
5	prueba	2015-03-02 20:29:20.663646-05	prueba de comentario	\N	1	\N	3
6	prueba2	2015-03-02 20:29:41.590087-05	Prueba del correcto funcionamiento de los mensajes :)	\N	1	\N	3
7	prueba2	2015-03-02 20:32:15.474641-05	Prueba del correcto funcionamiento de los mensajes :)	\N	1	\N	3
8	prueba2	2015-03-02 20:32:56.826797-05	Prueba del correcto funcionamiento de los mensajes :)	\N	1	\N	3
9	q34t	2015-03-02 20:34:59.631522-05	qewrtqet34tqwew;e 'jf	\N	1	\N	3
10	prueba gardenia	2015-03-02 21:38:30.426996-05	ayau	1	1	\N	\N
11	prueba orden	2015-03-02 21:43:16.192226-05	Prueba del orden de los comentarios	1	1	\N	\N
12	prueba servicio	2015-03-02 21:44:16.908138-05	prueba orden servicio	\N	1	1	\N
13	orden	2015-03-02 21:46:02.258799-05	orden dentro de los comentarios, el mas nuevo primero	\N	1	\N	3
14	11111111111111111111	2015-03-02 21:49:54.075941-05	222222222222222 2222222222 2222222 22222 222222222222 2222222222 22222222222222222 2  222222222	\N	1	\N	1
\.


--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 202
-- Name: web_comentario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_comentario_id_seq', 14, true);


--
-- TOC entry 2342 (class 0 OID 16478)
-- Dependencies: 203
-- Data for Name: web_cotizacion; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cotizacion (id, costo_total, fecha, cliente_id) FROM stdin;
12	67	2015-02-12	1
13	67	2015-02-12	1
14	67	2015-02-12	1
15	67	2015-02-12	1
16	67	2015-02-12	1
17	67	2015-02-12	1
18	67	2015-02-12	1
\.


--
-- TOC entry 2343 (class 0 OID 16481)
-- Dependencies: 204
-- Data for Name: web_cotizacion_detalle; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_cotizacion_detalle (id, cantidad, valor_unitario, cotizacion_id, product_id, servicio_id, total) FROM stdin;
8	3	3	14	4	\N	9
9	4	12	14	1	\N	48
10	5	2	14	\N	1	10
11	3	3	15	4	\N	9
12	4	12	15	1	\N	48
13	5	2	15	\N	1	10
14	3	3	16	4	\N	9
15	4	12	16	1	\N	48
16	5	2	16	\N	1	10
17	3	3	17	4	\N	9
18	4	12	17	1	\N	48
19	5	2	17	\N	1	10
20	3	3	18	4	\N	9
21	4	12	18	1	\N	48
22	5	2	18	\N	1	10
\.


--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 205
-- Name: web_cotizacion_detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cotizacion_detalle_id_seq', 22, true);


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 206
-- Name: web_cotizacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_cotizacion_id_seq', 18, true);


--
-- TOC entry 2346 (class 0 OID 16488)
-- Dependencies: 207
-- Data for Name: web_elmolino; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_elmolino (id, correo, direccion, historia, mision, telefono, vision, mapa) FROM stdin;
2	info@viveroelmolino.com	Av. Maldonado S57 - 109 y Pasaje arpi	El Vivero y Huerto nace  por el gusto de las plantas y la tierra de su propietaria, en  Junio del 2013 decide abrir sus puertas al cliente para dar a conocer sus productos y servicios orgánicos, está ubicado en el  Sur de la ciudad de Quito en el  sector de Guamaní.  La microempresa ofrece a sus clientes  venta de plantas ornamentales de interior y exterior, medicinales, frutales, verduras y hortalizas, bonsái, diseño y mantenimiento de jardines. Pensando en la conservación y  mejoramiento del  medio ambiente,  contando con un excelente  huerto. Así también provee abonos, fertilizantes, insecticidas y accesorios, aportando  al cuidado del medio ambiente.	Satisfacer las necesidades de ornamentación,  de viviendas, oficinas a nuestros clientes, ofreciendo   los  mejores productos,  insumos  y  servicios  de  jardinería  orgánicos a  los mejores precios.	3070539	En corto plazo se pretende ser el único vivero y huerto certificado en producción biológica para el Sur de quito, ser pilonera de plantas orgánicas para huerto, aplicando experiencia y mejorando técnicas de producción, venta y  precios.	<iframe src="https://www.google.com/maps/embed?pb=!1m22!1m12!1m3!1d3989.7487909489064!2d-78.5488567281109!3d-0.338256323098954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m7!1i0!3e6!4m0!4m3!3m2!1d-0.3382402!2d-78.5495112!5e0!3m2!1ses!2sec!4v1425340709517" width="340" height="220" frameborder="0" style="border:0"></iframe>
\.


--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 208
-- Name: web_elmolino_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_elmolino_id_seq', 2, true);


--
-- TOC entry 2348 (class 0 OID 16496)
-- Dependencies: 209
-- Data for Name: web_foro; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_foro (id, fecha, tema, ccomentario, cat_foro_id, usuario_id, coment_small) FROM stdin;
3	2015-02-01	Brasil: mucha más 	De 43.000 especies vegetales, más de 2.000 están amenazadas, cinco veces por encima de la estimación oficial pppppppppppppppppp	1	1	De 43.000 especies vegetales, más de 2.000 están amenazadas, cinco veces por encima de la estimación oficial
1	2015-02-01	nueva pagina	El vivero El Molino, cuenta con una nueva pagina web desde hoy ppppppppppppppppppppppppppppppppppp	1	1	El vivero El Molino, cuenta con una nueva pagina web desde hoy
2	2015-02-01	Secreto de las plant	Aparte de las normas básicas de la comunidad, este foro cuenta con unos consejos a tomar en cuenta:      El foro es general pero no quiere decir que temas exclusivos de Wii, XBOX 360 o PS3 puedan ir aquí también.     Si se quiere anunciar un clan no se abrirá un tema, se publicará un mensaje aquí     Si tienes un canal en Youtube y quieres compartirlo con la comunidad deberás publicar un mensaje aquí     Los temas concernientes a historia de la cultura del videojuego irán en retrogaming     Se pueden publicar todo tipo de noticias de tipo multiplataforma salvo los ya publicados por 3DJuegos en su foro correspondiente.     El fin de este foro son los debates y la ayuda a temas generales de los videjuegos como pueden ser: -> Ayuda para comprar juegos por internet. -> Debate sobre sagas de videojuegos. -> Exponer vuestros juegos personales así como los del mundo web.     Se considera SPAM la publicación de enlaces a juegos de internet donde el clickeo beneficie al usuario (Bruto, Mycity, 	1	1	Una nueva técnica de laser permite estudiar los mecanismos de la fotosíntesis de las plantas sin destruirlos
\.


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 210
-- Name: web_foro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_foro_id_seq', 3, true);


--
-- TOC entry 2350 (class 0 OID 16501)
-- Dependencies: 211
-- Data for Name: web_galeria; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_galeria (id, imagen, activa) FROM stdin;
1	galeria/1_UbUm4oD.jpg	t
2	galeria/2_ziNMChA.jpg	t
\.


--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 212
-- Name: web_galeria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_galeria_id_seq', 2, true);


--
-- TOC entry 2352 (class 0 OID 16506)
-- Dependencies: 213
-- Data for Name: web_menu; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_menu (id, nombre, url, nivel, padre_id, acceso_id) FROM stdin;
1	Inicio	/	1	\N	2
2	Huerto	/huerto	1	\N	2
3	Vivero	/vivero	1	\N	2
4	Servicios	/servicios	1	\N	2
5	El Molino	/el_molino	1	\N	2
7	Compras	/	1	\N	1
8	Ingresar	/entrar	1	\N	2
9	carrito	/compras	1	\N	3
6	Salir	/salir	1	\N	3
\.


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 214
-- Name: web_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_menu_id_seq', 9, true);


--
-- TOC entry 2354 (class 0 OID 16511)
-- Dependencies: 215
-- Data for Name: web_oferta; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_oferta (id, nombre, imagen) FROM stdin;
1	vivero	./vivero1_PKNYmGg.jpg
2	huerto	./huertos_6ZZZYV3.jpg
3	servicio	./servicio_Le9Ja03.jpg
\.


--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 216
-- Name: web_oferta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_oferta_id_seq', 3, true);


--
-- TOC entry 2356 (class 0 OID 16519)
-- Dependencies: 217
-- Data for Name: web_producto; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_producto (id, codigo, nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, sol, crecimiento, detalle, costo, cantidad, imagen, imagen1, imagen2, cat_producto_id, variedad_id) FROM stdin;
1	I001	Gardenia	Gardenia	Gardenia	Gardenia	B	B	Garde	La gardenia es una planta de la familia de las rubiáceas originaria de China, El nombre científico de la especie más común es Gardenia jasminoides. Es un arbusto de hojas perennes de color verde claro, brillantes y lisas. Sus flores son blancas, similares a las rosas y se usan comúnmente como plantas ornamentales. Una flor, colocada en un vasito con agua, puede perfumar con un intenso y agradable aroma una habitación durante un par de días.  El género fue nombrado por Carl Linnaeus en honor de Alexander Garden (1730-1791), un naturalista escocés.  Uno de sus principales requerimientos de cultivo es que necesitan crecer en tierras ácidas compuestas de hierro y con abundante humedad. Pueden llegar a tener una altura promedio de 2 m, dependiendo de la especie. Las temporadas más adecuadas para su cultivo son primavera y otoño.	12	12	productos/3.jpg	productos/esterior.jpg	productos/exte.jpeg	1	1
2	I002	Tulipan	Magnoliophyta	Plantae	12	M	B	12	 Etimología  La palabra «tulipán» proviene del vocablo turco otomano tülbend que, a su vez, proviene del término persa dulband. Ambas palabras significan 'turbante' y hacen referencia a la forma que adopta la flor cuando está cerrada. Origen y distribución  El centro de diversidad del género se encuentra en las montañas Pamir e Hindu Kush en las estepas de Kazajistán,3 encontrándose distribuido por Oriente Medio, Irán y Afganistán particularmente, hacia la península de Anatolia, Europa del Sur y norte de África, por el Oeste, y hacia el noreste de China, por el Este.  Los tulipanes se cultivaron como plantas ornamentales desde principios del siglo XI en Anatolia. Desde esta región e Irán provendrían los bulbos tomados por el toledano Ibn Massal para su cultivo en el Al-Ándalus, según documenta la obra Umda del botánico Abu-I-Jayr, fechada entre los siglos XI y XII, estudiada por los investigadores Esteban Hernández Bermejo y Expiración García.4 Con la Edad Moderna, su cultivo se extendió hacia los países del norte de Europa, convirtiéndose en la flor símbolo de los Países Bajos y parte inseparable de su paisaje. También tiene un uso como símbolo nacional en Irán y Turquía. Morfología Morfología de la flor de Tulipa. Detalle del androceo y del gineceo de Tulipa.  Son plantas herbáceas y bulbosas. Los bulbos son truncados basalmente y elongados hacia el ápice, cubiertos por una túnica usualmente pilosa por dentro. El tallo es simple (ocasionalmente ramificado) y subterráneo en su porción basal. Las hojas son basales y caulinares, espaciadas o más o menos arrosetadas, lineales, aovadas o lanceoladas.  Las flores son actinomorfas y hermafroditas, erguidas o, más raramente, péndulas; y se hallan dispuestas en número de 1 a 3 en la extremidad de los tallos floríferos. El perigonio es anchamente infundibuliforme o acampanado, compuesto de tépalos libres, subiguales, generalmente anchos e imbricados, coloreados, frecuentemente con un diminuto mechón de pelos blancos en el ápice. El androceo está formado por 6 estambres, inclusos, con los filamentos aplanados y las anteras oblongas. El ovario es súpero, trilocular, pluriovulado. El estilo es columnar o muy corto, el estigmas es trilobado. El fruto es una cápsula loculicida, pluriseminada. Las semillas son usualmente planas, subdeltoideas.5 Genética  En general todas las especies y cultivares de Tulipa son diploides con 2n=2x=24 cromosomas. La excepción más conspicua la constituyen los cultivares híbridos del tipo denominado "Darwin", los cuales son triploides con 2n=3x=36 cromosomas y, además, producto del cruzamiento entre dos especies: Tulipa fosteriana y T. gesneriana .6 7 8 El tulipán de jardín	1	1	productos/vivero1.jpg	productos/small-fundraising-heart.png	productos/servicio.jpg	1	1
3	I002	Margarita	Margarita	Bellis perennis	1	A	B	12	Planta herbácea perenne, ocasionalmente con pequeños rizomas, glabrescentes o laxamente pubescentes y hojas obovado-espatuladas, crenadas o dentada-redondeadas de 10-60 por 4-20 mm. Escapos sin hojas de hasta 20 cm de altura. Las brácteas involucrales tienen pelos pluricelulares más o menos abundantes en el dorso. Las flores hemiliguladas de 5,5-8,5 mm, sobrepasan el involucro en 2-5 mm, y tienen un tubo de 0,3-0,8 mm; son blancas, a veces teñidas de púrpura; los flósculos, amarillos, tienen 1,5-2 mm. El fruto es un aquenio de 1-1,5 por 0,5-1 mm, obovoideo, comprimido, algo peludo, con borde periférico engrosado; vilano ausente.1	1	2	productos/servicio_da3evqF.jpg	productos/fb.png	productos/vivero1_2DwS6FI.jpg	1	1
4	h001	coliflor		Brassica oleracea		B	B		coliflor	3	3	productos/hidro.png	productos/hidro_Vgcl54q.png	productos/hidro_qQ5tOiy.png	4	1
\.


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 218
-- Name: web_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_producto_id_seq', 4, true);


--
-- TOC entry 2362 (class 0 OID 16874)
-- Dependencies: 223
-- Data for Name: web_servicio; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_servicio (id, codigo, nombre, costo, cat_servicio_id, duracion, descripcion) FROM stdin;
1	pa001	Poda Arboles	2	1	3.5 horas	Poda de todo tipo de arboles
\.


--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 224
-- Name: web_servicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_servicio_id_seq', 1, true);


--
-- TOC entry 2358 (class 0 OID 16532)
-- Dependencies: 219
-- Data for Name: web_siguenos; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_siguenos (id, red, url, imagen) FROM stdin;
2	facebook	http://faceebok.com	red/fb.png
1	twitter	http://twitter.com/	red/tw.png
\.


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 220
-- Name: web_siguenos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_siguenos_id_seq', 2, true);


--
-- TOC entry 2360 (class 0 OID 16540)
-- Dependencies: 221
-- Data for Name: web_variedad; Type: TABLE DATA; Schema: public; Owner: elmolino
--

COPY web_variedad (id, nombre, origen, situacion, cultivo, poda, multiplicacion) FROM stdin;
1	Gardenia	Gardenia	Gardenia	Gardenia	Gardenia	Gardenia
\.


--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 222
-- Name: web_variedad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: elmolino
--

SELECT pg_catalog.setval('web_variedad_id_seq', 1, true);


--
-- TOC entry 2080 (class 2606 OID 16573)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2086 (class 2606 OID 16575)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2088 (class 2606 OID 16577)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2082 (class 2606 OID 16579)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2091 (class 2606 OID 16581)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2093 (class 2606 OID 16583)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2102 (class 2606 OID 16585)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2104 (class 2606 OID 16587)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2095 (class 2606 OID 16589)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2108 (class 2606 OID 16591)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2110 (class 2606 OID 16593)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2098 (class 2606 OID 16595)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2114 (class 2606 OID 16597)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2116 (class 2606 OID 16599)
-- Name: django_content_type_app_label_3ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2118 (class 2606 OID 16601)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2120 (class 2606 OID 16603)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2123 (class 2606 OID 16605)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2129 (class 2606 OID 16607)
-- Name: web_carrito_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_pkey PRIMARY KEY (id);


--
-- TOC entry 2133 (class 2606 OID 16609)
-- Name: web_cat_foro_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_pkey PRIMARY KEY (id);


--
-- TOC entry 2135 (class 2606 OID 16611)
-- Name: web_cat_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cat_producto
    ADD CONSTRAINT web_cat_producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2137 (class 2606 OID 16613)
-- Name: web_cat_servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cat_servicio
    ADD CONSTRAINT web_cat_servicio_pkey PRIMARY KEY (id);


--
-- TOC entry 2140 (class 2606 OID 16615)
-- Name: web_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2146 (class 2606 OID 16617)
-- Name: web_comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_pkey PRIMARY KEY (id);


--
-- TOC entry 2154 (class 2606 OID 16619)
-- Name: web_cotizacion_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_pkey PRIMARY KEY (id);


--
-- TOC entry 2149 (class 2606 OID 16621)
-- Name: web_cotizacion_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_pkey PRIMARY KEY (id);


--
-- TOC entry 2156 (class 2606 OID 16623)
-- Name: web_elmolino_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_elmolino
    ADD CONSTRAINT web_elmolino_pkey PRIMARY KEY (id);


--
-- TOC entry 2160 (class 2606 OID 16625)
-- Name: web_foro_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_pkey PRIMARY KEY (id);


--
-- TOC entry 2162 (class 2606 OID 16627)
-- Name: web_galeria_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_galeria
    ADD CONSTRAINT web_galeria_pkey PRIMARY KEY (id);


--
-- TOC entry 2165 (class 2606 OID 16629)
-- Name: web_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 2167 (class 2606 OID 16631)
-- Name: web_oferta_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_oferta
    ADD CONSTRAINT web_oferta_pkey PRIMARY KEY (id);


--
-- TOC entry 2171 (class 2606 OID 16633)
-- Name: web_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2173 (class 2606 OID 16637)
-- Name: web_siguenos_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_siguenos
    ADD CONSTRAINT web_siguenos_pkey PRIMARY KEY (id);


--
-- TOC entry 2175 (class 2606 OID 16639)
-- Name: web_variedad_pkey; Type: CONSTRAINT; Schema: public; Owner: elmolino; Tablespace: 
--

ALTER TABLE ONLY web_variedad
    ADD CONSTRAINT web_variedad_pkey PRIMARY KEY (id);


--
-- TOC entry 2078 (class 1259 OID 16640)
-- Name: auth_group_name_331666e8_like; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2083 (class 1259 OID 16641)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2084 (class 1259 OID 16642)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2089 (class 1259 OID 16643)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2099 (class 1259 OID 16644)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2100 (class 1259 OID 16645)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2105 (class 1259 OID 16646)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2106 (class 1259 OID 16647)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2096 (class 1259 OID 16648)
-- Name: auth_user_username_94b8aae_like; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2111 (class 1259 OID 16649)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2112 (class 1259 OID 16650)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2121 (class 1259 OID 16651)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2124 (class 1259 OID 16652)
-- Name: django_session_session_key_630ca218_like; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2125 (class 1259 OID 16653)
-- Name: web_carrito_4bb699dc; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_carrito_4bb699dc ON web_carrito USING btree (servicio_id);


--
-- TOC entry 2126 (class 1259 OID 16654)
-- Name: web_carrito_9bea82de; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_carrito_9bea82de ON web_carrito USING btree (product_id);


--
-- TOC entry 2127 (class 1259 OID 16656)
-- Name: web_carrito_abfe0f96; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_carrito_abfe0f96 ON web_carrito USING btree (usuario_id);


--
-- TOC entry 2130 (class 1259 OID 16657)
-- Name: web_cat_foro_4a860110; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cat_foro_4a860110 ON web_cat_foro USING btree (cliente_id);


--
-- TOC entry 2131 (class 1259 OID 16658)
-- Name: web_cat_foro_58c8bbca; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cat_foro_58c8bbca ON web_cat_foro USING btree (cat_foro_padre_id);


--
-- TOC entry 2138 (class 1259 OID 16659)
-- Name: web_cliente_abfe0f96; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cliente_abfe0f96 ON web_cliente USING btree (usuario_id);


--
-- TOC entry 2141 (class 1259 OID 25392)
-- Name: web_comentario_bac19c31; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_comentario_bac19c31 ON web_comentario USING btree (cforo_id);


--
-- TOC entry 2142 (class 1259 OID 16837)
-- Name: web_comentario_df783f9a; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_comentario_df783f9a ON web_comentario USING btree (cservicio_id);


--
-- TOC entry 2143 (class 1259 OID 16660)
-- Name: web_comentario_ed3f3234; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_comentario_ed3f3234 ON web_comentario USING btree (cusuario_id);


--
-- TOC entry 2144 (class 1259 OID 16661)
-- Name: web_comentario_f8cbbb71; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_comentario_f8cbbb71 ON web_comentario USING btree (cproducto_id);


--
-- TOC entry 2147 (class 1259 OID 16662)
-- Name: web_cotizacion_4a860110; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cotizacion_4a860110 ON web_cotizacion USING btree (cliente_id);


--
-- TOC entry 2150 (class 1259 OID 16663)
-- Name: web_cotizacion_detalle_1b44b901; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cotizacion_detalle_1b44b901 ON web_cotizacion_detalle USING btree (cotizacion_id);


--
-- TOC entry 2151 (class 1259 OID 16664)
-- Name: web_cotizacion_detalle_4bb699dc; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cotizacion_detalle_4bb699dc ON web_cotizacion_detalle USING btree (servicio_id);


--
-- TOC entry 2152 (class 1259 OID 16665)
-- Name: web_cotizacion_detalle_9bea82de; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_cotizacion_detalle_9bea82de ON web_cotizacion_detalle USING btree (product_id);


--
-- TOC entry 2157 (class 1259 OID 16666)
-- Name: web_foro_abfe0f96; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_foro_abfe0f96 ON web_foro USING btree (usuario_id);


--
-- TOC entry 2158 (class 1259 OID 16667)
-- Name: web_foro_d79f22b7; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_foro_d79f22b7 ON web_foro USING btree (cat_foro_id);


--
-- TOC entry 2163 (class 1259 OID 16668)
-- Name: web_menu_c17c11db; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_menu_c17c11db ON web_menu USING btree (padre_id);


--
-- TOC entry 2168 (class 1259 OID 16669)
-- Name: web_producto_7ae3f7b3; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_producto_7ae3f7b3 ON web_producto USING btree (cat_producto_id);


--
-- TOC entry 2169 (class 1259 OID 16670)
-- Name: web_producto_f2e63cb8; Type: INDEX; Schema: public; Owner: elmolino; Tablespace: 
--

CREATE INDEX web_producto_f2e63cb8 ON web_producto USING btree (variedad_id);


--
-- TOC entry 2176 (class 2606 OID 16672)
-- Name: auth_group_permiss_permission_id_23962d04_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2177 (class 2606 OID 16677)
-- Name: auth_group_permissions_group_id_58c48ba9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2178 (class 2606 OID 16682)
-- Name: auth_permiss_content_type_id_51277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2179 (class 2606 OID 16687)
-- Name: auth_user_groups_group_id_30a071c9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2180 (class 2606 OID 16692)
-- Name: auth_user_groups_user_id_24702650_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2181 (class 2606 OID 16697)
-- Name: auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2182 (class 2606 OID 16702)
-- Name: auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2183 (class 2606 OID 16707)
-- Name: django_admin_content_type_id_5151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2184 (class 2606 OID 16712)
-- Name: django_admin_log_user_id_1c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2185 (class 2606 OID 16717)
-- Name: web_carrito_product_id_52430f56_fk_web_producto_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2186 (class 2606 OID 16727)
-- Name: web_carrito_usuario_id_67d75097_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2188 (class 2606 OID 16812)
-- Name: web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id FOREIGN KEY (cat_foro_padre_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2187 (class 2606 OID 16807)
-- Name: web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id FOREIGN KEY (cliente_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2189 (class 2606 OID 16742)
-- Name: web_cliente_usuario_id_4da5b857_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2192 (class 2606 OID 25393)
-- Name: web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id FOREIGN KEY (cforo_id) REFERENCES web_foro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2191 (class 2606 OID 16843)
-- Name: web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id FOREIGN KEY (cproducto_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2190 (class 2606 OID 16817)
-- Name: web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id FOREIGN KEY (cusuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2194 (class 2606 OID 16822)
-- Name: web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id FOREIGN KEY (cotizacion_id) REFERENCES web_cotizacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2193 (class 2606 OID 16757)
-- Name: web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2195 (class 2606 OID 16827)
-- Name: web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2196 (class 2606 OID 16777)
-- Name: web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id FOREIGN KEY (cat_foro_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2197 (class 2606 OID 16782)
-- Name: web_foro_usuario_id_164db508_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2199 (class 2606 OID 16890)
-- Name: web_menu_acceso_id_4da5b857_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id FOREIGN KEY (acceso_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2198 (class 2606 OID 16787)
-- Name: web_menu_padre_id_3716f5f9_fk_web_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id FOREIGN KEY (padre_id) REFERENCES web_menu(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2200 (class 2606 OID 16792)
-- Name: web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id FOREIGN KEY (cat_producto_id) REFERENCES web_cat_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2201 (class 2606 OID 16797)
-- Name: web_producto_variedad_id_285d87e9_fk_web_variedad_id; Type: FK CONSTRAINT; Schema: public; Owner: elmolino
--

ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id FOREIGN KEY (variedad_id) REFERENCES web_variedad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-03-03 07:58:00 ECT

--
-- PostgreSQL database dump complete
--

