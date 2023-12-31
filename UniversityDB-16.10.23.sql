PGDMP         2            	    {            University_test2    14.8    15.3 h    r           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            s           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                      false            t           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            u           1262    16551    University_test2    DATABASE     �   CREATE DATABASE "University_test2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1252';
 "   DROP DATABASE "University_test2";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            v           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16571    bridge_dean    TABLE     j   CREATE TABLE public.bridge_dean (
    id integer NOT NULL,
    dean_id integer,
    faculty_id integer
);
    DROP TABLE public.bridge_dean;
       public         heap    postgres    false    4            �            1259    16570    bridge_dean_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_dean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bridge_dean_id_seq;
       public          postgres    false    210    4            w           0    0    bridge_dean_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bridge_dean_id_seq OWNED BY public.bridge_dean.id;
          public          postgres    false    209            �            1259    16669    bridge_exam    TABLE        CREATE TABLE public.bridge_exam (
    id integer NOT NULL,
    exam_id integer,
    plan_id integer,
    student_id integer
);
    DROP TABLE public.bridge_exam;
       public         heap    postgres    false    4            �            1259    16668    bridge_exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bridge_exam_id_seq;
       public          postgres    false    4    228            x           0    0    bridge_exam_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bridge_exam_id_seq OWNED BY public.bridge_exam.id;
          public          postgres    false    227            �            1259    16596    bridge_lect    TABLE     �   CREATE TABLE public.bridge_lect (
    id integer NOT NULL,
    lecturer_id integer,
    subject_id integer,
    plan_id integer
);
    DROP TABLE public.bridge_lect;
       public         heap    postgres    false    4            �            1259    16595    bridge_lect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_lect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bridge_lect_id_seq;
       public          postgres    false    4    216            y           0    0    bridge_lect_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bridge_lect_id_seq OWNED BY public.bridge_lect.id;
          public          postgres    false    215            �            1259    16630    bridge_stud    TABLE     �   CREATE TABLE public.bridge_stud (
    id integer NOT NULL,
    faculty_id integer,
    program_id integer,
    student_id integer
);
    DROP TABLE public.bridge_stud;
       public         heap    postgres    false    4            �            1259    16629    bridge_stud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_stud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bridge_stud_id_seq;
       public          postgres    false    222    4            z           0    0    bridge_stud_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bridge_stud_id_seq OWNED BY public.bridge_stud.id;
          public          postgres    false    221            �            1259    16637    courses    TABLE     M   CREATE TABLE public.courses (
    id integer NOT NULL,
    course integer
);
    DROP TABLE public.courses;
       public         heap    postgres    false    4            �            1259    16636    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public          postgres    false    224    4            {           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public          postgres    false    223            �            1259    16578    deans    TABLE     S   CREATE TABLE public.deans (
    id integer NOT NULL,
    dean character varying
);
    DROP TABLE public.deans;
       public         heap    postgres    false    4            �            1259    16577    deans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.deans_id_seq;
       public          postgres    false    212    4            |           0    0    deans_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.deans_id_seq OWNED BY public.deans.id;
          public          postgres    false    211            �            1259    16677    exam    TABLE     e   CREATE TABLE public.exam (
    id integer NOT NULL,
    scores integer,
    profession_id integer
);
    DROP TABLE public.exam;
       public         heap    postgres    false    4            �            1259    16676    exam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.exam_id_seq;
       public          postgres    false    4    230            }           0    0    exam_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.exam_id_seq OWNED BY public.exam.id;
          public          postgres    false    229            �            1259    16603 	   faculties    TABLE     Z   CREATE TABLE public.faculties (
    id integer NOT NULL,
    faculty character varying
);
    DROP TABLE public.faculties;
       public         heap    postgres    false    4            �            1259    16602    faculties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.faculties_id_seq;
       public          postgres    false    4    218            ~           0    0    faculties_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.faculties_id_seq OWNED BY public.faculties.id;
          public          postgres    false    217            �            1259    16587    lectures    TABLE     Z   CREATE TABLE public.lectures (
    id integer NOT NULL,
    lecturer character varying
);
    DROP TABLE public.lectures;
       public         heap    postgres    false    4            �            1259    16586    lectures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lectures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lectures_id_seq;
       public          postgres    false    214    4                       0    0    lectures_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.lectures_id_seq OWNED BY public.lectures.id;
          public          postgres    false    213            �            1259    16653    plan    TABLE     K   CREATE TABLE public.plan (
    id integer NOT NULL,
    dur_sub integer
);
    DROP TABLE public.plan;
       public         heap    postgres    false    4            �            1259    16652    plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.plan_id_seq;
       public          postgres    false    226    4            �           0    0    plan_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.plan_id_seq OWNED BY public.plan.id;
          public          postgres    false    225            �            1259    16684    professions    TABLE     �   CREATE TABLE public.professions (
    id integer NOT NULL,
    proffesion character varying,
    course_id integer,
    faculity_id integer,
    plan_id integer
);
    DROP TABLE public.professions;
       public         heap    postgres    false    4            �            1259    16683    professions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.professions_id_seq;
       public          postgres    false    4    232            �           0    0    professions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.professions_id_seq OWNED BY public.professions.id;
          public          postgres    false    231            �            1259    16621    programs    TABLE     q   CREATE TABLE public.programs (
    id integer NOT NULL,
    program character varying,
    price_prog integer
);
    DROP TABLE public.programs;
       public         heap    postgres    false    4            �            1259    16620    programs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.programs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.programs_id_seq;
       public          postgres    false    220    4            �           0    0    programs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;
          public          postgres    false    219            �            1259    16702    students    TABLE     t   CREATE TABLE public.students (
    id integer NOT NULL,
    student character varying,
    profession_id integer
);
    DROP TABLE public.students;
       public         heap    postgres    false    4            �            1259    16701    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    4    236            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    235            �            1259    16693    subjects    TABLE     p   CREATE TABLE public.subjects (
    id integer NOT NULL,
    subject character varying,
    price_sub integer
);
    DROP TABLE public.subjects;
       public         heap    postgres    false    4            �            1259    16692    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    4    234            �           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    233            �           2604    16574    bridge_dean id    DEFAULT     p   ALTER TABLE ONLY public.bridge_dean ALTER COLUMN id SET DEFAULT nextval('public.bridge_dean_id_seq'::regclass);
 =   ALTER TABLE public.bridge_dean ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16672    bridge_exam id    DEFAULT     p   ALTER TABLE ONLY public.bridge_exam ALTER COLUMN id SET DEFAULT nextval('public.bridge_exam_id_seq'::regclass);
 =   ALTER TABLE public.bridge_exam ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16599    bridge_lect id    DEFAULT     p   ALTER TABLE ONLY public.bridge_lect ALTER COLUMN id SET DEFAULT nextval('public.bridge_lect_id_seq'::regclass);
 =   ALTER TABLE public.bridge_lect ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16633    bridge_stud id    DEFAULT     p   ALTER TABLE ONLY public.bridge_stud ALTER COLUMN id SET DEFAULT nextval('public.bridge_stud_id_seq'::regclass);
 =   ALTER TABLE public.bridge_stud ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16640 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16581    deans id    DEFAULT     d   ALTER TABLE ONLY public.deans ALTER COLUMN id SET DEFAULT nextval('public.deans_id_seq'::regclass);
 7   ALTER TABLE public.deans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16680    exam id    DEFAULT     b   ALTER TABLE ONLY public.exam ALTER COLUMN id SET DEFAULT nextval('public.exam_id_seq'::regclass);
 6   ALTER TABLE public.exam ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16606    faculties id    DEFAULT     l   ALTER TABLE ONLY public.faculties ALTER COLUMN id SET DEFAULT nextval('public.faculties_id_seq'::regclass);
 ;   ALTER TABLE public.faculties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16590    lectures id    DEFAULT     j   ALTER TABLE ONLY public.lectures ALTER COLUMN id SET DEFAULT nextval('public.lectures_id_seq'::regclass);
 :   ALTER TABLE public.lectures ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16656    plan id    DEFAULT     b   ALTER TABLE ONLY public.plan ALTER COLUMN id SET DEFAULT nextval('public.plan_id_seq'::regclass);
 6   ALTER TABLE public.plan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16687    professions id    DEFAULT     p   ALTER TABLE ONLY public.professions ALTER COLUMN id SET DEFAULT nextval('public.professions_id_seq'::regclass);
 =   ALTER TABLE public.professions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    16624    programs id    DEFAULT     j   ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);
 :   ALTER TABLE public.programs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16705    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16696    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            U          0    16571    bridge_dean 
   TABLE DATA           >   COPY public.bridge_dean (id, dean_id, faculty_id) FROM stdin;
    public          postgres    false    210   �j       g          0    16669    bridge_exam 
   TABLE DATA           G   COPY public.bridge_exam (id, exam_id, plan_id, student_id) FROM stdin;
    public          postgres    false    228   k       [          0    16596    bridge_lect 
   TABLE DATA           K   COPY public.bridge_lect (id, lecturer_id, subject_id, plan_id) FROM stdin;
    public          postgres    false    216   Kk       a          0    16630    bridge_stud 
   TABLE DATA           M   COPY public.bridge_stud (id, faculty_id, program_id, student_id) FROM stdin;
    public          postgres    false    222   �k       c          0    16637    courses 
   TABLE DATA           -   COPY public.courses (id, course) FROM stdin;
    public          postgres    false    224   @l       W          0    16578    deans 
   TABLE DATA           )   COPY public.deans (id, dean) FROM stdin;
    public          postgres    false    212   ml       i          0    16677    exam 
   TABLE DATA           9   COPY public.exam (id, scores, profession_id) FROM stdin;
    public          postgres    false    230   �l       ]          0    16603 	   faculties 
   TABLE DATA           0   COPY public.faculties (id, faculty) FROM stdin;
    public          postgres    false    218   m       Y          0    16587    lectures 
   TABLE DATA           0   COPY public.lectures (id, lecturer) FROM stdin;
    public          postgres    false    214   Zm       e          0    16653    plan 
   TABLE DATA           +   COPY public.plan (id, dur_sub) FROM stdin;
    public          postgres    false    226   �m       k          0    16684    professions 
   TABLE DATA           V   COPY public.professions (id, proffesion, course_id, faculity_id, plan_id) FROM stdin;
    public          postgres    false    232   n       _          0    16621    programs 
   TABLE DATA           ;   COPY public.programs (id, program, price_prog) FROM stdin;
    public          postgres    false    220   �n       o          0    16702    students 
   TABLE DATA           >   COPY public.students (id, student, profession_id) FROM stdin;
    public          postgres    false    236   8o       m          0    16693    subjects 
   TABLE DATA           :   COPY public.subjects (id, subject, price_sub) FROM stdin;
    public          postgres    false    234   q       �           0    0    bridge_dean_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bridge_dean_id_seq', 10, true);
          public          postgres    false    209            �           0    0    bridge_exam_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bridge_exam_id_seq', 10, true);
          public          postgres    false    227            �           0    0    bridge_lect_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bridge_lect_id_seq', 20, true);
          public          postgres    false    215            �           0    0    bridge_stud_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bridge_stud_id_seq', 80, true);
          public          postgres    false    221            �           0    0    courses_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courses_id_seq', 8, true);
          public          postgres    false    223            �           0    0    deans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.deans_id_seq', 10, true);
          public          postgres    false    211            �           0    0    exam_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.exam_id_seq', 7, true);
          public          postgres    false    229            �           0    0    faculties_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.faculties_id_seq', 10, true);
          public          postgres    false    217            �           0    0    lectures_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.lectures_id_seq', 20, true);
          public          postgres    false    213            �           0    0    plan_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.plan_id_seq', 14, true);
          public          postgres    false    225            �           0    0    professions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.professions_id_seq', 5, true);
          public          postgres    false    231            �           0    0    programs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.programs_id_seq', 12, true);
          public          postgres    false    219            �           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 39, true);
          public          postgres    false    235            �           0    0    subjects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.subjects_id_seq', 10, true);
          public          postgres    false    233            �           2606    16576    bridge_dean bridge_dean_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bridge_dean
    ADD CONSTRAINT bridge_dean_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bridge_dean DROP CONSTRAINT bridge_dean_pkey;
       public            postgres    false    210            �           2606    16674    bridge_exam bridge_exam_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bridge_exam
    ADD CONSTRAINT bridge_exam_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bridge_exam DROP CONSTRAINT bridge_exam_pkey;
       public            postgres    false    228            �           2606    16601    bridge_lect bridge_lect_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bridge_lect
    ADD CONSTRAINT bridge_lect_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bridge_lect DROP CONSTRAINT bridge_lect_pkey;
       public            postgres    false    216            �           2606    16635    bridge_stud bridge_stud_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bridge_stud
    ADD CONSTRAINT bridge_stud_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bridge_stud DROP CONSTRAINT bridge_stud_pkey;
       public            postgres    false    222            �           2606    16642    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    224            �           2606    16585    deans deans_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.deans
    ADD CONSTRAINT deans_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.deans DROP CONSTRAINT deans_pkey;
       public            postgres    false    212            �           2606    16682    exam exam_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pkey;
       public            postgres    false    230            �           2606    16610    faculties faculties_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public            postgres    false    218            �           2606    16594    lectures lectures_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.lectures
    ADD CONSTRAINT lectures_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.lectures DROP CONSTRAINT lectures_pkey;
       public            postgres    false    214            �           2606    16658    plan plan_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.plan
    ADD CONSTRAINT plan_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.plan DROP CONSTRAINT plan_pkey;
       public            postgres    false    226            �           2606    16691    professions professions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.professions DROP CONSTRAINT professions_pkey;
       public            postgres    false    232            �           2606    16628    programs programs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.programs DROP CONSTRAINT programs_pkey;
       public            postgres    false    220            �           2606    16709    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    236            �           2606    16700    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    234            U   %   x�3�4�4�2�B.cN �2�B.SN ����� K�2      g   3   x�5��� ��n1�/*؋��A|	�)��I�	/�!���%��ݯ��      [   3   x�5��� ��n1�/*؋��A|	�)��I�	/�!���%��ݯ��      a   �   x�-�ɍ1Cѳ~0�To�8�8FnJ��P��7d�a�7����8��̸��\�������K��B-�Qk�b-�j��:Q�u��Q	=��'�����Ǎk8�������k��5|�~H�LR#"5���;OH�,R#�����Ej�&5�j�����X2�      c      x�3�4�2�4�2�4�2�4����� ��      W   B   x�3�tIM�S����+���2�p�s3K2��!��̜����b.�%�,����q*�/������ d�$      i   2   x��I 0��,�J�.口�e�+����+�$�̒*�)5�ޑ��}?      ]   I   x�3�t�K��KM-��K�2��HM�)�PN�L�KN-�2�t*-�s�p�'g&� $M9�KJ���b���� ��-      Y   t   x�3�(�OK-.�/R��,��2�t)�S����+���2F�����L�-�2+qI,�,�2ER�T�_��e��IM�2G�2�,�4)���I�9'�(��� ,�ZR���� �?3k      e   "   x�3�4�2�4�2�&@�H�is ���� D�      k   l   x�3�t��-(-I-RN�L�KN�4A.#Nל�䒢���׼�̼�Ԣ̼tN#���1�Sf~N~z%��i�e�P\��2B.SN����<9�9M�b���� El#�      _   �   x�u�M
�@���)�Rkǟ���K���2�60M$3]����`A�y_om�6�Y?�5 P ��N<<��_�-�(9�����s�n2�^�f�� ��q!d�����x������)��}@���d|���^�{�A���޳v�(�)����/��T�      o   �  x�U��n�0��ɧ�&���t+�e	64z�%�bm��n���G/N��	�H~�,�6�M����C�Q`���u�ܥ�%�`������ 90��ɇ�����֬m}t���
��s���K�TXæ?��i.M�56���\̓M{o�A�`q��?$|�I�!��mgV�ç��\�|�)�,b$��wj�W��VA��ե�.�H�om
��U,H%�OÖv�s�F%R۶��`V�i�U!հ�
ѥ! �H���^am��85����K3/ΐ	�v[�b�iM�+��?Z�S�G�Ȣ���QAi��9EU͂�+����8G.@A&�Ɗd=���%޸p�\���_�s�\�C���g��5rw.����oihP2XM�g�%C!�hn��P��T��H��8�/���y������f�J
���s�LJ�j���T(������k�&~{�� �l�5      m   �   x�5��
�0F��?O�'(3jں�]� ��FB0u��߾���ǁ#xɻyH�F3��?*�J4����"Ln�U3tq�^'s-�N�������E�����ί-������ S�v���rҶ:Ԇ�ѫ��
C�#���3	     