PGDMP             
            |            BD_Cine    9.6.24    9.6.24 (    {           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            |           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            }           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ~           1262    16422    BD_Cine    DATABASE     �   CREATE DATABASE "BD_Cine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "BD_Cine";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16466    actores    TABLE     �   CREATE TABLE public.actores (
    id_actor integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    fecha_nacimiento date NOT NULL
);
    DROP TABLE public.actores;
       public         postgres    false    3            �            1259    16449 	   peliculas    TABLE     �   CREATE TABLE public.peliculas (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    genero character varying(50),
    duracion integer,
    sinopsis text,
    poster character varying(255)
);
    DROP TABLE public.peliculas;
       public         postgres    false    3            �            1259    16447    peliculas_id_seq    SEQUENCE     y   CREATE SEQUENCE public.peliculas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.peliculas_id_seq;
       public       postgres    false    3    190            �           0    0    peliculas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.peliculas_id_seq OWNED BY public.peliculas.id;
            public       postgres    false    189            �            1259    16425    reservas    TABLE     �   CREATE TABLE public.reservas (
    id integer NOT NULL,
    pelicula character varying(255),
    hora timestamp without time zone,
    asientos character varying(255),
    nombre_usuario character varying(255)
);
    DROP TABLE public.reservas;
       public         postgres    false    3            �            1259    16423    reservas_id_seq    SEQUENCE     x   CREATE SEQUENCE public.reservas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.reservas_id_seq;
       public       postgres    false    186    3            �           0    0    reservas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.reservas_id_seq OWNED BY public.reservas.id;
            public       postgres    false    185            �            1259    16460    salas    TABLE     �   CREATE TABLE public.salas (
    id integer NOT NULL,
    numero_sala integer NOT NULL,
    capacidad integer NOT NULL,
    tipo character varying(50)
);
    DROP TABLE public.salas;
       public         postgres    false    3            �            1259    16458    salas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.salas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.salas_id_seq;
       public       postgres    false    3    192            �           0    0    salas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.salas_id_seq OWNED BY public.salas.id;
            public       postgres    false    191            �            1259    16436    usuarios    TABLE     p  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    tipo_documento character varying(20),
    numero_documento character varying(20),
    nombre character varying(100),
    apellido character varying(100),
    telefono character varying(20),
    fecha_nacimiento date
);
    DROP TABLE public.usuarios;
       public         postgres    false    3            �            1259    16434    usuarios_id_seq    SEQUENCE     x   CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public       postgres    false    188    3            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
            public       postgres    false    187            �           2604    16452    peliculas id    DEFAULT     l   ALTER TABLE ONLY public.peliculas ALTER COLUMN id SET DEFAULT nextval('public.peliculas_id_seq'::regclass);
 ;   ALTER TABLE public.peliculas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    190    190            �           2604    16428    reservas id    DEFAULT     j   ALTER TABLE ONLY public.reservas ALTER COLUMN id SET DEFAULT nextval('public.reservas_id_seq'::regclass);
 :   ALTER TABLE public.reservas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            �           2604    16463    salas id    DEFAULT     d   ALTER TABLE ONLY public.salas ALTER COLUMN id SET DEFAULT nextval('public.salas_id_seq'::regclass);
 7   ALTER TABLE public.salas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    192    192            �           2604    16439    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188            x          0    16466    actores 
   TABLE DATA               O   COPY public.actores (id_actor, nombre, apellido, fecha_nacimiento) FROM stdin;
    public       postgres    false    193   G)       u          0    16449 	   peliculas 
   TABLE DATA               S   COPY public.peliculas (id, titulo, genero, duracion, sinopsis, poster) FROM stdin;
    public       postgres    false    190   d)       �           0    0    peliculas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.peliculas_id_seq', 1, false);
            public       postgres    false    189            q          0    16425    reservas 
   TABLE DATA               P   COPY public.reservas (id, pelicula, hora, asientos, nombre_usuario) FROM stdin;
    public       postgres    false    186   �)       �           0    0    reservas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reservas_id_seq', 7, true);
            public       postgres    false    185            w          0    16460    salas 
   TABLE DATA               A   COPY public.salas (id, numero_sala, capacidad, tipo) FROM stdin;
    public       postgres    false    192   F*       �           0    0    salas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.salas_id_seq', 1, false);
            public       postgres    false    191            s          0    16436    usuarios 
   TABLE DATA               �   COPY public.usuarios (id, email, password, tipo_documento, numero_documento, nombre, apellido, telefono, fecha_nacimiento) FROM stdin;
    public       postgres    false    188   c*       �           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
            public       postgres    false    187            �           2606    16473    actores actores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.actores
    ADD CONSTRAINT actores_pkey PRIMARY KEY (id_actor);
 >   ALTER TABLE ONLY public.actores DROP CONSTRAINT actores_pkey;
       public         postgres    false    193    193            �           2606    16457    peliculas peliculas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_pkey;
       public         postgres    false    190    190            �           2606    16433    reservas reservas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_pkey;
       public         postgres    false    186    186            �           2606    16465    salas salas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.salas
    ADD CONSTRAINT salas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.salas DROP CONSTRAINT salas_pkey;
       public         postgres    false    192    192            �           2606    16446    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public         postgres    false    188    188            �           2606    16444    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public         postgres    false    188    188            x      x������ � �      u      x������ � �      q   �   x�}��
�0���S�6Y�������i��K�!������v�R!����j���/�Ө��2G����
��Q5e�ș�1�Xa��ܰ:/nL0�{)
���v����+d���IR7ν{z(�x-����U���{��4�$dW����S�n����FȬ�7�-��J�i��&� ��uX      w      x������ � �      s      x������ � �     