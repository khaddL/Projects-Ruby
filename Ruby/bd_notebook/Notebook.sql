PGDMP                      }            notebook_development    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16414    notebook_development    DATABASE     z   CREATE DATABASE notebook_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
 $   DROP DATABASE notebook_development;
                     postgres    false            �            1259    16423    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap r       postgres    false            �            1259    24586    journals    TABLE     �   CREATE TABLE public.journals (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.journals;
       public         heap r       postgres    false            �            1259    24585    journals_id_seq    SEQUENCE     x   CREATE SEQUENCE public.journals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.journals_id_seq;
       public               postgres    false    222            �           0    0    journals_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.journals_id_seq OWNED BY public.journals.id;
          public               postgres    false    221            �            1259    16440    pages    TABLE       CREATE TABLE public.pages (
    id bigint NOT NULL,
    title character varying,
    body text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    emoji_category character varying,
    emoji character varying
);
    DROP TABLE public.pages;
       public         heap r       postgres    false            �            1259    16439    pages_id_seq    SEQUENCE     u   CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public               postgres    false    220            �           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public               postgres    false    219            �            1259    16416    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap r       postgres    false            /           2604    24589    journals id    DEFAULT     j   ALTER TABLE ONLY public.journals ALTER COLUMN id SET DEFAULT nextval('public.journals_id_seq'::regclass);
 :   ALTER TABLE public.journals ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            .           2604    16443    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �          0    16423    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public               postgres    false    218   C       �          0    24586    journals 
   TABLE DATA           D   COPY public.journals (id, name, created_at, updated_at) FROM stdin;
    public               postgres    false    222   �       �          0    16440    pages 
   TABLE DATA           _   COPY public.pages (id, title, body, created_at, updated_at, emoji_category, emoji) FROM stdin;
    public               postgres    false    220   �       �          0    16416    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public               postgres    false    217   �       �           0    0    journals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.journals_id_seq', 1, false);
          public               postgres    false    221            �           0    0    pages_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pages_id_seq', 14, true);
          public               postgres    false    219            3           2606    16429 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public                 postgres    false    218            7           2606    24593    journals journals_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.journals
    ADD CONSTRAINT journals_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.journals DROP CONSTRAINT journals_pkey;
       public                 postgres    false    222            5           2606    16447    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public                 postgres    false    220            1           2606    16422 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public                 postgres    false    217            �   ?   x�K�+�,���M�+�LI-K��/ ���LuL�H��������R���������1W� �'K      �      x������ � �      �   �   x�]�Mj�0������,4��e��
ݨ�(��`��WOГU����/y�,�_�y��6�p�N�T����-*�IzK�s��&��iIMpN�������x~"ՙV*RpLC����5��1n8��s��q�Z������h������2�I)��<Ɓ���7N%iםu���KсK r�u*����4��JG�����[l���NY�,��?�9�Hۙ�P����~ �%Y�      �   4   x�M��	  ������f����2�ΝC�����ǎ��RX{H:`�     