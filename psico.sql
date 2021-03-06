toc.dat                                                                                             0000600 0004000 0002000 00000060750 14215511120 0014437 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       0                     z         	   psico_dev #   13.6 (Ubuntu 13.6-0ubuntu0.21.10.1) #   13.6 (Ubuntu 13.6-0ubuntu0.21.10.1) R    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         S           1262    67560 	   psico_dev    DATABASE     ^   CREATE DATABASE psico_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE psico_dev;
                postgres    false         ?            1259    67641    agendas    TABLE     ?  CREATE TABLE public.agendas (
    id bigint NOT NULL,
    data_hora timestamp without time zone,
    paciente_id bigint NOT NULL,
    agendado boolean,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    convenio_id integer,
    obs character varying,
    valor_recebido double precision,
    recurso_id bigint
);
    DROP TABLE public.agendas;
       public         heap    postgres    false         ?            1259    67639    agendas_id_seq    SEQUENCE     w   CREATE SEQUENCE public.agendas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.agendas_id_seq;
       public          postgres    false    211         T           0    0    agendas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.agendas_id_seq OWNED BY public.agendas.id;
          public          postgres    false    210         ?            1259    67570    ar_internal_metadata    TABLE     ?   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false         ?            1259    67674    claudia2    TABLE     ?   CREATE TABLE public.claudia2 (
    id integer NOT NULL,
    dia date,
    paciente character varying,
    hora character varying,
    valor character varying,
    pagou_caixa character varying,
    pagou_bco character varying,
    paciente_id integer
);
    DROP TABLE public.claudia2;
       public         heap    postgres    false         ?            1259    67672    claudia2_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.claudia2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.claudia2_id_seq;
       public          postgres    false    215         U           0    0    claudia2_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.claudia2_id_seq OWNED BY public.claudia2.id;
          public          postgres    false    214         ?            1259    67612    clinicas    TABLE     s  CREATE TABLE public.clinicas (
    id bigint NOT NULL,
    nome character varying,
    endereco character varying,
    bairro character varying,
    cidade character varying,
    uf character varying,
    cnpj character varying,
    fone character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.clinicas;
       public         heap    postgres    false         ?            1259    67610    clinicas_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clinicas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clinicas_id_seq;
       public          postgres    false    207         V           0    0    clinicas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clinicas_id_seq OWNED BY public.clinicas.id;
          public          postgres    false    206         ?            1259    67601 	   convenios    TABLE     ?   CREATE TABLE public.convenios (
    id bigint NOT NULL,
    nome character varying,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.convenios;
       public         heap    postgres    false         ?            1259    67599    convenios_id_seq    SEQUENCE     y   CREATE SEQUENCE public.convenios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.convenios_id_seq;
       public          postgres    false    205         W           0    0    convenios_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.convenios_id_seq OWNED BY public.convenios.id;
          public          postgres    false    204         ?            1259    67590    evolucao_tipos    TABLE     ?   CREATE TABLE public.evolucao_tipos (
    id bigint NOT NULL,
    nome character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.evolucao_tipos;
       public         heap    postgres    false         ?            1259    67588    evolucao_tipos_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.evolucao_tipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.evolucao_tipos_id_seq;
       public          postgres    false    203         X           0    0    evolucao_tipos_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.evolucao_tipos_id_seq OWNED BY public.evolucao_tipos.id;
          public          postgres    false    202         ?            1259    67623 	   pacientes    TABLE     <  CREATE TABLE public.pacientes (
    id bigint NOT NULL,
    nome character varying,
    cpf character varying,
    data_nascimento date,
    sexo character varying,
    endereco character varying,
    bairro character varying,
    cidade character varying,
    fones character varying,
    nome_mae character varying,
    nome_pai character varying,
    estado_civil character varying,
    nome_conjuge character varying,
    filhos character varying,
    local_trabalho character varying,
    religiao character varying,
    profissao character varying,
    grau_instrucao character varying,
    observacoes text,
    convenio_id bigint,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    inativo boolean DEFAULT false
);
    DROP TABLE public.pacientes;
       public         heap    postgres    false         ?            1259    67621    pacientes_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pacientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pacientes_id_seq;
       public          postgres    false    209         Y           0    0    pacientes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;
          public          postgres    false    208         ?            1259    67686    recebimentos    TABLE     (  CREATE TABLE public.recebimentos (
    id bigint NOT NULL,
    data_recebimento date,
    recurso_id bigint NOT NULL,
    valor_recebido double precision,
    obs character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
     DROP TABLE public.recebimentos;
       public         heap    postgres    false         ?            1259    67684    recebimentos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.recebimentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.recebimentos_id_seq;
       public          postgres    false    217         Z           0    0    recebimentos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.recebimentos_id_seq OWNED BY public.recebimentos.id;
          public          postgres    false    216         ?            1259    67658    recursos    TABLE     ?   CREATE TABLE public.recursos (
    id bigint NOT NULL,
    nome character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.recursos;
       public         heap    postgres    false         ?            1259    67656    recursos_id_seq    SEQUENCE     x   CREATE SEQUENCE public.recursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.recursos_id_seq;
       public          postgres    false    213         [           0    0    recursos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.recursos_id_seq OWNED BY public.recursos.id;
          public          postgres    false    212         ?            1259    67562    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false         ?            1259    67709    users    TABLE     ?  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false         ?            1259    67707    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    219         \           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218         ?           2604    67644 
   agendas id    DEFAULT     h   ALTER TABLE ONLY public.agendas ALTER COLUMN id SET DEFAULT nextval('public.agendas_id_seq'::regclass);
 9   ALTER TABLE public.agendas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211         ?           2604    67677    claudia2 id    DEFAULT     j   ALTER TABLE ONLY public.claudia2 ALTER COLUMN id SET DEFAULT nextval('public.claudia2_id_seq'::regclass);
 :   ALTER TABLE public.claudia2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215         ?           2604    67615    clinicas id    DEFAULT     j   ALTER TABLE ONLY public.clinicas ALTER COLUMN id SET DEFAULT nextval('public.clinicas_id_seq'::regclass);
 :   ALTER TABLE public.clinicas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207         ?           2604    67604    convenios id    DEFAULT     l   ALTER TABLE ONLY public.convenios ALTER COLUMN id SET DEFAULT nextval('public.convenios_id_seq'::regclass);
 ;   ALTER TABLE public.convenios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         ?           2604    67593    evolucao_tipos id    DEFAULT     v   ALTER TABLE ONLY public.evolucao_tipos ALTER COLUMN id SET DEFAULT nextval('public.evolucao_tipos_id_seq'::regclass);
 @   ALTER TABLE public.evolucao_tipos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203         ?           2604    67626    pacientes id    DEFAULT     l   ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);
 ;   ALTER TABLE public.pacientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         ?           2604    67689    recebimentos id    DEFAULT     r   ALTER TABLE ONLY public.recebimentos ALTER COLUMN id SET DEFAULT nextval('public.recebimentos_id_seq'::regclass);
 >   ALTER TABLE public.recebimentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217         ?           2604    67661    recursos id    DEFAULT     j   ALTER TABLE ONLY public.recursos ALTER COLUMN id SET DEFAULT nextval('public.recursos_id_seq'::regclass);
 :   ALTER TABLE public.recursos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213         ?           2604    67712    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219         E          0    67641    agendas 
   TABLE DATA           ?   COPY public.agendas (id, data_hora, paciente_id, agendado, valor_atendimento, created_at, updated_at, convenio_id, obs, valor_recebido, recurso_id) FROM stdin;
    public          postgres    false    211       3141.dat ;          0    67570    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    201       3131.dat I          0    67674    claudia2 
   TABLE DATA           g   COPY public.claudia2 (id, dia, paciente, hora, valor, pagou_caixa, pagou_bco, paciente_id) FROM stdin;
    public          postgres    false    215       3145.dat A          0    67612    clinicas 
   TABLE DATA           n   COPY public.clinicas (id, nome, endereco, bairro, cidade, uf, cnpj, fone, created_at, updated_at) FROM stdin;
    public          postgres    false    207       3137.dat ?          0    67601 	   convenios 
   TABLE DATA           X   COPY public.convenios (id, nome, valor_atendimento, created_at, updated_at) FROM stdin;
    public          postgres    false    205       3135.dat =          0    67590    evolucao_tipos 
   TABLE DATA           J   COPY public.evolucao_tipos (id, nome, created_at, updated_at) FROM stdin;
    public          postgres    false    203       3133.dat C          0    67623 	   pacientes 
   TABLE DATA           %  COPY public.pacientes (id, nome, cpf, data_nascimento, sexo, endereco, bairro, cidade, fones, nome_mae, nome_pai, estado_civil, nome_conjuge, filhos, local_trabalho, religiao, profissao, grau_instrucao, observacoes, convenio_id, valor_atendimento, created_at, updated_at, inativo) FROM stdin;
    public          postgres    false    209       3139.dat K          0    67686    recebimentos 
   TABLE DATA           u   COPY public.recebimentos (id, data_recebimento, recurso_id, valor_recebido, obs, created_at, updated_at) FROM stdin;
    public          postgres    false    217       3147.dat G          0    67658    recursos 
   TABLE DATA           D   COPY public.recursos (id, nome, created_at, updated_at) FROM stdin;
    public          postgres    false    213       3143.dat :          0    67562    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    200       3130.dat M          0    67709    users 
   TABLE DATA           ?   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
    public          postgres    false    219       3149.dat ]           0    0    agendas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.agendas_id_seq', 365, true);
          public          postgres    false    210         ^           0    0    claudia2_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.claudia2_id_seq', 299, true);
          public          postgres    false    214         _           0    0    clinicas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clinicas_id_seq', 2, true);
          public          postgres    false    206         `           0    0    convenios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.convenios_id_seq', 5, true);
          public          postgres    false    204         a           0    0    evolucao_tipos_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.evolucao_tipos_id_seq', 1, false);
          public          postgres    false    202         b           0    0    pacientes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pacientes_id_seq', 64, true);
          public          postgres    false    208         c           0    0    recebimentos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.recebimentos_id_seq', 1, false);
          public          postgres    false    216         d           0    0    recursos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.recursos_id_seq', 5, true);
          public          postgres    false    212         e           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    218         ?           2606    67649    agendas agendas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT agendas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.agendas DROP CONSTRAINT agendas_pkey;
       public            postgres    false    211         ?           2606    67577 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    201         ?           2606    67620    clinicas clinicas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clinicas
    ADD CONSTRAINT clinicas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clinicas DROP CONSTRAINT clinicas_pkey;
       public            postgres    false    207         ?           2606    67609    convenios convenios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.convenios
    ADD CONSTRAINT convenios_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.convenios DROP CONSTRAINT convenios_pkey;
       public            postgres    false    205         ?           2606    67598 "   evolucao_tipos evolucao_tipos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.evolucao_tipos
    ADD CONSTRAINT evolucao_tipos_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.evolucao_tipos DROP CONSTRAINT evolucao_tipos_pkey;
       public            postgres    false    203         ?           2606    67631    pacientes pacientes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            postgres    false    209         ?           2606    67694    recebimentos recebimentos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT recebimentos_pkey;
       public            postgres    false    217         ?           2606    67666    recursos recursos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.recursos DROP CONSTRAINT recursos_pkey;
       public            postgres    false    213         ?           2606    67569 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    200         ?           2606    67719    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219         ?           1259    67655    index_agendas_on_paciente_id    INDEX     W   CREATE INDEX index_agendas_on_paciente_id ON public.agendas USING btree (paciente_id);
 0   DROP INDEX public.index_agendas_on_paciente_id;
       public            postgres    false    211         ?           1259    67701    index_agendas_on_recurso_id    INDEX     U   CREATE INDEX index_agendas_on_recurso_id ON public.agendas USING btree (recurso_id);
 /   DROP INDEX public.index_agendas_on_recurso_id;
       public            postgres    false    211         ?           1259    67637    index_pacientes_on_convenio_id    INDEX     [   CREATE INDEX index_pacientes_on_convenio_id ON public.pacientes USING btree (convenio_id);
 2   DROP INDEX public.index_pacientes_on_convenio_id;
       public            postgres    false    209         ?           1259    67700     index_recebimentos_on_recurso_id    INDEX     _   CREATE INDEX index_recebimentos_on_recurso_id ON public.recebimentos USING btree (recurso_id);
 4   DROP INDEX public.index_recebimentos_on_recurso_id;
       public            postgres    false    217         ?           1259    67720    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    219         ?           1259    67721 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    219         ?           2606    67702    agendas fk_rails_1d961b02b7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT fk_rails_1d961b02b7 FOREIGN KEY (recurso_id) REFERENCES public.recursos(id);
 E   ALTER TABLE ONLY public.agendas DROP CONSTRAINT fk_rails_1d961b02b7;
       public          postgres    false    211    2988    213         ?           2606    67650    agendas fk_rails_7c3512545b    FK CONSTRAINT     ?   ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT fk_rails_7c3512545b FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);
 E   ALTER TABLE ONLY public.agendas DROP CONSTRAINT fk_rails_7c3512545b;
       public          postgres    false    211    209    2982         ?           2606    67695     recebimentos fk_rails_a5daf71e40    FK CONSTRAINT     ?   ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT fk_rails_a5daf71e40 FOREIGN KEY (recurso_id) REFERENCES public.recursos(id);
 J   ALTER TABLE ONLY public.recebimentos DROP CONSTRAINT fk_rails_a5daf71e40;
       public          postgres    false    2988    217    213         ?           2606    67632    pacientes fk_rails_c88b4c0fcf    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT fk_rails_c88b4c0fcf FOREIGN KEY (convenio_id) REFERENCES public.convenios(id);
 G   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT fk_rails_c88b4c0fcf;
       public          postgres    false    2977    209    205                                3141.dat                                                                                            0000600 0004000 0002000 00000101376 14215511120 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        335	2022-02-14 19:00:00	57	f	58	2022-03-20 01:31:27.114061	2022-03-20 01:31:27.114061	1		58	5
336	2022-02-12 10:00:00	64	f	80	2022-03-20 01:35:38.056572	2022-03-20 01:35:38.056572	2		80	1
307	2022-03-08 19:00:00	63	f	100	2022-03-12 14:10:38.615564	2022-03-12 14:10:38.615564	2		\N	\N
308	2022-03-09 19:00:00	40	f	100	2022-03-12 14:12:11.852003	2022-03-12 14:12:11.852003	2		\N	\N
309	2022-03-11 18:15:00	62	f	100	2022-03-12 14:13:22.534778	2022-03-12 14:13:22.534778	2		\N	\N
320	2022-03-21 19:00:00	57	t	58	2022-03-20 00:37:28.740962	2022-03-20 00:37:28.740962	1		\N	\N
318	2022-03-18 08:30:00	39	f	80	2022-03-20 00:32:13.261076	2022-03-20 00:32:13.261076	2		80	1
334	2021-03-10 17:30:00	50	f	100	2022-03-20 01:27:37.442299	2022-03-20 01:27:37.442299	2		100	5
130	2022-02-24 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:28:47.561946	1	Falta	58	5
337	2022-02-26 10:00:00	64	f	80	2022-03-20 01:36:02.894326	2022-03-20 01:36:02.894326	2		80	1
338	2020-01-03 00:00:00	11	f	100	2022-03-20 01:39:23.146723	2022-03-20 01:39:23.146723	2		100	1
339	2020-01-10 00:00:00	11	f	100	2022-03-20 01:39:45.588983	2022-03-20 01:39:45.588983	2		100	1
340	2020-03-06 00:00:00	11	f	100	2022-03-20 01:40:04.524549	2022-03-20 01:40:04.524549	2		100	1
341	2020-04-28 00:00:00	11	f	100	2022-03-20 01:40:26.081107	2022-03-20 01:40:26.081107	2		100	1
342	2020-05-27 00:00:00	11	f	100	2022-03-20 01:40:57.667247	2022-03-20 01:40:57.667247	2		100	1
343	2020-07-24 00:00:00	11	f	100	2022-03-20 01:41:13.912058	2022-03-20 01:41:13.912058	2		100	1
344	2020-08-27 00:00:00	11	f	100	2022-03-20 01:41:35.454705	2022-03-20 01:41:35.454705	2		100	1
345	2020-09-17 00:00:00	11	f	100	2022-03-20 01:41:50.796202	2022-03-20 01:41:50.796202	2		100	1
346	2020-09-23 00:00:00	11	f	100	2022-03-20 01:42:04.858945	2022-03-20 01:42:04.858945	2		100	1
347	2020-10-03 00:00:00	11	f	100	2022-03-20 01:42:20.350763	2022-03-20 01:42:20.350763	2		\N	\N
348	2020-10-28 00:00:00	11	f	100	2022-03-20 01:42:43.253619	2022-03-20 01:42:43.253619	2		100	1
349	2020-11-25 00:00:00	11	f	100	2022-03-20 01:43:04.272302	2022-03-20 01:43:04.272302	2		100	1
350	2021-01-18 00:00:00	11	f	100	2022-03-20 01:43:19.808897	2022-03-20 01:43:19.808897	2		100	1
351	2021-02-10 00:00:00	11	f	100	2022-03-20 01:43:41.786693	2022-03-20 01:43:41.786693	2		100	1
352	2021-04-12 00:00:00	41	f	80	2022-03-20 01:58:04.127248	2022-03-20 01:58:04.127248	2		80	1
353	2021-04-19 00:00:00	41	f	80	2022-03-20 01:58:30.039689	2022-03-20 01:58:30.039689	2		80	1
354	2021-04-26 00:00:00	41	f	80	2022-03-20 01:58:45.389806	2022-03-20 01:58:45.389806	2		80	1
312	2022-03-12 14:30:00	43	f	80	2022-03-12 14:14:48.786402	2022-03-20 02:10:33.67875	2		160	1
209	2022-03-01 00:00:00	59	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:11:30.38069	2		100	2
311	2022-03-12 11:00:00	16	f	100	2022-03-12 14:14:18.990512	2022-03-20 02:17:00.804922	2		100	1
310	2022-03-12 10:00:00	45	f	100	2022-03-12 14:13:49.748367	2022-03-12 14:13:49.748367	2		100	1
319	2022-03-19 09:00:00	45	f	100	2022-03-20 00:35:15.106785	2022-03-20 02:23:57.969371	2	FALTA	100	1
119	2021-10-06 18:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
127	2021-10-15 17:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
299	2022-03-03 18:30:00	56	f	100	2022-03-07 01:31:51.114685	2022-03-07 01:31:51.114685	2	\N	\N	\N
137	2021-10-29 16:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
301	2022-03-03 19:30:00	62	f	100	2022-03-07 01:35:21.944086	2022-03-07 01:35:21.944086	2	\N	\N	\N
99	2021-11-16 18:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
108	2021-11-24 17:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
273	2021-05-10 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
313	2022-03-15 19:00:00	63	f	100	2022-03-15 20:15:00.646096	2022-03-15 20:15:00.646096	2		\N	\N
314	2022-03-14 18:00:00	56	f	100	2022-03-15 20:21:03.451285	2022-03-15 20:21:03.451285	2		\N	\N
277	2021-05-17 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
302	2022-03-04 08:30:00	39	f	80	2022-03-07 01:37:15.177089	2022-03-15 23:11:32.446395	2		80	1
68	2021-12-17 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
90	2021-11-12 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
100	2021-11-19 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
111	2021-11-26 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
121	2021-10-08 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
126	2021-10-15 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
142	2021-09-02 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
59	2021-12-10 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-20 00:49:38.782543	2		80	1
169	2021-08-20 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
180	2021-07-02 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
184	2021-07-14 09:45:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
187	2021-07-23 09:00:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
15	2022-02-19 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
298	2022-03-03 17:30:00	50	f	58	2022-03-07 01:30:30.226371	2022-03-20 01:29:06.317747	1	falta	58	5
297	2022-03-03 16:30:00	45	f	100	2022-03-07 01:29:24.85381	2022-03-15 23:13:34.838414	2		100	1
304	2022-03-07 19:00:00	57	f	58	2022-03-07 19:53:49.895426	2022-03-07 19:53:49.895426	1		\N	\N
38	2022-01-17 19:00:00	57	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:32:04.606445	1		58	5
45	2022-01-24 19:00:00	57	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:32:17.00732	1		58	5
305	2022-03-07 20:30:00	11	f	100	2022-03-07 19:54:29.548542	2022-03-20 01:44:35.064304	2		100	2
36	2022-01-14 19:00:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:48:30.055552	2		100	1
315	2022-03-16 16:15:00	55	f	100	2022-03-16 21:08:27.014629	2022-03-16 21:08:27.014629	2		100	1
321	2022-01-21 20:00:00	55	f	100	2022-03-20 00:59:49.092762	2022-03-20 00:59:49.092762	2		100	1
322	2021-03-22 08:30:00	39	f	80	2022-03-20 01:02:53.028345	2022-03-20 01:02:53.028345	2		80	1
323	2021-03-30 00:00:00	39	f	80	2022-03-20 01:03:30.186973	2022-03-20 01:03:30.186973	2		80	1
42	2022-01-21 06:30:00	54	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:54:06.270464	2		100	1
325	2021-04-20 00:00:00	39	f	80	2022-03-20 01:04:28.062632	2022-03-20 01:04:28.062632	2		80	1
48	2022-01-29 10:00:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-20 01:05:20.274551	2		80	1
326	2021-04-13 00:00:00	39	f	80	2022-03-20 01:05:50.993516	2022-03-20 01:05:50.993516	2		80	1
44	2022-01-24 18:00:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-20 01:54:36.276833	5		90	1
329	2021-07-30 00:00:00	39	f	80	2022-03-20 01:09:21.289241	2022-03-20 01:09:21.289241	2		80	1
330	2021-08-13 00:00:00	39	f	80	2022-03-20 01:09:40.644576	2022-03-20 01:09:40.644576	2		80	1
331	2022-02-11 08:30:00	39	f	80	2022-03-20 01:11:01.991076	2022-03-20 01:11:01.991076	2		80	1
332	2022-02-25 08:30:00	39	f	80	2022-03-20 01:11:49.119571	2022-03-20 01:11:49.119571	2		80	1
324	2021-04-06 00:00:00	39	f	80	2022-03-20 01:03:53.965825	2022-03-20 01:12:46.845503	2		80	1
327	2021-04-27 00:00:00	39	f	80	2022-03-20 01:06:10.716155	2022-03-20 01:13:19.70663	2		80	1
54	2021-12-03 16:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
47	2022-01-27 18:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:15:18.820211	2		58	5
333	2021-08-17 00:00:00	42	f	58	2022-03-20 01:16:19.47692	2022-03-20 01:16:19.47692	1		58	5
52	2021-12-01 18:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
303	2022-03-07 17:00:00	42	f	58	2022-03-07 19:52:45.338478	2022-03-20 01:20:36.496404	1	falta	58	5
316	2022-03-16 17:15:00	42	f	58	2022-03-16 21:09:03.736654	2022-03-20 01:21:10.959957	1	falta	58	5
55	2021-12-03 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
46	2022-01-27 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:26:00.652742	1		58	5
49	2022-01-29 15:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-20 02:06:39.777777	2		80	1
355	2021-12-04 00:00:00	43	f	80	2022-03-20 02:08:55.55774	2022-03-20 02:08:55.55774	2		80	1
356	2018-08-25 00:00:00	16	f	100	2022-03-20 02:13:00.10235	2022-03-20 02:13:00.10235	2		100	1
357	2018-09-01 00:00:00	16	f	100	2022-03-20 02:13:29.156504	2022-03-20 02:13:29.156504	2		100	1
358	2020-10-10 00:00:00	16	f	100	2022-03-20 02:13:48.677162	2022-03-20 02:13:48.677162	2		100	1
359	2020-10-23 00:00:00	16	f	100	2022-03-20 02:14:15.158501	2022-03-20 02:14:15.158501	2		100	1
360	2021-01-08 00:00:00	16	f	100	2022-03-20 02:14:35.454824	2022-03-20 02:14:35.454824	2		100	1
361	2021-02-06 00:00:00	16	f	100	2022-03-20 02:14:55.697498	2022-03-20 02:14:55.697498	2		100	1
362	2021-03-27 00:00:00	16	f	100	2022-03-20 02:15:21.90202	2022-03-20 02:15:21.90202	2		100	1
363	2021-04-10 00:00:00	16	f	100	2022-03-20 02:15:48.195015	2022-03-20 02:15:48.195015	2		100	1
40	2022-01-19 18:00:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:21:36.114494	2		100	1
364	2021-11-30 00:00:00	45	f	100	2022-03-20 02:22:21.30364	2022-03-20 02:22:21.30364	2		100	1
365	2022-02-11 00:00:00	45	f	100	2022-03-20 02:23:14.784287	2022-03-20 02:23:14.784287	2		100	1
37	2021-01-15 08:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
39	2021-01-17 20:00:00	56	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
41	2021-01-19 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
43	2021-01-24 17:00:00	58	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
50	2021-01-31 17:00:00	58	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
51	2021-12-01 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
53	2021-12-03 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
109	2021-11-24 18:30:00	11	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:44:07.91928	2		100	1
60	2021-12-10 16:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
79	2021-12-22 18:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
63	2021-12-11 08:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
95	2021-11-13 11:00:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
67	2021-12-17 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
101	2021-11-19 16:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
71	2021-12-18 17:00:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
113	2021-11-30 16:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
66	2021-12-14 19:00:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
103	2021-11-19 18:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
77	2021-12-21 19:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
78	2021-12-22 16:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
82	2021-11-06 14:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
83	2021-11-06 15:00:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
122	2021-10-08 19:00:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
88	2021-11-10 19:00:00	52	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
89	2021-11-12 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
139	2021-10-29 18:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
72	2021-12-21 14:00:00	54	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:53:38.080644	2		100	1
93	2021-11-12 18:30:00	46	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
94	2021-11-13 10:00:00	49	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
96	2021-11-13 08:45:00	53	f	120	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
62	2021-12-10 18:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
69	2021-12-18 14:00:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
81	2021-11-06 13:00:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
104	2021-11-20 11:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
105	2021-11-20 13:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
87	2021-11-09 18:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
110	2021-11-26 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
91	2021-11-12 16:15:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
80	2021-12-23 19:00:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
114	2021-11-30 17:30:00	46	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
115	2021-10-02 13:30:00	49	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
116	2021-10-02 14:30:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
125	2021-10-12 16:00:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
118	2021-10-05 18:30:00	48	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
120	2021-10-08 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
70	2021-12-18 16:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
123	2021-10-08 17:30:00	46	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
84	2021-11-06 16:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
128	2021-10-15 18:30:00	49	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
129	2021-10-16 08:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
106	2021-11-20 14:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
131	2021-10-16 09:00:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
124	2021-10-09 14:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
134	2021-10-20 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
135	2021-10-20 18:30:00	46	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
58	2021-12-07 18:00:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
65	2021-12-14 18:00:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
140	2021-10-29 17:30:00	49	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
141	2021-10-27 20:00:00	52	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
76	2021-12-21 18:00:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
143	2021-09-01 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
144	2021-09-11 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
86	2021-11-09 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
73	2021-12-21 15:00:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
57	2021-12-07 17:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
64	2021-12-13 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
74	2021-12-21 16:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
85	2021-11-09 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
97	2021-11-16 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
107	2021-11-23 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
117	2021-10-05 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
61	2021-12-10 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
75	2021-12-21 17:00:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
92	2021-11-12 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
102	2021-11-19 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
112	2021-11-26 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
138	2021-10-29 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
145	2021-09-11 14:30:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
198	2022-01-08 00:00:00	57	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:31:52.679715	1		58	5
151	2021-09-21 18:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
152	2021-09-22 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
34	2022-01-14 17:00:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-20 01:46:27.821321	5		90	1
155	2021-09-25 15:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
156	2021-09-25 16:00:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
193	2021-10-23 11:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
12	2022-02-18 17:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
160	2021-08-04 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
172	2021-08-26 18:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
163	2021-08-10 18:00:00	38	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
164	2021-08-13 18:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
165	2021-08-14 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
167	2021-08-14 15:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
168	2021-08-19 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
179	2021-08-31 18:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
173	2021-08-28 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
175	2021-08-28 15:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
176	2021-08-28 16:30:00	36	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
208	2022-02-25 00:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-20 02:27:15.754847	2		\N	\N
181	2021-07-03 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
182	2021-07-10 13:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
21	2022-01-03 16:00:00	54	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:53:47.533231	2		100	1
200	2022-01-10 00:00:00	54	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:53:56.14846	2		100	1
185	2021-07-14 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
161	2021-08-06 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
171	2021-08-25 11:00:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
188	2021-07-23 18:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
189	2021-07-24 07:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
190	2021-07-24 13:30:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
191	2021-07-24 14:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
146	2021-09-11 15:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
194	2022-02-26 00:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
196	2022-02-28 00:00:00	58	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
154	2021-09-25 14:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
201	2021-10-22 00:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
203	2021-09-24 00:00:00	46	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
166	2021-08-14 14:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
205	2021-07-07 00:00:00	38	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
206	2021-07-07 00:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
207	2021-10-23 00:00:00	24	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
174	2021-08-28 14:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
199	2022-01-08 00:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-20 02:06:25.738492	2		80	1
14	2022-02-18 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
195	2022-02-26 00:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
16	2022-02-19 09:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
17	2022-02-19 10:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
18	2022-02-21 19:00:00	57	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
202	2021-10-23 00:00:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
98	2021-11-16 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
22	2021-01-04 16:00:00	26	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
23	2021-01-04 19:30:00	56	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
24	2021-01-05 18:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
25	2021-01-05 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
133	2021-10-19 18:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
148	2021-09-14 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
150	2021-09-21 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
158	2021-09-28 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
31	2021-01-12 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
178	2021-08-31 17:30:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
33	2021-01-14 07:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
153	2021-09-24 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
197	2022-03-02 00:00:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
13	2022-02-18 18:30:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
19	2022-02-23 16:15:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
28	2022-01-07 20:00:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-20 00:57:52.111043	2		100	1
147	2021-09-14 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
149	2021-09-21 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
157	2021-09-28 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
30	2022-01-11 18:00:00	45	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:21:22.811738	2		100	1
27	2022-01-06 17:00:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:25:23.876783	1		58	5
32	2022-01-13 17:00:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:25:44.064083	1		58	5
221	2022-02-07 19:00:00	57	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:32:32.524143	1		58	5
227	2022-02-10 19:30:00	11	f	100	2022-03-06 15:37:31.536905	2022-03-20 01:44:19.12719	2		100	1
217	2022-02-04 16:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
241	2021-11-05 18:30:00	47	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
218	2022-02-04 17:30:00	44	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
215	2022-02-03 19:15:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
223	2022-02-08 19:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
226	2022-02-10 18:30:00	56	f	100	2022-03-06 15:37:31.536905	2022-03-14 10:59:05.435818	2		\N	\N
239	2021-11-03 18:30:00	51	f	90	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	5	\N	90	1
35	2022-01-14 18:00:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-20 00:58:14.399386	2		100	1
317	2022-03-17 17:30:00	50	f	58	2022-03-17 22:28:31.651491	2022-03-20 01:29:18.532916	1	falta	58	5
220	2022-02-07 06:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
238	2021-12-31 11:00:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-20 00:58:37.153096	2		100	1
262	2021-06-29 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
258	2021-06-22 19:15:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
264	2021-05-03 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
211	2021-12-03 18:30:00	10	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
210	2022-03-02 00:00:00	60	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:00:05.74438	2		100	1
213	2022-02-02 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
229	2022-02-12 13:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
245	2021-07-31 13:30:00	43	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
224	2022-02-09 18:30:00	59	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:11:19.8974	2		100	2
219	2022-02-04 18:30:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
271	2021-05-08 10:30:00	16	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:16:40.839722	2		100	1
243	2021-05-29 00:00:00	16	f	100	2022-03-06 15:37:31.536905	2022-03-20 02:16:49.834716	2		100	1
228	2022-02-12 10:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
257	2021-06-22 18:15:00	38	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
259	2021-06-23 18:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
260	2021-06-25 07:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
263	2021-06-30 11:00:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
265	2021-05-03 09:00:00	3	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
267	2021-05-05 07:30:00	9	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
268	2021-05-06 07:45:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
269	2021-05-07 08:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
270	2021-05-08 09:30:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
272	2021-05-08 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
275	2021-05-12 10:30:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
216	2022-02-04 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
261	2021-06-25 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
266	2021-05-04 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-20 00:48:51.775922	2		80	1
274	2021-05-11 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-20 00:49:06.740479	2		80	1
242	2021-11-05 20:00:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
212	2022-02-01 16:15:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-14 16:48:15.550028	2		100	1
222	2022-02-08 16:30:00	55	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	100	1
132	2021-10-19 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
136	2021-10-27 17:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
159	2021-08-03 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
162	2021-08-10 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
170	2021-08-24 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
177	2021-08-31 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
183	2021-07-13 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
186	2021-07-20 16:30:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
192	2021-07-27 17:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
204	2021-07-06 00:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
20	2022-02-23 19:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
26	2022-01-06 18:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:14:43.861436	2		58	5
29	2022-01-11 16:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-20 01:15:00.822646	2		58	5
231	2022-02-15 19:00:00	42	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	58	5
232	2022-02-17 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-14 16:46:02.314414	1		58	5
225	2022-02-10 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-14 16:46:48.752347	1		58	5
214	2022-02-03 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-14 16:50:26.080627	1		58	5
276	2021-05-12 18:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
278	2021-05-17 19:00:00	38	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
230	2022-02-15 18:00:00	56	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
233	2022-02-17 18:30:00	6	f	50	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
234	2022-02-11 00:00:00	61	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
236	2021-11-04 00:00:00	52	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
237	2021-12-30 19:30:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
244	2021-05-28 00:00:00	6	f	50	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
246	2021-06-04 18:30:00	29	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
285	2021-05-24 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
295	2021-05-31 07:30:00	41	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
247	2021-06-05 08:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
248	2021-06-08 18:00:00	38	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
249	2021-06-09 17:00:00	9	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
251	2021-06-09 18:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
252	2021-06-12 11:30:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
253	2021-06-12 14:00:00	37	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
254	2021-06-12 15:00:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
255	2021-06-19 13:15:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
256	2021-06-19 14:15:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
279	2021-05-19 07:30:00	9	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
280	2021-05-19 09:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
282	2021-05-22 08:00:00	35	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
283	2021-05-22 09:00:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
284	2021-05-22 10:00:00	29	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
287	2021-05-25 10:30:00	31	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	\N	\N
288	2021-05-27 08:00:00	32	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
289	2021-05-27 09:00:00	3	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
290	2021-05-27 10:00:00	40	f	100	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
291	2021-05-29 13:30:00	34	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
292	2021-05-29 14:30:00	29	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
293	2021-05-29 17:30:00	33	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
294	2021-05-29 18:30:00	36	f	60	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	\N	\N
250	2021-06-11 20:00:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
286	2021-05-25 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
296	2021-05-31 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	2	\N	80	1
281	2021-05-20 08:30:00	39	f	80	2022-03-06 15:37:31.536905	2022-03-20 00:49:19.170094	2		80	1
240	2021-11-05 17:30:00	50	f	58	2022-03-06 15:37:31.536905	2022-03-06 15:37:31.536905	1	\N	58	5
\.


                                                                                                                                                                                                                                                                  3131.dat                                                                                            0000600 0004000 0002000 00000000123 14215511120 0014225 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        environment	development	2022-02-26 19:02:41.913817	2022-02-26 19:02:41.913817
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3145.dat                                                                                            0000600 0004000 0002000 00000024734 14215511120 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        25	2022-02-18	ANA JULIA CDL	17:30				47
26	2022-02-18	JULIA MARIA	18:30				55
27	2022-02-18	MATHEUS	19:30				40
28	2022-02-19	ANA CLARA	08:30				39
29	2022-02-19	RICARDO	09:30				33
30	2022-02-19	ISABELA	10:30				34
31	2022-02-21	AGNES	19:00				57
32	2022-02-23	JULIA MARIA	16:15				55
33	2022-02-23	SARAIANE	19:00				42
42	2021-01-03	ALISSON	16:00			100	54
44	2021-01-04	VÂNIA	16:00			80	26
45	2021-01-04	DEISI	19:30			100	56
46	2021-01-05	RICARDO	18:30				33
47	2021-01-05	MATHEUS	19:30		0	0	40
48	2021-01-06	SARAIANE	18:00				42
49	2021-01-06	GIOVANA SCHUMATZ	17:00				50
51	2021-01-07	JULIA MARIA	20:00			100	55
55	2021-01-11	SARAIANE	16:00				42
56	2021-01-11	SABRINA	18:00		100		45
57	2021-01-12	MATHEUS	19:30		0	0	40
58	2021-01-13	GIOVANA SCHUMATZ	17:00				50
59	2021-01-14	INDIANARA	07:00		80		32
60	2021-01-14	ANA JULIA CDL	17:00		90		47
61	2021-01-14	JULIA MARIA	18:00			100	55
62	2021-01-14	FERNANDA DAMASSENO	19:00		100		44
63	2021-01-15	ISABELA	08:00				34
64	2021-01-17	AGNES	19:00				57
65	2021-01-17	DEISI	20:00				56
66	2021-01-19	SABRINA	18:00				45
67	2021-01-19	MATHEUS	19:30		150		40
68	2021-01-21	ALISSON	06:30		100		54
69	2021-01-24	MULHER TONELO	17:00				58
70	2021-01-24	RODRIGO GABRIEL	18:00		90		51
71	2021-01-24	AGNES	19:00				57
72	2021-01-27	GIOVANA SCHUMATZ	17:30				50
73	2021-01-27	SARAIANE	18:30				42
74	2021-01-29	ANA CLARA	10:00				39
75	2021-01-29	JANIEL	15:00				43
76	2021-01-31	MULHER TONELO	17:00				58
77	2021-12-01	JULIA	11:00				31
78	2021-12-01	SARAIANE	18:30				42
79	2021-12-03	INDIANARA	07:30		80		32
80	2021-12-03	RODRIGO GABRIEL	16:30			90	51
81	2021-12-03	GIOVANA SCHUMATZ	17:30				50
83	2021-11-04	JANIEL	15:30			160	43
84	2021-12-07	SARAIANE	17:00				42
85	2021-12-07	SABRINA	18:00				45
86	2021-12-10	ANA CLARA	08:30				39
87	2021-12-10	ANA JULIA CDL	16:30		90		47
88	2021-12-10	GIOVANA SCHUMATZ	17:30				50
89	2021-12-10	RODRIGO GABRIEL	18:30			90	51
90	2021-12-11	ISABELA	08:00				34
91	2021-12-13	SARAIANE	16:30				42
92	2021-12-14	SABRINA	18:00		200		45
93	2021-12-14	FERNANDA DAMASSENO	19:00		100		44
94	2021-12-17	INDIANARA	07:30				32
95	2021-12-17	ANA CLARA	08:30				39
96	2021-12-18	RODRIGO GABRIEL	14:00				51
97	2021-12-18	JANIEL	16:00				43
98	2021-12-18	RICARDO	17:00				33
99	2021-12-21	ALISSON	14:00				54
100	2021-12-21	JULIA MARIA	15:00				55
101	2021-12-21	SARAIANE	16:00				42
102	2021-12-21	GIOVANA SCHUMATZ	17:00				50
103	2021-12-21	SABRINA	18:00				45
104	2021-12-21	JULIA	19:00				31
105	2021-12-22	MATHEUS	16:30				40
106	2021-12-22	ANA JULIA CDL	18:30				47
107	2021-12-23	RODRIGO	19:00				41
117	2021-11-06	RODRIGO GABRIEL	13:00		90		51
118	2021-11-06	ISABELA	14:00		200		34
119	2021-11-06	RICARDO	15:00		150		33
120	2021-11-06	JANIEL	16:00			80	43
121	2021-11-09	SARAIANE	16:30				42
122	2021-11-09	SABRINA	17:30		100		45
123	2021-11-09	RODRIGO GABRIEL	18:30		90		51
125	2021-11-10	BIANCA	19:00				52
126	2021-11-12	INDIANARA	07:30		160		32
127	2021-11-12	ANA CLARA	08:30		80		39
128	2021-11-12	RODRIGO GABRIEL	16:15		90		51
129	2021-11-12	GIOVANA SCHUMATZ	17:30				50
130	2021-11-12	JULIA POSSAMAI	18:30		0		46
132	2021-11-13	ANA CLAUDIA	10:00		0		49
133	2021-11-13	ANA JULIA CDL	11:00		90		47
134	2021-11-13	GABRIELA ZANINI	08:45			120	53
135	2021-11-16	SARAIANE	16:30				42
136	2021-11-16	SABRINA	17:30				45
137	2021-11-16	RODRIGO GABRIEL	18:30		90		51
138	2021-11-19	ANA CLARA	08:30		80		39
139	2021-11-19	ANA JULIA CDL	16:30		90		47
140	2021-11-19	GIOVANA SCHUMATZ	17:30				50
141	2021-11-19	FERNANDA DAMASSENO	18:30		100		44
142	2021-11-20	ISABELA	11:30				34
143	2021-11-20	RICARDO	13:30				33
144	2021-11-20	JANIEL	14:30			80	43
145	2021-11-23	SARAIANE	16:30				42
146	2021-11-24	RODRIGO GABRIEL	17:30		90		51
147	2021-11-24	RENATA	18:30		100		11
148	2021-11-26	INDIANARA	07:30		80		32
149	2021-11-26	ANA CLARA	08:30		80		39
150	2021-11-26	GIOVANA SCHUMATZ	17:30				50
152	2021-11-30	ANA JULIA CDL	16:30				47
153	2021-11-30	JULIA POSSAMAI	17:30				46
154	2021-10-02	ANA CLAUDIA	13:30				49
155	2021-10-02	KARINE	14:30				35
156	2021-10-05	SARAIANE	16:30		522		42
157	2021-10-05	MÃE KELVIN	18:30		100		48
158	2021-10-06	ANA JULIA CDL	18:30		90		47
159	2021-10-08	INDIANARA	07:30		80		32
160	2021-10-08	ANA CLARA	08:30		80		39
161	2021-10-08	FERNANDA DAMASSENO	19:00		100		44
162	2021-10-08	JULIA POSSAMAI	17:30		100		46
163	2021-10-09	JANIEL	14:00			80	43
165	2021-10-12	RODRIGO	16:00		80		41
166	2021-10-15	ANA CLARA	08:30				39
167	2021-10-15	ANA JULIA CDL	17:30		90		47
168	2021-10-15	ANA CLAUDIA	18:30				49
169	2021-10-16	ISABELA	08:00				34
34	2022-02-24	??	17:30				61
170	2021-10-16	RICARDO	09:00				33
171	2021-10-19	SARAIANE	16:30			290	42
172	2021-10-19	SABRINA	18:30		100		45
173	2021-10-20	JULIA	11:00				31
174	2021-10-20	JULIA POSSAMAI	18:30				46
181	2021-10-27	SARAIANE	17:30				42
182	2021-10-29	ANA JULIA CDL	16:30		90		47
183	2021-10-29	GIOVANA SCHUMATZ	17:30				50
184	2021-10-29	FERNANDA DAMASSENO	18:30		100		44
185	2021-10-29	ANA CLAUDIA	17:30		160		49
186	2021-10-27	BIANCA	20:00				52
187	2021-09-02	ANA CLARA	08:30		80		39
188	2021-09-01	JULIA	11:00				31
189	2021-09-11	ISABELA	13:30		110		34
190	2021-09-11	KARINE	14:30		100		35
191	2021-09-11	JANIEL	15:30			80	43
192	2021-09-14	SARAIANE	16:30				42
193	2021-09-14	SABRINA	17:30		200		45
194	2021-09-21	SARAIANE	16:30				42
195	2021-09-21	SABRINA	17:30				45
196	2021-09-21	FERNANDA DAMASSENO	18:30		100		44
197	2021-09-22	JULIA	11:00				31
198	2021-09-24	ANA CLARA	08:30		80		39
200	2021-09-25	JANIEL	14:00			80	43
201	2021-09-25	ISABELA	15:00				34
202	2021-09-25	RICARDO	16:00				33
203	2021-09-28	SARAIANE	16:30				42
204	2021-09-28	SABRINA	17:30		200		45
205	2021-08-03	SARAIANE	16:30				42
206	2021-08-04	JULIA	11:00				31
207	2021-08-06	RODRIGO	07:30		80		41
208	2021-08-10	SARAIANE	16:30				42
209	2021-08-10	DIEGO	18:00		100		38
210	2021-08-13	MATHEUS	18:00		200		40
211	2021-08-14	ISABELA	13:30				34
212	2021-08-14	JANIEL	14:30		80		43
213	2021-08-14	RICARDO	15:30				33
214	2021-08-19	JULIA	11:00		290		31
215	2021-08-20	ANA CLARA	08:30		80		39
216	2021-08-24	SARAIANE	16:30				42
217	2021-08-25	RODRIGO	11:00		80		41
218	2021-08-26	FERNANDA DAMASSENO	18:30		100		44
219	2021-08-28	ISABELA	13:30				34
220	2021-08-28	JANIEL	14:30		80		43
221	2021-08-28	RICARDO	15:30				33
222	2021-08-28	GABRIEL	16:30				36
223	2021-08-31	SARAIANE	16:30				42
224	2021-08-31	SABRINA	17:30				45
225	2021-08-31	FERNANDA DAMASSENO	18:30		100		44
226	2021-07-02	ANA CLARA	08:30		80		39
227	2021-07-03	ISABELA	13:30			250	34
231	2021-07-10	RICARDO	13:30				33
232	2021-07-13	SARAIANE	16:30				42
233	2021-07-14	ANA CLARA	09:45		80		39
234	2021-07-14	JULIA	11:00				31
235	2021-07-20	SARAIANE	16:30				42
236	2021-07-23	ANA CLARA	09:00		80		39
237	2021-07-23	MATHEUS	18:00				40
238	2021-07-24	INDIANARA	07:30		80		32
239	2021-07-24	KARINE	13:30		120		35
240	2021-07-24	ISABELA	14:30				34
241	2021-07-27	SARAIANE	17:00				42
176	2021-10-23	ANA JULIA CDL	11:30				47
36	2022-02-26	INDIANARA	00:00		80		32
37	2022-02-26	JANIEL	00:00				43
38	2022-02-28	MULHER TONELO	00:00				58
40	2022-03-02	JULIA MARIA	00:00				55
52	2021-01-08	AGNES	00:00				57
53	2021-01-08	JANIEL	00:00			160	43
54	2021-01-10	ALISSON	00:00				54
175	2021-10-22	INDIANARA	00:00				32
179	2021-10-23	JANIEL	00:00			80	43
199	2021-09-24	JULIA POSSAMAI	00:00		100		46
228	2021-07-06	SARAIANE	00:00				42
229	2021-07-07	DIEGO	00:00			100	38
230	2021-07-07	MATHEUS	00:00		300		40
180	2021-10-23	LUIZA PINHEIRO	00:00				24
35	2022-02-25		00:00				61
39	2022-03-01	??	00:00				61
41	2022-03-02	RAISSA	00:00	100			60
82	2021-12-03	CÉLIA	18:30			100	10
1	2022-02-01	JULIA MARIA	16:15				55
2	2022-02-02	MATHEUS	19:30				40
3	2022-02-03	GIOVANA SCHUMATZ	17:30				50
4	2022-02-03	SARAIANE	19:15				42
5	2022-02-04	ANA CLARA	08:30				39
6	2022-02-04	ANA JULIA CDL	16:30				47
7	2022-02-04	FERNANDA DAMASSENO	17:30				44
8	2022-02-04	INDIANARA	18:30				32
9	2022-02-07	RODRIGO	06:30				41
10	2022-02-07	AGNES	19:00				57
11	2022-02-08	JULIA MARIA	16:30				55
12	2022-02-08	SARAIANE	19:00				42
13	2022-02-09	MURILO	18:30				59
14	2022-02-10	GIOVANA SCHUMATZ	17:30				50
15	2022-02-10	DEISI	18:30				56
16	2022-02-10	RENATA	19:30				11
18	2022-02-12	INDIANARA	10:00				32
19	2022-02-12	JANIEL	13:30				43
21	2022-02-15	DEISI	18:00				56
22	2022-02-15	SARAIANE	19:00				42
23	2022-02-17	GIOVANA SCHUMATZ	17:30				50
24	2022-02-17	SILVANO	18:30				6
17	2022-02-11		00:00				61
20	2022-02-14		19:00				61
115	2021-11-04	BIANCA	00:00				52
109	2021-12-30	MATHEUS	19:30				40
111	2021-12-30	JULIA MARIA	11:00				55
112	2021-11-03	RODRIGO GABRIEL	18:30			90	51
113	2021-11-05	GIOVANA SCHUMATZ	17:30				50
114	2021-11-05	ANA JULIA CDL	18:30		90		47
116	2021-11-05	ANA CLARA	20:00		80		39
292	2021-05-29	MARCOS CAPINZAL	00:00		50		16
299	2021-05-28	SILVANO	00:00		0	0	6
242	2021-07-31	JANIEL	13:30		80		43
243	2021-06-04	ANELA	18:30		180		29
244	2021-06-05	ISABELA	08:30		0	0	34
245	2021-06-08	DIEGO	18:00		100		38
246	2021-06-09	SALETE SS	17:00				9
247	2021-06-11	ANA CLARA	20:00				39
248	2021-06-09	MATHEUS	18:00		150		40
249	2021-06-12	JULIA	11:30			290	31
250	2021-06-12	MARLENE	14:00		20		37
251	2021-06-12	RICARDO	15:00		190	0	33
252	2021-06-19	ISABELA	13:15				34
253	2021-06-19	KARINE	14:15		60		35
254	2021-06-22	DIEGO	18:15		100		38
255	2021-06-22	RODRIGO	19:15		80		41
256	2021-06-23	INDIANARA	18:00		240		32
257	2021-06-25	MATHEUS	07:30		100		40
258	2021-06-25	ANA CLARA	08:30		160		39
259	2021-06-29	SARAIANE	16:30				42
260	2021-06-30	JULIA	11:00				31
261	2021-05-03	RODRIGO	07:30		80	0	41
262	2021-05-03	DANIEL	09:00		0	0	3
263	2021-05-04	ANA CLARA	08:30		80		39
265	2021-05-05	SALETE SS	07:30		290		9
266	2021-05-06	INDIANARA	07:45		80		32
267	2021-05-07	MATHEUS	08:00		0	0	40
269	2021-05-08	KARINE	09:30		0	0	35
270	2021-05-08	MARCOS CAPINZAL	10:30		100		16
271	2021-05-08	ISABELA	13:30		100		34
272	2021-05-10	RODRIGO	07:30		80		41
273	2021-05-11	ANA CLARA	08:30		80		39
274	2021-05-12	JULIA	10:30				31
275	2021-05-12	MATHEUS	18:30		150		40
277	2021-05-17	RODRIGO	07:30		80	0	41
278	2021-05-17	DIEGO	19:00		0	100	38
279	2021-05-19	SALETE SS	07:30				9
280	2021-05-19	INDIANARA	09:00		80	0	32
281	2021-05-20	ANA CLARA	08:30		80	0	39
282	2021-05-22	KARINE	08:00		60		35
283	2021-05-22	ISABELA	09:00		0	0	34
284	2021-05-22	ANELA	10:00		0	0	29
285	2021-05-24	RODRIGO	07:30		80		41
286	2021-05-25	ANA CLARA	08:30		80		39
287	2021-05-25	JULIA	10:30				31
288	2021-05-27	INDIANARA	08:00		0	0	32
289	2021-05-27	DANIEL	09:00		0	0	3
290	2021-05-27	MATHEUS	10:00		0	0	40
293	2021-05-29	ISABELA	13:30				34
294	2021-05-29	ANELA	14:30				29
295	2021-05-29	RICARDO	17:30				33
296	2021-05-29	GABRIEL	18:30				36
297	2021-05-31	RODRIGO	07:30		80		41
298	2021-05-31	ANA CLARA	08:30		80		39
\.


                                    3137.dat                                                                                            0000600 0004000 0002000 00000000350 14215511120 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Clinica Psicológica Cláudia Sell A Coelho LTDA	Avenida XV de Novembro , 180 - Edifício Itamaraty - 1o Andar Sala 103	Centro	Joaçaba	SC	45.352.964/0001-37	49 999166095	2022-03-01 11:18:47.529443	2022-03-01 11:22:07.467635
\.


                                                                                                                                                                                                                                                                                        3135.dat                                                                                            0000600 0004000 0002000 00000000312 14215511120 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Plas	58	2022-02-27 15:18:30.815693	2022-02-27 15:18:30.815693
5	CDL	90	2022-03-06 18:31:54.630631	2022-03-06 18:31:54.630631
2	Particular	100	2022-02-27 15:42:03.344492	2022-03-06 19:20:00.42964
\.


                                                                                                                                                                                                                                                                                                                      3133.dat                                                                                            0000600 0004000 0002000 00000000005 14215511120 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3139.dat                                                                                            0000600 0004000 0002000 00000015062 14215511120 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	SILVANO		\N	Masculino														\N	2	50	2022-02-27 18:00:00	2022-03-06 20:03:34.139255	f
5	ÂNGELA		\N	Masculino														Plas	1	58	2022-02-27 18:00:00	2022-03-06 19:34:35.286243	t
17	ANTÔNIO		\N	Masculino														Pai Vagner	2	100	2022-02-27 18:00:00	2022-03-06 19:35:01.735108	t
29	ANELA		\N	Masculino														\N	2	60	2022-02-27 18:00:00	2022-03-06 19:35:14.766772	t
23	ALANA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:35:53.07867	t
19	ANA FILHA		\N	Masculino														Filha Crislaine	2	100	2022-02-27 18:00:00	2022-03-06 19:36:47.397143	t
10	CÉLIA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:38:26.138275	t
28	CLÁUDIA		\N	Masculino														Filha Miguel	2	100	2022-02-27 18:00:00	2022-03-06 19:38:55.472276	t
12	CRISLAINE		\N	Masculino														Filha Miguel	2	100	2022-02-27 18:00:00	2022-03-06 19:39:13.6802	t
3	DANIEL		\N	Masculino														\N	2	80	2022-02-27 18:00:00	2022-03-06 19:39:34.845994	t
25	EDSON		\N	Masculino														\N	2	90	2022-02-27 18:00:00	2022-03-06 19:40:30.377387	t
13	FUNC. MULTI		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:41:28.303967	t
36	GABRIEL		\N	Masculino														\N	2	60	2022-02-27 18:00:00	2022-03-06 19:41:48.609666	f
2	GABRIELLA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:46:21.787458	t
32	INDIANARA		\N	Masculino														Filha Neusa	2	80	2022-02-27 18:00:00	2022-03-06 19:46:53.342893	f
34	ISABELA		\N	Masculino														Sobrinha Ricardo	2	60	2022-02-27 18:00:00	2022-03-06 19:47:21.276232	f
14	VAGNER		\N	Masculino														Engenheiro	2	100	2022-02-27 18:00:00	2022-03-06 20:03:54.353538	t
21	LEONAR		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:50:24.836354	t
22	JULIA MENDES		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:50:52.439354	t
24	LUIZA PINHEIRO		\N	Masculino														\N	1	58	2022-02-27 18:00:00	2022-03-06 19:52:34.184457	t
35	KARINE		\N	Masculino														Sobrinha Ricardo	2	60	2022-02-27 18:00:00	2022-03-06 19:52:56.6518	t
18	LUANA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:53:27.510485	t
37	MARLENE		\N	Masculino														\N	2	60	2022-02-27 18:00:00	2022-03-06 19:58:16.87848	f
27	PRISCILA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:59:46.716881	t
15	RENATO(POSTO)		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 20:00:23.957979	t
33	RICARDO		\N	Masculino														\N	2	60	2022-02-27 18:00:00	2022-03-06 20:00:40.790209	f
8	ROSANGELA		\N	Masculino														Plas	1	58	2022-02-27 18:00:00	2022-03-06 20:01:56.39595	t
9	SALETE SS		\N	Masculino									0					Plas	1	58	2022-02-27 18:00:00	2022-03-06 20:02:22.366205	t
26	VÂNIA		\N	Masculino														esposa bruno	2	80	2022-02-27 18:00:00	2022-03-06 20:04:16.109244	f
62	VÂNIO		\N	Masculino														\N	2	100	2022-03-07 01:33:05.0956	2022-03-07 01:33:05.0956	f
64	TERESA CRISTINA BERTIOL		2016-10-13	Feminino														\N	2	80	2022-03-20 01:34:55.06679	2022-03-20 01:34:55.06679	f
11	RENATA SIGNOTI		1994-03-23	Feminino														\N	2	100	2022-02-27 18:00:00	2022-03-20 01:38:36.668355	f
60	RAISSA EDUARDA DA SILVA MOREIRA		2005-04-28	Feminino														\N	2	100	2022-03-06 15:51:28.498618	2022-03-20 02:02:10.24187	f
16	MARCOS JOSE DURIGON		1974-08-01	Masculino			Capinzal											\N	2	100	2022-02-27 18:00:00	2022-03-20 02:18:09.931357	f
63	JEFERSON MINELLA BAUER		1997-05-27	Masculino										Prefeitura				\N	2	100	2022-03-12 14:10:00.568359	2022-03-20 02:19:49.591243	f
7	MARCOS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Plas	1	58	2022-02-27 18:00:00	2022-02-27 18:00:00	f
20	FERNANDA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Nora Sr Miguel	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
30	ALUGUEL SALA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
31	JULIA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Plas	1	58	2022-02-27 18:00:00	2022-02-27 18:00:00	f
49	ANA CLAUDIA		\N	Masculino														\N	2	60	2022-02-27 18:00:00	2022-03-06 19:37:02.121698	t
52	BIANCA		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:38:00.56862	t
38	DIEGO		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:40:05.762248	t
53	GABRIELA ZANINI		\N	Masculino														\N	2	120	2022-02-27 18:00:00	2022-03-06 19:46:02.72897	t
48	MÃE KELVIN		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:57:42.734689	t
58	NELSI TONELO		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-06 19:59:13.135322	f
41	RODRIGO BERTIOL		\N	Masculino												Dentista		Marido Indianara	2	80	2022-02-27 18:00:00	2022-03-06 20:01:29.495351	f
39	ANA CLARA		2000-03-20	Feminino													Cursando Superior	\N	2	80	2022-02-27 18:00:00	2022-03-20 00:54:07.793963	f
55	JULIA MARIA MICHAUT		2005-06-01	Feminino				999165675										\N	2	100	2022-02-27 18:00:00	2022-03-20 00:56:06.785977	f
42	SARAIANE		2004-03-05	Feminino				999431185										plas	1	58	2022-02-27 18:00:00	2022-03-20 01:22:16.04568	f
54	ALISSON WILSON STROHER		1985-06-14	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-20 01:52:17.296709	f
51	RODRIGO GABRIEL STOFFEL DE SOUZA		1998-04-07	Masculino														\N	5	90	2022-02-27 18:00:00	2022-03-20 01:56:33.319774	f
43	JANIEL DA ROSA VALADON		2000-12-13	Masculino														\N	2	80	2022-02-27 18:00:00	2022-03-20 02:09:34.684228	f
45	SABRINA FICAGNA		\N	Feminino														\N	2	100	2022-02-27 18:00:00	2022-03-20 02:21:03.494199	f
40	MATHEUS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
44	FERNANDA DAMASSENO	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
46	JULIA POSSAMAI	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
50	GIOVANA SCHUMATZ	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	plas	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
4	FILIPE		\N	Masculino														\N	2	100	2022-02-27 18:00:00	2022-03-04 12:28:35.838359	t
56	DEISI	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
57	AGNES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Plas	1	58	2022-02-27 18:00:00	2022-02-27 18:00:00	f
59	MURILO	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	100	2022-02-27 18:00:00	2022-02-27 18:00:00	f
61	<INDEFINIDO>		\N	Masculino														\N	2	100	2022-03-06 18:31:34.478957	2022-03-06 18:31:34.478957	f
47	ANA JULIA CDL		\N	Masculino														\N	5	90	2022-02-27 18:00:00	2022-03-06 18:32:21.32693	f
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3147.dat                                                                                            0000600 0004000 0002000 00000000005 14215511120 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3143.dat                                                                                            0000600 0004000 0002000 00000000537 14215511120 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Dinheiro	2022-03-05 22:19:55.390522	2022-03-05 22:19:55.390522
2	CEF - Poupança	2022-03-05 22:20:27.446522	2022-03-05 22:20:27.446522
3	BB - Nelson	2022-03-05 22:20:50.407242	2022-03-05 22:20:50.407242
4	Conta empresa	2022-03-05 22:21:48.170287	2022-03-05 22:21:48.170287
5	Nota Convênio	2022-03-20 01:19:37.232958	2022-03-20 01:19:37.232958
\.


                                                                                                                                                                 3130.dat                                                                                            0000600 0004000 0002000 00000000233 14215511120 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20220226184544
20220226191400
20220226193811
20220227193859
20220227200830
20220305155023
20220305155333
20220307110843
20220315220126
20220319195031
\.


                                                                                                                                                                                                                                                                                                                                                                     3149.dat                                                                                            0000600 0004000 0002000 00000000230 14215511120 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	nelsonjcbr@gmail.com	$2a$12$kutoiGmP0KuEWoiXbu8E8O96w2R4iGBSW/Q0H9SjhYtJDE3HPz9YO	\N	\N	\N	2022-03-19 23:19:26.721288	2022-03-19 23:19:26.721288
\.


                                                                                                                                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000050617 14215511120 0015365 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6 (Ubuntu 13.6-0ubuntu0.21.10.1)
-- Dumped by pg_dump version 13.6 (Ubuntu 13.6-0ubuntu0.21.10.1)

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

DROP DATABASE psico_dev;
--
-- Name: psico_dev; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE psico_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';


ALTER DATABASE psico_dev OWNER TO postgres;

\connect psico_dev

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
-- Name: agendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas (
    id bigint NOT NULL,
    data_hora timestamp without time zone,
    paciente_id bigint NOT NULL,
    agendado boolean,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    convenio_id integer,
    obs character varying,
    valor_recebido double precision,
    recurso_id bigint
);


ALTER TABLE public.agendas OWNER TO postgres;

--
-- Name: agendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_id_seq OWNER TO postgres;

--
-- Name: agendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_id_seq OWNED BY public.agendas.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: claudia2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.claudia2 (
    id integer NOT NULL,
    dia date,
    paciente character varying,
    hora character varying,
    valor character varying,
    pagou_caixa character varying,
    pagou_bco character varying,
    paciente_id integer
);


ALTER TABLE public.claudia2 OWNER TO postgres;

--
-- Name: claudia2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.claudia2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.claudia2_id_seq OWNER TO postgres;

--
-- Name: claudia2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.claudia2_id_seq OWNED BY public.claudia2.id;


--
-- Name: clinicas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clinicas (
    id bigint NOT NULL,
    nome character varying,
    endereco character varying,
    bairro character varying,
    cidade character varying,
    uf character varying,
    cnpj character varying,
    fone character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.clinicas OWNER TO postgres;

--
-- Name: clinicas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clinicas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clinicas_id_seq OWNER TO postgres;

--
-- Name: clinicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clinicas_id_seq OWNED BY public.clinicas.id;


--
-- Name: convenios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.convenios (
    id bigint NOT NULL,
    nome character varying,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.convenios OWNER TO postgres;

--
-- Name: convenios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.convenios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.convenios_id_seq OWNER TO postgres;

--
-- Name: convenios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.convenios_id_seq OWNED BY public.convenios.id;


--
-- Name: evolucao_tipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evolucao_tipos (
    id bigint NOT NULL,
    nome character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.evolucao_tipos OWNER TO postgres;

--
-- Name: evolucao_tipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evolucao_tipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evolucao_tipos_id_seq OWNER TO postgres;

--
-- Name: evolucao_tipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evolucao_tipos_id_seq OWNED BY public.evolucao_tipos.id;


--
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pacientes (
    id bigint NOT NULL,
    nome character varying,
    cpf character varying,
    data_nascimento date,
    sexo character varying,
    endereco character varying,
    bairro character varying,
    cidade character varying,
    fones character varying,
    nome_mae character varying,
    nome_pai character varying,
    estado_civil character varying,
    nome_conjuge character varying,
    filhos character varying,
    local_trabalho character varying,
    religiao character varying,
    profissao character varying,
    grau_instrucao character varying,
    observacoes text,
    convenio_id bigint,
    valor_atendimento double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    inativo boolean DEFAULT false
);


ALTER TABLE public.pacientes OWNER TO postgres;

--
-- Name: pacientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pacientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pacientes_id_seq OWNER TO postgres;

--
-- Name: pacientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;


--
-- Name: recebimentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recebimentos (
    id bigint NOT NULL,
    data_recebimento date,
    recurso_id bigint NOT NULL,
    valor_recebido double precision,
    obs character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.recebimentos OWNER TO postgres;

--
-- Name: recebimentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recebimentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recebimentos_id_seq OWNER TO postgres;

--
-- Name: recebimentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recebimentos_id_seq OWNED BY public.recebimentos.id;


--
-- Name: recursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recursos (
    id bigint NOT NULL,
    nome character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.recursos OWNER TO postgres;

--
-- Name: recursos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recursos_id_seq OWNER TO postgres;

--
-- Name: recursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recursos_id_seq OWNED BY public.recursos.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: agendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas ALTER COLUMN id SET DEFAULT nextval('public.agendas_id_seq'::regclass);


--
-- Name: claudia2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.claudia2 ALTER COLUMN id SET DEFAULT nextval('public.claudia2_id_seq'::regclass);


--
-- Name: clinicas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinicas ALTER COLUMN id SET DEFAULT nextval('public.clinicas_id_seq'::regclass);


--
-- Name: convenios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.convenios ALTER COLUMN id SET DEFAULT nextval('public.convenios_id_seq'::regclass);


--
-- Name: evolucao_tipos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evolucao_tipos ALTER COLUMN id SET DEFAULT nextval('public.evolucao_tipos_id_seq'::regclass);


--
-- Name: pacientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);


--
-- Name: recebimentos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimentos ALTER COLUMN id SET DEFAULT nextval('public.recebimentos_id_seq'::regclass);


--
-- Name: recursos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recursos ALTER COLUMN id SET DEFAULT nextval('public.recursos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: agendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas (id, data_hora, paciente_id, agendado, valor_atendimento, created_at, updated_at, convenio_id, obs, valor_recebido, recurso_id) FROM stdin;
\.
COPY public.agendas (id, data_hora, paciente_id, agendado, valor_atendimento, created_at, updated_at, convenio_id, obs, valor_recebido, recurso_id) FROM '$$PATH$$/3141.dat';

--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
\.
COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM '$$PATH$$/3131.dat';

--
-- Data for Name: claudia2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.claudia2 (id, dia, paciente, hora, valor, pagou_caixa, pagou_bco, paciente_id) FROM stdin;
\.
COPY public.claudia2 (id, dia, paciente, hora, valor, pagou_caixa, pagou_bco, paciente_id) FROM '$$PATH$$/3145.dat';

--
-- Data for Name: clinicas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clinicas (id, nome, endereco, bairro, cidade, uf, cnpj, fone, created_at, updated_at) FROM stdin;
\.
COPY public.clinicas (id, nome, endereco, bairro, cidade, uf, cnpj, fone, created_at, updated_at) FROM '$$PATH$$/3137.dat';

--
-- Data for Name: convenios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.convenios (id, nome, valor_atendimento, created_at, updated_at) FROM stdin;
\.
COPY public.convenios (id, nome, valor_atendimento, created_at, updated_at) FROM '$$PATH$$/3135.dat';

--
-- Data for Name: evolucao_tipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evolucao_tipos (id, nome, created_at, updated_at) FROM stdin;
\.
COPY public.evolucao_tipos (id, nome, created_at, updated_at) FROM '$$PATH$$/3133.dat';

--
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pacientes (id, nome, cpf, data_nascimento, sexo, endereco, bairro, cidade, fones, nome_mae, nome_pai, estado_civil, nome_conjuge, filhos, local_trabalho, religiao, profissao, grau_instrucao, observacoes, convenio_id, valor_atendimento, created_at, updated_at, inativo) FROM stdin;
\.
COPY public.pacientes (id, nome, cpf, data_nascimento, sexo, endereco, bairro, cidade, fones, nome_mae, nome_pai, estado_civil, nome_conjuge, filhos, local_trabalho, religiao, profissao, grau_instrucao, observacoes, convenio_id, valor_atendimento, created_at, updated_at, inativo) FROM '$$PATH$$/3139.dat';

--
-- Data for Name: recebimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recebimentos (id, data_recebimento, recurso_id, valor_recebido, obs, created_at, updated_at) FROM stdin;
\.
COPY public.recebimentos (id, data_recebimento, recurso_id, valor_recebido, obs, created_at, updated_at) FROM '$$PATH$$/3147.dat';

--
-- Data for Name: recursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recursos (id, nome, created_at, updated_at) FROM stdin;
\.
COPY public.recursos (id, nome, created_at, updated_at) FROM '$$PATH$$/3143.dat';

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
\.
COPY public.schema_migrations (version) FROM '$$PATH$$/3130.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM '$$PATH$$/3149.dat';

--
-- Name: agendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_id_seq', 365, true);


--
-- Name: claudia2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.claudia2_id_seq', 299, true);


--
-- Name: clinicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clinicas_id_seq', 2, true);


--
-- Name: convenios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.convenios_id_seq', 5, true);


--
-- Name: evolucao_tipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evolucao_tipos_id_seq', 1, false);


--
-- Name: pacientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pacientes_id_seq', 64, true);


--
-- Name: recebimentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recebimentos_id_seq', 1, false);


--
-- Name: recursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recursos_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: agendas agendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT agendas_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: clinicas clinicas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinicas
    ADD CONSTRAINT clinicas_pkey PRIMARY KEY (id);


--
-- Name: convenios convenios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.convenios
    ADD CONSTRAINT convenios_pkey PRIMARY KEY (id);


--
-- Name: evolucao_tipos evolucao_tipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evolucao_tipos
    ADD CONSTRAINT evolucao_tipos_pkey PRIMARY KEY (id);


--
-- Name: pacientes pacientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);


--
-- Name: recebimentos recebimentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT recebimentos_pkey PRIMARY KEY (id);


--
-- Name: recursos recursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recursos
    ADD CONSTRAINT recursos_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_agendas_on_paciente_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_agendas_on_paciente_id ON public.agendas USING btree (paciente_id);


--
-- Name: index_agendas_on_recurso_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_agendas_on_recurso_id ON public.agendas USING btree (recurso_id);


--
-- Name: index_pacientes_on_convenio_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_pacientes_on_convenio_id ON public.pacientes USING btree (convenio_id);


--
-- Name: index_recebimentos_on_recurso_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_recebimentos_on_recurso_id ON public.recebimentos USING btree (recurso_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: agendas fk_rails_1d961b02b7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT fk_rails_1d961b02b7 FOREIGN KEY (recurso_id) REFERENCES public.recursos(id);


--
-- Name: agendas fk_rails_7c3512545b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas
    ADD CONSTRAINT fk_rails_7c3512545b FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: recebimentos fk_rails_a5daf71e40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimentos
    ADD CONSTRAINT fk_rails_a5daf71e40 FOREIGN KEY (recurso_id) REFERENCES public.recursos(id);


--
-- Name: pacientes fk_rails_c88b4c0fcf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT fk_rails_c88b4c0fcf FOREIGN KEY (convenio_id) REFERENCES public.convenios(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 