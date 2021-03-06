PGDMP         3                s            elmolino    9.4.0    9.4.0    @	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B	           1262    25398    elmolino    DATABASE     x   CREATE DATABASE elmolino WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.utf8' LC_CTYPE = 'es_ES.utf8';
    DROP DATABASE elmolino;
             elmolino    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            C	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            D	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11863    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            E	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    225            �            1259    25399 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         elmolino    false    6            �            1259    25402    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       elmolino    false    172    6            F	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       elmolino    false    173            �            1259    25404    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         elmolino    false    6            �            1259    25407    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       elmolino    false    174    6            G	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       elmolino    false    175            �            1259    25409    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         elmolino    false    6            �            1259    25412    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       elmolino    false    6    176            H	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       elmolino    false    177            �            1259    25414 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
    DROP TABLE public.auth_user;
       public         elmolino    false    6            �            1259    25417    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         elmolino    false    6            �            1259    25420    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       elmolino    false    6    179            I	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       elmolino    false    180            �            1259    25422    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       elmolino    false    178    6            J	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       elmolino    false    181            �            1259    25424    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         elmolino    false    6            �            1259    25427 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       elmolino    false    182    6            K	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       elmolino    false    183            �            1259    25429    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         elmolino    false    6            �            1259    25436    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       elmolino    false    184    6            L	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       elmolino    false    185            �            1259    25438    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         elmolino    false    6            �            1259    25441    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       elmolino    false    186    6            M	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       elmolino    false    187            �            1259    25443    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         elmolino    false    6            �            1259    25449    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       elmolino    false    188    6            N	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       elmolino    false    189            �            1259    25451    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         elmolino    false    6            �            1259    25457    web_carrito    TABLE       CREATE TABLE web_carrito (
    id integer NOT NULL,
    codigo character varying(20) NOT NULL,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    product_id integer,
    servicio_id integer,
    usuario_id integer NOT NULL,
    total double precision NOT NULL
);
    DROP TABLE public.web_carrito;
       public         elmolino    false    6            �            1259    25460    web_carrito_id_seq    SEQUENCE     t   CREATE SEQUENCE web_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_carrito_id_seq;
       public       elmolino    false    191    6            O	           0    0    web_carrito_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_carrito_id_seq OWNED BY web_carrito.id;
            public       elmolino    false    192            �            1259    25462    web_cat_foro    TABLE     �   CREATE TABLE web_cat_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    cat_foro_padre_id integer,
    cliente_id integer NOT NULL
);
     DROP TABLE public.web_cat_foro;
       public         elmolino    false    6            �            1259    25465    web_cat_foro_id_seq    SEQUENCE     u   CREATE SEQUENCE web_cat_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_cat_foro_id_seq;
       public       elmolino    false    6    193            P	           0    0    web_cat_foro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_cat_foro_id_seq OWNED BY web_cat_foro.id;
            public       elmolino    false    194            �            1259    25467    web_cat_producto    TABLE     �   CREATE TABLE web_cat_producto (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    imagen_cat character varying(100) NOT NULL,
    tipo character varying(2) NOT NULL
);
 $   DROP TABLE public.web_cat_producto;
       public         elmolino    false    6            �            1259    25470    web_cat_producto_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_producto_id_seq;
       public       elmolino    false    6    195            Q	           0    0    web_cat_producto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_producto_id_seq OWNED BY web_cat_producto.id;
            public       elmolino    false    196            �            1259    25472    web_cat_servicio    TABLE     �   CREATE TABLE web_cat_servicio (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    codigo character varying(5) NOT NULL,
    imagen_cat character varying(100) NOT NULL
);
 $   DROP TABLE public.web_cat_servicio;
       public         elmolino    false    6            �            1259    25475    web_cat_servicio_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_servicio_id_seq;
       public       elmolino    false    197    6            R	           0    0    web_cat_servicio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_servicio_id_seq OWNED BY web_cat_servicio.id;
            public       elmolino    false    198            �            1259    25477    web_cliente    TABLE     2  CREATE TABLE web_cliente (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    correo character varying(30) NOT NULL,
    cedula character varying(10) NOT NULL,
    telefono character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_cliente;
       public         elmolino    false    6            �            1259    25480    web_cliente_id_seq    SEQUENCE     t   CREATE SEQUENCE web_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_cliente_id_seq;
       public       elmolino    false    6    199            S	           0    0    web_cliente_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_cliente_id_seq OWNED BY web_cliente.id;
            public       elmolino    false    200            �            1259    25482    web_comentario    TABLE     G  CREATE TABLE web_comentario (
    id integer NOT NULL,
    tema character varying(20) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(1000) NOT NULL,
    cproducto_id integer,
    cusuario_id integer NOT NULL,
    cservicio_id integer,
    cforo_id integer,
    responder_id integer
);
 "   DROP TABLE public.web_comentario;
       public         elmolino    false    6            �            1259    25488    web_comentario_id_seq    SEQUENCE     w   CREATE SEQUENCE web_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_comentario_id_seq;
       public       elmolino    false    201    6            T	           0    0    web_comentario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_comentario_id_seq OWNED BY web_comentario.id;
            public       elmolino    false    202            �            1259    25490    web_cotizacion    TABLE     �   CREATE TABLE web_cotizacion (
    id integer NOT NULL,
    costo_total double precision NOT NULL,
    fecha date NOT NULL,
    cliente_id integer NOT NULL
);
 "   DROP TABLE public.web_cotizacion;
       public         elmolino    false    6            �            1259    25493    web_cotizacion_detalle    TABLE       CREATE TABLE web_cotizacion_detalle (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    valor_unitario double precision NOT NULL,
    cotizacion_id integer NOT NULL,
    product_id integer,
    servicio_id integer,
    total double precision NOT NULL
);
 *   DROP TABLE public.web_cotizacion_detalle;
       public         elmolino    false    6            �            1259    25496    web_cotizacion_detalle_id_seq    SEQUENCE        CREATE SEQUENCE web_cotizacion_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_cotizacion_detalle_id_seq;
       public       elmolino    false    204    6            U	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE web_cotizacion_detalle_id_seq OWNED BY web_cotizacion_detalle.id;
            public       elmolino    false    205            �            1259    25498    web_cotizacion_id_seq    SEQUENCE     w   CREATE SEQUENCE web_cotizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_cotizacion_id_seq;
       public       elmolino    false    6    203            V	           0    0    web_cotizacion_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_cotizacion_id_seq OWNED BY web_cotizacion.id;
            public       elmolino    false    206            �            1259    25501    web_elmolino    TABLE     w  CREATE TABLE web_elmolino (
    id integer NOT NULL,
    correo character varying(5000) NOT NULL,
    direccion character varying(5000) NOT NULL,
    historia character varying(5000) NOT NULL,
    mision character varying(5000) NOT NULL,
    telefono character varying(5000) NOT NULL,
    vision character varying(5000) NOT NULL,
    mapa character varying(5000) NOT NULL
);
     DROP TABLE public.web_elmolino;
       public         elmolino    false    6            �            1259    25507    web_elmolino_id_seq    SEQUENCE     u   CREATE SEQUENCE web_elmolino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_elmolino_id_seq;
       public       elmolino    false    207    6            W	           0    0    web_elmolino_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_elmolino_id_seq OWNED BY web_elmolino.id;
            public       elmolino    false    208            �            1259    25509    web_foro    TABLE       CREATE TABLE web_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    tema character varying(30) NOT NULL,
    ccomentario character varying(5000) NOT NULL,
    cat_foro_id integer NOT NULL,
    usuario_id integer NOT NULL,
    coment_small character varying(250)
);
    DROP TABLE public.web_foro;
       public         elmolino    false    6            �            1259    25515    web_foro_id_seq    SEQUENCE     q   CREATE SEQUENCE web_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_foro_id_seq;
       public       elmolino    false    209    6            X	           0    0    web_foro_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_foro_id_seq OWNED BY web_foro.id;
            public       elmolino    false    210            �            1259    25517    web_galeria    TABLE        CREATE TABLE web_galeria (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    activa boolean NOT NULL
);
    DROP TABLE public.web_galeria;
       public         elmolino    false    6            �            1259    25520    web_galeria_id_seq    SEQUENCE     t   CREATE SEQUENCE web_galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_galeria_id_seq;
       public       elmolino    false    6    211            Y	           0    0    web_galeria_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_galeria_id_seq OWNED BY web_galeria.id;
            public       elmolino    false    212            �            1259    25522    web_menu    TABLE     �   CREATE TABLE web_menu (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    url character varying(30) NOT NULL,
    nivel smallint NOT NULL,
    padre_id integer,
    acceso_id integer,
    orden smallint NOT NULL
);
    DROP TABLE public.web_menu;
       public         elmolino    false    6            �            1259    25525    web_menu_id_seq    SEQUENCE     q   CREATE SEQUENCE web_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_menu_id_seq;
       public       elmolino    false    213    6            Z	           0    0    web_menu_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_menu_id_seq OWNED BY web_menu.id;
            public       elmolino    false    214            �            1259    25527 
   web_oferta    TABLE     �   CREATE TABLE web_oferta (
    id integer NOT NULL,
    nombre character varying(1500) NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.web_oferta;
       public         elmolino    false    6            �            1259    25533    web_oferta_id_seq    SEQUENCE     s   CREATE SEQUENCE web_oferta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_oferta_id_seq;
       public       elmolino    false    6    215            [	           0    0    web_oferta_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE web_oferta_id_seq OWNED BY web_oferta.id;
            public       elmolino    false    216            �            1259    25535    web_producto    TABLE     w  CREATE TABLE web_producto (
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
    cat_producto_id integer NOT NULL,
    variedad_id integer NOT NULL
);
     DROP TABLE public.web_producto;
       public         elmolino    false    6            �            1259    25541    web_producto_id_seq    SEQUENCE     u   CREATE SEQUENCE web_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_producto_id_seq;
       public       elmolino    false    217    6            \	           0    0    web_producto_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_producto_id_seq OWNED BY web_producto.id;
            public       elmolino    false    218            �            1259    25543    web_servicio_id_seq    SEQUENCE     u   CREATE SEQUENCE web_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_servicio_id_seq;
       public       elmolino    false    6            �            1259    25545    web_servicio    TABLE     U  CREATE TABLE web_servicio (
    id integer DEFAULT nextval('web_servicio_id_seq'::regclass) NOT NULL,
    codigo character varying(6) NOT NULL,
    nombre character varying(20) NOT NULL,
    costo double precision NOT NULL,
    cat_servicio_id integer NOT NULL,
    duracion character varying(10),
    descripcion character varying(2000)
);
     DROP TABLE public.web_servicio;
       public         elmolino    false    219    6            �            1259    25552    web_siguenos    TABLE     �   CREATE TABLE web_siguenos (
    id integer NOT NULL,
    red character varying(5000) NOT NULL,
    url character varying(5000) NOT NULL,
    imagen character varying(100) NOT NULL
);
     DROP TABLE public.web_siguenos;
       public         elmolino    false    6            �            1259    25558    web_siguenos_id_seq    SEQUENCE     u   CREATE SEQUENCE web_siguenos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_siguenos_id_seq;
       public       elmolino    false    221    6            ]	           0    0    web_siguenos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_siguenos_id_seq OWNED BY web_siguenos.id;
            public       elmolino    false    222            �            1259    25560    web_variedad    TABLE       CREATE TABLE web_variedad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    origen character varying(20),
    situacion character varying(20),
    cultivo character varying(20),
    poda character varying(20),
    multiplicacion character varying(20)
);
     DROP TABLE public.web_variedad;
       public         elmolino    false    6            �            1259    25563    web_variedad_id_seq    SEQUENCE     u   CREATE SEQUENCE web_variedad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_variedad_id_seq;
       public       elmolino    false    6    223            ^	           0    0    web_variedad_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_variedad_id_seq OWNED BY web_variedad.id;
            public       elmolino    false    224                       2604    25565    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    173    172                       2604    25566    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    175    174                       2604    25567    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    177    176                       2604    25568    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    181    178                       2604    25569    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    180    179                       2604    25570    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    183    182            	           2604    25571    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    185    184                       2604    25572    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    187    186                       2604    25573    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    189    188                       2604    25574    id    DEFAULT     b   ALTER TABLE ONLY web_carrito ALTER COLUMN id SET DEFAULT nextval('web_carrito_id_seq'::regclass);
 =   ALTER TABLE public.web_carrito ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    192    191                       2604    25575    id    DEFAULT     d   ALTER TABLE ONLY web_cat_foro ALTER COLUMN id SET DEFAULT nextval('web_cat_foro_id_seq'::regclass);
 >   ALTER TABLE public.web_cat_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    194    193                       2604    25576    id    DEFAULT     l   ALTER TABLE ONLY web_cat_producto ALTER COLUMN id SET DEFAULT nextval('web_cat_producto_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    196    195                       2604    25577    id    DEFAULT     l   ALTER TABLE ONLY web_cat_servicio ALTER COLUMN id SET DEFAULT nextval('web_cat_servicio_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_servicio ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    198    197                       2604    25578    id    DEFAULT     b   ALTER TABLE ONLY web_cliente ALTER COLUMN id SET DEFAULT nextval('web_cliente_id_seq'::regclass);
 =   ALTER TABLE public.web_cliente ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    200    199                       2604    25579    id    DEFAULT     h   ALTER TABLE ONLY web_comentario ALTER COLUMN id SET DEFAULT nextval('web_comentario_id_seq'::regclass);
 @   ALTER TABLE public.web_comentario ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    202    201                       2604    25580    id    DEFAULT     h   ALTER TABLE ONLY web_cotizacion ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_id_seq'::regclass);
 @   ALTER TABLE public.web_cotizacion ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    206    203                       2604    25581    id    DEFAULT     x   ALTER TABLE ONLY web_cotizacion_detalle ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_detalle_id_seq'::regclass);
 H   ALTER TABLE public.web_cotizacion_detalle ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    205    204                       2604    25582    id    DEFAULT     d   ALTER TABLE ONLY web_elmolino ALTER COLUMN id SET DEFAULT nextval('web_elmolino_id_seq'::regclass);
 >   ALTER TABLE public.web_elmolino ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    208    207                       2604    25583    id    DEFAULT     \   ALTER TABLE ONLY web_foro ALTER COLUMN id SET DEFAULT nextval('web_foro_id_seq'::regclass);
 :   ALTER TABLE public.web_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    210    209                       2604    25584    id    DEFAULT     b   ALTER TABLE ONLY web_galeria ALTER COLUMN id SET DEFAULT nextval('web_galeria_id_seq'::regclass);
 =   ALTER TABLE public.web_galeria ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    212    211                       2604    25585    id    DEFAULT     \   ALTER TABLE ONLY web_menu ALTER COLUMN id SET DEFAULT nextval('web_menu_id_seq'::regclass);
 :   ALTER TABLE public.web_menu ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    214    213                       2604    25586    id    DEFAULT     `   ALTER TABLE ONLY web_oferta ALTER COLUMN id SET DEFAULT nextval('web_oferta_id_seq'::regclass);
 <   ALTER TABLE public.web_oferta ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    216    215                       2604    25587    id    DEFAULT     d   ALTER TABLE ONLY web_producto ALTER COLUMN id SET DEFAULT nextval('web_producto_id_seq'::regclass);
 >   ALTER TABLE public.web_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    218    217                       2604    25588    id    DEFAULT     d   ALTER TABLE ONLY web_siguenos ALTER COLUMN id SET DEFAULT nextval('web_siguenos_id_seq'::regclass);
 >   ALTER TABLE public.web_siguenos ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    222    221                       2604    25589    id    DEFAULT     d   ALTER TABLE ONLY web_variedad ALTER COLUMN id SET DEFAULT nextval('web_variedad_id_seq'::regclass);
 >   ALTER TABLE public.web_variedad ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    224    223            		          0    25399 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       elmolino    false    172   8      _	           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 3, true);
            public       elmolino    false    173            	          0    25404    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       elmolino    false    174   M8      `	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 142, true);
            public       elmolino    false    175            	          0    25409    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       elmolino    false    176   K9      a	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);
            public       elmolino    false    177            	          0    25414 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       elmolino    false    178   <      	          0    25417    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       elmolino    false    179   |=      b	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       elmolino    false    180            c	           0    0    auth_user_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_user_id_seq', 35, true);
            public       elmolino    false    181            	          0    25424    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       elmolino    false    182   �=      d	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       elmolino    false    183            	          0    25429    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       elmolino    false    184   �=      e	           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 195, true);
            public       elmolino    false    185            	          0    25438    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       elmolino    false    186   FK      f	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);
            public       elmolino    false    187            	          0    25443    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       elmolino    false    188   eL      g	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 40, true);
            public       elmolino    false    189            	          0    25451    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       elmolino    false    190   �O      	          0    25457    web_carrito 
   TABLE DATA               g   COPY web_carrito (id, codigo, fecha, cantidad, product_id, servicio_id, usuario_id, total) FROM stdin;
    public       elmolino    false    191   �S      h	           0    0    web_carrito_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_carrito_id_seq', 48, true);
            public       elmolino    false    192            	          0    25462    web_cat_foro 
   TABLE DATA               ^   COPY web_cat_foro (id, fecha, nombre, descripcion, cat_foro_padre_id, cliente_id) FROM stdin;
    public       elmolino    false    193   �S      i	           0    0    web_cat_foro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cat_foro_id_seq', 1, true);
            public       elmolino    false    194             	          0    25467    web_cat_producto 
   TABLE DATA               A   COPY web_cat_producto (id, nombre, imagen_cat, tipo) FROM stdin;
    public       elmolino    false    195   CT      j	           0    0    web_cat_producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_producto_id_seq', 4, true);
            public       elmolino    false    196            "	          0    25472    web_cat_servicio 
   TABLE DATA               C   COPY web_cat_servicio (id, nombre, codigo, imagen_cat) FROM stdin;
    public       elmolino    false    197   �T      k	           0    0    web_cat_servicio_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_servicio_id_seq', 1, true);
            public       elmolino    false    198            $	          0    25477    web_cliente 
   TABLE DATA               Z   COPY web_cliente (id, nombre, apellido, correo, cedula, telefono, usuario_id) FROM stdin;
    public       elmolino    false    199   �T      l	           0    0    web_cliente_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cliente_id_seq', 37, true);
            public       elmolino    false    200            &	          0    25482    web_comentario 
   TABLE DATA               �   COPY web_comentario (id, tema, fecha, descripcion, cproducto_id, cusuario_id, cservicio_id, cforo_id, responder_id) FROM stdin;
    public       elmolino    false    201   PU      m	           0    0    web_comentario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('web_comentario_id_seq', 7, true);
            public       elmolino    false    202            (	          0    25490    web_cotizacion 
   TABLE DATA               E   COPY web_cotizacion (id, costo_total, fecha, cliente_id) FROM stdin;
    public       elmolino    false    203   �V      )	          0    25493    web_cotizacion_detalle 
   TABLE DATA               v   COPY web_cotizacion_detalle (id, cantidad, valor_unitario, cotizacion_id, product_id, servicio_id, total) FROM stdin;
    public       elmolino    false    204   �V      n	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('web_cotizacion_detalle_id_seq', 31, true);
            public       elmolino    false    205            o	           0    0    web_cotizacion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('web_cotizacion_id_seq', 22, true);
            public       elmolino    false    206            ,	          0    25501    web_elmolino 
   TABLE DATA               `   COPY web_elmolino (id, correo, direccion, historia, mision, telefono, vision, mapa) FROM stdin;
    public       elmolino    false    207   �W      p	           0    0    web_elmolino_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_elmolino_id_seq', 2, true);
            public       elmolino    false    208            .	          0    25509    web_foro 
   TABLE DATA               `   COPY web_foro (id, fecha, tema, ccomentario, cat_foro_id, usuario_id, coment_small) FROM stdin;
    public       elmolino    false    209   �Z      q	           0    0    web_foro_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_foro_id_seq', 3, true);
            public       elmolino    false    210            0	          0    25517    web_galeria 
   TABLE DATA               2   COPY web_galeria (id, imagen, activa) FROM stdin;
    public       elmolino    false    211   Y\      r	           0    0    web_galeria_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('web_galeria_id_seq', 2, true);
            public       elmolino    false    212            2	          0    25522    web_menu 
   TABLE DATA               O   COPY web_menu (id, nombre, url, nivel, padre_id, acceso_id, orden) FROM stdin;
    public       elmolino    false    213   �\      s	           0    0    web_menu_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('web_menu_id_seq', 12, true);
            public       elmolino    false    214            4	          0    25527 
   web_oferta 
   TABLE DATA               1   COPY web_oferta (id, nombre, imagen) FROM stdin;
    public       elmolino    false    215   r]      t	           0    0    web_oferta_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('web_oferta_id_seq', 3, true);
            public       elmolino    false    216            6	          0    25535    web_producto 
   TABLE DATA               �   COPY web_producto (id, codigo, nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, sol, crecimiento, detalle, costo, cantidad, imagen, cat_producto_id, variedad_id) FROM stdin;
    public       elmolino    false    217   �]      u	           0    0    web_producto_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_producto_id_seq', 4, true);
            public       elmolino    false    218            9	          0    25545    web_servicio 
   TABLE DATA               b   COPY web_servicio (id, codigo, nombre, costo, cat_servicio_id, duracion, descripcion) FROM stdin;
    public       elmolino    false    220   g      v	           0    0    web_servicio_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_servicio_id_seq', 1, true);
            public       elmolino    false    219            :	          0    25552    web_siguenos 
   TABLE DATA               5   COPY web_siguenos (id, red, url, imagen) FROM stdin;
    public       elmolino    false    221   pg      w	           0    0    web_siguenos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_siguenos_id_seq', 2, true);
            public       elmolino    false    222            <	          0    25560    web_variedad 
   TABLE DATA               ]   COPY web_variedad (id, nombre, origen, situacion, cultivo, poda, multiplicacion) FROM stdin;
    public       elmolino    false    223   �g      x	           0    0    web_variedad_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_variedad_id_seq', 1, true);
            public       elmolino    false    224                        2606    25592    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         elmolino    false    172    172            &           2606    25594 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         elmolino    false    174    174    174            (           2606    25596    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         elmolino    false    174    174            "           2606    25598    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         elmolino    false    172    172            +           2606    25600 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         elmolino    false    176    176    176            -           2606    25602    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         elmolino    false    176    176            6           2606    25604    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         elmolino    false    179    179            8           2606    25606 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         elmolino    false    179    179    179            /           2606    25608    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         elmolino    false    178    178            <           2606    25610    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         elmolino    false    182    182            >           2606    25612 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         elmolino    false    182    182    182            2           2606    25614    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         elmolino    false    178    178            B           2606    25616    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         elmolino    false    184    184            D           2606    25618 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         elmolino    false    186    186    186            F           2606    25620    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         elmolino    false    186    186            H           2606    25622    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         elmolino    false    188    188            K           2606    25624    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         elmolino    false    190    190            Q           2606    25626    web_carrito_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_pkey;
       public         elmolino    false    191    191            U           2606    25628    web_cat_foro_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_pkey;
       public         elmolino    false    193    193            W           2606    25630    web_cat_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_producto
    ADD CONSTRAINT web_cat_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_producto DROP CONSTRAINT web_cat_producto_pkey;
       public         elmolino    false    195    195            Y           2606    25632    web_cat_servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_servicio
    ADD CONSTRAINT web_cat_servicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_servicio DROP CONSTRAINT web_cat_servicio_pkey;
       public         elmolino    false    197    197            \           2606    25634    web_cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_pkey;
       public         elmolino    false    199    199            c           2606    25636    web_comentario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_pkey;
       public         elmolino    false    201    201            k           2606    25638    web_cotizacion_detalle_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_pkey;
       public         elmolino    false    204    204            f           2606    25640    web_cotizacion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_pkey;
       public         elmolino    false    203    203            m           2606    25642    web_elmolino_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_elmolino
    ADD CONSTRAINT web_elmolino_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_elmolino DROP CONSTRAINT web_elmolino_pkey;
       public         elmolino    false    207    207            q           2606    25644    web_foro_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_pkey;
       public         elmolino    false    209    209            s           2606    25646    web_galeria_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_galeria
    ADD CONSTRAINT web_galeria_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_galeria DROP CONSTRAINT web_galeria_pkey;
       public         elmolino    false    211    211            v           2606    25648    web_menu_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         elmolino    false    213    213            x           2606    25650    web_oferta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY web_oferta
    ADD CONSTRAINT web_oferta_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_oferta DROP CONSTRAINT web_oferta_pkey;
       public         elmolino    false    215    215            |           2606    25652    web_producto_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_pkey;
       public         elmolino    false    217    217            ~           2606    25654    web_siguenos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_siguenos
    ADD CONSTRAINT web_siguenos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_siguenos DROP CONSTRAINT web_siguenos_pkey;
       public         elmolino    false    221    221            �           2606    25656    web_variedad_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_variedad
    ADD CONSTRAINT web_variedad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_variedad DROP CONSTRAINT web_variedad_pkey;
       public         elmolino    false    223    223                       1259    25657    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         elmolino    false    172            #           1259    25658    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         elmolino    false    174            $           1259    25659    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         elmolino    false    174            )           1259    25660    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         elmolino    false    176            3           1259    25661    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         elmolino    false    179            4           1259    25662    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         elmolino    false    179            9           1259    25663 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         elmolino    false    182            :           1259    25664 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         elmolino    false    182            0           1259    25665    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         elmolino    false    178            ?           1259    25666    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         elmolino    false    184            @           1259    25667    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         elmolino    false    184            I           1259    25668    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         elmolino    false    190            L           1259    25669 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         elmolino    false    190            M           1259    25670    web_carrito_4bb699dc    INDEX     L   CREATE INDEX web_carrito_4bb699dc ON web_carrito USING btree (servicio_id);
 (   DROP INDEX public.web_carrito_4bb699dc;
       public         elmolino    false    191            N           1259    25671    web_carrito_9bea82de    INDEX     K   CREATE INDEX web_carrito_9bea82de ON web_carrito USING btree (product_id);
 (   DROP INDEX public.web_carrito_9bea82de;
       public         elmolino    false    191            O           1259    25672    web_carrito_abfe0f96    INDEX     K   CREATE INDEX web_carrito_abfe0f96 ON web_carrito USING btree (usuario_id);
 (   DROP INDEX public.web_carrito_abfe0f96;
       public         elmolino    false    191            R           1259    25673    web_cat_foro_4a860110    INDEX     M   CREATE INDEX web_cat_foro_4a860110 ON web_cat_foro USING btree (cliente_id);
 )   DROP INDEX public.web_cat_foro_4a860110;
       public         elmolino    false    193            S           1259    25674    web_cat_foro_58c8bbca    INDEX     T   CREATE INDEX web_cat_foro_58c8bbca ON web_cat_foro USING btree (cat_foro_padre_id);
 )   DROP INDEX public.web_cat_foro_58c8bbca;
       public         elmolino    false    193            Z           1259    25675    web_cliente_abfe0f96    INDEX     K   CREATE INDEX web_cliente_abfe0f96 ON web_cliente USING btree (usuario_id);
 (   DROP INDEX public.web_cliente_abfe0f96;
       public         elmolino    false    199            ]           1259    25826    web_comentario_2e9202ff    INDEX     S   CREATE INDEX web_comentario_2e9202ff ON web_comentario USING btree (responder_id);
 +   DROP INDEX public.web_comentario_2e9202ff;
       public         elmolino    false    201            ^           1259    25676    web_comentario_bac19c31    INDEX     O   CREATE INDEX web_comentario_bac19c31 ON web_comentario USING btree (cforo_id);
 +   DROP INDEX public.web_comentario_bac19c31;
       public         elmolino    false    201            _           1259    25677    web_comentario_df783f9a    INDEX     S   CREATE INDEX web_comentario_df783f9a ON web_comentario USING btree (cservicio_id);
 +   DROP INDEX public.web_comentario_df783f9a;
       public         elmolino    false    201            `           1259    25678    web_comentario_ed3f3234    INDEX     R   CREATE INDEX web_comentario_ed3f3234 ON web_comentario USING btree (cusuario_id);
 +   DROP INDEX public.web_comentario_ed3f3234;
       public         elmolino    false    201            a           1259    25679    web_comentario_f8cbbb71    INDEX     S   CREATE INDEX web_comentario_f8cbbb71 ON web_comentario USING btree (cproducto_id);
 +   DROP INDEX public.web_comentario_f8cbbb71;
       public         elmolino    false    201            d           1259    25680    web_cotizacion_4a860110    INDEX     Q   CREATE INDEX web_cotizacion_4a860110 ON web_cotizacion USING btree (cliente_id);
 +   DROP INDEX public.web_cotizacion_4a860110;
       public         elmolino    false    203            g           1259    25681    web_cotizacion_detalle_1b44b901    INDEX     d   CREATE INDEX web_cotizacion_detalle_1b44b901 ON web_cotizacion_detalle USING btree (cotizacion_id);
 3   DROP INDEX public.web_cotizacion_detalle_1b44b901;
       public         elmolino    false    204            h           1259    25682    web_cotizacion_detalle_4bb699dc    INDEX     b   CREATE INDEX web_cotizacion_detalle_4bb699dc ON web_cotizacion_detalle USING btree (servicio_id);
 3   DROP INDEX public.web_cotizacion_detalle_4bb699dc;
       public         elmolino    false    204            i           1259    25683    web_cotizacion_detalle_9bea82de    INDEX     a   CREATE INDEX web_cotizacion_detalle_9bea82de ON web_cotizacion_detalle USING btree (product_id);
 3   DROP INDEX public.web_cotizacion_detalle_9bea82de;
       public         elmolino    false    204            n           1259    25684    web_foro_abfe0f96    INDEX     E   CREATE INDEX web_foro_abfe0f96 ON web_foro USING btree (usuario_id);
 %   DROP INDEX public.web_foro_abfe0f96;
       public         elmolino    false    209            o           1259    25685    web_foro_d79f22b7    INDEX     F   CREATE INDEX web_foro_d79f22b7 ON web_foro USING btree (cat_foro_id);
 %   DROP INDEX public.web_foro_d79f22b7;
       public         elmolino    false    209            t           1259    25686    web_menu_c17c11db    INDEX     C   CREATE INDEX web_menu_c17c11db ON web_menu USING btree (padre_id);
 %   DROP INDEX public.web_menu_c17c11db;
       public         elmolino    false    213            y           1259    25687    web_producto_7ae3f7b3    INDEX     R   CREATE INDEX web_producto_7ae3f7b3 ON web_producto USING btree (cat_producto_id);
 )   DROP INDEX public.web_producto_7ae3f7b3;
       public         elmolino    false    217            z           1259    25688    web_producto_f2e63cb8    INDEX     N   CREATE INDEX web_producto_f2e63cb8 ON web_producto USING btree (variedad_id);
 )   DROP INDEX public.web_producto_f2e63cb8;
       public         elmolino    false    217            �           2606    25689 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       elmolino    false    2093    174    176            �           2606    25694 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       elmolino    false    2082    172    174            �           2606    25699 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       elmolino    false    176    186    2118            �           2606    25704 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       elmolino    false    2082    172    179            �           2606    25709 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       elmolino    false    179    178    2095            �           2606    25714 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       elmolino    false    2093    182    176            �           2606    25719 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       elmolino    false    178    182    2095            �           2606    25724 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       elmolino    false    186    184    2118            �           2606    25729 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       elmolino    false    2095    178    184            �           2606    25734 2   web_carrito_product_id_52430f56_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id;
       public       elmolino    false    2172    191    217            �           2606    25739 /   web_carrito_usuario_id_67d75097_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id;
       public       elmolino    false    191    2095    178            �           2606    25744 ?   web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id FOREIGN KEY (cat_foro_padre_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id;
       public       elmolino    false    2133    193    193            �           2606    25749 8   web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id FOREIGN KEY (cliente_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id;
       public       elmolino    false    178    193    2095            �           2606    25754 /   web_cliente_usuario_id_4da5b857_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id;
       public       elmolino    false    2095    199    178            �           2606    25827 ?   web_comentar_responder_id_591204c431287327_fk_web_comentario_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentar_responder_id_591204c431287327_fk_web_comentario_id FOREIGN KEY (responder_id) REFERENCES web_comentario(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentar_responder_id_591204c431287327_fk_web_comentario_id;
       public       elmolino    false    2147    201    201            �           2606    25759 7   web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id FOREIGN KEY (cforo_id) REFERENCES web_foro(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id;
       public       elmolino    false    201    209    2161            �           2606    25764 ?   web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id FOREIGN KEY (cproducto_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id;
       public       elmolino    false    217    2172    201            �           2606    25769 ;   web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id FOREIGN KEY (cusuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id;
       public       elmolino    false    2095    178    201            �           2606    25774 ?   web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id FOREIGN KEY (cotizacion_id) REFERENCES web_cotizacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id;
       public       elmolino    false    204    203    2150            �           2606    25779 4   web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id;
       public       elmolino    false    203    199    2140            �           2606    25784 ?   web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id;
       public       elmolino    false    2172    217    204            �           2606    25789 0   web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id FOREIGN KEY (cat_foro_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id;
       public       elmolino    false    209    2133    193            �           2606    25794 ,   web_foro_usuario_id_164db508_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id;
       public       elmolino    false    2095    209    178            �           2606    25799 ,   web_menu_acceso_id_4da5b857_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id FOREIGN KEY (acceso_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id;
       public       elmolino    false    213    172    2082            �           2606    25804 )   web_menu_padre_id_3716f5f9_fk_web_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id FOREIGN KEY (padre_id) REFERENCES web_menu(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id;
       public       elmolino    false    2166    213    213            �           2606    25809 <   web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id FOREIGN KEY (cat_producto_id) REFERENCES web_cat_producto(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id;
       public       elmolino    false    217    195    2135            �           2606    25814 4   web_producto_variedad_id_285d87e9_fk_web_variedad_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id FOREIGN KEY (variedad_id) REFERENCES web_variedad(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id;
       public       elmolino    false    223    217    2176            		   (   x�3�LL����2�L���2�,JM�,.)JL������ ���      	   �   x���q@!C�un1��K��#�mĊ3����x�ˤ^�����~�9/��E���_!
dB����52�A���1dN����o�o� �E��{ф��^l�^�^\�^.�^���o�o�$�e���I{9��ܤ�<�����Z��e���W�f�ъ�WM٫��զ�ա�ե�����h{��N�^�����C��M��C���؛��1�&{���)�޼^�b��7��7��7��_���I�      	   �  x�m�M��0���)r�Ql!��H
���zN?Ʈ_:;���WU)�8�N]ߟ��q�Ӷ|gR|Kq����o7=����U�8�M�e��@�ϸ|�:̓�Y�l-um��bA[�R,��i�,��m+5q�
q�JH�H!ܙ^k\L����9y?�����z ��Tt�}����������"���X��M��R��C
�o(�5�n79	�����m�Z��Hv���!%ͥ�\"�Ϫ^b�TĜ*�0�1Or_�2ľ�M��0�����E�� h2Xs��v{.s��o���BŒ���V�X�:pQu�X�:��+E2�v~��\�>Q$��z���J�SMHC�5܇�:����� q�>Q� O�>�� �Q��L�G�1v$=�LҼ#y}X�a�V-ȡ�Z]=AT8pW]3qTn��Yx�6����Kt�Wlp�Y$J�´׾"i���79���u�������}N����t�>Gy�G�|�Q�1/��M��p9N*bbJ�'I1��dK,H1ļW+7�m�*�2B$@�^����O%��� Wl]��K�z�tн�4��i��G7�e�+v���
���S(8��F�}/e�2�x��mk�w�B�h��!�`���<�l|�6�m�|Mb�Ť�3I�&��c�G\����b%���0F@)�_L�R�]��x�i^�/慱m�{I=�H�_�D�D��/k���      	   P  x�m�[O�0���Wp�[��]�E���@��٩[����v�(�w�^���X)�,���J<L-Q �6[c���Θ�<���&Ysm?���X�Aj��{��ʨ�	���!7
D�`�� ��f�P�ظGP�R+{�~�7A"*E�Z�sFn3�ʌ��&�j��y����m�8��~oIz�bӮ�l��]Aʕ?�n�<�O�*���cC���P3�b��e�J��ua�[����X����j52Ӆ��i�5C��5 �z��m�S֌��S����8n����/dD7	|��⓶��:�"�F�~,�_e�.�;�����ԲX�������	ū�G      	      x������ � �      	      x������ � �      	   �  x��[ے۸}��B`3�F�7'��Ke7[�I�R�5�X)I�R���9���� E�h$���c�C }�
,P�y���%��R+Rc�{���_x����
����Y���gu�YX!T�y��߬7� P1�r ��*P�*�7�S�m�«zc�r�V�|��/�/M��K{c� �+��97���t��r�^)[� h{�^���e�9ĭU��'6~j�M�5G�a���C2.���c@e c�w,������ۧͧͺ~jW/O�C[E�i�
�" M� M���T)m��������f?'ٷ��]�hr��B_)�^�ѥ��H��T:ml�����~S�����c	+�,i���O��@�
6;C��3�&-1�]!\��1�:� ^8��r�/��9�+��������9���-�l��P���l�&l� �R����6�}��o��������}����nw����M�?�g۷�z{:w��]�u�����g�s�5��N>�.�W���-�I�����>��KTB��8d�c+C�?��#t��S��@� ��ꧮ�U���U"���JT>x��#V����]�̜�t����-~J��j�vr�+ЕG)2����^��)Q]�5�͑)����z�i�B����
�
����v��^����s�!���^�!!*�%�$���!�"f�ݱ2������f}b[��h�C�
lب!�nͶ6$�����iY�_��O�����l�O�^��n���BC�x�%�j9�����@�9��8dA{|�l��>�*>S�Ȧ r�<��}{�D'Z�4�b��m\ǋP�A��ZT��[��_�9h��5�D��$���Q�ء;7cZ��}����B�)'�Y�=���A�S%��S�J���eT����#5�3�
��!`
�/�!�1�������q�d�Y���3��t̘��QW����4?�9��s��C�/�f����lq��9)�:Յ)�uό:�E �e���\��2,������A��c0W��9F������ƃfus:�����|F'���n�C�Î^*l�]��Gsa�U^C����|�<����u��g$C{@$W�����rR'z��d���S���O�r[��m�?���V��m]����ٮ���(l�����'p��E�7CO]{h��j�:�P��؎���C()�.b4& HED��a�ph��y�M��A|4�`�����+��F|�'r�T�\�Km�dXяL�|�}l���鲌����%.���^��?mۮ,�X^��Є��y��L����ժ��H��r�Pb}�Iz6���9W��ݵm)2����s�o��f(�wE���;Tn.�9���:�K���������~7B^��v�n�(>L)�Wf�2��HZ���+1�������R-[��X� �Wd\����n���1�>�*����m�^���P��0'���X�]�X~�ȩQ���ʅ[�˔�,\p�t��Q�;,��1㵹�M��,��8^�aL�FR7Yh�"�%��%�������䟆��\c��u��'�}��n��
2��>&�nN�,3���=���Or�Yf�=�����g�6Ie�����)�jꔸ��{��l�g�D)�=G������n�K��S!:���BJ�O���Bw��,�?�r|_ck���5v�<�,&c�J�*p�h������l\T�Jz�lcss6Í�C�.S�����$�\.���o�&�0g�1N9�MK�@*@��~��ٸ�ҹ� /;W�9	K�0�n�\휉9XX��b=4�ns�)�1j6�ʗ	���u�r�?��CW�󫐫�}$l�>�i>Dcg�Zi��\�s�R�<=n�\���9�M��<�����W2�� ��B����k���B�`P���������u�q�:7�T��}Hy�~�yq�� '1bK�v�"�	��r��w6M��Y�=����͡�K.�=Xg`^��4q������W���K9o�~���^���q[������}s�E;���7+���3i����|l��|nzo��r��EI/m�����w��S����|yf�9��J�S���89���<�"��F.���* 뇫���v�����^]�5h��A
�YGi�W���IU�k�����40��=�1���ޘ�C�sb�
�r�>����zB�1DQ����!D�4sb��E��U�����P`6sfb�҄tksǰG�mΎ�$�zc��#.���A�f�U��)nަKv���Y��g�r��i>�/FVݓ��e�d)��Xּ�>������ �{}��D8u4���B��u���>��I�m�P�{u>!�X�d?�:�H�M<�Q�^�����8�4�$0��e����.d�&۶Vc�Ar�rl����X����O�R�_��H%����s����K&�l�&�����(�.N��段�9�	����äR�l�&Y�ɂ��u�x-��j��i"h4����5sM�`�ŭ���z�HG7�0���>��	7�t�E}�B�).�6]����@*�HwG�:w����ᨊ�l��hs�`ZC���@�&��K�I�%�e�I&���M�d�� x��e���H�
�!U$�g�;��2-k����r�a.�9F����t�)w�3}jR>��ᇔ��!9C���FoS�~c��Ca��M��Wd8oX}�f�<nz4�b�-����7�=�a�}�����G72�!��DI"N<����2�+���5'�������f�g �ӽ�,xoϾs:�#+��ӽɼ�2������E����m�e�V^k��O�E��o69�n���r>��q8bF� 0F2rl��=,~�e��/��TԷaƖ!!M��◟�)��Z�^9��Q��=PzsP�w_1&�k�(5�B�;nL/��iV�a\�0Wk�E�S65x�[^`z�a.�v���F#L�a��%w��aT��`cP���#� ��[���N~D�UP���'��<a��V��s����#�,�u.�ԕ��q�ĞGe�,W��g[��#����\Y"�m�����E��D<��.Ũ�QW�,>�����W;+�++�z�����S��Q��jge�x��V|�(G}���B<�fH?j�Wև�`j���/�����ǔ���-����붱�0����4�8�{@���3e��Ҝci��sX{/��1M,��1���@���b�'̱.�D���g��/6�����E7M�~�(-?�!���`����|}}��! /8#�ۂy�s�=j2�8\�#NE.�W��Z$�[CH��(������"^�ի�T�6J�4���3zi���!��!�p��23���m��0��H��ʨ`b����\|�,�arKǾ�Z��� � �8��T���z���� %���      	     x�]�Yn�0D��S�E��w)�2��-CK����b�N�4o��(
0����T7� J���=�T����Ʃ�E��'W���ڎ!]���d���g�T_�O�^@Nu?��4^�S��b7�h]��֖��bo��R��~�浳($��kpH����\�(�釁���*ɂ(N�w�1����(�e��u�XP\`1�qM�CZPZ�\� ��ʐcU�Y��C*���� 2�5<�+��`�B���<��F��Zf��D��4Ј      	   !  x����n�6����������Y
�#d�V`�-����*R��^���>�����x�������~:  v�u����+�+�#�,)��H>*���������"yM� |8�]��o�*�?L�4��72S _(9������f��=�����j��4 %�!��鈒-�KS��ƅ�=˼eSfc�����M���2~ױ��>O;L83�Ey�.�t��������{݃):�*4a!Cw/6��m���m|{���W� �dV'�x�q��L��cG�Ϩ���SAZ��v��;�9�w6��jh^`��=�O��,3�0�ؾ:L�D6��-,g"�4X#/jB�[I[)�	+�,y\��ԝO�n�og��f\����5�I5�E[���Ji��M[�G��^ą~3�%�n#�MbR�^D��-��=l��κ�ӬkZt�a�g��60'�i.�������ݲEcd��X7����OX��fBV\#�;q+��m��;V�jn��iK���
��4�hL1��?$��N^6���R�T����Xeڰ�hӧ:�P5Bqu�/��Y�O�f&�4��l|�V3��A�W�e�v�jd]�d��g��hO؄ȥ]�e��M��C�I*�	�e �O
c�I��4��/ֹ�L-#y���2!T#anI��p0q>o�_�d��[%�=�1�
K�G
L�i�㧌b+��5���f�[��)��c��X#�Մ.���o<OY��iu��Gg�$c�	�Tf��̆m`]���P��\`���t��I����x}�o���Q�K�h�(�ý�����#�      	     x��V�n�6]'_��o�f1�k��HFO	��a��ޒ��חr:@�]�L 	$����s�a8��1F*)Q�	�.׶�Ʊe�%zp���a�;�hr׿iW����sO������c�*�z�M�QGﴯj�˅�ߏ�;~���>	�<��N9��v��SF����q�M�j�o;���_� �:[7��������>��_A�0B��;�K]��|;��,(6����C����^Jo�ߋ�������{)6*@��������7��ڈ ������bE�� ��yKq�c����c����Κ��T�_N�^SS�U.��R�0|e^�/<��pz����W��Cu����1uN߈_8��6��e�)����v������W3-��:������o��'H��(G��7;h�j��Ӹ�ӌR�T��!�tх�:.{Ǟ��Y;���a��g��fϰ�+i����:.\� ����'/_��+6Ì��LL��2�,�T�Ѿ���<wT�	�>A��|���d�^�[�	5�Z�c;g�.�傆�N��������+�WX�3,nR���N����%�S�Ag��2��+`��F��g
��i36�H�>���`�.$��Z7]a�n[�l˂s2ɱi���� IQ_#�OkC�	#��#��^����U�S^�]�3�	*.���$�>�k�̜̀X�;����H�Iˑf��"Ҧ��V��Q�"�BP ~��Z�8H��'2�	�5���Ҏ5��{i�ÚL��R7�H�T�aq�]��I��)ĥ��,g��s��K��	��Q+dA��o:�S0P��	&PF��'�����6��S��7bbи�El�3	.êLЀtP��3� �Kؗs�)7C�I3d��-�����+�è�@�1��x$��t?y[Nx������Ձ�V4�Fړ���-��Q��^����~H],���!�٭g��é- ��%��8���@'K�D�����`,�%Jx�;�0d�e5�>�f�Ȥ��n؋V�ˤ��6�X�����k�      	   0   x�34�4�4204�50�50�4�4���p��J�$�R1z\\\ �	      	   7   x�3�4204�50�50���/�L�L,��2
��s�3��R�9c�8�b���� ��3       	   h   x�3���+I-��/J-�LN,�/(�O)M.�/�τJ�e�s�yrqz%�d�a(L-FUh��Z���T�PY*X�	gFfJQ~A~^fr>�B��^A^:�G(W� ��<      "	   )   x�3�,�OI�000�,N-*�L���	�e�r��qqq ��
(      $	   L   x�3�H,���O��O�,H��L��,v(���L�MM��/J�40401736���41�0245�4�26'K��)W� 2� Q      &	   $  x��V�j�0<[_��ѮV��[ ��\W�*~��+%�딜B����a��B�9��d�vv�9
#���B-]��x:�Ov����b��`r�%��s ���}IZ]���oǈ���л��b.��S�,���z�ȃ�������I^��*^����Pd��%E �����iv��OsM�ˮP�b�xi�s�'���sI�E��	�g�H�6����6<w��S��x��pk��7B��.�s�ϛ���~�;bZñ.%���I�C4�q��~=���o�`'@      (	   D   x�eȱ�0�Z�%��'���sP@C��S�	%GK5
v��kx���Z^���܆��JX�_�:!�      )	   �   x�E��!�o(f3��6�l�u,G��879W��C���q��8�`,�2�z�����A)m%���(eW�Q��JY�Yj^����v�y?�֫��ZW1�Z�$��u������@!���9�^��5o�'�r�H$G�1]�#(�d��֬(��l��D���@r      ,	   _  x�]T�n�6>;O1�Y���Xo�âŢ��S/45�P�JRN�o��r(�֫^lg(�I+@9���7.g����GuDgQwV+c3i���1�߅n����f	�P�k8A/��G�u���GFgR�:����[�a?x�Zx�0��'�AP�`��w�W�S"4 ���OC��"K�uʑ=��\Jh�Z�	Huq8�@���J<[:�2XN���Tt�n?>%��|>�O0l��V);e���Me�TC+Z��1�p1�HA��/���3��tJ�]���;������� G���_�Έ����$Wd��?>N�:l�x�6)�����.�z��V_�����I��*��?< �2�Q��r/\��>���L�� c%�����։���X��mcS)�O�!� ��(Q���!2#�[?>C`������J���Fq�QJ0��p[R���D�}r�8��Lک�����DP~'�L@C��l=�|A=�I-��V�|[F��"�D20������hٔ� M�	#|�8�H]+O��}��|7>x�G�ýFC��f?4��G(�|�7�z��мoġ/���%��
���r@8���4����B���i�[e��mO�i�(�y�f�1r������ߩ|^rv�R�4	#�{�1�31҉�a�*'G�ZKz^���{�#RNn�z�n�xxx����5��֢�_`����~�I�������*)�j�Zg�zu����Y6eR���U���I��N��:Ϫj�,����WI�1vyR�[��Q\U�e��jy�J�]QeE��Y��'%�8��E]6uQ���,���p�̫:����6�Klqk]�n3��'���$y��?�_L0|��+�����  �      .	   K  x��رN�0��9y�{ Z%),�F&��r���$ǎl'ަ#���i
*��S�&����U�T�ŢjU]\�j/��͎����k��ղ�*�؉Q�4�V[�g��Z�9N�q�[q��k�F��Y��:H�і'by��F�wG~�F�z���W����fٜ�h��I~�,�T�;&�����W���E	�Ih5ɴ�_+�>R+�����cw㓏�K5~[�?���UL��0i�C9�C9�>s����&���x8w;ު���Ҡ�O���[u>?{�k�xG�׋΀��qZ��;�L�������������������?�����|X�e���      0	   4   x�3�LO�I-�L�7�M
�5�w��*H�,�2���We��:g8Beb���� 	{�      2	   �   x�=��
�@E�;_!ث��GJAӈV�,qхd#���;I6Vs�3{.��]�*,�xd����Zi��3�@bZ�X�.U�B[<�1������'cG)r#�z_��b���:+��qUB	�V��4�����6���a#3�
Y��v��R��!f�_��Oni�%���Fu�7b�_��"���H�Q;��@t�� �a9T;      4	   S   x�3�,�,K-���Ӈ0���"s����
ҹ�83JS�J@�Fq�YTTTd�1Xژ�8��,39� ƌ�I��J4������� �� _      6	   9	  x�}XMo�=����z&�_���Uv���l9�ݜ
l�M6'����h:,|sr��cy��-�$�au��Q��ի�֋˓���G[����#/�Zm�Qe��^��i?h�����:;�%sm����c�vk������+u�]�j���x��M��2�7U��>�&t�'�#g�ԵN����&��mQ:�9��.��M4�cF��BT{��t���u��٤�ӫ��31��W5�7:U*Yx�9��kӱ,�������Q]�p��^sX;��q�J�itG=m��daz�3�6�>X
6��Q>`���>���kg�v��b�k;�Ǝ�js�k\�c=�j�[zHԷ�obP�lJt���s�za��@��]�AV�;s�}k�������r����+����#���5�?�7^��]�olO$T4o�� Є����[�eHm�c�1�51SpʶZh�af�����u�� �˝iu�R/��W�pa�ؖ�iG�a_�T+��������&�_�r�^���t�L�a�nM���k�|���;�iX�0�V��)���67��g��~�X/��N������0���[���0��K���+�&~���v`�1V08�����9p����_tpo@����]PpI�:�P�]��J�{��r�0~�L>�3!���A��:�jq^�F٭�Hi��[�R3����n�h6L���E;B�z���s�2 ���^5d@�W�
v9����΅�d7v�D�� <�+��=�I��3�I�1�� H����"����o��9��<&����g�N_[��3��/mH��$;ela�"�*uɉ��|�վ�A�t�Q4�"HV0 �[��I�i"P<s��^�퐨��_7�Wr6>�B��<���9v$����"i_ %�B=
᜜P����%JV�r+Y�H�쯗�p6~�~��L]�`+�3.d�d��]jЋ���@w�!����ګ+��v��v83��r�b�2u�lYI��d��&ʛ�-`ցa!:���r�}�\oL�+j=�\�,q,ѳ����Mn-'�D~�~�A��ݬI�~2ѓ*�zf�k���Mo��P�����Sd�U��2V��o���q�1��m2% w�(�a��{�!��B�ji��jȈ�]`*�}����jG����f�i�8��5��Zw57�T{)>9�B���=����s*���m���2nf!;~�W�Q�E��sE��14�`J�[��p<[��O�ݙXO��a���ό�j1� � mڕ �����]N��{� �4=&SY^0�(�Coo!J+j��p�)��6zx�$:	VeU�2QO��=[�\PC h��C��Abl�R��f����4�x�3�mOX�B�c�e<��(�	 �l�0�p5�B�O�����F��_�N�P":�Pܝޠҡ��Ը�Rá�rh�&���L�]zR��f�FU��=�����_���M4F6D�M�/P�eh0�$	�(]v���Ǯ�ro�9@��eE2pS7����吃QQ찹��`��XtoӖ��9�y�͖D0�0��A�Âd�Rڽ���줫cK(�H�C�$�pO��˂R/��Ne�nWL�HC�Eg7hp�Ҏi&��� ����=���� h|i�8���ZV1D�e|��-�z��܁~dZf��t�臨e'���Uϋ7�0Lw��JA��,��鼄�{��F�97��8��]	�b�%>=P?��~�����D�!OK���O2h*��rQF�im��V"�����7OOE*$�0Jiژ���t��	!�R��2�!L	��Y���i��:؞<D��頾�A�X�M5-�l/*��Ug7O�Y��W#͞4�rH�;]�������?;o��w�����K~z_=T��c��%f׸F��a�{��ٱ��]|V��+ѴC:������tɳ	��K3\���?�+�����4�P ��H sٿ�
c�jH���ġ����aR�PSÒ::dW�w?�$���hڀ�/�����I�����u��6����O{�V��$aF��\U
�kh3����@J5Q.��O:!Y�����K}��H���MIau,�;f$��f?�,W`/���a-�g��.˔�l�lȵ��Iu�<����/��W�� v:�?�?)�Ə	�@�Ҹ['��k�vZ��B0�F�}�׭��%��`�Z�d����VJ��n���E�ah��Jn7� �C4~�?���C=э�H�Y}|�K&�!T��>3���#��Ŏ��$Zb�X<��&j\4�F/�0�g�����;�_�~�������w�� ���l      9	   B   x�3�,H400��OITp,J��I-�4�4�4�3U��/J,�H��*���+�d�8��\1z\\\ ��.      :	   F   x�3�LKLNM�����())�����z����E�)�iIzy�\��%�%%�E0�P.\]I9X]� k�      <	      x�3�tO,JI��L$������ {V�     