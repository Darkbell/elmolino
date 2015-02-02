PGDMP         *                s            elmolino    9.4.0    9.4.0 �    ;	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            <	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            =	           1262    16386    elmolino    DATABASE     x   CREATE DATABASE elmolino WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.utf8' LC_CTYPE = 'es_ES.utf8';
    DROP DATABASE elmolino;
             elmolino    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            >	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            ?	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11863    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            @	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    225            �            1259    16387 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         elmolino    false    6            �            1259    16390    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       elmolino    false    172    6            A	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       elmolino    false    173            �            1259    16392    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         elmolino    false    6            �            1259    16395    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       elmolino    false    174    6            B	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       elmolino    false    175            �            1259    16397    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         elmolino    false    6            �            1259    16400    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       elmolino    false    176    6            C	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       elmolino    false    177            �            1259    16402 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         elmolino    false    6            �            1259    16405    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         elmolino    false    6            �            1259    16408    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       elmolino    false    179    6            D	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       elmolino    false    180            �            1259    16410    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       elmolino    false    6    178            E	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       elmolino    false    181            �            1259    16412    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         elmolino    false    6            �            1259    16415 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       elmolino    false    6    182            F	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       elmolino    false    183            �            1259    16417    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         elmolino    false    6            �            1259    16424    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       elmolino    false    6    184            G	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       elmolino    false    185            �            1259    16426    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         elmolino    false    6            �            1259    16429    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       elmolino    false    6    186            H	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       elmolino    false    187            �            1259    16431    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         elmolino    false    6            �            1259    16437    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       elmolino    false    6    188            I	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       elmolino    false    189            �            1259    16439    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         elmolino    false    6            �            1259    16445    web_carrito    TABLE     �   CREATE TABLE web_carrito (
    id integer NOT NULL,
    codigo double precision NOT NULL,
    fecha date NOT NULL,
    valor_total double precision NOT NULL,
    product_id integer,
    servicio_id integer,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_carrito;
       public         elmolino    false    6            �            1259    16448    web_carrito_id_seq    SEQUENCE     t   CREATE SEQUENCE web_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_carrito_id_seq;
       public       elmolino    false    191    6            J	           0    0    web_carrito_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_carrito_id_seq OWNED BY web_carrito.id;
            public       elmolino    false    192            �            1259    16450    web_cat_foro    TABLE     �   CREATE TABLE web_cat_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    cat_foro_padre_id integer,
    cliente_id integer NOT NULL
);
     DROP TABLE public.web_cat_foro;
       public         elmolino    false    6            �            1259    16453    web_cat_foro_id_seq    SEQUENCE     u   CREATE SEQUENCE web_cat_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_cat_foro_id_seq;
       public       elmolino    false    6    193            K	           0    0    web_cat_foro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_cat_foro_id_seq OWNED BY web_cat_foro.id;
            public       elmolino    false    194            �            1259    16455    web_cat_producto    TABLE     �   CREATE TABLE web_cat_producto (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    imagen_cat character varying(100) NOT NULL,
    tipo character varying(2) NOT NULL
);
 $   DROP TABLE public.web_cat_producto;
       public         elmolino    false    6            �            1259    16458    web_cat_producto_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_producto_id_seq;
       public       elmolino    false    195    6            L	           0    0    web_cat_producto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_producto_id_seq OWNED BY web_cat_producto.id;
            public       elmolino    false    196            �            1259    16460    web_cat_servicio    TABLE     �   CREATE TABLE web_cat_servicio (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    codigo character varying(5) NOT NULL,
    imagen_cat character varying(100) NOT NULL
);
 $   DROP TABLE public.web_cat_servicio;
       public         elmolino    false    6            �            1259    16463    web_cat_servicio_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_servicio_id_seq;
       public       elmolino    false    197    6            M	           0    0    web_cat_servicio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_servicio_id_seq OWNED BY web_cat_servicio.id;
            public       elmolino    false    198            �            1259    16465    web_cliente    TABLE     2  CREATE TABLE web_cliente (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    correo character varying(30) NOT NULL,
    cedula character varying(10) NOT NULL,
    telefono character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_cliente;
       public         elmolino    false    6            �            1259    16468    web_cliente_id_seq    SEQUENCE     t   CREATE SEQUENCE web_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_cliente_id_seq;
       public       elmolino    false    6    199            N	           0    0    web_cliente_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_cliente_id_seq OWNED BY web_cliente.id;
            public       elmolino    false    200            �            1259    16470    web_comentario    TABLE       CREATE TABLE web_comentario (
    id integer NOT NULL,
    tema character varying(10) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(1000) NOT NULL,
    cproducto_id integer,
    cusuario_id integer NOT NULL,
    cservicio_id integer
);
 "   DROP TABLE public.web_comentario;
       public         elmolino    false    6            �            1259    16476    web_comentario_id_seq    SEQUENCE     w   CREATE SEQUENCE web_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_comentario_id_seq;
       public       elmolino    false    6    201            O	           0    0    web_comentario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_comentario_id_seq OWNED BY web_comentario.id;
            public       elmolino    false    202            �            1259    16478    web_cotizacion    TABLE     �   CREATE TABLE web_cotizacion (
    id integer NOT NULL,
    costo_total double precision NOT NULL,
    fecha date NOT NULL,
    cliente_id integer NOT NULL
);
 "   DROP TABLE public.web_cotizacion;
       public         elmolino    false    6            �            1259    16481    web_cotizacion_detalle    TABLE     �   CREATE TABLE web_cotizacion_detalle (
    id integer NOT NULL,
    cantidad double precision NOT NULL,
    valor_unitario double precision NOT NULL,
    cotizacion_id integer NOT NULL,
    product_id integer,
    servicio_id integer
);
 *   DROP TABLE public.web_cotizacion_detalle;
       public         elmolino    false    6            �            1259    16484    web_cotizacion_detalle_id_seq    SEQUENCE        CREATE SEQUENCE web_cotizacion_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_cotizacion_detalle_id_seq;
       public       elmolino    false    204    6            P	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE web_cotizacion_detalle_id_seq OWNED BY web_cotizacion_detalle.id;
            public       elmolino    false    205            �            1259    16486    web_cotizacion_id_seq    SEQUENCE     w   CREATE SEQUENCE web_cotizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_cotizacion_id_seq;
       public       elmolino    false    6    203            Q	           0    0    web_cotizacion_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_cotizacion_id_seq OWNED BY web_cotizacion.id;
            public       elmolino    false    206            �            1259    16488    web_elmolino    TABLE     w  CREATE TABLE web_elmolino (
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
       public         elmolino    false    6            �            1259    16494    web_elmolino_id_seq    SEQUENCE     u   CREATE SEQUENCE web_elmolino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_elmolino_id_seq;
       public       elmolino    false    207    6            R	           0    0    web_elmolino_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_elmolino_id_seq OWNED BY web_elmolino.id;
            public       elmolino    false    208            �            1259    16496    web_foro    TABLE     �   CREATE TABLE web_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    tema character varying(20) NOT NULL,
    comentario character varying(200) NOT NULL,
    cat_foro_id integer NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_foro;
       public         elmolino    false    6            �            1259    16499    web_foro_id_seq    SEQUENCE     q   CREATE SEQUENCE web_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_foro_id_seq;
       public       elmolino    false    6    209            S	           0    0    web_foro_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_foro_id_seq OWNED BY web_foro.id;
            public       elmolino    false    210            �            1259    16501    web_galeria    TABLE        CREATE TABLE web_galeria (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    activa boolean NOT NULL
);
    DROP TABLE public.web_galeria;
       public         elmolino    false    6            �            1259    16504    web_galeria_id_seq    SEQUENCE     t   CREATE SEQUENCE web_galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_galeria_id_seq;
       public       elmolino    false    211    6            T	           0    0    web_galeria_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_galeria_id_seq OWNED BY web_galeria.id;
            public       elmolino    false    212            �            1259    16506    web_menu    TABLE     �   CREATE TABLE web_menu (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    url character varying(10) NOT NULL,
    nivel smallint NOT NULL,
    padre_id integer,
    acceso_id integer
);
    DROP TABLE public.web_menu;
       public         elmolino    false    6            �            1259    16509    web_menu_id_seq    SEQUENCE     q   CREATE SEQUENCE web_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_menu_id_seq;
       public       elmolino    false    6    213            U	           0    0    web_menu_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_menu_id_seq OWNED BY web_menu.id;
            public       elmolino    false    214            �            1259    16511 
   web_oferta    TABLE     �   CREATE TABLE web_oferta (
    id integer NOT NULL,
    nombre character varying(1500) NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.web_oferta;
       public         elmolino    false    6            �            1259    16517    web_oferta_id_seq    SEQUENCE     s   CREATE SEQUENCE web_oferta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_oferta_id_seq;
       public       elmolino    false    6    215            V	           0    0    web_oferta_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE web_oferta_id_seq OWNED BY web_oferta.id;
            public       elmolino    false    216            �            1259    16519    web_producto    TABLE     �  CREATE TABLE web_producto (
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
     DROP TABLE public.web_producto;
       public         elmolino    false    6            �            1259    16525    web_producto_id_seq    SEQUENCE     u   CREATE SEQUENCE web_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_producto_id_seq;
       public       elmolino    false    6    217            W	           0    0    web_producto_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_producto_id_seq OWNED BY web_producto.id;
            public       elmolino    false    218            �            1259    16886    web_servicio_id_seq    SEQUENCE     u   CREATE SEQUENCE web_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_servicio_id_seq;
       public       elmolino    false    6            �            1259    16874    web_servicio    TABLE     U  CREATE TABLE web_servicio (
    id integer DEFAULT nextval('web_servicio_id_seq'::regclass) NOT NULL,
    codigo character varying(6) NOT NULL,
    nombre character varying(20) NOT NULL,
    costo double precision NOT NULL,
    cat_servicio_id integer NOT NULL,
    duracion character varying(10),
    descripcion character varying(2000)
);
     DROP TABLE public.web_servicio;
       public         elmolino    false    224    6            �            1259    16532    web_siguenos    TABLE     �   CREATE TABLE web_siguenos (
    id integer NOT NULL,
    red character varying(5000) NOT NULL,
    url character varying(5000) NOT NULL,
    imagen character varying(100) NOT NULL
);
     DROP TABLE public.web_siguenos;
       public         elmolino    false    6            �            1259    16538    web_siguenos_id_seq    SEQUENCE     u   CREATE SEQUENCE web_siguenos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_siguenos_id_seq;
       public       elmolino    false    219    6            X	           0    0    web_siguenos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_siguenos_id_seq OWNED BY web_siguenos.id;
            public       elmolino    false    220            �            1259    16540    web_variedad    TABLE       CREATE TABLE web_variedad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    origen character varying(20),
    situacion character varying(20),
    cultivo character varying(20),
    poda character varying(20),
    multiplicacion character varying(20)
);
     DROP TABLE public.web_variedad;
       public         elmolino    false    6            �            1259    16543    web_variedad_id_seq    SEQUENCE     u   CREATE SEQUENCE web_variedad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_variedad_id_seq;
       public       elmolino    false    6    221            Y	           0    0    web_variedad_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_variedad_id_seq OWNED BY web_variedad.id;
            public       elmolino    false    222                       2604    16545    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    173    172                       2604    16546    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    175    174                       2604    16547    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    177    176                       2604    16548    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    181    178                       2604    16549    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    180    179                       2604    16550    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    183    182                       2604    16551    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    185    184            
           2604    16552    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    187    186                       2604    16553    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    189    188                       2604    16554    id    DEFAULT     b   ALTER TABLE ONLY web_carrito ALTER COLUMN id SET DEFAULT nextval('web_carrito_id_seq'::regclass);
 =   ALTER TABLE public.web_carrito ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    192    191                       2604    16555    id    DEFAULT     d   ALTER TABLE ONLY web_cat_foro ALTER COLUMN id SET DEFAULT nextval('web_cat_foro_id_seq'::regclass);
 >   ALTER TABLE public.web_cat_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    194    193                       2604    16556    id    DEFAULT     l   ALTER TABLE ONLY web_cat_producto ALTER COLUMN id SET DEFAULT nextval('web_cat_producto_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    196    195                       2604    16557    id    DEFAULT     l   ALTER TABLE ONLY web_cat_servicio ALTER COLUMN id SET DEFAULT nextval('web_cat_servicio_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_servicio ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    198    197                       2604    16558    id    DEFAULT     b   ALTER TABLE ONLY web_cliente ALTER COLUMN id SET DEFAULT nextval('web_cliente_id_seq'::regclass);
 =   ALTER TABLE public.web_cliente ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    200    199                       2604    16559    id    DEFAULT     h   ALTER TABLE ONLY web_comentario ALTER COLUMN id SET DEFAULT nextval('web_comentario_id_seq'::regclass);
 @   ALTER TABLE public.web_comentario ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    202    201                       2604    16560    id    DEFAULT     h   ALTER TABLE ONLY web_cotizacion ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_id_seq'::regclass);
 @   ALTER TABLE public.web_cotizacion ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    206    203                       2604    16561    id    DEFAULT     x   ALTER TABLE ONLY web_cotizacion_detalle ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_detalle_id_seq'::regclass);
 H   ALTER TABLE public.web_cotizacion_detalle ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    205    204                       2604    16562    id    DEFAULT     d   ALTER TABLE ONLY web_elmolino ALTER COLUMN id SET DEFAULT nextval('web_elmolino_id_seq'::regclass);
 >   ALTER TABLE public.web_elmolino ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    208    207                       2604    16563    id    DEFAULT     \   ALTER TABLE ONLY web_foro ALTER COLUMN id SET DEFAULT nextval('web_foro_id_seq'::regclass);
 :   ALTER TABLE public.web_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    210    209                       2604    16564    id    DEFAULT     b   ALTER TABLE ONLY web_galeria ALTER COLUMN id SET DEFAULT nextval('web_galeria_id_seq'::regclass);
 =   ALTER TABLE public.web_galeria ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    212    211                       2604    16565    id    DEFAULT     \   ALTER TABLE ONLY web_menu ALTER COLUMN id SET DEFAULT nextval('web_menu_id_seq'::regclass);
 :   ALTER TABLE public.web_menu ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    214    213                       2604    16566    id    DEFAULT     `   ALTER TABLE ONLY web_oferta ALTER COLUMN id SET DEFAULT nextval('web_oferta_id_seq'::regclass);
 <   ALTER TABLE public.web_oferta ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    216    215                       2604    16567    id    DEFAULT     d   ALTER TABLE ONLY web_producto ALTER COLUMN id SET DEFAULT nextval('web_producto_id_seq'::regclass);
 >   ALTER TABLE public.web_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    218    217                       2604    16569    id    DEFAULT     d   ALTER TABLE ONLY web_siguenos ALTER COLUMN id SET DEFAULT nextval('web_siguenos_id_seq'::regclass);
 >   ALTER TABLE public.web_siguenos ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    220    219                       2604    16570    id    DEFAULT     d   ALTER TABLE ONLY web_variedad ALTER COLUMN id SET DEFAULT nextval('web_variedad_id_seq'::regclass);
 >   ALTER TABLE public.web_variedad ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    222    221            	          0    16387 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       elmolino    false    172   e1      Z	           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 3, true);
            public       elmolino    false    173            	          0    16392    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       elmolino    false    174   �1      [	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 142, true);
            public       elmolino    false    175            	          0    16397    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       elmolino    false    176   �2      \	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);
            public       elmolino    false    177            
	          0    16402 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       elmolino    false    178   l5      	          0    16405    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       elmolino    false    179   #6      ]	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       elmolino    false    180            ^	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       elmolino    false    181            	          0    16412    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       elmolino    false    182   @6      _	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       elmolino    false    183            	          0    16417    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       elmolino    false    184   ]6      `	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 97, true);
            public       elmolino    false    185            	          0    16426    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       elmolino    false    186   �=      a	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);
            public       elmolino    false    187            	          0    16431    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       elmolino    false    188   �>      b	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);
            public       elmolino    false    189            	          0    16439    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       elmolino    false    190   �@      	          0    16445    web_carrito 
   TABLE DATA               c   COPY web_carrito (id, codigo, fecha, valor_total, product_id, servicio_id, usuario_id) FROM stdin;
    public       elmolino    false    191   �B      c	           0    0    web_carrito_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_carrito_id_seq', 1, false);
            public       elmolino    false    192            	          0    16450    web_cat_foro 
   TABLE DATA               ^   COPY web_cat_foro (id, fecha, nombre, descripcion, cat_foro_padre_id, cliente_id) FROM stdin;
    public       elmolino    false    193   C      d	           0    0    web_cat_foro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cat_foro_id_seq', 1, true);
            public       elmolino    false    194            	          0    16455    web_cat_producto 
   TABLE DATA               A   COPY web_cat_producto (id, nombre, imagen_cat, tipo) FROM stdin;
    public       elmolino    false    195   UC      e	           0    0    web_cat_producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_producto_id_seq', 4, true);
            public       elmolino    false    196            	          0    16460    web_cat_servicio 
   TABLE DATA               C   COPY web_cat_servicio (id, nombre, codigo, imagen_cat) FROM stdin;
    public       elmolino    false    197   �C      f	           0    0    web_cat_servicio_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_servicio_id_seq', 1, true);
            public       elmolino    false    198            	          0    16465    web_cliente 
   TABLE DATA               Z   COPY web_cliente (id, nombre, apellido, correo, cedula, telefono, usuario_id) FROM stdin;
    public       elmolino    false    199   D      g	           0    0    web_cliente_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cliente_id_seq', 1, false);
            public       elmolino    false    200            !	          0    16470    web_comentario 
   TABLE DATA               h   COPY web_comentario (id, tema, fecha, descripcion, cproducto_id, cusuario_id, cservicio_id) FROM stdin;
    public       elmolino    false    201   #D      h	           0    0    web_comentario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('web_comentario_id_seq', 3, true);
            public       elmolino    false    202            #	          0    16478    web_cotizacion 
   TABLE DATA               E   COPY web_cotizacion (id, costo_total, fecha, cliente_id) FROM stdin;
    public       elmolino    false    203   �D      $	          0    16481    web_cotizacion_detalle 
   TABLE DATA               o   COPY web_cotizacion_detalle (id, cantidad, valor_unitario, cotizacion_id, product_id, servicio_id) FROM stdin;
    public       elmolino    false    204   �D      i	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('web_cotizacion_detalle_id_seq', 1, false);
            public       elmolino    false    205            j	           0    0    web_cotizacion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('web_cotizacion_id_seq', 1, false);
            public       elmolino    false    206            '	          0    16488    web_elmolino 
   TABLE DATA               `   COPY web_elmolino (id, correo, direccion, historia, mision, telefono, vision, mapa) FROM stdin;
    public       elmolino    false    207   E      k	           0    0    web_elmolino_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_elmolino_id_seq', 2, true);
            public       elmolino    false    208            )	          0    16496    web_foro 
   TABLE DATA               Q   COPY web_foro (id, fecha, tema, comentario, cat_foro_id, usuario_id) FROM stdin;
    public       elmolino    false    209   �H      l	           0    0    web_foro_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_foro_id_seq', 3, true);
            public       elmolino    false    210            +	          0    16501    web_galeria 
   TABLE DATA               2   COPY web_galeria (id, imagen, activa) FROM stdin;
    public       elmolino    false    211   �I      m	           0    0    web_galeria_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('web_galeria_id_seq', 2, true);
            public       elmolino    false    212            -	          0    16506    web_menu 
   TABLE DATA               H   COPY web_menu (id, nombre, url, nivel, padre_id, acceso_id) FROM stdin;
    public       elmolino    false    213   J      n	           0    0    web_menu_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_menu_id_seq', 7, true);
            public       elmolino    false    214            /	          0    16511 
   web_oferta 
   TABLE DATA               1   COPY web_oferta (id, nombre, imagen) FROM stdin;
    public       elmolino    false    215   �J      o	           0    0    web_oferta_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('web_oferta_id_seq', 3, true);
            public       elmolino    false    216            1	          0    16519    web_producto 
   TABLE DATA               �   COPY web_producto (id, codigo, nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, sol, crecimiento, detalle, costo, cantidad, imagen, imagen1, imagen2, cat_producto_id, variedad_id) FROM stdin;
    public       elmolino    false    217   �J      p	           0    0    web_producto_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_producto_id_seq', 4, true);
            public       elmolino    false    218            7	          0    16874    web_servicio 
   TABLE DATA               b   COPY web_servicio (id, codigo, nombre, costo, cat_servicio_id, duracion, descripcion) FROM stdin;
    public       elmolino    false    223   �T      q	           0    0    web_servicio_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_servicio_id_seq', 1, true);
            public       elmolino    false    224            3	          0    16532    web_siguenos 
   TABLE DATA               5   COPY web_siguenos (id, red, url, imagen) FROM stdin;
    public       elmolino    false    219   �T      r	           0    0    web_siguenos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_siguenos_id_seq', 2, true);
            public       elmolino    false    220            5	          0    16540    web_variedad 
   TABLE DATA               ]   COPY web_variedad (id, nombre, origen, situacion, cultivo, poda, multiplicacion) FROM stdin;
    public       elmolino    false    221   >U      s	           0    0    web_variedad_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_variedad_id_seq', 1, true);
            public       elmolino    false    222                       2606    16573    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         elmolino    false    172    172            %           2606    16575 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         elmolino    false    174    174    174            '           2606    16577    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         elmolino    false    174    174            !           2606    16579    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         elmolino    false    172    172            *           2606    16581 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         elmolino    false    176    176    176            ,           2606    16583    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         elmolino    false    176    176            5           2606    16585    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         elmolino    false    179    179            7           2606    16587 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         elmolino    false    179    179    179            .           2606    16589    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         elmolino    false    178    178            ;           2606    16591    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         elmolino    false    182    182            =           2606    16593 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         elmolino    false    182    182    182            1           2606    16595    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         elmolino    false    178    178            A           2606    16597    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         elmolino    false    184    184            C           2606    16599 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         elmolino    false    186    186    186            E           2606    16601    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         elmolino    false    186    186            G           2606    16603    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         elmolino    false    188    188            J           2606    16605    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         elmolino    false    190    190            P           2606    16607    web_carrito_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_pkey;
       public         elmolino    false    191    191            T           2606    16609    web_cat_foro_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_pkey;
       public         elmolino    false    193    193            V           2606    16611    web_cat_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_producto
    ADD CONSTRAINT web_cat_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_producto DROP CONSTRAINT web_cat_producto_pkey;
       public         elmolino    false    195    195            X           2606    16613    web_cat_servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_servicio
    ADD CONSTRAINT web_cat_servicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_servicio DROP CONSTRAINT web_cat_servicio_pkey;
       public         elmolino    false    197    197            [           2606    16615    web_cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_pkey;
       public         elmolino    false    199    199            `           2606    16617    web_comentario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_pkey;
       public         elmolino    false    201    201            h           2606    16619    web_cotizacion_detalle_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_pkey;
       public         elmolino    false    204    204            c           2606    16621    web_cotizacion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_pkey;
       public         elmolino    false    203    203            j           2606    16623    web_elmolino_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_elmolino
    ADD CONSTRAINT web_elmolino_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_elmolino DROP CONSTRAINT web_elmolino_pkey;
       public         elmolino    false    207    207            n           2606    16625    web_foro_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_pkey;
       public         elmolino    false    209    209            p           2606    16627    web_galeria_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_galeria
    ADD CONSTRAINT web_galeria_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_galeria DROP CONSTRAINT web_galeria_pkey;
       public         elmolino    false    211    211            s           2606    16629    web_menu_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         elmolino    false    213    213            u           2606    16631    web_oferta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY web_oferta
    ADD CONSTRAINT web_oferta_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_oferta DROP CONSTRAINT web_oferta_pkey;
       public         elmolino    false    215    215            y           2606    16633    web_producto_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_pkey;
       public         elmolino    false    217    217            {           2606    16637    web_siguenos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_siguenos
    ADD CONSTRAINT web_siguenos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_siguenos DROP CONSTRAINT web_siguenos_pkey;
       public         elmolino    false    219    219            }           2606    16639    web_variedad_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_variedad
    ADD CONSTRAINT web_variedad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_variedad DROP CONSTRAINT web_variedad_pkey;
       public         elmolino    false    221    221                       1259    16640    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         elmolino    false    172            "           1259    16641    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         elmolino    false    174            #           1259    16642    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         elmolino    false    174            (           1259    16643    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         elmolino    false    176            2           1259    16644    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         elmolino    false    179            3           1259    16645    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         elmolino    false    179            8           1259    16646 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         elmolino    false    182            9           1259    16647 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         elmolino    false    182            /           1259    16648    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         elmolino    false    178            >           1259    16649    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         elmolino    false    184            ?           1259    16650    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         elmolino    false    184            H           1259    16651    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         elmolino    false    190            K           1259    16652 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         elmolino    false    190            L           1259    16653    web_carrito_4bb699dc    INDEX     L   CREATE INDEX web_carrito_4bb699dc ON web_carrito USING btree (servicio_id);
 (   DROP INDEX public.web_carrito_4bb699dc;
       public         elmolino    false    191            M           1259    16654    web_carrito_9bea82de    INDEX     K   CREATE INDEX web_carrito_9bea82de ON web_carrito USING btree (product_id);
 (   DROP INDEX public.web_carrito_9bea82de;
       public         elmolino    false    191            N           1259    16656    web_carrito_abfe0f96    INDEX     K   CREATE INDEX web_carrito_abfe0f96 ON web_carrito USING btree (usuario_id);
 (   DROP INDEX public.web_carrito_abfe0f96;
       public         elmolino    false    191            Q           1259    16657    web_cat_foro_4a860110    INDEX     M   CREATE INDEX web_cat_foro_4a860110 ON web_cat_foro USING btree (cliente_id);
 )   DROP INDEX public.web_cat_foro_4a860110;
       public         elmolino    false    193            R           1259    16658    web_cat_foro_58c8bbca    INDEX     T   CREATE INDEX web_cat_foro_58c8bbca ON web_cat_foro USING btree (cat_foro_padre_id);
 )   DROP INDEX public.web_cat_foro_58c8bbca;
       public         elmolino    false    193            Y           1259    16659    web_cliente_abfe0f96    INDEX     K   CREATE INDEX web_cliente_abfe0f96 ON web_cliente USING btree (usuario_id);
 (   DROP INDEX public.web_cliente_abfe0f96;
       public         elmolino    false    199            \           1259    16837    web_comentario_df783f9a    INDEX     S   CREATE INDEX web_comentario_df783f9a ON web_comentario USING btree (cservicio_id);
 +   DROP INDEX public.web_comentario_df783f9a;
       public         elmolino    false    201            ]           1259    16660    web_comentario_ed3f3234    INDEX     R   CREATE INDEX web_comentario_ed3f3234 ON web_comentario USING btree (cusuario_id);
 +   DROP INDEX public.web_comentario_ed3f3234;
       public         elmolino    false    201            ^           1259    16661    web_comentario_f8cbbb71    INDEX     S   CREATE INDEX web_comentario_f8cbbb71 ON web_comentario USING btree (cproducto_id);
 +   DROP INDEX public.web_comentario_f8cbbb71;
       public         elmolino    false    201            a           1259    16662    web_cotizacion_4a860110    INDEX     Q   CREATE INDEX web_cotizacion_4a860110 ON web_cotizacion USING btree (cliente_id);
 +   DROP INDEX public.web_cotizacion_4a860110;
       public         elmolino    false    203            d           1259    16663    web_cotizacion_detalle_1b44b901    INDEX     d   CREATE INDEX web_cotizacion_detalle_1b44b901 ON web_cotizacion_detalle USING btree (cotizacion_id);
 3   DROP INDEX public.web_cotizacion_detalle_1b44b901;
       public         elmolino    false    204            e           1259    16664    web_cotizacion_detalle_4bb699dc    INDEX     b   CREATE INDEX web_cotizacion_detalle_4bb699dc ON web_cotizacion_detalle USING btree (servicio_id);
 3   DROP INDEX public.web_cotizacion_detalle_4bb699dc;
       public         elmolino    false    204            f           1259    16665    web_cotizacion_detalle_9bea82de    INDEX     a   CREATE INDEX web_cotizacion_detalle_9bea82de ON web_cotizacion_detalle USING btree (product_id);
 3   DROP INDEX public.web_cotizacion_detalle_9bea82de;
       public         elmolino    false    204            k           1259    16666    web_foro_abfe0f96    INDEX     E   CREATE INDEX web_foro_abfe0f96 ON web_foro USING btree (usuario_id);
 %   DROP INDEX public.web_foro_abfe0f96;
       public         elmolino    false    209            l           1259    16667    web_foro_d79f22b7    INDEX     F   CREATE INDEX web_foro_d79f22b7 ON web_foro USING btree (cat_foro_id);
 %   DROP INDEX public.web_foro_d79f22b7;
       public         elmolino    false    209            q           1259    16668    web_menu_c17c11db    INDEX     C   CREATE INDEX web_menu_c17c11db ON web_menu USING btree (padre_id);
 %   DROP INDEX public.web_menu_c17c11db;
       public         elmolino    false    213            v           1259    16669    web_producto_7ae3f7b3    INDEX     R   CREATE INDEX web_producto_7ae3f7b3 ON web_producto USING btree (cat_producto_id);
 )   DROP INDEX public.web_producto_7ae3f7b3;
       public         elmolino    false    217            w           1259    16670    web_producto_f2e63cb8    INDEX     N   CREATE INDEX web_producto_f2e63cb8 ON web_producto USING btree (variedad_id);
 )   DROP INDEX public.web_producto_f2e63cb8;
       public         elmolino    false    217            ~           2606    16672 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       elmolino    false    2092    174    176                       2606    16677 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       elmolino    false    2081    172    174            �           2606    16682 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       elmolino    false    186    176    2117            �           2606    16687 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       elmolino    false    2081    179    172            �           2606    16692 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       elmolino    false    178    179    2094            �           2606    16697 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       elmolino    false    2092    182    176            �           2606    16702 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       elmolino    false    178    2094    182            �           2606    16707 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       elmolino    false    184    186    2117            �           2606    16712 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       elmolino    false    2094    184    178            �           2606    16717 2   web_carrito_product_id_52430f56_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id;
       public       elmolino    false    191    217    2169            �           2606    16727 /   web_carrito_usuario_id_67d75097_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id;
       public       elmolino    false    2094    178    191            �           2606    16812 ?   web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id FOREIGN KEY (cat_foro_padre_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id;
       public       elmolino    false    193    193    2132            �           2606    16807 8   web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id FOREIGN KEY (cliente_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id;
       public       elmolino    false    193    178    2094            �           2606    16742 /   web_cliente_usuario_id_4da5b857_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id;
       public       elmolino    false    2094    199    178            �           2606    16843 ?   web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id FOREIGN KEY (cproducto_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id;
       public       elmolino    false    217    2169    201            �           2606    16817 ;   web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id FOREIGN KEY (cusuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id;
       public       elmolino    false    201    178    2094            �           2606    16822 ?   web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id FOREIGN KEY (cotizacion_id) REFERENCES web_cotizacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id;
       public       elmolino    false    204    2147    203            �           2606    16757 4   web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id;
       public       elmolino    false    199    2139    203            �           2606    16827 ?   web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id;
       public       elmolino    false    217    204    2169            �           2606    16777 0   web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id FOREIGN KEY (cat_foro_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id;
       public       elmolino    false    193    2132    209            �           2606    16782 ,   web_foro_usuario_id_164db508_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id;
       public       elmolino    false    178    2094    209            �           2606    16890 ,   web_menu_acceso_id_4da5b857_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id FOREIGN KEY (acceso_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id;
       public       elmolino    false    2081    213    172            �           2606    16787 )   web_menu_padre_id_3716f5f9_fk_web_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id FOREIGN KEY (padre_id) REFERENCES web_menu(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id;
       public       elmolino    false    213    213    2163            �           2606    16792 <   web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id FOREIGN KEY (cat_producto_id) REFERENCES web_cat_producto(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id;
       public       elmolino    false    2134    217    195            �           2606    16797 4   web_producto_variedad_id_285d87e9_fk_web_variedad_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id FOREIGN KEY (variedad_id) REFERENCES web_variedad(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id;
       public       elmolino    false    221    217    2173            	   (   x�3�LL����2�L���2�,JM�,.)JL������ ���      	   �   x���q@!C�un1��K��#�mĊ3����x�ˤ^�����~�9/��E���_!
dB����52�A���1dN����o�o� �E��{ф��^l�^�^\�^.�^���o�o�$�e���I{9��ܤ�<�����Z��e���W�f�ъ�WM٫��զ�ա�ե�����h{��N�^�����C��M��C���؛��1�&{���)�޼^�b��7��7��7��_���I�      	   �  x�m�M��0���)r�Ql!��H
���zN?Ʈ_:;���WU)�8�N]ߟ��q�Ӷ|gR|Kq����o7=����U�8�M�e��@�ϸ|�:̓�Y�l-um��bA[�R,��i�,��m+5q�
q�JH�H!ܙ^k\L����9y?�����z ��Tt�}����������"���X��M��R��C
�o(�5�n79	�����m�Z��Hv���!%ͥ�\"�Ϫ^b�TĜ*�0�1Or_�2ľ�M��0�����E�� h2Xs��v{.s��o���BŒ���V�X�:pQu�X�:��+E2�v~��\�>Q$��z���J�SMHC�5܇�:����� q�>Q� O�>�� �Q��L�G�1v$=�LҼ#y}X�a�V-ȡ�Z]=AT8pW]3qTn��Yx�6����Kt�Wlp�Y$J�´׾"i���79���u�������}N����t�>Gy�G�|�Q�1/��M��p9N*bbJ�'I1��dK,H1ļW+7�m�*�2B$@�^����O%��� Wl]��K�z�tн�4��i��G7�e�+v���
���S(8��F�}/e�2�x��mk�w�B�h��!�`���<�l|�6�m�|Mb�Ť�3I�&��c�G\����b%���0F@)�_L�R�]��x�i^�/慱m�{I=�H�_�D�D��/k���      
	   �   x�=���0 ���-���RHLu���bL�[ B,�ח���p��LϾ��ö9��C	 ���E�)ݜ���M��>�Ut��~���K�3���XU��!i�sڃN7�J
���"�9g��(
��d�S���׭SҪ`�Y��7A�Cu,W�	���u�ܙ�8_ɤ1      	      x������ � �      	      x������ � �      	   _  x��X�n�8}v���ᲊś�f��`z0@��@��i-lɐ���s�7�u~l��dG%'m7�s�*V�"�P�}���~�к � Z���+>VW��W�
��	�Y���Y#��AEo-@��g�TM� �@�����9��)���.!�ўB̐����;xin	�AYtޛ��S�/ /��N���Y���G�	�%(�)�c�7]_(%+JLL�`������Jh��?Ut�]�W�M��M��r}l���4 i\���A#��4��6�x�!���7M�$i��S_�4R66��es-3� �e�5�����ۦ|�~Hؐ�v�%T�X�a��>�A�+8>Qyo���@||���oc�%�0C�����J_a����V�X���M},��3[�l����sx7�+@:(��U����6��˷��~��Qu�S{����cz���.��S_��+�6��}>�ת��f�������@��D�c����}�mNձ;����%<�2dA�~�1�Hg�q!cq����M_�[��V�d$�\��1�`c^�?rź�Ff;�g.��"�4x0C��է������@�OcFy�4V��k�e5��T��HZ3p)0\�F֓��J��=�w
���rq�k��R��r��0'�}��m�C*Q9�()%�XKn���v��l�u����:�^��-�� �"ojϮ��Ц��a�kMǚ~�om5�x����Mڭ����\��&u^�Rq��w徜�P��T�������>�T�9��X@��n��D�tb��P�*���u�	�
�k�1���	2�sa�砽qo_��ď:�^A$5��O�Sn�� 8�*�܂p�X��C�7��5REI���*D�5	����@GzIg��&Ʃ`&�5��!�>������qƈx���Trg�ގ���?�"�����!#�l�<��0���I�\W��o�ő���6���N�?3�x14)���`�	`���p4��_�#�r���2�$�&(���ոs[���� �ġ�� �R6�'�N�el�(��1llP��Q���%�����i�gS��H�
�A� I}�&7��O5���z�-���l��E�����P����k_�m�ޝ��v������Ni��c�DY���Ц���P��-I�vT�=���;��Z@H��x���T�� �n��=]N�85�`�!	�N��Ngr �(�E���ی2,�oL������C��l`��r�&+�����y��ץ����m�B镥��_�����ӂզ:�ȱq����!�`��as�py>�)�d2��;�����y�����ऊyB�ႇs�w،���>��p#yB��@�[��\ݖ`:�d�b����\�l�lj�.��a%v��v�q�g�� ��T�d�X��ͮi ��<���ȗ��˪���uqI���:o���6��W�".�>�7��Y`��.�]�6r���{�B�i�6��4_�Y�p��za�k��J�]Z�����xJ~��i���OC����Zy��z������K���w!PH�=<�����9�B���ב���\h�Y�L���]�o�r·H�K-,����A�fl�}�̳\�O{��d�W��[}*�M�a.D��F�N#��O��.Jw��.0��$~���M���r� .,V�$'J
�&�-���9�Ʀҩ4��b{�_�Yd<�|�2?7�0�H�&����C�	!.�q�������B�	�ܝ�K6v�l!���ኸ$ai;���!�Ν�����@��X�u�k��5����W��<��ߺݾ//�WQ�C*�H6�8�fy�Ƈ���rR�\s�)���(�u2��9��,�7�|����zxx�?��7      	     x�]�Yn�0D��S�E��w)�2��-CK����b�N�4o��(
0����T7� J���=�T����Ʃ�E��'W���ڎ!]���d���g�T_�O�^@Nu?��4^�S��b7�h]��֖��bo��R��~�浳($��kpH����\�(�釁���*ɂ(N�w�1����(�e��u�XP\`1�qM�CZPZ�\� ��ʐcU�Y��C*���� 2�5<�+��`�B���<��F��Zf��D��4Ј      	   �  x���Kn�0�|
_��<8|�% �:B*��Kn��w$�HDm6������46�q��a��ܺ� ����}{iPN�'�GIB�h<Y�r��}�?�/���-������A-�6S7M�8|�d(�]�4���1�7l�/�@Y{��6 }��ሒ��	�C����rm��6$V��C\l(���r/�0�k{k+&���y�|,L�Կ=�a�rmߺ��!�.bX B�.�ǫn���c>�����<��9AI�D��+����?���Pi�	�b׭ v������	��������3�5��C���w��	�W� �����e9p���rI�֖�)���5�X����휧���?��v�ڴM�th�H���]��\��j��ly�ew	�ݲ�*�#�1��.!Cy�-�ƺjkt�6����3t���J]�ϴ6M��eܬ���.#�4���}u�q�qL��,�x��ױ����˶�p���^��p�B@Y      	   �  x���ݎ�0���)��􃶖d��Յ͌X�7X��*hE������z��=����`�T���<����H�/]{���ڽ|��H��O�[2�����E����l��j%�PI;Ab�\�X��j�Y7x��MT��+�B���J'�Īi�l��f^'N�<abV&�}��L��"i��Y��oQ)6kP�9�h=lPT	ti��YZG�0s��������$j�����}+���5_��K3WZ��-<���l�O���� ��3���y"8w��P�m���\
x`��)�G{0c}&ՓP�&�i,�ĳإ���\�J1�j�3$�lg��;�+����l�y�Y����`z�;����m�n�ƙj�Gךܸچ��Y���d�?s8�m���$�a���tu��
�j� c�N9��n�ɲ���c�-�_����e퍷�y�=f�{`
��>s:��Q�du(;�����Z��}�����0t�y���7K%      	      x������ � �      	   7   x�3�4204�50�50���/�L�L,��2
��s�3��R�9c�8�b���� ��3      	   h   x�3���+I-��/J-�LN,�/(�O)M.�/�τJ�e�s�yrqz%�d�a(L-FUh��Z���T�PY*X�	gFfJQ~A~^fr>�B��^A^:�G(W� ��<      	   )   x�3�,�OI�000�,N-*�L���	�e�r��qqq ��
(      	      x������ � �      !	   �   x��1� E�p
_ �m@""'�B)C�*I�_Z)Wh������?�^�;=B�H�G����֗?ں�g�(KZ��e�?���'�g#�6��#�wi�-[��o�F���u' o��q0��3�$G�9��*�H̲�l��[�ℯ�<(�>��J�      #	      x������ � �      $	      x������ � �      '	   �  x��UMo$5=O~E��8uz>!��� �hhaOH��]�������$�&�=��Ƶ�U��$������WU�^u��V����T�|;�#`�w�b�[8jcАm��6�N�;�7��,*�2��M���ޠ�	� DMޣ<�z�zM������8��|���w^{�g(��Ph@M6�(p�A9��<�k���Zi>sW�����x�N+l�d��v�lPzh���O��O�4�|;09v|� �G���S@p{O��JN��#���q�b'F��l���5����c	5\���~����7�O��b��y�l�u	�4�.�*#Y�Ii(��7�R��G�mn�$�+Tz�d9�s�w�"�j�b��*Abb��Lҍ"�&���
�	�D�?Z�̑d�<-�}�/�L�0�7�5T��c"�	{�SR������ZT5y�Q�=�D����;���zj�[`�Q9��>��";�H�{�a�G+�\~���1"w1t�x/�'�����=r���FSMV��b�����̰,���1���\e�(-��� I+y13�������s�y�;����巼FrZ�k�|��{m��7��e�%0���w$�g��UE�IGb��G��L�S��g�|�M<��r5+�@�=ĺX,���w�7���w�mۺ��`��V�ǈ٣�'�^��!�>\N���j�kU�u��վ����Up�WT����`j��ԒS��:]�k�';^gS0�>�U��j�(�/��j��z�̏������ֳ�%��z��4տ�|���^�,��б���f��n��k�v���4s���<L��С1�O����q��,�<⭡�P�8�ٌ���^E�2��׶�����ؾ�����w��7Sd63g�VgggeِL      )	     x�U��N�@���S��*IaaDtdBl,�q[Kw��|	������#�Ÿ��ɶ���7����m�n����#B�'Qt���"��1zѸX3E�A�x�W��:�s|w�k�vm�Ĕ8ǂ�G�ޣf��g��OR!\����$3��L�A`B��A8�m���&�ϼT�F�i�T�s��:�}Ba�3B�.��f���\F>qF϶�eʙv!�tQ����aH�bQP��1+IX޺�e ���QH�ϡ^vUU� �b��      +	   4   x�3�LO�I-�L�7�M
�5�w��*H�,�2���We��:g8Beb���� 	{�      -	   y   x�3����L�����4���4�2��(M-*�d@h��1gXfYjP�BC�M8�S��@fs�ÙPYSN�����<��Ԝ�\*k�霟[P�X�ސˌ381'�h��s��qqq ./      /	   S   x�3�,�,K-���Ӈ0���"s����
ҹ�83JS�J@�Fq�YTTTd�1Xژ�8��,39� ƌ�I��J4������� �� _      1	   �	  x�}XMo�=�~E���솻$%%��L۴EH�� � B�L�n3����5W7���C7%'��{�3�8q��?�^�zU�����`9�A��8����3����V�qT���Ӫk�뵪�j�Z��6v|�*��*�G��:���[<�Qηe0�������V~����`T�Ç�*�����R:��y[��P��E�P���[��3�8�U�|�ڙ��F_�2؆�c�^56j��:E��L�E�T����i���t,�F���ha/xT�G\���}ĸ}!�T������t�0�z��M�,���� 0�b=֛��ec�o��b�K������S�k\�a=���kzH�7�Gg�W�drt���s��:���i[Ｌ>i̕v�	c�7�G���?/�-x��=��=�W�j����:	H�v]����P�\& *��9@����3ȗ4�T�ڀ�@czkB ������0E�̘�+���j`�ZS�z�^Q��ƀ�#�Ķ�M74�yL�b�J�~w��0���ʅz�3{�3MK���6U�W ���O��o5��a����_̖+�ùu� ß���;|H>�����f��-��ɫٛ� [7;�����׳WBC�cΑ���N{ۂ|�A��h0@��Ϟ[���";8֘F��Բ�
(!?a|��~�wS��P��μ/�.퇏�yJ&G�~jJ�h�N�Rp���kv�,�������� j�+�,�53�B�k��x����<����`>��d��B���`���A�`˔3����� ��-bA�Z�2����I�2�[H����
zf�����9��4���2/�����I�8�nX�R�hnL�c�Vѐs�Pg��O���$Wo�,Dn
�d�u�v�$c�� u6�i��u
�9�3>j�u�z!g��K�]d�����[�=N=�(�����ԣfNyQr�[�[��eA�" I ����N�/�w2�Yl$rfąL�ԱK	z��N�b#( 8xV:u�c��e(��̓f>�
�h%�lXtj_%��{&�۶�`��a�:)��l���C�צ�fa�Q�h�8�����&Ֆ�h"�Y�à��n��$P?��H�^=3�������a�y�q�G�'��)|�!Ԍ�m�����i�1��u49 7�Ȅa�r;�!��B�jq�nKȈ�g*�}����H���f��*�q�0�nKnLUwR�R��27{;����Tx��e���2�'!��<�"M.\Y�#P�ɪ��2S�ݲ��۳�kJ�Hݭ	����G������8
|z�Ҧ���A+�62|�SÇ�VH�
��	��TV��C>�4��Y���R�Z-(\�Ej%�^}���U^�L����.%�($��2���\�r�$}�/�4q�|Hێ.���\���8دQy# ��+a��j�g��2��EC��tգD�� �[�F�C��a���C�� B��ב�л�$�b[͎��:5���[�U~�r8��L;*�pX@͖�Œ(X�tٍwV���|:ȽF��n,+�����-��7݉�:�b��[
��E�'0m؉L�����їIc����k�C,Hf�6�3��K��3 �V@v�"����Q�2�į�,��R��X����T�41��uv�^�͝�f���R�X�Y�})���!��π��fC���;�ԙݔ�Lo8�ZЏLKl�.��l����i�:��zR�_)�r�e�8�{'��ȷ��;��]���}>�Pj?�LUu� �Ґ���K�(4�|�#�Զk�#���������]�BD	�Đ���r��w!�$��/�������:k;\�?�X[{ۑ��2:��W����u_�2���b��:�zz��Uj_�ե1��IS*�T!�׹����������K[`)�����x���"pc/J�.p�@c�n�V�c���z��"��L̀Jc�f�5(E��ݙe�d�M�an��u�� �s��ip�/�6b�I�so��:L��B�c����e�F�=�_\��\A��W��t��ߏ��K���S���d���ȍ
���y0�G� �T��������@�-o˕�-q�޼=ivX�Q�|�W��%
Gճ��KA>VA�"uۍ"#)U�&�K���0��&B���v�2����d�qq<\�^��.6�ZO6H![���d��O�H�Aq8?(����wy�{JE;���C��d}k�O�D�Ӹ~�F�3��m����6J#�.��s��0{)F2�̬�6���:���GM�E�����v���K�6��Cퟨ���N��X0%V@�w�>4����eǺ��c�[}���ߟ����l�?A~-C4�=��G��i4�F���B_f��˾[��r�,{��M�]��˿�/�^���,<x�bQֽ      7	   B   x�3�,H400��OITp,J��I-�4�4�4�3U��/J,�H��*���+�d�8��\1z\\\ ��.      3	   P   x�3�,)�,)I-��())��ׇr���s�s2�32�9�RS�zy�\F�i�ɩI���0 >P ��2-	�2F��� i� Y      5	      x�3�tO,JI��L$������ {V�     