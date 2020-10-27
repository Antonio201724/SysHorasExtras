--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8 (Ubuntu 11.8-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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
-- Name: he; Type: SCHEMA; Schema: -; Owner: sybollfpmvrzeo
--

CREATE SCHEMA he;


ALTER SCHEMA he OWNER TO sybollfpmvrzeo;

SET default_tablespace = '';

--
-- Name: cargo; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.cargo (
    id_cargo integer NOT NULL,
    nombre_cargo character varying NOT NULL,
    salario numeric NOT NULL
);


ALTER TABLE he.cargo OWNER TO sybollfpmvrzeo;

--
-- Name: condicion; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.condicion (
    id_condicion integer NOT NULL,
    aprobado boolean NOT NULL,
    rechazado boolean NOT NULL
);


ALTER TABLE he.condicion OWNER TO sybollfpmvrzeo;

--
-- Name: departamento; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.departamento (
    id_departamento integer NOT NULL,
    nombre_departamento character varying NOT NULL
);


ALTER TABLE he.departamento OWNER TO sybollfpmvrzeo;

--
-- Name: estado_registro; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.estado_registro (
    id_estado_registro integer NOT NULL,
    "descripción_estado" character varying NOT NULL
);


ALTER TABLE he.estado_registro OWNER TO sybollfpmvrzeo;

--
-- Name: estado_trabajador; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.estado_trabajador (
    id_estado_trabajador integer NOT NULL,
    nombre_estado character varying NOT NULL
);


ALTER TABLE he.estado_trabajador OWNER TO sybollfpmvrzeo;

--
-- Name: hras_extras; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.hras_extras (
    id_hras_extras integer NOT NULL,
    trabajador integer NOT NULL,
    condicion bigint NOT NULL,
    fecha_hras_extras date NOT NULL,
    salario integer NOT NULL
);


ALTER TABLE he.hras_extras OWNER TO sybollfpmvrzeo;

--
-- Name: registro_diario; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.registro_diario (
    id_registro_diario integer NOT NULL,
    trabajador integer NOT NULL,
    fecha_entrada date NOT NULL,
    fecha_salida date NOT NULL,
    estado_registro integer NOT NULL
);


ALTER TABLE he.registro_diario OWNER TO sybollfpmvrzeo;

--
-- Name: tipo_usuario; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.tipo_usuario (
    id_tipo_usuario bigint NOT NULL,
    nombre_tipo_usuario character varying NOT NULL
);


ALTER TABLE he.tipo_usuario OWNER TO sybollfpmvrzeo;

--
-- Name: trabajador; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.trabajador (
    id_trabajador bigint NOT NULL,
    ci_trabajador integer NOT NULL,
    primer_nombre character varying NOT NULL,
    segundo_nombre character varying NOT NULL,
    primer_apellido character varying NOT NULL,
    segundo_apellido character varying NOT NULL,
    telefono numeric NOT NULL,
    estado_trabajador integer NOT NULL,
    direccion character varying NOT NULL,
    departamento integer NOT NULL,
    cargo integer NOT NULL
);


ALTER TABLE he.trabajador OWNER TO sybollfpmvrzeo;

--
-- Name: usuario; Type: TABLE; Schema: he; Owner: sybollfpmvrzeo
--

CREATE TABLE he.usuario (
    id_usuario bigint NOT NULL,
    ci_trabajador integer NOT NULL,
    nombre_usuario character varying NOT NULL,
    apellido_usuario character varying NOT NULL,
    usuario character varying,
    "contraseña" character varying NOT NULL,
    status boolean NOT NULL,
    rol character NOT NULL,
    tipo_usuario integer NOT NULL
);


ALTER TABLE he.usuario OWNER TO sybollfpmvrzeo;

--
-- Data for Name: cargo; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.cargo (id_cargo, nombre_cargo, salario) FROM stdin;
\.


--
-- Data for Name: condicion; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.condicion (id_condicion, aprobado, rechazado) FROM stdin;
\.


--
-- Data for Name: departamento; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.departamento (id_departamento, nombre_departamento) FROM stdin;
\.


--
-- Data for Name: estado_registro; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.estado_registro (id_estado_registro, "descripción_estado") FROM stdin;
\.


--
-- Data for Name: estado_trabajador; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.estado_trabajador (id_estado_trabajador, nombre_estado) FROM stdin;
\.


--
-- Data for Name: hras_extras; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.hras_extras (id_hras_extras, trabajador, condicion, fecha_hras_extras, salario) FROM stdin;
\.


--
-- Data for Name: registro_diario; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.registro_diario (id_registro_diario, trabajador, fecha_entrada, fecha_salida, estado_registro) FROM stdin;
\.


--
-- Data for Name: tipo_usuario; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.tipo_usuario (id_tipo_usuario, nombre_tipo_usuario) FROM stdin;
\.


--
-- Data for Name: trabajador; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.trabajador (id_trabajador, ci_trabajador, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, telefono, estado_trabajador, direccion, departamento, cargo) FROM stdin;
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: he; Owner: sybollfpmvrzeo
--

COPY he.usuario (id_usuario, ci_trabajador, nombre_usuario, apellido_usuario, usuario, "contraseña", status, tipo_usuario, Rol) FROM stdin;
\.


--
-- Name: cargo cargo_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.cargo
    ADD CONSTRAINT cargo_pk PRIMARY KEY (id_cargo);


--
-- Name: condicion condicion_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.condicion
    ADD CONSTRAINT condicion_pk PRIMARY KEY (id_condicion);


--
-- Name: departamento departamento_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.departamento
    ADD CONSTRAINT departamento_pk PRIMARY KEY (id_departamento);


--
-- Name: estado_registro estado_registro_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.estado_registro
    ADD CONSTRAINT estado_registro_pk PRIMARY KEY (id_estado_registro);


--
-- Name: estado_trabajador estado_trabajador_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.estado_trabajador
    ADD CONSTRAINT estado_trabajador_pk PRIMARY KEY (id_estado_trabajador);


--
-- Name: hras_extras hras_extras_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.hras_extras
    ADD CONSTRAINT hras_extras_pk PRIMARY KEY (id_hras_extras);


--
-- Name: registro_diario registro_diario_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.registro_diario
    ADD CONSTRAINT registro_diario_pk PRIMARY KEY (id_registro_diario);


--
-- Name: tipo_usuario tipo_usuario_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY (id_tipo_usuario);


--
-- Name: trabajador trabajador_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.trabajador
    ADD CONSTRAINT trabajador_pk PRIMARY KEY (id_trabajador);


--
-- Name: usuario usuario_pk; Type: CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id_usuario);


--
-- Name: cargo_id_cargo_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE UNIQUE INDEX cargo_id_cargo_idx ON he.cargo USING btree (id_cargo);


--
-- Name: departamento_id_departamento_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE UNIQUE INDEX departamento_id_departamento_idx ON he.departamento USING btree (id_departamento);


--
-- Name: estado_id_estado_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE UNIQUE INDEX estado_id_estado_idx ON he.estado_trabajador USING btree (id_estado_trabajador);


--
-- Name: tipo_usuario_id_tipo_usuario_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE INDEX tipo_usuario_id_tipo_usuario_idx ON he.tipo_usuario USING btree (id_tipo_usuario);


--
-- Name: trabajador_id_trabajador_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE UNIQUE INDEX trabajador_id_trabajador_idx ON he.trabajador USING btree (id_trabajador);


--
-- Name: usuario_id_usuario_idx; Type: INDEX; Schema: he; Owner: sybollfpmvrzeo
--

CREATE INDEX usuario_id_usuario_idx ON he.usuario USING btree (id_usuario);


--
-- Name: hras_extras hras_extras_fk; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.hras_extras
    ADD CONSTRAINT hras_extras_fk FOREIGN KEY (trabajador) REFERENCES he.trabajador(id_trabajador);


--
-- Name: hras_extras hras_extras_fk_1; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.hras_extras
    ADD CONSTRAINT hras_extras_fk_1 FOREIGN KEY (salario) REFERENCES he.cargo(id_cargo);


--
-- Name: hras_extras hras_extras_fk_2; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.hras_extras
    ADD CONSTRAINT hras_extras_fk_2 FOREIGN KEY (condicion) REFERENCES he.condicion(id_condicion);


--
-- Name: registro_diario registro_diario_fk; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.registro_diario
    ADD CONSTRAINT registro_diario_fk FOREIGN KEY (trabajador) REFERENCES he.trabajador(id_trabajador);


--
-- Name: registro_diario registro_diario_fk_1; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.registro_diario
    ADD CONSTRAINT registro_diario_fk_1 FOREIGN KEY (estado_registro) REFERENCES he.estado_registro(id_estado_registro);


--
-- Name: trabajador trabajador_fk; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.trabajador
    ADD CONSTRAINT trabajador_fk FOREIGN KEY (estado_trabajador) REFERENCES he.estado_trabajador(id_estado_trabajador);


--
-- Name: trabajador trabajador_fk_1; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.trabajador
    ADD CONSTRAINT trabajador_fk_1 FOREIGN KEY (cargo) REFERENCES he.cargo(id_cargo);


--
-- Name: trabajador trabajador_fk_2; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.trabajador
    ADD CONSTRAINT trabajador_fk_2 FOREIGN KEY (departamento) REFERENCES he.departamento(id_departamento);


--
-- Name: usuario usuario_fk; Type: FK CONSTRAINT; Schema: he; Owner: sybollfpmvrzeo
--

ALTER TABLE ONLY he.usuario
    ADD CONSTRAINT usuario_fk FOREIGN KEY (tipo_usuario) REFERENCES he.tipo_usuario(id_tipo_usuario);


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO sybollfpmvrzeo;


--
-- PostgreSQL database dump complete
--

