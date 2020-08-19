PGDMP                          x         
   final_try2    12.2    12.2 ~    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    93311 
   final_try2    DATABASE     �   CREATE DATABASE final_try2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE final_try2;
                postgres    false            �            1259    93439    account_category    TABLE     k   CREATE TABLE public.account_category (
    id integer NOT NULL,
    type character varying(20) NOT NULL
);
 $   DROP TABLE public.account_category;
       public         heap    postgres    false            �            1259    93437    account_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.account_category_id_seq;
       public          postgres    false    219            �           0    0    account_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.account_category_id_seq OWNED BY public.account_category.id;
          public          postgres    false    218            �            1259    93458    account_imagefile    TABLE     �   CREATE TABLE public.account_imagefile (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    "imgID_id" integer NOT NULL
);
 %   DROP TABLE public.account_imagefile;
       public         heap    postgres    false            �            1259    93456    account_imagefile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_imagefile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.account_imagefile_id_seq;
       public          postgres    false    223            �           0    0    account_imagefile_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.account_imagefile_id_seq OWNED BY public.account_imagefile.id;
          public          postgres    false    222            �            1259    93447    account_vehicle_info    TABLE     �  CREATE TABLE public.account_vehicle_info (
    id integer NOT NULL,
    brand character varying(50) NOT NULL,
    model character varying(100) NOT NULL,
    description character varying(1024) NOT NULL,
    price character varying(20) NOT NULL,
    showroom_name character varying(50) NOT NULL,
    address character varying(100) NOT NULL,
    contact character varying(20) NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer NOT NULL,
    v_type_id integer NOT NULL
);
 (   DROP TABLE public.account_vehicle_info;
       public         heap    postgres    false            �            1259    93445    account_vehicle_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_vehicle_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_vehicle_info_id_seq;
       public          postgres    false    221            �           0    0    account_vehicle_info_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_vehicle_info_id_seq OWNED BY public.account_vehicle_info.id;
          public          postgres    false    220            �            1259    93343 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    93341    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    93353    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    93351    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    93335    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    93333    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    93361 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    93371    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    93369    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    93359    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    93379    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    93377 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    93484    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    93482    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    224            �            1259    93325    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    93323    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    93314    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    93312    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    93515    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    93442    account_category id    DEFAULT     z   ALTER TABLE ONLY public.account_category ALTER COLUMN id SET DEFAULT nextval('public.account_category_id_seq'::regclass);
 B   ALTER TABLE public.account_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    93461    account_imagefile id    DEFAULT     |   ALTER TABLE ONLY public.account_imagefile ALTER COLUMN id SET DEFAULT nextval('public.account_imagefile_id_seq'::regclass);
 C   ALTER TABLE public.account_imagefile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    93450    account_vehicle_info id    DEFAULT     �   ALTER TABLE ONLY public.account_vehicle_info ALTER COLUMN id SET DEFAULT nextval('public.account_vehicle_info_id_seq'::regclass);
 F   ALTER TABLE public.account_vehicle_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    93346    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    93356    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    93338    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    93364    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    93374    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    93382    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    93487    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �
           2604    93328    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    93317    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    93439    account_category 
   TABLE DATA           4   COPY public.account_category (id, type) FROM stdin;
    public          postgres    false    219   ��       �          0    93458    account_imagefile 
   TABLE DATA           A   COPY public.account_imagefile (id, file, "imgID_id") FROM stdin;
    public          postgres    false    223   /�       �          0    93447    account_vehicle_info 
   TABLE DATA           �   COPY public.account_vehicle_info (id, brand, model, description, price, showroom_name, address, contact, image, user_id, v_type_id) FROM stdin;
    public          postgres    false    221   �       �          0    93343 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �       �          0    93353    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    93335    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207    �       �          0    93361 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    93371    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ]�       �          0    93379    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   z�       �          0    93484    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   ��       �          0    93325    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    93314    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   >�       �          0    93515    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    226   �       �           0    0    account_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.account_category_id_seq', 4, true);
          public          postgres    false    218            �           0    0    account_imagefile_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.account_imagefile_id_seq', 85, true);
          public          postgres    false    222            �           0    0    account_vehicle_info_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_vehicle_info_id_seq', 18, true);
          public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    202            �
           2606    93444 &   account_category account_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.account_category
    ADD CONSTRAINT account_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.account_category DROP CONSTRAINT account_category_pkey;
       public            postgres    false    219                       2606    93463 (   account_imagefile account_imagefile_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.account_imagefile
    ADD CONSTRAINT account_imagefile_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.account_imagefile DROP CONSTRAINT account_imagefile_pkey;
       public            postgres    false    223                       2606    93455 .   account_vehicle_info account_vehicle_info_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_pkey;
       public            postgres    false    221            �
           2606    93513    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    93395 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    93358 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    93348    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    93386 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    93340 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �
           2606    93376 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �
           2606    93410 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    93366    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �
           2606    93384 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �
           2606    93424 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    93507     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            	           2606    93493 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            �
           2606    93332 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    93330 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    93322 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    93522 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    226                       1259    93481 #   account_imagefile_imgID_id_432cb120    INDEX     i   CREATE INDEX "account_imagefile_imgID_id_432cb120" ON public.account_imagefile USING btree ("imgID_id");
 9   DROP INDEX public."account_imagefile_imgID_id_432cb120";
       public            postgres    false    223                       1259    93474 %   account_vehicle_info_user_id_1d9006ca    INDEX     i   CREATE INDEX account_vehicle_info_user_id_1d9006ca ON public.account_vehicle_info USING btree (user_id);
 9   DROP INDEX public.account_vehicle_info_user_id_1d9006ca;
       public            postgres    false    221                       1259    93475 '   account_vehicle_info_v_type_id_d9befeef    INDEX     m   CREATE INDEX account_vehicle_info_v_type_id_d9befeef ON public.account_vehicle_info USING btree (v_type_id);
 ;   DROP INDEX public.account_vehicle_info_v_type_id_d9befeef;
       public            postgres    false    221            �
           1259    93514    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    93406 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    93407 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    93392 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    93422 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �
           1259    93421 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �
           1259    93436 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �
           1259    93435 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    93508     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    93504 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            
           1259    93505 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225                       1259    93524 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    226                       1259    93523 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    226                       2606    93476 P   account_imagefile account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_imagefile
    ADD CONSTRAINT "account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id" FOREIGN KEY ("imgID_id") REFERENCES public.account_vehicle_info(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.account_imagefile DROP CONSTRAINT "account_imagefile_imgID_id_432cb120_fk_account_vehicle_info_id";
       public          postgres    false    223    221    2817                       2606    93464 J   account_vehicle_info account_vehicle_info_user_id_1d9006ca_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_user_id_1d9006ca_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_user_id_1d9006ca_fk_auth_user_id;
       public          postgres    false    221    2798    213                       2606    93469 S   account_vehicle_info account_vehicle_info_v_type_id_d9befeef_fk_account_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_vehicle_info
    ADD CONSTRAINT account_vehicle_info_v_type_id_d9befeef_fk_account_category_id FOREIGN KEY (v_type_id) REFERENCES public.account_category(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.account_vehicle_info DROP CONSTRAINT account_vehicle_info_v_type_id_d9befeef_fk_account_category_id;
       public          postgres    false    2815    219    221                       2606    93401 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    2785                       2606    93396 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2790    211    209                       2606    93387 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2780    207                       2606    93416 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2790    209                       2606    93411 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2798                       2606    93430 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2785    207                       2606    93425 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2798    213    217                       2606    93494 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2780    205    225                       2606    93499 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2798    225    213            �   (   x�3�t��N�2�t*-�2�tN,�2�)*M������ ���      �   �  x���]o�0�����6��r�T֋I��i�dH��!�B��_�	�/�w\<ϑ���؈�b�d�憇<�	����Q|�fI��m^4u]�~Ϯ�~8�q凋�~����z<��u�Gh�]���'�e�܂h�Ǡ� Z�1(-8`��y�dyQ&�6�2��a�1㡯�����א����J"4�5�<�1�1�Ƕ�n���B&F������� ~��=/�G�tyE<ʧ�k�QL]>&~4�{~jy9��d�Vm����������A���� ss��知&yt�,��{�[f9ɣ1di~<����ɣ�de��M�oɣdm
=˶�/���s�_s�6M�&��M;g����焟�����p��W(*�G�ppM8���զX��)���^�9���8qx����co9I>�S��cn�Ӷ;���p�J���ZUl6�����i4; p�� H@��i睇��e�	��s�Y^oZ�w�4P��ģ��� ��%�h�.��G��x��	�{m�O3yR���<��ߛYZ������A�	��NuP2�����;���Xn˲��*X���-軙�	JϘ���/�˶ ?�/ےl|\���>�l����%��{���"���Jv?�i`����E1���a�����'YX�$8a"���^�c��B�      �   �  x���Ao�0��)����1m�4�&M��S%�܂��~6�"8N�����o�<T)3F��8+�^�C%<�L&p�Tc%a����B����2
>l�&����☗%Ԋ%�3aK�L��G!Y�G��`BRQ��������^��� Pb���)>X-"k)�J���<U��L����򶚳:�!	�%���0����Ь�ІX����tU��i^f=i8����>�07g.K��z~*�`���q��V���	}��87�lJ1��6��Р��wBL"X�D���I�,��Jh#igYK	xVy^�g�s��Ti&\��(w*����>v>�	������AZ'v����3cҨb\�"umO�Q-B���"�r8��7�F���<Vy.䄗�'����?��c��ԃ]�#[�y�<)���:�uP�e�t�ʶ�j�H��˗��ց�ug�QG|��%���ܸ�l�ݣ�V=א���n�X�4�d      �      x������ � �      �      x������ � �      �   {  x�]�A��0E��)8����z�Q�Bԥ�(T@;����a�E~
���6C��nY?v��5ά�u���9"��:PTh1X x���%�
������g?&G5nؓ�S �	�,�K���XQ��(�:Zv��~��ۺ����ɋ'�v�t�YeЂ��h�a2%
l�֕r>��� �thx N<��qt8<���8,�_˖����u���H���k���'����	���u�z��WO(L��Uޙ!ψ��3FzYg�"�Io��q]�sxC*m�b.���"�2.���"(.��\�t����~���B;ٲ��zB������\ [}A�A����y+��Y��S�76��jAHʂU��X��XE�(s�k�?2��]      �   �  x�}�[��@��k�����0Gf�&UdaW�e[EI��,�]�*������s��d���K�]�����D���;j.���O��᪘��c�h�Ƴ8��Mˇ��d�d��w�O���}� ��dwH��H��o!S%8��^E���*�K�������HB.�
��|�|:�1��M3:��0�]L�͒܏�L/�����q[�3�5�ԟ���L%� ֻ�?�Y�����r�I*$��`�IoF�́[n=Ȍ6}��q��h9���*�gZ��X%s����V��`�������fKB ��b������|S����w�{�v�<�3*ۮ��A�8r\+�O�`�}�9�N�cic;�����c���0\]��d�$�@ "��d���at�D����W0~�Xä      �      x������ � �      �      x������ � �      �      x������ � �      �   z   x�M�K
�0��a
��w)�*����%r��������SX k"�6�	B�*��f���դ���e�n��
Q��̧J�x���m�B���!����cW_9fz���]s	�΄�"� Z;e      �   �  x����n� ���75�/}�&�8Ԓ�X�����a&)�ݸ�������-�,1^V:  Tv���C ��^�x���W
{F9$π�P���q< 9@�	��ap���P�a��!���l�����%�� 5�1�_�7��2*�vJ��MC2�i����iN�!Z���I�j�pvH�5-�0G��*F�4��ߨEϦA�@�%͔��#��h�Z��m9R�W��V�Y��U�B���JV
������N�
A�@P���G�����'�T�@X�hL:�ܽMGۦ֭'%m#�&�/$K�~n��~K�*��Bn�ߣ|�ɞut>��7�;�f��7�8��ʉf;=C�V��#�U��:�����(vj�n[��.��l�2Pmk�Ȩջ���J��A�Ky5D�����{L0eea������Pl      �     x�=��o�0���W�h�V����)�5"m���(E
n� ��%vx��|�{���������,��e���bL�Lx��+��j�scYmƮ�6��C����2�s�nKZ�I+��S":���}P�[�w�Y^u`d�UF��j������noy�7�p��]�#:��?W����&*%�չ��~�_�6�e9���Q�]<gE�bXZexxb����S�Ԏb��Ȳ���}N �����+�V>�a��-���yO�g�     