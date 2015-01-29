PGDMP     7    ,                 s            elmolino    9.1.14    9.1.14    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    25468    elmolino    DATABASE     z   CREATE DATABASE elmolino WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_EC.UTF-8' LC_CTYPE = 'es_EC.UTF-8';
    DROP DATABASE elmolino;
             elmolino    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11720    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    214            �            1259    25502 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         elmolino    false    5            �            1259    25500    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       elmolino    false    5    168             	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       elmolino    false    167            �            1259    25512    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         elmolino    false    5            �            1259    25510    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       elmolino    false    5    170            	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       elmolino    false    169            �            1259    25492    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         elmolino    false    5            �            1259    25490    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       elmolino    false    5    166            	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       elmolino    false    165            �            1259    25522 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         elmolino    false    5            �            1259    25532    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         elmolino    false    5            �            1259    25530    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       elmolino    false    174    5            	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       elmolino    false    173            �            1259    25520    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       elmolino    false    5    172            	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       elmolino    false    171            �            1259    25542    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         elmolino    false    5            �            1259    25540 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       elmolino    false    5    176            	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       elmolino    false    175            �            1259    25596    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         elmolino    false    1998    5            �            1259    25594    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       elmolino    false    5    178            	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       elmolino    false    177            �            1259    25482    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         elmolino    false    5            �            1259    25480    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       elmolino    false    164    5            	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       elmolino    false    163            �            1259    25471    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         elmolino    false    5            �            1259    25469    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       elmolino    false    5    162            	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       elmolino    false    161            �            1259    25618    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         elmolino    false    5            �            1259    25630    web_carrito    TABLE     �   CREATE TABLE web_carrito (
    id integer NOT NULL,
    codigo double precision NOT NULL,
    fecha date NOT NULL,
    valor_total double precision NOT NULL,
    product_id integer,
    servicio_id integer,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_carrito;
       public         elmolino    false    5            �            1259    25628    web_carrito_id_seq    SEQUENCE     t   CREATE SEQUENCE web_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_carrito_id_seq;
       public       elmolino    false    181    5            		           0    0    web_carrito_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_carrito_id_seq OWNED BY web_carrito.id;
            public       elmolino    false    180            �            1259    25638    web_cat_foro    TABLE     �   CREATE TABLE web_cat_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    cat_foro_padre_id integer NOT NULL,
    cliente_id integer NOT NULL
);
     DROP TABLE public.web_cat_foro;
       public         elmolino    false    5            �            1259    25636    web_cat_foro_id_seq    SEQUENCE     u   CREATE SEQUENCE web_cat_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_cat_foro_id_seq;
       public       elmolino    false    5    183            
	           0    0    web_cat_foro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_cat_foro_id_seq OWNED BY web_cat_foro.id;
            public       elmolino    false    182            �            1259    25646    web_cat_producto    TABLE     �   CREATE TABLE web_cat_producto (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    imagen_cat character varying(100) NOT NULL,
    tipo character varying(2) NOT NULL
);
 $   DROP TABLE public.web_cat_producto;
       public         elmolino    false    5            �            1259    25644    web_cat_producto_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_producto_id_seq;
       public       elmolino    false    5    185            	           0    0    web_cat_producto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_producto_id_seq OWNED BY web_cat_producto.id;
            public       elmolino    false    184            �            1259    25654    web_cat_servicio    TABLE     �   CREATE TABLE web_cat_servicio (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    codigo character varying(5) NOT NULL
);
 $   DROP TABLE public.web_cat_servicio;
       public         elmolino    false    5            �            1259    25652    web_cat_servicio_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_servicio_id_seq;
       public       elmolino    false    187    5            	           0    0    web_cat_servicio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_servicio_id_seq OWNED BY web_cat_servicio.id;
            public       elmolino    false    186            �            1259    25662    web_cliente    TABLE     2  CREATE TABLE web_cliente (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    correo character varying(30) NOT NULL,
    cedula character varying(10) NOT NULL,
    telefono character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_cliente;
       public         elmolino    false    5            �            1259    25660    web_cliente_id_seq    SEQUENCE     t   CREATE SEQUENCE web_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_cliente_id_seq;
       public       elmolino    false    189    5            	           0    0    web_cliente_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_cliente_id_seq OWNED BY web_cliente.id;
            public       elmolino    false    188            �            1259    25670    web_comentario    TABLE     �   CREATE TABLE web_comentario (
    id integer NOT NULL,
    tema character varying(10) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(1000) NOT NULL,
    cproducto_id integer,
    cusuario_id integer
);
 "   DROP TABLE public.web_comentario;
       public         elmolino    false    5            �            1259    25668    web_comentario_id_seq    SEQUENCE     w   CREATE SEQUENCE web_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_comentario_id_seq;
       public       elmolino    false    191    5            	           0    0    web_comentario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_comentario_id_seq OWNED BY web_comentario.id;
            public       elmolino    false    190            �            1259    25678    web_cotizacion    TABLE     �   CREATE TABLE web_cotizacion (
    id integer NOT NULL,
    costo_total double precision NOT NULL,
    fecha date NOT NULL,
    cliente_id integer NOT NULL
);
 "   DROP TABLE public.web_cotizacion;
       public         elmolino    false    5            �            1259    25686    web_cotizacion_detalle    TABLE     �   CREATE TABLE web_cotizacion_detalle (
    id integer NOT NULL,
    cantidad double precision NOT NULL,
    valor_unitario double precision NOT NULL,
    cotizacion_id integer,
    product_id integer NOT NULL,
    servicio_id integer
);
 *   DROP TABLE public.web_cotizacion_detalle;
       public         elmolino    false    5            �            1259    25684    web_cotizacion_detalle_id_seq    SEQUENCE        CREATE SEQUENCE web_cotizacion_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_cotizacion_detalle_id_seq;
       public       elmolino    false    195    5            	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE web_cotizacion_detalle_id_seq OWNED BY web_cotizacion_detalle.id;
            public       elmolino    false    194            �            1259    25676    web_cotizacion_id_seq    SEQUENCE     w   CREATE SEQUENCE web_cotizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_cotizacion_id_seq;
       public       elmolino    false    5    193            	           0    0    web_cotizacion_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_cotizacion_id_seq OWNED BY web_cotizacion.id;
            public       elmolino    false    192            �            1259    25694    web_elmolino    TABLE     w  CREATE TABLE web_elmolino (
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
       public         elmolino    false    5            �            1259    25692    web_elmolino_id_seq    SEQUENCE     u   CREATE SEQUENCE web_elmolino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_elmolino_id_seq;
       public       elmolino    false    197    5            	           0    0    web_elmolino_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_elmolino_id_seq OWNED BY web_elmolino.id;
            public       elmolino    false    196            �            1259    25705    web_foro    TABLE     �   CREATE TABLE web_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    tema character varying(20) NOT NULL,
    comentario character varying(200) NOT NULL,
    cat_foro_id integer NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_foro;
       public         elmolino    false    5            �            1259    25703    web_foro_id_seq    SEQUENCE     q   CREATE SEQUENCE web_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_foro_id_seq;
       public       elmolino    false    5    199            	           0    0    web_foro_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_foro_id_seq OWNED BY web_foro.id;
            public       elmolino    false    198            �            1259    25713    web_galeria    TABLE        CREATE TABLE web_galeria (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    activa boolean NOT NULL
);
    DROP TABLE public.web_galeria;
       public         elmolino    false    5            �            1259    25711    web_galeria_id_seq    SEQUENCE     t   CREATE SEQUENCE web_galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_galeria_id_seq;
       public       elmolino    false    201    5            	           0    0    web_galeria_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_galeria_id_seq OWNED BY web_galeria.id;
            public       elmolino    false    200            �            1259    25721    web_menu    TABLE     �   CREATE TABLE web_menu (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    url character varying(10) NOT NULL,
    nivel smallint,
    padre_id integer
);
    DROP TABLE public.web_menu;
       public         elmolino    false    5            �            1259    25719    web_menu_id_seq    SEQUENCE     q   CREATE SEQUENCE web_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_menu_id_seq;
       public       elmolino    false    5    203            	           0    0    web_menu_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_menu_id_seq OWNED BY web_menu.id;
            public       elmolino    false    202            �            1259    25729 
   web_oferta    TABLE     �   CREATE TABLE web_oferta (
    id integer NOT NULL,
    nombre character varying(1500) NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.web_oferta;
       public         elmolino    false    5            �            1259    25727    web_oferta_id_seq    SEQUENCE     s   CREATE SEQUENCE web_oferta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_oferta_id_seq;
       public       elmolino    false    5    205            	           0    0    web_oferta_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE web_oferta_id_seq OWNED BY web_oferta.id;
            public       elmolino    false    204            �            1259    25740    web_producto    TABLE     �  CREATE TABLE web_producto (
    id integer NOT NULL,
    codigo character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL,
    nombre_comun character varying(20) NOT NULL,
    nombre_cientifico character varying(20) NOT NULL,
    altura_maxima character varying(10) NOT NULL,
    agua character varying(1) NOT NULL,
    sol character varying(1) NOT NULL,
    crecimiento character varying(5) NOT NULL,
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
       public         elmolino    false    5            �            1259    25738    web_producto_id_seq    SEQUENCE     u   CREATE SEQUENCE web_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_producto_id_seq;
       public       elmolino    false    5    207            	           0    0    web_producto_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_producto_id_seq OWNED BY web_producto.id;
            public       elmolino    false    206            �            1259    25751    web_servicio    TABLE     6  CREATE TABLE web_servicio (
    id integer NOT NULL,
    codigo character varying(5) NOT NULL,
    nombre character varying(20) NOT NULL,
    costo double precision NOT NULL,
    tiempo timestamp with time zone NOT NULL,
    descripcion character varying(200) NOT NULL,
    cat_servicio_id integer NOT NULL
);
     DROP TABLE public.web_servicio;
       public         elmolino    false    5            �            1259    25749    web_servicio_id_seq    SEQUENCE     u   CREATE SEQUENCE web_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_servicio_id_seq;
       public       elmolino    false    209    5            	           0    0    web_servicio_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_servicio_id_seq OWNED BY web_servicio.id;
            public       elmolino    false    208            �            1259    25874    web_siguenos    TABLE     �   CREATE TABLE web_siguenos (
    id integer NOT NULL,
    red character varying(5000) NOT NULL,
    url character varying(5000) NOT NULL,
    imagen character varying(100) NOT NULL
);
     DROP TABLE public.web_siguenos;
       public         elmolino    false    5            �            1259    25872    web_siguenos_id_seq    SEQUENCE     u   CREATE SEQUENCE web_siguenos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_siguenos_id_seq;
       public       elmolino    false    213    5            	           0    0    web_siguenos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_siguenos_id_seq OWNED BY web_siguenos.id;
            public       elmolino    false    212            �            1259    25759    web_variedad    TABLE     C  CREATE TABLE web_variedad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    origen character varying(20) NOT NULL,
    situacion character varying(20) NOT NULL,
    cultivo character varying(20) NOT NULL,
    poda character varying(20) NOT NULL,
    multiplicacion character varying(20) NOT NULL
);
     DROP TABLE public.web_variedad;
       public         elmolino    false    5            �            1259    25757    web_variedad_id_seq    SEQUENCE     u   CREATE SEQUENCE web_variedad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_variedad_id_seq;
       public       elmolino    false    211    5            	           0    0    web_variedad_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_variedad_id_seq OWNED BY web_variedad.id;
            public       elmolino    false    210            �           2604    25505    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    167    168    168            �           2604    25515    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    170    169    170            �           2604    25495    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    166    165    166            �           2604    25525    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    172    171    172            �           2604    25535    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    174    173    174            �           2604    25545    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    176    175    176            �           2604    25599    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    177    178    178            �           2604    25485    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    163    164    164            �           2604    25474    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    161    162    162            �           2604    25633    id    DEFAULT     b   ALTER TABLE ONLY web_carrito ALTER COLUMN id SET DEFAULT nextval('web_carrito_id_seq'::regclass);
 =   ALTER TABLE public.web_carrito ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    180    181    181            �           2604    25641    id    DEFAULT     d   ALTER TABLE ONLY web_cat_foro ALTER COLUMN id SET DEFAULT nextval('web_cat_foro_id_seq'::regclass);
 >   ALTER TABLE public.web_cat_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    182    183    183            �           2604    25649    id    DEFAULT     l   ALTER TABLE ONLY web_cat_producto ALTER COLUMN id SET DEFAULT nextval('web_cat_producto_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    184    185    185            �           2604    25657    id    DEFAULT     l   ALTER TABLE ONLY web_cat_servicio ALTER COLUMN id SET DEFAULT nextval('web_cat_servicio_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_servicio ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    187    186    187            �           2604    25665    id    DEFAULT     b   ALTER TABLE ONLY web_cliente ALTER COLUMN id SET DEFAULT nextval('web_cliente_id_seq'::regclass);
 =   ALTER TABLE public.web_cliente ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    188    189    189            �           2604    25673    id    DEFAULT     h   ALTER TABLE ONLY web_comentario ALTER COLUMN id SET DEFAULT nextval('web_comentario_id_seq'::regclass);
 @   ALTER TABLE public.web_comentario ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    191    190    191            �           2604    25681    id    DEFAULT     h   ALTER TABLE ONLY web_cotizacion ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_id_seq'::regclass);
 @   ALTER TABLE public.web_cotizacion ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    192    193    193            �           2604    25689    id    DEFAULT     x   ALTER TABLE ONLY web_cotizacion_detalle ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_detalle_id_seq'::regclass);
 H   ALTER TABLE public.web_cotizacion_detalle ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    194    195    195            �           2604    25697    id    DEFAULT     d   ALTER TABLE ONLY web_elmolino ALTER COLUMN id SET DEFAULT nextval('web_elmolino_id_seq'::regclass);
 >   ALTER TABLE public.web_elmolino ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    196    197    197            �           2604    25708    id    DEFAULT     \   ALTER TABLE ONLY web_foro ALTER COLUMN id SET DEFAULT nextval('web_foro_id_seq'::regclass);
 :   ALTER TABLE public.web_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    199    198    199            �           2604    25716    id    DEFAULT     b   ALTER TABLE ONLY web_galeria ALTER COLUMN id SET DEFAULT nextval('web_galeria_id_seq'::regclass);
 =   ALTER TABLE public.web_galeria ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    201    200    201            �           2604    25724    id    DEFAULT     \   ALTER TABLE ONLY web_menu ALTER COLUMN id SET DEFAULT nextval('web_menu_id_seq'::regclass);
 :   ALTER TABLE public.web_menu ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    202    203    203            �           2604    25732    id    DEFAULT     `   ALTER TABLE ONLY web_oferta ALTER COLUMN id SET DEFAULT nextval('web_oferta_id_seq'::regclass);
 <   ALTER TABLE public.web_oferta ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    204    205    205            �           2604    25743    id    DEFAULT     d   ALTER TABLE ONLY web_producto ALTER COLUMN id SET DEFAULT nextval('web_producto_id_seq'::regclass);
 >   ALTER TABLE public.web_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    206    207    207            �           2604    25754    id    DEFAULT     d   ALTER TABLE ONLY web_servicio ALTER COLUMN id SET DEFAULT nextval('web_servicio_id_seq'::regclass);
 >   ALTER TABLE public.web_servicio ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    209    208    209            �           2604    25877    id    DEFAULT     d   ALTER TABLE ONLY web_siguenos ALTER COLUMN id SET DEFAULT nextval('web_siguenos_id_seq'::regclass);
 >   ALTER TABLE public.web_siguenos ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    212    213    213            �           2604    25762    id    DEFAULT     d   ALTER TABLE ONLY web_variedad ALTER COLUMN id SET DEFAULT nextval('web_variedad_id_seq'::regclass);
 >   ALTER TABLE public.web_variedad ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    211    210    211            �          0    25502 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       elmolino    false    168    2296   9=      	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       elmolino    false    167            �          0    25512    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       elmolino    false    170    2296   V=      	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       elmolino    false    169            �          0    25492    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       elmolino    false    166    2296   s=      	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);
            public       elmolino    false    165            �          0    25522 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       elmolino    false    172    2296   D@      �          0    25532    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       elmolino    false    174    2296   �@      	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       elmolino    false    173            	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       elmolino    false    171            �          0    25542    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       elmolino    false    176    2296   A      	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       elmolino    false    175            �          0    25596    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       elmolino    false    178    2296   0A       	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 44, true);
            public       elmolino    false    177            �          0    25482    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       elmolino    false    164    2296   E      !	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);
            public       elmolino    false    163            �          0    25471    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       elmolino    false    162    2296   /F      "	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);
            public       elmolino    false    161            �          0    25618    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       elmolino    false    179    2296   sG      �          0    25630    web_carrito 
   TABLE DATA               c   COPY web_carrito (id, codigo, fecha, valor_total, product_id, servicio_id, usuario_id) FROM stdin;
    public       elmolino    false    181    2296   �H      #	           0    0    web_carrito_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_carrito_id_seq', 1, false);
            public       elmolino    false    180            �          0    25638    web_cat_foro 
   TABLE DATA               ^   COPY web_cat_foro (id, fecha, nombre, descripcion, cat_foro_padre_id, cliente_id) FROM stdin;
    public       elmolino    false    183    2296   �H      $	           0    0    web_cat_foro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('web_cat_foro_id_seq', 1, false);
            public       elmolino    false    182            �          0    25646    web_cat_producto 
   TABLE DATA               A   COPY web_cat_producto (id, nombre, imagen_cat, tipo) FROM stdin;
    public       elmolino    false    185    2296   �H      %	           0    0    web_cat_producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_producto_id_seq', 3, true);
            public       elmolino    false    184            �          0    25654    web_cat_servicio 
   TABLE DATA               7   COPY web_cat_servicio (id, nombre, codigo) FROM stdin;
    public       elmolino    false    187    2296   %I      &	           0    0    web_cat_servicio_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('web_cat_servicio_id_seq', 1, false);
            public       elmolino    false    186            �          0    25662    web_cliente 
   TABLE DATA               Z   COPY web_cliente (id, nombre, apellido, correo, cedula, telefono, usuario_id) FROM stdin;
    public       elmolino    false    189    2296   BI      '	           0    0    web_cliente_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cliente_id_seq', 1, false);
            public       elmolino    false    188            �          0    25670    web_comentario 
   TABLE DATA               Z   COPY web_comentario (id, tema, fecha, descripcion, cproducto_id, cusuario_id) FROM stdin;
    public       elmolino    false    191    2296   _I      (	           0    0    web_comentario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('web_comentario_id_seq', 2, true);
            public       elmolino    false    190            �          0    25678    web_cotizacion 
   TABLE DATA               E   COPY web_cotizacion (id, costo_total, fecha, cliente_id) FROM stdin;
    public       elmolino    false    193    2296   �I      �          0    25686    web_cotizacion_detalle 
   TABLE DATA               o   COPY web_cotizacion_detalle (id, cantidad, valor_unitario, cotizacion_id, product_id, servicio_id) FROM stdin;
    public       elmolino    false    195    2296   �I      )	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('web_cotizacion_detalle_id_seq', 1, false);
            public       elmolino    false    194            *	           0    0    web_cotizacion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('web_cotizacion_id_seq', 1, false);
            public       elmolino    false    192            �          0    25694    web_elmolino 
   TABLE DATA               `   COPY web_elmolino (id, correo, direccion, historia, mision, telefono, vision, mapa) FROM stdin;
    public       elmolino    false    197    2296   J      +	           0    0    web_elmolino_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_elmolino_id_seq', 2, true);
            public       elmolino    false    196            �          0    25705    web_foro 
   TABLE DATA               Q   COPY web_foro (id, fecha, tema, comentario, cat_foro_id, usuario_id) FROM stdin;
    public       elmolino    false    199    2296   �M      ,	           0    0    web_foro_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('web_foro_id_seq', 1, false);
            public       elmolino    false    198            �          0    25713    web_galeria 
   TABLE DATA               2   COPY web_galeria (id, imagen, activa) FROM stdin;
    public       elmolino    false    201    2296   �M      -	           0    0    web_galeria_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('web_galeria_id_seq', 2, true);
            public       elmolino    false    200            �          0    25721    web_menu 
   TABLE DATA               =   COPY web_menu (id, nombre, url, nivel, padre_id) FROM stdin;
    public       elmolino    false    203    2296   N      .	           0    0    web_menu_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_menu_id_seq', 4, true);
            public       elmolino    false    202            �          0    25729 
   web_oferta 
   TABLE DATA               1   COPY web_oferta (id, nombre, imagen) FROM stdin;
    public       elmolino    false    205    2296   lN      /	           0    0    web_oferta_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('web_oferta_id_seq', 3, true);
            public       elmolino    false    204            �          0    25740    web_producto 
   TABLE DATA               �   COPY web_producto (id, codigo, nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, sol, crecimiento, detalle, costo, cantidad, imagen, imagen1, imagen2, cat_producto_id, variedad_id) FROM stdin;
    public       elmolino    false    207    2296   �N      0	           0    0    web_producto_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_producto_id_seq', 3, true);
            public       elmolino    false    206            �          0    25751    web_servicio 
   TABLE DATA               `   COPY web_servicio (id, codigo, nombre, costo, tiempo, descripcion, cat_servicio_id) FROM stdin;
    public       elmolino    false    209    2296   #X      1	           0    0    web_servicio_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('web_servicio_id_seq', 1, false);
            public       elmolino    false    208            �          0    25874    web_siguenos 
   TABLE DATA               5   COPY web_siguenos (id, red, url, imagen) FROM stdin;
    public       elmolino    false    213    2296   @X      2	           0    0    web_siguenos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_siguenos_id_seq', 2, true);
            public       elmolino    false    212            �          0    25759    web_variedad 
   TABLE DATA               ]   COPY web_variedad (id, nombre, origen, situacion, cultivo, poda, multiplicacion) FROM stdin;
    public       elmolino    false    211    2296   �X      3	           0    0    web_variedad_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_variedad_id_seq', 1, true);
            public       elmolino    false    210            �           2606    25509    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         elmolino    false    168    168    2297            �           2606    25519 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         elmolino    false    170    170    170    2297            �           2606    25517    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         elmolino    false    170    170    2297            �           2606    25507    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         elmolino    false    168    168    2297            �           2606    25499 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         elmolino    false    166    166    166    2297            �           2606    25497    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         elmolino    false    166    166    2297            �           2606    25537    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         elmolino    false    174    174    2297                        2606    25539 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         elmolino    false    174    174    174    2297            �           2606    25527    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         elmolino    false    172    172    2297                       2606    25547    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         elmolino    false    176    176    2297                       2606    25549 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         elmolino    false    176    176    176    2297            �           2606    25529    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         elmolino    false    172    172    2297            
           2606    25605    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         elmolino    false    178    178    2297            �           2606    25489 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         elmolino    false    164    164    164    2297            �           2606    25487    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         elmolino    false    164    164    2297            �           2606    25479    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         elmolino    false    162    162    2297                       2606    25625    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         elmolino    false    179    179    2297                       2606    25635    web_carrito_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_pkey;
       public         elmolino    false    181    181    2297                       2606    25643    web_cat_foro_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_pkey;
       public         elmolino    false    183    183    2297                       2606    25651    web_cat_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_producto
    ADD CONSTRAINT web_cat_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_producto DROP CONSTRAINT web_cat_producto_pkey;
       public         elmolino    false    185    185    2297                       2606    25659    web_cat_servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_servicio
    ADD CONSTRAINT web_cat_servicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_servicio DROP CONSTRAINT web_cat_servicio_pkey;
       public         elmolino    false    187    187    2297                       2606    25667    web_cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_pkey;
       public         elmolino    false    189    189    2297            "           2606    25675    web_comentario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_pkey;
       public         elmolino    false    191    191    2297            *           2606    25691    web_cotizacion_detalle_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_pkey;
       public         elmolino    false    195    195    2297            %           2606    25683    web_cotizacion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_pkey;
       public         elmolino    false    193    193    2297            ,           2606    25702    web_elmolino_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_elmolino
    ADD CONSTRAINT web_elmolino_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_elmolino DROP CONSTRAINT web_elmolino_pkey;
       public         elmolino    false    197    197    2297            0           2606    25710    web_foro_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_pkey;
       public         elmolino    false    199    199    2297            2           2606    25718    web_galeria_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_galeria
    ADD CONSTRAINT web_galeria_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_galeria DROP CONSTRAINT web_galeria_pkey;
       public         elmolino    false    201    201    2297            5           2606    25726    web_menu_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         elmolino    false    203    203    2297            7           2606    25737    web_oferta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY web_oferta
    ADD CONSTRAINT web_oferta_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_oferta DROP CONSTRAINT web_oferta_pkey;
       public         elmolino    false    205    205    2297            ;           2606    25748    web_producto_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_pkey;
       public         elmolino    false    207    207    2297            >           2606    25756    web_servicio_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_servicio
    ADD CONSTRAINT web_servicio_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_servicio DROP CONSTRAINT web_servicio_pkey;
       public         elmolino    false    209    209    2297            B           2606    25882    web_siguenos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_siguenos
    ADD CONSTRAINT web_siguenos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_siguenos DROP CONSTRAINT web_siguenos_pkey;
       public         elmolino    false    213    213    2297            @           2606    25764    web_variedad_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_variedad
    ADD CONSTRAINT web_variedad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_variedad DROP CONSTRAINT web_variedad_pkey;
       public         elmolino    false    211    211    2297            �           1259    25556    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         elmolino    false    168    2297            �           1259    25567    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         elmolino    false    170    2297            �           1259    25568    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         elmolino    false    170    2297            �           1259    25555    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         elmolino    false    166    2297            �           1259    25581    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         elmolino    false    174    2297            �           1259    25580    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         elmolino    false    174    2297                       1259    25593 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         elmolino    false    176    2297                       1259    25592 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         elmolino    false    176    2297            �           1259    25569    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         elmolino    false    172    2297                       1259    25616    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         elmolino    false    178    2297                       1259    25617    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         elmolino    false    178    2297                       1259    25626    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         elmolino    false    179    2297                       1259    25627 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         elmolino    false    179    2297                       1259    25849    web_carrito_4bb699dc    INDEX     L   CREATE INDEX web_carrito_4bb699dc ON web_carrito USING btree (servicio_id);
 (   DROP INDEX public.web_carrito_4bb699dc;
       public         elmolino    false    181    2297                       1259    25843    web_carrito_9bea82de    INDEX     K   CREATE INDEX web_carrito_9bea82de ON web_carrito USING btree (product_id);
 (   DROP INDEX public.web_carrito_9bea82de;
       public         elmolino    false    181    2297                       1259    25855    web_carrito_abfe0f96    INDEX     K   CREATE INDEX web_carrito_abfe0f96 ON web_carrito USING btree (usuario_id);
 (   DROP INDEX public.web_carrito_abfe0f96;
       public         elmolino    false    181    2297                       1259    25837    web_cat_foro_4a860110    INDEX     M   CREATE INDEX web_cat_foro_4a860110 ON web_cat_foro USING btree (cliente_id);
 )   DROP INDEX public.web_cat_foro_4a860110;
       public         elmolino    false    183    2297                       1259    25770    web_cat_foro_58c8bbca    INDEX     T   CREATE INDEX web_cat_foro_58c8bbca ON web_cat_foro USING btree (cat_foro_padre_id);
 )   DROP INDEX public.web_cat_foro_58c8bbca;
       public         elmolino    false    183    2297                       1259    25776    web_cliente_abfe0f96    INDEX     K   CREATE INDEX web_cliente_abfe0f96 ON web_cliente USING btree (usuario_id);
 (   DROP INDEX public.web_cliente_abfe0f96;
       public         elmolino    false    189    2297                       1259    25954    web_comentario_ed3f3234    INDEX     R   CREATE INDEX web_comentario_ed3f3234 ON web_comentario USING btree (cusuario_id);
 +   DROP INDEX public.web_comentario_ed3f3234;
       public         elmolino    false    191    2297                        1259    25948    web_comentario_f8cbbb71    INDEX     S   CREATE INDEX web_comentario_f8cbbb71 ON web_comentario USING btree (cproducto_id);
 +   DROP INDEX public.web_comentario_f8cbbb71;
       public         elmolino    false    191    2297            #           1259    25782    web_cotizacion_4a860110    INDEX     Q   CREATE INDEX web_cotizacion_4a860110 ON web_cotizacion USING btree (cliente_id);
 +   DROP INDEX public.web_cotizacion_4a860110;
       public         elmolino    false    193    2297            &           1259    25788    web_cotizacion_detalle_1b44b901    INDEX     d   CREATE INDEX web_cotizacion_detalle_1b44b901 ON web_cotizacion_detalle USING btree (cotizacion_id);
 3   DROP INDEX public.web_cotizacion_detalle_1b44b901;
       public         elmolino    false    195    2297            '           1259    25831    web_cotizacion_detalle_4bb699dc    INDEX     b   CREATE INDEX web_cotizacion_detalle_4bb699dc ON web_cotizacion_detalle USING btree (servicio_id);
 3   DROP INDEX public.web_cotizacion_detalle_4bb699dc;
       public         elmolino    false    195    2297            (           1259    25825    web_cotizacion_detalle_9bea82de    INDEX     a   CREATE INDEX web_cotizacion_detalle_9bea82de ON web_cotizacion_detalle USING btree (product_id);
 3   DROP INDEX public.web_cotizacion_detalle_9bea82de;
       public         elmolino    false    195    2297            -           1259    25800    web_foro_abfe0f96    INDEX     E   CREATE INDEX web_foro_abfe0f96 ON web_foro USING btree (usuario_id);
 %   DROP INDEX public.web_foro_abfe0f96;
       public         elmolino    false    199    2297            .           1259    25799    web_foro_d79f22b7    INDEX     F   CREATE INDEX web_foro_d79f22b7 ON web_foro USING btree (cat_foro_id);
 %   DROP INDEX public.web_foro_d79f22b7;
       public         elmolino    false    199    2297            3           1259    25806    web_menu_c17c11db    INDEX     C   CREATE INDEX web_menu_c17c11db ON web_menu USING btree (padre_id);
 %   DROP INDEX public.web_menu_c17c11db;
       public         elmolino    false    203    2297            8           1259    25812    web_producto_7ae3f7b3    INDEX     R   CREATE INDEX web_producto_7ae3f7b3 ON web_producto USING btree (cat_producto_id);
 )   DROP INDEX public.web_producto_7ae3f7b3;
       public         elmolino    false    207    2297            9           1259    25819    web_producto_f2e63cb8    INDEX     N   CREATE INDEX web_producto_f2e63cb8 ON web_producto USING btree (variedad_id);
 )   DROP INDEX public.web_producto_f2e63cb8;
       public         elmolino    false    207    2297            <           1259    25818    web_servicio_05f28b26    INDEX     R   CREATE INDEX web_servicio_05f28b26 ON web_servicio USING btree (cat_servicio_id);
 )   DROP INDEX public.web_servicio_05f28b26;
       public         elmolino    false    209    2297            E           2606    25562 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       elmolino    false    2025    170    166    2297            D           2606    25557 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       elmolino    false    2030    170    168    2297            C           2606    25550 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       elmolino    false    164    2020    166    2297            G           2606    25575 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       elmolino    false    174    168    2030    2297            F           2606    25570 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       elmolino    false    174    2038    172    2297            I           2606    25587 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       elmolino    false    176    166    2025    2297            H           2606    25582 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       elmolino    false    2038    176    172    2297            J           2606    25606 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       elmolino    false    2020    164    178    2297            K           2606    25611 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       elmolino    false    172    178    2038    2297            L           2606    25844 2   web_carrito_product_id_52430f56_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id;
       public       elmolino    false    207    2106    181    2297            M           2606    25850 3   web_carrito_servicio_id_22a5102c_fk_web_servicio_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_servicio_id_22a5102c_fk_web_servicio_id FOREIGN KEY (servicio_id) REFERENCES web_servicio(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_servicio_id_22a5102c_fk_web_servicio_id;
       public       elmolino    false    2109    181    209    2297            N           2606    25856 /   web_carrito_usuario_id_67d75097_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id;
       public       elmolino    false    2038    172    181    2297            O           2606    25765 :   web_cat_foro_cat_foro_padre_id_58d02094_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cat_foro_padre_id_58d02094_fk_web_cat_foro_id FOREIGN KEY (cat_foro_padre_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_cat_foro_padre_id_58d02094_fk_web_cat_foro_id;
       public       elmolino    false    183    2070    183    2297            P           2606    25838 2   web_cat_foro_cliente_id_7795107b_fk_web_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cliente_id_7795107b_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_cliente_id_7795107b_fk_web_cliente_id;
       public       elmolino    false    2077    189    183    2297            Q           2606    25771 /   web_cliente_usuario_id_4da5b857_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id;
       public       elmolino    false    189    2038    172    2297            R           2606    25949 7   web_comentario_cproducto_id_2d86b8a4_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cproducto_id_2d86b8a4_fk_web_producto_id FOREIGN KEY (cproducto_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cproducto_id_2d86b8a4_fk_web_producto_id;
       public       elmolino    false    207    191    2106    2297            S           2606    25955 3   web_comentario_cusuario_id_495c7525_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cusuario_id_495c7525_fk_auth_user_id FOREIGN KEY (cusuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cusuario_id_495c7525_fk_auth_user_id;
       public       elmolino    false    191    2038    172    2297            T           2606    25777 4   web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id;
       public       elmolino    false    189    193    2077    2297            U           2606    25783 ?   web_cotizacion_deta_cotizacion_id_3458c5d3_fk_web_cotizacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_deta_cotizacion_id_3458c5d3_fk_web_cotizacion_id FOREIGN KEY (cotizacion_id) REFERENCES web_cotizacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_deta_cotizacion_id_3458c5d3_fk_web_cotizacion_id;
       public       elmolino    false    195    193    2084    2297            V           2606    25826 =   web_cotizacion_detalle_product_id_7410eec4_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_product_id_7410eec4_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_product_id_7410eec4_fk_web_producto_id;
       public       elmolino    false    195    2106    207    2297            W           2606    25832 >   web_cotizacion_detalle_servicio_id_19c941e6_fk_web_servicio_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_servicio_id_19c941e6_fk_web_servicio_id FOREIGN KEY (servicio_id) REFERENCES web_servicio(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_servicio_id_19c941e6_fk_web_servicio_id;
       public       elmolino    false    195    2109    209    2297            X           2606    25789 0   web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id FOREIGN KEY (cat_foro_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id;
       public       elmolino    false    183    2070    199    2297            Y           2606    25794 ,   web_foro_usuario_id_164db508_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id;
       public       elmolino    false    172    199    2038    2297            Z           2606    25801 )   web_menu_padre_id_3716f5f9_fk_web_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id FOREIGN KEY (padre_id) REFERENCES web_menu(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id;
       public       elmolino    false    203    2100    203    2297            [           2606    25807 <   web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id FOREIGN KEY (cat_producto_id) REFERENCES web_cat_producto(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id;
       public       elmolino    false    185    2072    207    2297            \           2606    25820 4   web_producto_variedad_id_285d87e9_fk_web_variedad_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id FOREIGN KEY (variedad_id) REFERENCES web_variedad(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id;
       public       elmolino    false    2111    211    207    2297            ]           2606    25813 <   web_servicio_cat_servicio_id_7e643630_fk_web_cat_servicio_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_servicio
    ADD CONSTRAINT web_servicio_cat_servicio_id_7e643630_fk_web_cat_servicio_id FOREIGN KEY (cat_servicio_id) REFERENCES web_cat_servicio(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_servicio DROP CONSTRAINT web_servicio_cat_servicio_id_7e643630_fk_web_cat_servicio_id;
       public       elmolino    false    2074    209    187    2297            �      x������ � �      �      x������ � �      �   �  x�m�M��0���)r�Ql!��H
���zN?Ʈ_:;���WU)�8�N]ߟ��q�Ӷ|gR|Kq����o7=����U�8�M�e��@�ϸ|�:̓�Y�l-um��bA[�R,��i�,��m+5q�
q�JH�H!ܙ^k\L����9y?�����z ��Tt�}����������"���X��M��R��C
�o(�5�n79	�����m�Z��Hv���!%ͥ�\"�Ϫ^b�TĜ*�0�1Or_�2ľ�M��0�����E�� h2Xs��v{.s��o���BŒ���V�X�:pQu�X�:��+E2�v~��\�>Q$��z���J�SMHC�5܇�:����� q�>Q� O�>�� �Q��L�G�1v$=�LҼ#y}X�a�V-ȡ�Z]=AT8pW]3qTn��Yx�6����Kt�Wlp�Y$J�´׾"i���79���u�������}N����t�>Gy�G�|�Q�1/��M��p9N*bbJ�'I1��dK,H1ļW+7�m�*�2B$@�^����O%��� Wl]��K�z�tн�4��i��G7�e�+v���
���S(8��F�}/e�2�x��mk�w�B�h��!�`���<�l|�6�m�|Mb�Ť�3I�&��c�G\����b%���0F@)�_L�R�]��x�i^�/慱m�{I=�H�_�D�D��/k���      �   �   x�]���0 ���-_�|�%1qP����11X�
D����29��p��8�]Q��or�*� ���d{R�>�*�\��4����Ⱦ>ݜn]��ʃ2'ק�|�:�ٚ�H�S��N�$3FKI�DƼw�q���n�л����zI���g��|�w��.18      �      x������ � �      �      x������ � �      �   �  x����n�6������,gx�}��ۛ�*�Pd�aa��,ɫ��/֡�E9��v����p��`�Ԏ�M�伔��SʚW~6�6��;k-)��i-}]+�P"0g�ukBb� s K���\��s�t�ՀPT[�F�a�i݈��ߎ{Ph[��e
�1bL��m��%׌;@= bs���5���1���Jk���|b�/	J�r9��!�!���ל�AJ�/s��W��p�-��S��}��*�p�l��\F� �?!���ɸ���1�߫v��HO���d�Q�D�8�o��*�hġu�	���c
_ho߄j7�I�M�Z�hji;�O�/8H�
:�.�c�(��^"w7��	ڍ%�����@��M��́�fF(�ݽ�3������r5
�1��~Z�B�:���2aPʛ�U�&C<?�u$�0�~��o�?�tim|(�c׷��S�N}<���n}NiU,��� �N�R҉Yɧ��m��u/WWB\Cd`�alȿ�=f DNPU5�"��\�[OQ7��Mb2���uV�1毣c�-#���UK���`��e�����n����m,A0FN�TǦ���3�+�ɐ3�r����Ŀvd(�̲��Py��q� 7��*���H������I�H5��rE��)��zrL<Qg6���������<G]	�9:T7���R���Cq
���_��}������?��ؤޭc�����H�W�R�����\�b����C��ϋ-�}��jj�ԓ�\¡�M��b�ODB�EǬv�Ǉ��P�Z�K�SЙҽP4sP���ފ-�y��'��c����XHH،��
� \+��m8��a��˥��Y'8��ԏ�� '�ZN	愕�f�Lr^���3t���gø2Y>u�+����)��G��*�c�ue���T�y��v�����k*��*8���� ��s�4��Q��C��l���fa��      �     x�]�Yn�0D��S�E��w)�2��-CK����b�N�4o��(
0����T7� J���=�T����Ʃ�E��'W���ڎ!]���d���g�T_�O�^@Nu?��4^�S��b7�h]��֖��bo��R��~�浳($��kpH����\�(�釁���*ɂ(N�w�1����(�e��u�XP\`1�qM�CZPZ�\� ��ʐcU�Y��C*���� 2�5<�+��`�B���<��F��Zf��D��4Ј      �   4  x���Qj�0����@�dٱ�L����ĥI����5��oz�����fH�:���q� 0�9���4�����e�E9m��l��~[��l����OS����.�4˸,1�O�L@��l�>��	ģSd �+��@�|S
�5��<X��|@�-�}��1K��Z�[�G˞�u�c�C,��5a�L������%O�:g���Ke6,�sZB���8�!{@��
�����z�)�[:mÚ~r�'QV�9V���le�im<�M��[A]5?$%�h��<����k5U,���c�+ms���ն�'�b�*      �   	  x�e����0 D���Z,�W\X[QJ��TJiWE�_�d�=�a.3/3sx���X�������t￟���é���,�{dW?���R{<�k��1c�Gm���+�����Jux>Vť�J+*��$�2J�T/cEGw"Jk��%1qK-�����~I6ݘ%Ts;���6��JW�!�a�� >sxׇ)�Z�I��p��Wޢ�����
���C$�-7���D����dS���t��p�7�Q�F�� &9��q~ Ng�      �      x������ � �      �      x������ � �      �   O   x�3���+I-��/J-�LN,�/(�O)M.�/�τJ�e�s�yrqz%�d�a(L-FUh��Z���T�PY*X]� �J-E      �      x������ � �      �      x������ � �      �   ^   x�3�,(*MMJT0�4204�50�5�P0��20 "]S��(=J��×�4�4�2�fw��������
�F)�
����y%�E��
CP��=... �h��      �      x������ � �      �      x������ � �      �   �  x��UMo$5=O~E��8uz>!��� �hhaOH��]�������$�&�=��Ƶ�U��$������WU�^u��V����T�|;�#`�w�b�[8jcАm��6�N�;�7��,*�2��M���ޠ�	� DMޣ<�z�zM������8��|���w^{�g(��Ph@M6�(p�A9��<�k���Zi>sW�����x�N+l�d��v�lPzh���O��O�4�|;09v|� �G���S@p{O��JN��#���q�b'F��l���5����c	5\���~����7�O��b��y�l�u	�4�.�*#Y�Ii(��7�R��G�mn�$�+Tz�d9�s�w�"�j�b��*Abb��Lҍ"�&���
�	�D�?Z�̑d�<-�}�/�L�0�7�5T��c"�	{�SR������ZT5y�Q�=�D����;���zj�[`�Q9��>��";�H�{�a�G+�\~���1"w1t�x/�'�����=r���FSMV��b�����̰,���1���\e�(-��� I+y13�������s�y�;����巼FrZ�k�|��{m��7��e�%0���w$�g��UE�IGb��G��L�S��g�|�M<��r5+�@�=ĺX,���w�7���w�mۺ��`��V�ǈ٣�'�^��!�>\N���j�kU�u��վ����Up�WT����`j��ԒS��:]�k�';^gS0�>�U��j�(�/��j��z�̏������ֳ�%��z��4տ�|���^�,��б���f��n��k�v���4s���<L��С1�O����q��,�<⭡�P�8�ٌ���^E�2��׶�����ؾ�����w��7Sd63g�VgggeِL      �      x������ � �      �   4   x�3�LO�I-�L�7�M
�5�w��*H�,�2���We��:g8Beb���� 	{�      �   G   x�3����L�����4���2��,K-�� 4XԈӣ4��(����&���Ee �Ŝ��p&X.F��� �9`      �   S   x�3�,�,K-���Ӈ0���"s����
ҹ�83JS�J@�Fq�YTTTd�1Xژ�8��,39� ƌ�I��J4������� �� _      �   D	  x�}X�n7]�_Ad���Q���1��CI4���Y����Xd�,v���S�4Z�yf���9�J�4�pW�����sϽ�����xu�����V�����#/G���N��$��V��~Ъ5�i�ѝuvzK*�ڎ����z��;<W��)�:�X��jc�0meRo0���cRM��/�G�F��:�mMZ�Sڢt�sd�]�w՛h��*�4����&���*UG�h=&��Ic�79�fb,�j|ot�T��LsX��cY2*'�';x���0�Bǽ�v4��������zھ����g�m6}6�lr��|�4��}
8Xo#V�����i��N�vЍ?{��H׸��z�ՎW���o�O�Ġ6ٔ��::��z���i����~�̥���S�7�G'ǋգ?���x�����ׄf����y	H�v}���=�PѼ�&T@J���>0��i�i !������L�)�j�`J��1�WB# �ٷ�.w���R�&�^9g�a�Hb[�M�}S�ػV]����&�wX�T�p�`:`�i��T����
�5\���T����4,Cˣ՚qn����E���� R�w�/�!�=Z��룷�[t��>8��a�G����ǜ#��Nہ|[�A��4�~���-Ə���=k�S{0�vA%�'��4�:��r5�a�*%��͇���a���drB�gW�EK���'9�f��"��qJ��}�v�AȢ�0����	�'K��~(cLo��X��jH�V/�O��rP-�m�K�0��%��ElhՊ�s� �qp�4IU�~ ���^C��L���mV?洛�0r}������4�W'��#^ڐ̵IvJ@�*rN"V�a���V���5X0KG��� Y� l�|�'�Xd$�@��1�Z�z�#�CN���D�^������
��x
t��՞��b��
�;�Q3�<�(��-��-Q݊ X G�d;#���K�R�2����D�L��i `��:v�A/����Rl �j��uJ��G��H�|����)�fˢӆ&��D80Q�um�kֳ:/��(��4�"�*��=;�������rM�7���[��"Cp��=�b>��񾠾�^�6N21n���z�<uJ�5cuS� "tz6~�)C��x�L	�5-
aX��ނmHa����Z��2"��
e���"�0��n%C�Y��
`���y���Sսԩ�B����f�p��9���>�ex7���|�zW
W�E��sE��14�`J�[V�ps�zCɞ��3������1V�W0�?Č^����iWz�h�V��sj���i֠?2q���J4�q�G@��zxQZQ�%���H�Dc�ëo �I�*�"��zچo٥��� �:�ba�[
Z隤���E�"��i��V�PJ~����7�����FQ�i6�(�(�V���%�Ca�����?O��,�z(�Fj���̄ޥ'��ivtTչ1��~�ҙ��+����Ȇh�I��j��(�$���n���7�ؕ�A������Hn�FwPB�^]w'r0� �6w�,�FO`ڲ�#�0ۣ/���-FS�7�X���mJgآ��y`@��4��E�}H���_�YP�Tթ=�튩ib1����pW:7�$z��r���Zx_b�/�_ '�A�C�*�(���{���ݔ�Bo8�;ЏL�l�.���Җ��y�&��z��_)�r�e�8��{/���7�&���>zW��x߀O��(����:�s Qi��R��Q��
b����cZ�;���k�t}�t}�.R!��QbH���%U���Oa�zė��`J`n�����v�����Cd�꫗:�b�WմL����]�N.��<�a�:Tlui�4{Ҕ�!M�ti����g(�2��	��X���%?�/�G��ԋ��8�ذ۽��ٱ�՝�8uH�3��X�]�JѲ��f���,f}R��sq9���xznn5�e�&LV:��[�Q��f��1��y�A���#Ҟ�/�JF�����IY�\_�&Y5�4,(�CvEjq7�²8�qM�0�(�x��Xr��b}�����F�Җ�ioޞ4;,�h:��+Qɍ��X�Х �(l���'���j���|�8�w�Y��㤰�YvL?衛�~P=X<��^��.6�Z�6H![/ʔ�l�pȵH�qu�8�����wy�{JC;�׏_b��}s��\��i\�����l[$o����/�����c�^��� 3k����Nh�����R4`h���o7�=��4~��ph�������9�K������V������dǦ��S��~�˛�ߝ]��ߗ����7d���      �      x������ � �      �   P   x�3�,)�,)I-��())��ׇr���s�s2�32�9�RS�zy�\F�i�ɩI���0 >P ��2-	�2F��� i� Y      �      x�3�tO,JI��L$������ {V�     