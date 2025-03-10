PGDMP  .    #        	        }            aset_management    17.4    17.4 X    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            U           1262    16429    aset_management    DATABASE     u   CREATE DATABASE aset_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE aset_management;
                     postgres    false            �            1259    16465 	   JenisAset    TABLE     y   CREATE TABLE public."JenisAset" (
    kode_jenis_aset character varying(10) NOT NULL,
    jenis_aset integer NOT NULL
);
    DROP TABLE public."JenisAset";
       public         heap r       postgres    false            �            1259    16435    KabKota    TABLE     �   CREATE TABLE public."KabKota" (
    kode_kabkota character varying(15) NOT NULL,
    kode_provinsi character varying(15) NOT NULL,
    nama_kabkota character varying(255) NOT NULL
);
    DROP TABLE public."KabKota";
       public         heap r       postgres    false            �            1259    16445 	   Kecamatan    TABLE     �   CREATE TABLE public."Kecamatan" (
    kode_kecamatan character varying(15) NOT NULL,
    kode_kabkota character varying(15) NOT NULL,
    nama_kecamatan character varying(255) NOT NULL
);
    DROP TABLE public."Kecamatan";
       public         heap r       postgres    false            �            1259    16455 	   Kelurahan    TABLE     �   CREATE TABLE public."Kelurahan" (
    kode_kelurahan character varying(15) NOT NULL,
    kode_kecamatan character varying(15) NOT NULL,
    nama_kelurahan character varying(255) NOT NULL
);
    DROP TABLE public."Kelurahan";
       public         heap r       postgres    false            �            1259    16485    MasterDepartemen    TABLE     �   CREATE TABLE public."MasterDepartemen" (
    kode_departement character varying(15) NOT NULL,
    nama_departement integer NOT NULL
);
 &   DROP TABLE public."MasterDepartemen";
       public         heap r       postgres    false            �            1259    16495    MasterGedung    TABLE     �   CREATE TABLE public."MasterGedung" (
    kode_gedung character varying(5) NOT NULL,
    nama_gedung character varying(255) NOT NULL
);
 "   DROP TABLE public."MasterGedung";
       public         heap r       postgres    false            �            1259    16490    MasterJadwal    TABLE     x   CREATE TABLE public."MasterJadwal" (
    kode_jadwal character varying(5) NOT NULL,
    nama_jadwal integer NOT NULL
);
 "   DROP TABLE public."MasterJadwal";
       public         heap r       postgres    false            �            1259    16475    MasterKondisi    TABLE     �   CREATE TABLE public."MasterKondisi" (
    kode_kondisi character varying(5) NOT NULL,
    nama_kondisi character varying(255) NOT NULL
);
 #   DROP TABLE public."MasterKondisi";
       public         heap r       postgres    false            �            1259    16480    MasterStatus    TABLE     �   CREATE TABLE public."MasterStatus" (
    kode_status character varying(5) NOT NULL,
    nama_status character varying(255) NOT NULL
);
 "   DROP TABLE public."MasterStatus";
       public         heap r       postgres    false            �            1259    16470    Merek    TABLE        CREATE TABLE public."Merek" (
    kode_merek character varying(15) NOT NULL,
    nama_merek character varying(255) NOT NULL
);
    DROP TABLE public."Merek";
       public         heap r       postgres    false            �            1259    16430    Provinsi    TABLE     �   CREATE TABLE public."Provinsi" (
    kode_provinsi character varying(15) NOT NULL,
    nama_provinsi character varying(255) NOT NULL
);
    DROP TABLE public."Provinsi";
       public         heap r       postgres    false            �            1259    16610    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap r       postgres    false            �            1259    16617    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap r       postgres    false            �            1259    16642    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       postgres    false            �            1259    16641    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public               postgres    false    240            V           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public               postgres    false    239            �            1259    16634    job_batches    TABLE     d  CREATE TABLE public.job_batches (
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
    DROP TABLE public.job_batches;
       public         heap r       postgres    false            �            1259    16625    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap r       postgres    false            �            1259    16624    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public               postgres    false    237            W           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public               postgres    false    236            �            1259    16501 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    16500    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public               postgres    false    229            X           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public               postgres    false    228            �            1259    16594    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       postgres    false            �            1259    16601    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap r       postgres    false            �            1259    16584    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16583    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    231            Y           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    230            s           2604    16645    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239    240            r           2604    16628    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236    237            p           2604    16504    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            q           2604    16587    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230    231            <          0    16465 	   JenisAset 
   TABLE DATA           B   COPY public."JenisAset" (kode_jenis_aset, jenis_aset) FROM stdin;
    public               postgres    false    221   �f       9          0    16435    KabKota 
   TABLE DATA           N   COPY public."KabKota" (kode_kabkota, kode_provinsi, nama_kabkota) FROM stdin;
    public               postgres    false    218   �f       :          0    16445 	   Kecamatan 
   TABLE DATA           S   COPY public."Kecamatan" (kode_kecamatan, kode_kabkota, nama_kecamatan) FROM stdin;
    public               postgres    false    219   g       ;          0    16455 	   Kelurahan 
   TABLE DATA           U   COPY public."Kelurahan" (kode_kelurahan, kode_kecamatan, nama_kelurahan) FROM stdin;
    public               postgres    false    220   Qg       @          0    16485    MasterDepartemen 
   TABLE DATA           P   COPY public."MasterDepartemen" (kode_departement, nama_departement) FROM stdin;
    public               postgres    false    225   �g       B          0    16495    MasterGedung 
   TABLE DATA           B   COPY public."MasterGedung" (kode_gedung, nama_gedung) FROM stdin;
    public               postgres    false    227   �g       A          0    16490    MasterJadwal 
   TABLE DATA           B   COPY public."MasterJadwal" (kode_jadwal, nama_jadwal) FROM stdin;
    public               postgres    false    226   h       >          0    16475    MasterKondisi 
   TABLE DATA           E   COPY public."MasterKondisi" (kode_kondisi, nama_kondisi) FROM stdin;
    public               postgres    false    223   4h       ?          0    16480    MasterStatus 
   TABLE DATA           B   COPY public."MasterStatus" (kode_status, nama_status) FROM stdin;
    public               postgres    false    224   vh       =          0    16470    Merek 
   TABLE DATA           9   COPY public."Merek" (kode_merek, nama_merek) FROM stdin;
    public               postgres    false    222   �h       8          0    16430    Provinsi 
   TABLE DATA           B   COPY public."Provinsi" (kode_provinsi, nama_provinsi) FROM stdin;
    public               postgres    false    217   �h       I          0    16610    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public               postgres    false    234   Di       J          0    16617    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public               postgres    false    235   ai       O          0    16642    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               postgres    false    240   ~i       M          0    16634    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public               postgres    false    238   �i       L          0    16625    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public               postgres    false    237   �i       D          0    16501 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               postgres    false    229   �i       G          0    16594    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               postgres    false    232   �j       H          0    16601    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public               postgres    false    233   �j       F          0    16584    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    231   Il       Z           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public               postgres    false    239            [           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public               postgres    false    236            \           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 17, true);
          public               postgres    false    228            ]           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    230            �           2606    16623    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public                 postgres    false    235            �           2606    16616    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public                 postgres    false    234            �           2606    16650    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public                 postgres    false    240            �           2606    16652 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public                 postgres    false    240            ~           2606    16469    JenisAset jenis_aset_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."JenisAset"
    ADD CONSTRAINT jenis_aset_pkey PRIMARY KEY (kode_jenis_aset);
 E   ALTER TABLE ONLY public."JenisAset" DROP CONSTRAINT jenis_aset_pkey;
       public                 postgres    false    221            �           2606    16640    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public                 postgres    false    238            �           2606    16632    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public                 postgres    false    237            x           2606    16439    KabKota kabkota_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."KabKota"
    ADD CONSTRAINT kabkota_pkey PRIMARY KEY (kode_kabkota);
 @   ALTER TABLE ONLY public."KabKota" DROP CONSTRAINT kabkota_pkey;
       public                 postgres    false    218            z           2606    16449    Kecamatan kecamatan_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Kecamatan"
    ADD CONSTRAINT kecamatan_pkey PRIMARY KEY (kode_kecamatan);
 D   ALTER TABLE ONLY public."Kecamatan" DROP CONSTRAINT kecamatan_pkey;
       public                 postgres    false    219            |           2606    16459    Kelurahan kelurahan_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Kelurahan"
    ADD CONSTRAINT kelurahan_pkey PRIMARY KEY (kode_kelurahan);
 D   ALTER TABLE ONLY public."Kelurahan" DROP CONSTRAINT kelurahan_pkey;
       public                 postgres    false    220            �           2606    16489 (   MasterDepartemen master_departement_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."MasterDepartemen"
    ADD CONSTRAINT master_departement_pkey PRIMARY KEY (kode_departement);
 T   ALTER TABLE ONLY public."MasterDepartemen" DROP CONSTRAINT master_departement_pkey;
       public                 postgres    false    225            �           2606    16499    MasterGedung master_gedung_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MasterGedung"
    ADD CONSTRAINT master_gedung_pkey PRIMARY KEY (kode_gedung);
 K   ALTER TABLE ONLY public."MasterGedung" DROP CONSTRAINT master_gedung_pkey;
       public                 postgres    false    227            �           2606    16494    MasterJadwal master_jadwal_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MasterJadwal"
    ADD CONSTRAINT master_jadwal_pkey PRIMARY KEY (kode_jadwal);
 K   ALTER TABLE ONLY public."MasterJadwal" DROP CONSTRAINT master_jadwal_pkey;
       public                 postgres    false    226            �           2606    16479 !   MasterKondisi master_kondisi_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."MasterKondisi"
    ADD CONSTRAINT master_kondisi_pkey PRIMARY KEY (kode_kondisi);
 M   ALTER TABLE ONLY public."MasterKondisi" DROP CONSTRAINT master_kondisi_pkey;
       public                 postgres    false    223            �           2606    16484    MasterStatus master_status_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."MasterStatus"
    ADD CONSTRAINT master_status_pkey PRIMARY KEY (kode_status);
 K   ALTER TABLE ONLY public."MasterStatus" DROP CONSTRAINT master_status_pkey;
       public                 postgres    false    224            �           2606    16474    Merek merek_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Merek"
    ADD CONSTRAINT merek_pkey PRIMARY KEY (kode_merek);
 <   ALTER TABLE ONLY public."Merek" DROP CONSTRAINT merek_pkey;
       public                 postgres    false    222            �           2606    16506    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public                 postgres    false    229            �           2606    16600 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public                 postgres    false    232            v           2606    16434    Provinsi provinsi_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Provinsi"
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (kode_provinsi);
 B   ALTER TABLE ONLY public."Provinsi" DROP CONSTRAINT provinsi_pkey;
       public                 postgres    false    217            �           2606    16607    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public                 postgres    false    233            �           2606    16593    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 postgres    false    231            �           2606    16591    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    231            �           1259    16633    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public                 postgres    false    237            �           1259    16609    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public                 postgres    false    233            �           1259    16608    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public                 postgres    false    233            �           2606    16440 "   KabKota kabkota_kode_provinsi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KabKota"
    ADD CONSTRAINT kabkota_kode_provinsi_fkey FOREIGN KEY (kode_provinsi) REFERENCES public."Provinsi"(kode_provinsi) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."KabKota" DROP CONSTRAINT kabkota_kode_provinsi_fkey;
       public               postgres    false    218    217    4726            �           2606    16450 %   Kecamatan kecamatan_kode_kabkota_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Kecamatan"
    ADD CONSTRAINT kecamatan_kode_kabkota_fkey FOREIGN KEY (kode_kabkota) REFERENCES public."KabKota"(kode_kabkota) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public."Kecamatan" DROP CONSTRAINT kecamatan_kode_kabkota_fkey;
       public               postgres    false    4728    219    218            �           2606    16460 '   Kelurahan kelurahan_kode_kecamatan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Kelurahan"
    ADD CONSTRAINT kelurahan_kode_kecamatan_fkey FOREIGN KEY (kode_kecamatan) REFERENCES public."Kecamatan"(kode_kecamatan) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."Kelurahan" DROP CONSTRAINT kelurahan_kode_kecamatan_fkey;
       public               postgres    false    4730    220    219            <      x�s�50�4�r�50�4QƜ�\1z\\\ 8��      9   ;   x��vt�500��t��
�N�M,J�K�����8��RJᢆPQ� o�=... v%�      :   3   x��vu�500��vt�!��I�9�y�\�`c��1�sfrj^J>W� {�a      ;   6   x��v��500��vu�N�9�ŉy\�`qc��1g@bqf��wbNfv&W� ���      @   "   x�s�500�44�r2�8� cNc�=... Yz      B   )   x�s�500�tOM)�KWp�rr�`\'0��u����� A�(      A   "   x���500�4���F��`�1��)W� U��      >   2   x���50�tJ�����50�*-N�V��KO��CE�R�K�b���� ZT�      ?   /   x��50�t�.�L�
�50����K��9]2R��3�3�b���� ,h�      =   -   x���500�N�-.�K���8
rR�lcN�Ԝ�=... �
W      8   B   x��t����t��T�J�N,*I����pz%�'*���'f�E� "N�E�% 'N'GO�=... �      I      x������ � �      J      x������ � �      O      x������ � �      M      x������ � �      L      x������ � �      D   �   x����� ����0�P�|�6v�MM�g�~����b|��p2 ����Tm��b�X�X��8��`�uG;��l�:W��"J ��
JRi����ｶ��� ��fFg����'d�N����`��E����H�WFK��仟����4��N�25̺���ocy��d�F¡i膆i"������G/	f,�!i�Yt��)��'���-      G      x������ � �      H   g  x�E�]o�0���W�rK�|��?���N���n��(���ׯ�,˹{����eδ���F�哽&co�xS����3�Cʗ�r�*�5��ʁ
�<�}�E���=� P�!� CpF�=5Ϣl7g���[}������l��Y���=�Qe��*xM����"��w�6�O)��㶺�N|�<+턊��mj���ʠב��FE9��f]������&".uW����+F��	.��I�����iſi������:�`Z�����A^U��������O�v!9��Z<�<�((����6�W�
Rz(��;�v�y��F�A�˝&��ٱ��<V�hа�nؽ�~���gB�?      F      x������ � �     