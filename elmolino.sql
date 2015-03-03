PGDMP     
                    s            elmolino    9.3.6    9.4.0 �    J	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            K	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            L	           1262    17980    elmolino    DATABASE     z   CREATE DATABASE elmolino WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE elmolino;
             elmolino    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            M	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            N	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11829    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            O	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    223            �            1259    17981 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         elmolino    false    6            �            1259    17984    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       elmolino    false    6    170            P	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       elmolino    false    171            �            1259    17986    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         elmolino    false    6            �            1259    17989    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       elmolino    false    6    172            Q	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       elmolino    false    173            �            1259    17991    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         elmolino    false    6            �            1259    17994    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       elmolino    false    6    174            R	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       elmolino    false    175            �            1259    17996 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         elmolino    false    6            �            1259    17999    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         elmolino    false    6            �            1259    18002    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       elmolino    false    6    177            S	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       elmolino    false    178            �            1259    18004    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       elmolino    false    176    6            T	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       elmolino    false    179            �            1259    18006    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         elmolino    false    6            �            1259    18009 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       elmolino    false    6    180            U	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       elmolino    false    181            �            1259    18011    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         elmolino    false    6            �            1259    18018    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       elmolino    false    182    6            V	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       elmolino    false    183            �            1259    18020    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         elmolino    false    6            �            1259    18023    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       elmolino    false    184    6            W	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       elmolino    false    185            �            1259    18025    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         elmolino    false    6            �            1259    18031    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       elmolino    false    6    186            X	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       elmolino    false    187            �            1259    18033    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         elmolino    false    6            �            1259    18039    web_carrito    TABLE       CREATE TABLE web_carrito (
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
       public         elmolino    false    6            �            1259    18042    web_carrito_id_seq    SEQUENCE     t   CREATE SEQUENCE web_carrito_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_carrito_id_seq;
       public       elmolino    false    6    189            Y	           0    0    web_carrito_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_carrito_id_seq OWNED BY web_carrito.id;
            public       elmolino    false    190            �            1259    18044    web_cat_foro    TABLE     �   CREATE TABLE web_cat_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    cat_foro_padre_id integer,
    cliente_id integer NOT NULL
);
     DROP TABLE public.web_cat_foro;
       public         elmolino    false    6            �            1259    18047    web_cat_foro_id_seq    SEQUENCE     u   CREATE SEQUENCE web_cat_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_cat_foro_id_seq;
       public       elmolino    false    6    191            Z	           0    0    web_cat_foro_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_cat_foro_id_seq OWNED BY web_cat_foro.id;
            public       elmolino    false    192            �            1259    18049    web_cat_producto    TABLE     �   CREATE TABLE web_cat_producto (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    imagen_cat character varying(100) NOT NULL,
    tipo character varying(2) NOT NULL
);
 $   DROP TABLE public.web_cat_producto;
       public         elmolino    false    6            �            1259    18052    web_cat_producto_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_producto_id_seq;
       public       elmolino    false    6    193            [	           0    0    web_cat_producto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_producto_id_seq OWNED BY web_cat_producto.id;
            public       elmolino    false    194            �            1259    18054    web_cat_servicio    TABLE     �   CREATE TABLE web_cat_servicio (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    codigo character varying(5) NOT NULL,
    imagen_cat character varying(100) NOT NULL
);
 $   DROP TABLE public.web_cat_servicio;
       public         elmolino    false    6            �            1259    18057    web_cat_servicio_id_seq    SEQUENCE     y   CREATE SEQUENCE web_cat_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_cat_servicio_id_seq;
       public       elmolino    false    6    195            \	           0    0    web_cat_servicio_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE web_cat_servicio_id_seq OWNED BY web_cat_servicio.id;
            public       elmolino    false    196            �            1259    18059    web_cliente    TABLE     2  CREATE TABLE web_cliente (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    correo character varying(30) NOT NULL,
    cedula character varying(10) NOT NULL,
    telefono character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.web_cliente;
       public         elmolino    false    6            �            1259    18062    web_cliente_id_seq    SEQUENCE     t   CREATE SEQUENCE web_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_cliente_id_seq;
       public       elmolino    false    6    197            ]	           0    0    web_cliente_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_cliente_id_seq OWNED BY web_cliente.id;
            public       elmolino    false    198            �            1259    18064    web_comentario    TABLE     -  CREATE TABLE web_comentario (
    id integer NOT NULL,
    tema character varying(20) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(1000) NOT NULL,
    cproducto_id integer,
    cusuario_id integer NOT NULL,
    cservicio_id integer,
    cforo_id integer
);
 "   DROP TABLE public.web_comentario;
       public         elmolino    false    6            �            1259    18070    web_comentario_id_seq    SEQUENCE     w   CREATE SEQUENCE web_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_comentario_id_seq;
       public       elmolino    false    6    199            ^	           0    0    web_comentario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_comentario_id_seq OWNED BY web_comentario.id;
            public       elmolino    false    200            �            1259    18072    web_cotizacion    TABLE     �   CREATE TABLE web_cotizacion (
    id integer NOT NULL,
    costo_total double precision NOT NULL,
    fecha date NOT NULL,
    cliente_id integer NOT NULL
);
 "   DROP TABLE public.web_cotizacion;
       public         elmolino    false    6            �            1259    18075    web_cotizacion_detalle    TABLE       CREATE TABLE web_cotizacion_detalle (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    valor_unitario double precision NOT NULL,
    cotizacion_id integer NOT NULL,
    product_id integer,
    servicio_id integer,
    total double precision NOT NULL
);
 *   DROP TABLE public.web_cotizacion_detalle;
       public         elmolino    false    6            �            1259    18078    web_cotizacion_detalle_id_seq    SEQUENCE        CREATE SEQUENCE web_cotizacion_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_cotizacion_detalle_id_seq;
       public       elmolino    false    6    202            _	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE web_cotizacion_detalle_id_seq OWNED BY web_cotizacion_detalle.id;
            public       elmolino    false    203            �            1259    18080    web_cotizacion_id_seq    SEQUENCE     w   CREATE SEQUENCE web_cotizacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.web_cotizacion_id_seq;
       public       elmolino    false    6    201            `	           0    0    web_cotizacion_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE web_cotizacion_id_seq OWNED BY web_cotizacion.id;
            public       elmolino    false    204            �            1259    18082    web_elmolino    TABLE     w  CREATE TABLE web_elmolino (
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
       public         elmolino    false    6            �            1259    18088    web_elmolino_id_seq    SEQUENCE     u   CREATE SEQUENCE web_elmolino_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_elmolino_id_seq;
       public       elmolino    false    205    6            a	           0    0    web_elmolino_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_elmolino_id_seq OWNED BY web_elmolino.id;
            public       elmolino    false    206            �            1259    18090    web_foro    TABLE       CREATE TABLE web_foro (
    id integer NOT NULL,
    fecha date NOT NULL,
    tema character varying(30) NOT NULL,
    ccomentario character varying(5000) NOT NULL,
    cat_foro_id integer NOT NULL,
    usuario_id integer NOT NULL,
    coment_small character varying(250)
);
    DROP TABLE public.web_foro;
       public         elmolino    false    6            �            1259    18093    web_foro_id_seq    SEQUENCE     q   CREATE SEQUENCE web_foro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_foro_id_seq;
       public       elmolino    false    6    207            b	           0    0    web_foro_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_foro_id_seq OWNED BY web_foro.id;
            public       elmolino    false    208            �            1259    18095    web_galeria    TABLE        CREATE TABLE web_galeria (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    activa boolean NOT NULL
);
    DROP TABLE public.web_galeria;
       public         elmolino    false    6            �            1259    18098    web_galeria_id_seq    SEQUENCE     t   CREATE SEQUENCE web_galeria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_galeria_id_seq;
       public       elmolino    false    209    6            c	           0    0    web_galeria_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE web_galeria_id_seq OWNED BY web_galeria.id;
            public       elmolino    false    210            �            1259    18100    web_menu    TABLE     �   CREATE TABLE web_menu (
    id integer NOT NULL,
    nombre character varying(10) NOT NULL,
    url character varying(30) NOT NULL,
    nivel smallint NOT NULL,
    padre_id integer,
    acceso_id integer
);
    DROP TABLE public.web_menu;
       public         elmolino    false    6            �            1259    18103    web_menu_id_seq    SEQUENCE     q   CREATE SEQUENCE web_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.web_menu_id_seq;
       public       elmolino    false    211    6            d	           0    0    web_menu_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE web_menu_id_seq OWNED BY web_menu.id;
            public       elmolino    false    212            �            1259    18105 
   web_oferta    TABLE     �   CREATE TABLE web_oferta (
    id integer NOT NULL,
    nombre character varying(1500) NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.web_oferta;
       public         elmolino    false    6            �            1259    18111    web_oferta_id_seq    SEQUENCE     s   CREATE SEQUENCE web_oferta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.web_oferta_id_seq;
       public       elmolino    false    6    213            e	           0    0    web_oferta_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE web_oferta_id_seq OWNED BY web_oferta.id;
            public       elmolino    false    214            �            1259    18113    web_producto    TABLE     w  CREATE TABLE web_producto (
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
       public         elmolino    false    6            �            1259    18119    web_producto_id_seq    SEQUENCE     u   CREATE SEQUENCE web_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_producto_id_seq;
       public       elmolino    false    215    6            f	           0    0    web_producto_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_producto_id_seq OWNED BY web_producto.id;
            public       elmolino    false    216            �            1259    18121    web_servicio_id_seq    SEQUENCE     u   CREATE SEQUENCE web_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_servicio_id_seq;
       public       elmolino    false    6            �            1259    18123    web_servicio    TABLE     U  CREATE TABLE web_servicio (
    id integer DEFAULT nextval('web_servicio_id_seq'::regclass) NOT NULL,
    codigo character varying(6) NOT NULL,
    nombre character varying(20) NOT NULL,
    costo double precision NOT NULL,
    cat_servicio_id integer NOT NULL,
    duracion character varying(10),
    descripcion character varying(2000)
);
     DROP TABLE public.web_servicio;
       public         elmolino    false    217    6            �            1259    18130    web_siguenos    TABLE     �   CREATE TABLE web_siguenos (
    id integer NOT NULL,
    red character varying(5000) NOT NULL,
    url character varying(5000) NOT NULL,
    imagen character varying(100) NOT NULL
);
     DROP TABLE public.web_siguenos;
       public         elmolino    false    6            �            1259    18136    web_siguenos_id_seq    SEQUENCE     u   CREATE SEQUENCE web_siguenos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_siguenos_id_seq;
       public       elmolino    false    6    219            g	           0    0    web_siguenos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_siguenos_id_seq OWNED BY web_siguenos.id;
            public       elmolino    false    220            �            1259    18138    web_variedad    TABLE       CREATE TABLE web_variedad (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    origen character varying(20),
    situacion character varying(20),
    cultivo character varying(20),
    poda character varying(20),
    multiplicacion character varying(20)
);
     DROP TABLE public.web_variedad;
       public         elmolino    false    6            �            1259    18141    web_variedad_id_seq    SEQUENCE     u   CREATE SEQUENCE web_variedad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_variedad_id_seq;
       public       elmolino    false    6    221            h	           0    0    web_variedad_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE web_variedad_id_seq OWNED BY web_variedad.id;
            public       elmolino    false    222                       2604    18143    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    171    170                       2604    18144    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    173    172                       2604    18145    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    175    174                       2604    18146    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    179    176                       2604    18147    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    178    177                       2604    18148    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    181    180                       2604    18149    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    183    182                       2604    18150    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    185    184                       2604    18151    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    187    186                       2604    18152    id    DEFAULT     b   ALTER TABLE ONLY web_carrito ALTER COLUMN id SET DEFAULT nextval('web_carrito_id_seq'::regclass);
 =   ALTER TABLE public.web_carrito ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    190    189                       2604    18153    id    DEFAULT     d   ALTER TABLE ONLY web_cat_foro ALTER COLUMN id SET DEFAULT nextval('web_cat_foro_id_seq'::regclass);
 >   ALTER TABLE public.web_cat_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    192    191                       2604    18154    id    DEFAULT     l   ALTER TABLE ONLY web_cat_producto ALTER COLUMN id SET DEFAULT nextval('web_cat_producto_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    194    193                       2604    18155    id    DEFAULT     l   ALTER TABLE ONLY web_cat_servicio ALTER COLUMN id SET DEFAULT nextval('web_cat_servicio_id_seq'::regclass);
 B   ALTER TABLE public.web_cat_servicio ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    196    195                       2604    18156    id    DEFAULT     b   ALTER TABLE ONLY web_cliente ALTER COLUMN id SET DEFAULT nextval('web_cliente_id_seq'::regclass);
 =   ALTER TABLE public.web_cliente ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    198    197                        2604    18157    id    DEFAULT     h   ALTER TABLE ONLY web_comentario ALTER COLUMN id SET DEFAULT nextval('web_comentario_id_seq'::regclass);
 @   ALTER TABLE public.web_comentario ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    200    199            !           2604    18158    id    DEFAULT     h   ALTER TABLE ONLY web_cotizacion ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_id_seq'::regclass);
 @   ALTER TABLE public.web_cotizacion ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    204    201            "           2604    18159    id    DEFAULT     x   ALTER TABLE ONLY web_cotizacion_detalle ALTER COLUMN id SET DEFAULT nextval('web_cotizacion_detalle_id_seq'::regclass);
 H   ALTER TABLE public.web_cotizacion_detalle ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    203    202            #           2604    18160    id    DEFAULT     d   ALTER TABLE ONLY web_elmolino ALTER COLUMN id SET DEFAULT nextval('web_elmolino_id_seq'::regclass);
 >   ALTER TABLE public.web_elmolino ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    206    205            $           2604    18161    id    DEFAULT     \   ALTER TABLE ONLY web_foro ALTER COLUMN id SET DEFAULT nextval('web_foro_id_seq'::regclass);
 :   ALTER TABLE public.web_foro ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    208    207            %           2604    18162    id    DEFAULT     b   ALTER TABLE ONLY web_galeria ALTER COLUMN id SET DEFAULT nextval('web_galeria_id_seq'::regclass);
 =   ALTER TABLE public.web_galeria ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    210    209            &           2604    18163    id    DEFAULT     \   ALTER TABLE ONLY web_menu ALTER COLUMN id SET DEFAULT nextval('web_menu_id_seq'::regclass);
 :   ALTER TABLE public.web_menu ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    212    211            '           2604    18164    id    DEFAULT     `   ALTER TABLE ONLY web_oferta ALTER COLUMN id SET DEFAULT nextval('web_oferta_id_seq'::regclass);
 <   ALTER TABLE public.web_oferta ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    214    213            (           2604    18165    id    DEFAULT     d   ALTER TABLE ONLY web_producto ALTER COLUMN id SET DEFAULT nextval('web_producto_id_seq'::regclass);
 >   ALTER TABLE public.web_producto ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    216    215            *           2604    18166    id    DEFAULT     d   ALTER TABLE ONLY web_siguenos ALTER COLUMN id SET DEFAULT nextval('web_siguenos_id_seq'::regclass);
 >   ALTER TABLE public.web_siguenos ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    220    219            +           2604    18167    id    DEFAULT     d   ALTER TABLE ONLY web_variedad ALTER COLUMN id SET DEFAULT nextval('web_variedad_id_seq'::regclass);
 >   ALTER TABLE public.web_variedad ALTER COLUMN id DROP DEFAULT;
       public       elmolino    false    222    221            	          0    17981 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       elmolino    false    170   �4      i	           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 3, true);
            public       elmolino    false    171            	          0    17986    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       elmolino    false    172   �4      j	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 142, true);
            public       elmolino    false    173            	          0    17991    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       elmolino    false    174   �5      k	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 69, true);
            public       elmolino    false    175            	          0    17996 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       elmolino    false    176   �8      	          0    17999    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       elmolino    false    177   �9      l	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       elmolino    false    178            m	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       elmolino    false    179            	          0    18006    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       elmolino    false    180   �9      n	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       elmolino    false    181            	          0    18011    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       elmolino    false    182   �9      o	           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 123, true);
            public       elmolino    false    183            !	          0    18020    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       elmolino    false    184   aC      p	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 23, true);
            public       elmolino    false    185            #	          0    18025    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       elmolino    false    186   �D      q	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 35, true);
            public       elmolino    false    187            %	          0    18033    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       elmolino    false    188   OG      &	          0    18039    web_carrito 
   TABLE DATA               g   COPY web_carrito (id, codigo, fecha, cantidad, product_id, servicio_id, usuario_id, total) FROM stdin;
    public       elmolino    false    189   �J      r	           0    0    web_carrito_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_carrito_id_seq', 42, true);
            public       elmolino    false    190            (	          0    18044    web_cat_foro 
   TABLE DATA               ^   COPY web_cat_foro (id, fecha, nombre, descripcion, cat_foro_padre_id, cliente_id) FROM stdin;
    public       elmolino    false    191   K      s	           0    0    web_cat_foro_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_cat_foro_id_seq', 1, true);
            public       elmolino    false    192            *	          0    18049    web_cat_producto 
   TABLE DATA               A   COPY web_cat_producto (id, nombre, imagen_cat, tipo) FROM stdin;
    public       elmolino    false    193   KK      t	           0    0    web_cat_producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_producto_id_seq', 4, true);
            public       elmolino    false    194            ,	          0    18054    web_cat_servicio 
   TABLE DATA               C   COPY web_cat_servicio (id, nombre, codigo, imagen_cat) FROM stdin;
    public       elmolino    false    195   �K      u	           0    0    web_cat_servicio_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('web_cat_servicio_id_seq', 1, true);
            public       elmolino    false    196            .	          0    18059    web_cliente 
   TABLE DATA               Z   COPY web_cliente (id, nombre, apellido, correo, cedula, telefono, usuario_id) FROM stdin;
    public       elmolino    false    197   �K      v	           0    0    web_cliente_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('web_cliente_id_seq', 1, true);
            public       elmolino    false    198            0	          0    18064    web_comentario 
   TABLE DATA               r   COPY web_comentario (id, tema, fecha, descripcion, cproducto_id, cusuario_id, cservicio_id, cforo_id) FROM stdin;
    public       elmolino    false    199   QL      w	           0    0    web_comentario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('web_comentario_id_seq', 6, true);
            public       elmolino    false    200            2	          0    18072    web_cotizacion 
   TABLE DATA               E   COPY web_cotizacion (id, costo_total, fecha, cliente_id) FROM stdin;
    public       elmolino    false    201   gM      3	          0    18075    web_cotizacion_detalle 
   TABLE DATA               v   COPY web_cotizacion_detalle (id, cantidad, valor_unitario, cotizacion_id, product_id, servicio_id, total) FROM stdin;
    public       elmolino    false    202   �M      x	           0    0    web_cotizacion_detalle_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('web_cotizacion_detalle_id_seq', 22, true);
            public       elmolino    false    203            y	           0    0    web_cotizacion_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('web_cotizacion_id_seq', 18, true);
            public       elmolino    false    204            6	          0    18082    web_elmolino 
   TABLE DATA               `   COPY web_elmolino (id, correo, direccion, historia, mision, telefono, vision, mapa) FROM stdin;
    public       elmolino    false    205   %N      z	           0    0    web_elmolino_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_elmolino_id_seq', 2, true);
            public       elmolino    false    206            8	          0    18090    web_foro 
   TABLE DATA               `   COPY web_foro (id, fecha, tema, ccomentario, cat_foro_id, usuario_id, coment_small) FROM stdin;
    public       elmolino    false    207   �Q      {	           0    0    web_foro_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_foro_id_seq', 3, true);
            public       elmolino    false    208            :	          0    18095    web_galeria 
   TABLE DATA               2   COPY web_galeria (id, imagen, activa) FROM stdin;
    public       elmolino    false    209   �R      |	           0    0    web_galeria_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('web_galeria_id_seq', 2, true);
            public       elmolino    false    210            <	          0    18100    web_menu 
   TABLE DATA               H   COPY web_menu (id, nombre, url, nivel, padre_id, acceso_id) FROM stdin;
    public       elmolino    false    211   3S      }	           0    0    web_menu_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('web_menu_id_seq', 9, true);
            public       elmolino    false    212            >	          0    18105 
   web_oferta 
   TABLE DATA               1   COPY web_oferta (id, nombre, imagen) FROM stdin;
    public       elmolino    false    213   �S      ~	           0    0    web_oferta_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('web_oferta_id_seq', 3, true);
            public       elmolino    false    214            @	          0    18113    web_producto 
   TABLE DATA               �   COPY web_producto (id, codigo, nombre, nombre_comun, nombre_cientifico, altura_maxima, agua, sol, crecimiento, detalle, costo, cantidad, imagen, cat_producto_id, variedad_id) FROM stdin;
    public       elmolino    false    215   9T      	           0    0    web_producto_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_producto_id_seq', 4, true);
            public       elmolino    false    216            C	          0    18123    web_servicio 
   TABLE DATA               b   COPY web_servicio (id, codigo, nombre, costo, cat_servicio_id, duracion, descripcion) FROM stdin;
    public       elmolino    false    218   �]      �	           0    0    web_servicio_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_servicio_id_seq', 1, true);
            public       elmolino    false    217            D	          0    18130    web_siguenos 
   TABLE DATA               5   COPY web_siguenos (id, red, url, imagen) FROM stdin;
    public       elmolino    false    219   �]      �	           0    0    web_siguenos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_siguenos_id_seq', 2, true);
            public       elmolino    false    220            F	          0    18138    web_variedad 
   TABLE DATA               ]   COPY web_variedad (id, nombre, origen, situacion, cultivo, poda, multiplicacion) FROM stdin;
    public       elmolino    false    221   *^      �	           0    0    web_variedad_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('web_variedad_id_seq', 1, true);
            public       elmolino    false    222            .           2606    18170    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         elmolino    false    170    170            4           2606    18172 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         elmolino    false    172    172    172            6           2606    18174    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         elmolino    false    172    172            0           2606    18176    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         elmolino    false    170    170            9           2606    18178 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         elmolino    false    174    174    174            ;           2606    18180    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         elmolino    false    174    174            D           2606    18182    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         elmolino    false    177    177            F           2606    18184 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         elmolino    false    177    177    177            =           2606    18186    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         elmolino    false    176    176            J           2606    18188    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         elmolino    false    180    180            L           2606    18190 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         elmolino    false    180    180    180            @           2606    18192    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         elmolino    false    176    176            P           2606    18194    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         elmolino    false    182    182            R           2606    18196 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         elmolino    false    184    184    184            T           2606    18198    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         elmolino    false    184    184            V           2606    18200    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         elmolino    false    186    186            Y           2606    18202    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         elmolino    false    188    188            _           2606    18204    web_carrito_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_pkey;
       public         elmolino    false    189    189            c           2606    18206    web_cat_foro_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_pkey;
       public         elmolino    false    191    191            e           2606    18208    web_cat_producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_producto
    ADD CONSTRAINT web_cat_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_producto DROP CONSTRAINT web_cat_producto_pkey;
       public         elmolino    false    193    193            g           2606    18210    web_cat_servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY web_cat_servicio
    ADD CONSTRAINT web_cat_servicio_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_cat_servicio DROP CONSTRAINT web_cat_servicio_pkey;
       public         elmolino    false    195    195            j           2606    18212    web_cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_pkey;
       public         elmolino    false    197    197            p           2606    18214    web_comentario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_pkey;
       public         elmolino    false    199    199            x           2606    18216    web_cotizacion_detalle_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_detalle_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_detalle_pkey;
       public         elmolino    false    202    202            s           2606    18218    web_cotizacion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_pkey;
       public         elmolino    false    201    201            z           2606    18220    web_elmolino_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_elmolino
    ADD CONSTRAINT web_elmolino_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_elmolino DROP CONSTRAINT web_elmolino_pkey;
       public         elmolino    false    205    205            ~           2606    18222    web_foro_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_pkey;
       public         elmolino    false    207    207            �           2606    18224    web_galeria_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY web_galeria
    ADD CONSTRAINT web_galeria_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.web_galeria DROP CONSTRAINT web_galeria_pkey;
       public         elmolino    false    209    209            �           2606    18226    web_menu_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         elmolino    false    211    211            �           2606    18228    web_oferta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY web_oferta
    ADD CONSTRAINT web_oferta_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.web_oferta DROP CONSTRAINT web_oferta_pkey;
       public         elmolino    false    213    213            �           2606    18230    web_producto_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_pkey;
       public         elmolino    false    215    215            �           2606    18232    web_siguenos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_siguenos
    ADD CONSTRAINT web_siguenos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_siguenos DROP CONSTRAINT web_siguenos_pkey;
       public         elmolino    false    219    219            �           2606    18234    web_variedad_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY web_variedad
    ADD CONSTRAINT web_variedad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.web_variedad DROP CONSTRAINT web_variedad_pkey;
       public         elmolino    false    221    221            ,           1259    18235    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         elmolino    false    170            1           1259    18236    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         elmolino    false    172            2           1259    18237    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         elmolino    false    172            7           1259    18238    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         elmolino    false    174            A           1259    18239    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         elmolino    false    177            B           1259    18240    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         elmolino    false    177            G           1259    18241 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         elmolino    false    180            H           1259    18242 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         elmolino    false    180            >           1259    18243    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         elmolino    false    176            M           1259    18244    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         elmolino    false    182            N           1259    18245    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         elmolino    false    182            W           1259    18246    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         elmolino    false    188            Z           1259    18247 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         elmolino    false    188            [           1259    18248    web_carrito_4bb699dc    INDEX     L   CREATE INDEX web_carrito_4bb699dc ON web_carrito USING btree (servicio_id);
 (   DROP INDEX public.web_carrito_4bb699dc;
       public         elmolino    false    189            \           1259    18249    web_carrito_9bea82de    INDEX     K   CREATE INDEX web_carrito_9bea82de ON web_carrito USING btree (product_id);
 (   DROP INDEX public.web_carrito_9bea82de;
       public         elmolino    false    189            ]           1259    18250    web_carrito_abfe0f96    INDEX     K   CREATE INDEX web_carrito_abfe0f96 ON web_carrito USING btree (usuario_id);
 (   DROP INDEX public.web_carrito_abfe0f96;
       public         elmolino    false    189            `           1259    18251    web_cat_foro_4a860110    INDEX     M   CREATE INDEX web_cat_foro_4a860110 ON web_cat_foro USING btree (cliente_id);
 )   DROP INDEX public.web_cat_foro_4a860110;
       public         elmolino    false    191            a           1259    18252    web_cat_foro_58c8bbca    INDEX     T   CREATE INDEX web_cat_foro_58c8bbca ON web_cat_foro USING btree (cat_foro_padre_id);
 )   DROP INDEX public.web_cat_foro_58c8bbca;
       public         elmolino    false    191            h           1259    18253    web_cliente_abfe0f96    INDEX     K   CREATE INDEX web_cliente_abfe0f96 ON web_cliente USING btree (usuario_id);
 (   DROP INDEX public.web_cliente_abfe0f96;
       public         elmolino    false    197            k           1259    18402    web_comentario_bac19c31    INDEX     O   CREATE INDEX web_comentario_bac19c31 ON web_comentario USING btree (cforo_id);
 +   DROP INDEX public.web_comentario_bac19c31;
       public         elmolino    false    199            l           1259    18254    web_comentario_df783f9a    INDEX     S   CREATE INDEX web_comentario_df783f9a ON web_comentario USING btree (cservicio_id);
 +   DROP INDEX public.web_comentario_df783f9a;
       public         elmolino    false    199            m           1259    18255    web_comentario_ed3f3234    INDEX     R   CREATE INDEX web_comentario_ed3f3234 ON web_comentario USING btree (cusuario_id);
 +   DROP INDEX public.web_comentario_ed3f3234;
       public         elmolino    false    199            n           1259    18256    web_comentario_f8cbbb71    INDEX     S   CREATE INDEX web_comentario_f8cbbb71 ON web_comentario USING btree (cproducto_id);
 +   DROP INDEX public.web_comentario_f8cbbb71;
       public         elmolino    false    199            q           1259    18257    web_cotizacion_4a860110    INDEX     Q   CREATE INDEX web_cotizacion_4a860110 ON web_cotizacion USING btree (cliente_id);
 +   DROP INDEX public.web_cotizacion_4a860110;
       public         elmolino    false    201            t           1259    18258    web_cotizacion_detalle_1b44b901    INDEX     d   CREATE INDEX web_cotizacion_detalle_1b44b901 ON web_cotizacion_detalle USING btree (cotizacion_id);
 3   DROP INDEX public.web_cotizacion_detalle_1b44b901;
       public         elmolino    false    202            u           1259    18259    web_cotizacion_detalle_4bb699dc    INDEX     b   CREATE INDEX web_cotizacion_detalle_4bb699dc ON web_cotizacion_detalle USING btree (servicio_id);
 3   DROP INDEX public.web_cotizacion_detalle_4bb699dc;
       public         elmolino    false    202            v           1259    18260    web_cotizacion_detalle_9bea82de    INDEX     a   CREATE INDEX web_cotizacion_detalle_9bea82de ON web_cotizacion_detalle USING btree (product_id);
 3   DROP INDEX public.web_cotizacion_detalle_9bea82de;
       public         elmolino    false    202            {           1259    18261    web_foro_abfe0f96    INDEX     E   CREATE INDEX web_foro_abfe0f96 ON web_foro USING btree (usuario_id);
 %   DROP INDEX public.web_foro_abfe0f96;
       public         elmolino    false    207            |           1259    18262    web_foro_d79f22b7    INDEX     F   CREATE INDEX web_foro_d79f22b7 ON web_foro USING btree (cat_foro_id);
 %   DROP INDEX public.web_foro_d79f22b7;
       public         elmolino    false    207            �           1259    18263    web_menu_c17c11db    INDEX     C   CREATE INDEX web_menu_c17c11db ON web_menu USING btree (padre_id);
 %   DROP INDEX public.web_menu_c17c11db;
       public         elmolino    false    211            �           1259    18264    web_producto_7ae3f7b3    INDEX     R   CREATE INDEX web_producto_7ae3f7b3 ON web_producto USING btree (cat_producto_id);
 )   DROP INDEX public.web_producto_7ae3f7b3;
       public         elmolino    false    215            �           1259    18265    web_producto_f2e63cb8    INDEX     N   CREATE INDEX web_producto_f2e63cb8 ON web_producto USING btree (variedad_id);
 )   DROP INDEX public.web_producto_f2e63cb8;
       public         elmolino    false    215            �           2606    18266 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       elmolino    false    172    2107    174            �           2606    18271 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       elmolino    false    172    2096    170            �           2606    18276 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       elmolino    false    184    2132    174            �           2606    18281 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       elmolino    false    177    170    2096            �           2606    18286 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       elmolino    false    2109    176    177            �           2606    18291 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       elmolino    false    2107    180    174            �           2606    18296 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       elmolino    false    2109    176    180            �           2606    18301 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       elmolino    false    2132    184    182            �           2606    18306 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       elmolino    false    182    176    2109            �           2606    18311 2   web_carrito_product_id_52430f56_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_product_id_52430f56_fk_web_producto_id;
       public       elmolino    false    2185    189    215            �           2606    18316 /   web_carrito_usuario_id_67d75097_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_carrito
    ADD CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_carrito DROP CONSTRAINT web_carrito_usuario_id_67d75097_fk_auth_user_id;
       public       elmolino    false    189    2109    176            �           2606    18321 ?   web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id FOREIGN KEY (cat_foro_padre_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_f_cat_foro_padre_id_6a4ef04258d02094_fk_web_cat_foro_id;
       public       elmolino    false    2147    191    191            �           2606    18326 8   web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cat_foro
    ADD CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id FOREIGN KEY (cliente_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.web_cat_foro DROP CONSTRAINT web_cat_foro_cliente_id_36b02fb8886aef85_fk_auth_user_id;
       public       elmolino    false    191    2109    176            �           2606    18331 /   web_cliente_usuario_id_4da5b857_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cliente
    ADD CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.web_cliente DROP CONSTRAINT web_cliente_usuario_id_4da5b857_fk_auth_user_id;
       public       elmolino    false    2109    197    176            �           2606    18403 7   web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id FOREIGN KEY (cforo_id) REFERENCES web_foro(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cforo_id_43799092f4904b8c_fk_web_foro_id;
       public       elmolino    false    199    207    2174            �           2606    18336 ?   web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id FOREIGN KEY (cproducto_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cproducto_id_5aba82c42d86b8a4_fk_web_producto_id;
       public       elmolino    false    2185    215    199            �           2606    18341 ;   web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_comentario
    ADD CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id FOREIGN KEY (cusuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.web_comentario DROP CONSTRAINT web_comentario_cusuario_id_3a805c28b6a38adb_fk_auth_user_id;
       public       elmolino    false    176    199    2109            �           2606    18346 ?   web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id FOREIGN KEY (cotizacion_id) REFERENCES web_cotizacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizac_cotizacion_id_7cfcfaf3cba73a2d_fk_web_cotizacion_id;
       public       elmolino    false    201    202    2163            �           2606    18351 4   web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion
    ADD CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id FOREIGN KEY (cliente_id) REFERENCES web_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.web_cotizacion DROP CONSTRAINT web_cotizacion_cliente_id_19e8ee13_fk_web_cliente_id;
       public       elmolino    false    2154    197    201            �           2606    18356 ?   web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_cotizacion_detalle
    ADD CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id FOREIGN KEY (product_id) REFERENCES web_producto(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_cotizacion_detalle DROP CONSTRAINT web_cotizacion_d_product_id_5f7368378bef113c_fk_web_producto_id;
       public       elmolino    false    215    2185    202            �           2606    18361 0   web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id FOREIGN KEY (cat_foro_id) REFERENCES web_cat_foro(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_cat_foro_id_755a9ce4_fk_web_cat_foro_id;
       public       elmolino    false    191    2147    207            �           2606    18366 ,   web_foro_usuario_id_164db508_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_foro
    ADD CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_foro DROP CONSTRAINT web_foro_usuario_id_164db508_fk_auth_user_id;
       public       elmolino    false    207    2109    176            �           2606    18371 ,   web_menu_acceso_id_4da5b857_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id FOREIGN KEY (acceso_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_acceso_id_4da5b857_fk_auth_group_id;
       public       elmolino    false    2096    211    170            �           2606    18376 )   web_menu_padre_id_3716f5f9_fk_web_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_menu
    ADD CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id FOREIGN KEY (padre_id) REFERENCES web_menu(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_padre_id_3716f5f9_fk_web_menu_id;
       public       elmolino    false    211    211    2179            �           2606    18381 <   web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id FOREIGN KEY (cat_producto_id) REFERENCES web_cat_producto(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_cat_producto_id_57e44d64_fk_web_cat_producto_id;
       public       elmolino    false    215    2149    193            �           2606    18386 4   web_producto_variedad_id_285d87e9_fk_web_variedad_id    FK CONSTRAINT     �   ALTER TABLE ONLY web_producto
    ADD CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id FOREIGN KEY (variedad_id) REFERENCES web_variedad(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.web_producto DROP CONSTRAINT web_producto_variedad_id_285d87e9_fk_web_variedad_id;
       public       elmolino    false    2189    215    221            	   (   x�3�LL����2�L���2�,JM�,.)JL������ ���      	   �   x���q@!C�un1��K��#�mĊ3����x�ˤ^�����~�9/��E���_!
dB����52�A���1dN����o�o� �E��{ф��^l�^�^\�^.�^���o�o�$�e���I{9��ܤ�<�����Z��e���W�f�ъ�WM٫��զ�ա�ե�����h{��N�^�����C��M��C���؛��1�&{���)�޼^�b��7��7��7��_���I�      	   �  x�m�M��0���)r�Ql!��H
���zN?Ʈ_:;���WU)�8�N]ߟ��q�Ӷ|gR|Kq����o7=����U�8�M�e��@�ϸ|�:̓�Y�l-um��bA[�R,��i�,��m+5q�
q�JH�H!ܙ^k\L����9y?�����z ��Tt�}����������"���X��M��R��C
�o(�5�n79	�����m�Z��Hv���!%ͥ�\"�Ϫ^b�TĜ*�0�1Or_�2ľ�M��0�����E�� h2Xs��v{.s��o���BŒ���V�X�:pQu�X�:��+E2�v~��\�>Q$��z���J�SMHC�5܇�:����� q�>Q� O�>�� �Q��L�G�1v$=�LҼ#y}X�a�V-ȡ�Z]=AT8pW]3qTn��Yx�6����Kt�Wlp�Y$J�´׾"i���79���u�������}N����t�>Gy�G�|�Q�1/��M��p9N*bbJ�'I1��dK,H1ļW+7�m�*�2B$@�^����O%��� Wl]��K�z�tн�4��i��G7�e�+v���
���S(8��F�}/e�2�x��mk�w�B�h��!�`���<�l|�6�m�|Mb�Ť�3I�&��c�G\����b%���0F@)�_L�R�]��x�i^�/慱m�{I=�H�_�D�D��/k���      	      x�m�_K�0���S졯mo�$M���t��a�D����kI[e~z3� ���p��ѐ�yI^�:!����9�n�墺�Jӑ�����9���[Y2�������y�iAl��,pu����Sp�MhH:��rD���N�V�ٽ���t��XL�.�\`=b�ɇ'a�@M�0��r�~�A�^��z���*>M��8�)Z���L"��L����#>���Dɴ����P��;��Ι�b����Z�      	      x������ � �      	      x������ � �      	   b	  x��Y�ۺ��}
?@�r�����E?p�^ E��v�����k��}��P�m���v�,��^�Cy8<3�����kxo��J�jɹ�k���oif�٨ ��������Z�,����x�ZW�a��@	0+�
t��u����شU�!4�7�`PV���|���m7M��O.*g|���l�@� ��^��g�]���9�D		+�*b��C�ǲ���<0�+IL�M��M0�_�Khr��T���d�M�T��M�by����h@���B ��������6`�ߊvS�S���=�eO#e���D�鳎�έ�H:�d進�Y��Lc�uU�~`ld��b�(�$�؇O��p�r/�@�!�\���h�_!�D�h�ph�/,P�r����s��U�N�47aA�)��v{fK�����ځ����)@�tT6ī ?�u�������}���nv���[U�G~�y�,��S[|�߫]A�>���u[��?�,�ف��]!ҎE����m�9���᜕���(e@�]�N���䘌�A��)��uf���M[Ҭk��V�d(�<g�St���_��5���vj�\nʅVi`s����>�]��G�@�qV�g�uS�u�39+�  <g�T`)3	��'��#%��f,��W�+�tJ �k����b�.v�q�"�Ͽ���8Eu�$Ɉ���9�}�,�;Rf�,����#�U7�%4���D����+�"���z��U��!M�o*�:�x,��SS�v�Mۖ�ZX�;�7�奸m�]�/2#�<�!6����j�W��5�}�@�󩬛�@�:��)�$}J�w�x��kщ�w����s���1�ƽ�&��h��if	��ؾ=��ݵ�7��a��2�� 3BLr�a�V{V�꩒�2+TLVkT���L�zJ�J6�IC�d��9G� 1t�	I	��O�SA7�0�Lt��U��:�te�J2ǚ��:���"?�kZ��ɡ�l�O����M�>�x18(���`��g�ix�}��HI��9�\a��ؕ�*Нոs[Ô��R�7�'袠���2>�"z���(��dl�J)Z裬O�7�'���[��E��8�7tc0���*��$�JL~�w?�d6�fl��8,�ۢ>^&e$>���	ۇN l�C�]-w'V���������(�����ڴ;��|�C���n���C(6sg1:' �!Ut�?�1`�l���E�� ZR��֢�'��\��DA�[$��ަ�a�D���C��l;�\e�(�H�#��t���Ӷi������4C��L��|CI��`u�Gz2s�/��S6
��
��G7��&s�7������!��o�^��*T*.�8��۞О�/%�e$U�!Aw�.�7s�����3��`�o
̏eN���#�3q�_�ˏ��ݲD�PQ�}v/6��f �g�*Dc��������<�֧)Y[�3f�e��g�%.�Cz�z����\ �met�qf���)�h�kU�xRv�B��7�	��ԫ,8e��#bJ>�����ɧa���r����'��vM���w"P�n�1���t�2�mn��(Yܾ��KWSi�yW�D�@[��1��R���f�3�����j���8N�i��G�]~��V�9Kı�F� ^��b����bG�@%>{l�Fw=Ƕ�^ 'X؉���GӾmݼd#S��r]���-L�2�خ�2>7�0FɈ��%c�!�T7!�)#x�q:���b�3�I��1ڻ�0���(Y�Ć�|��������n�j�����}A��X�e���%9t�MR��!J��Ba�f�o�K�*I���IߠK>���L�htX�+M�!�N9��������ZG�;�tn:!��ȗ�^�Ҷ[yx�J��)������P\rPJ#��Q�<����֦źh�t���Zb�ґrFc^�+h�$�7ģ�.ܛḦ��RB��w��Y���m�/����V�i����L�w������xQ���Ռ���u�7q��ʒ޷؅]~j��*D?�d�M��K>�>�]�V�喊�*�̸ q�.�ki?��F8Y��������D�t([Փ�e��8�B��"�]f�ߥP5� }^]�V��˿��6�z�mנaZ�(Мd�����\v��]Y�vtM�8�G�"6�����n!6Sbe�C����6�QRNV��c:�)xK�/�xmR)j���X�f7eF:[�֏�����^��܉��9�a�g�$c�M���7��g�
��_
��:w�y�(�r��
0�/��-���j3Y�d�;OD�ٚ��SM��M�?��7��A�٤:eL�o�b��`��.�i�i����s�N:��龎3Z�9)y~��5#���Ź����/����?OF5<      !	     x�]�Yn�0D��S�E��w)�2��-CK����b�N�4o��(
0����T7� J���=�T����Ʃ�E��'W���ڎ!]���d���g�T_�O�^@Nu?��4^�S��b7�h]��֖��bo��R��~�浳($��kpH����\�(�釁���*ɂ(N�w�1����(�e��u�XP\`1�qM�CZPZ�\� ��ʐcU�Y��C*���� 2�5<�+��`�B���<��F��Zf��D��4Ј      #	   �  x���Kn�0�}
_ �<8|����:B* ��n��w(���m6��g�3?Gx8�ín���t  l������� ����	C��(O�G|9ҡ��~�_�ˀ��� ����n��q���"P��~u��	bBo����U@��il�)��b�	%	�z&�!f��e^ېX�7.�1�P�m�����csi?�N�y�<W>V&�Կݻa���Ҿu��hPOC�U��<^�������u|��o�3'H ���hx�X�_��t�M6a4@�����êR�d�`��h{\(Ks��3�[l��D,3������� ue��P��Dd�i��5M���i��h�q�#�5YH͹�5Sw�ٟ�f�vm9-�!�ʾk���KG
[��ly륔����Yu�#�1)Ǯ!C����-�V[�նa�5՜��`����Ԇ�L�	�.c���k�3F�i�������[�6�;.+�r7q�����"e���߶4�-.XN��9c�+�dۊ���e%�9�Bn�j#��j�5�� ����$y�Vdq-�	t�x͘
�ࣰ�v�1摙��(:WV��(Y�Ι&_�� r.�|��v��1��IR��]�o���¸7IXvp�ǹ�L{��aݮeB(��yo�,�������� Yc��ޑ�}�mv��ɘ��
��	E�Td������?E���      %	   ^  x��ݎ�6��g�"/0�?؎���ѤI�e������q$���ɴR�V��zsz��0���������4�y��������������-���?��z��]:�_L`2�/VU(7������V�I(��7!���D�̖����{}��x17���.��ׇ�
v����������L��z��ه��T�^Uh�7��U~�A<�0E���D��Ub���J�z�Ehڅ�wٯ�sX�����[�C�[��_6z.c�����o�<��䜿  �@oL��#�#̡���J^qVaXv��}�uL��f8�ˮ/VG��}i=�HV"��=���B�ҡ�n�ط�"�C�`�oܶ����F�}4W�e(�~�㛕����PoU4�z��z�_s[���@��a�0��s��ͭ3�����JEnj~��(�/�K(�����r�g�Y/�8�Eʗ�Zj�6K�2H��Y�����)�.�K�r[&�R�5�'&�KIWw'm�/D<I�L �0�s�L��-U\��l���6Z��d�zl*:>O�y.�\�@F1D���d��mܴ����pI�ͨӑf"��L=D�����i״��&堫�#������xؖ{�9�wm�	M�1Dߴ�zV`�Y�����)�����	�6,�u9����cW���.L���H������zj��=q0��}�t�X�T�┷�Ҏ�[�4O��w�x.t�=Zәw��W��"39g��u��g�����Wk�֧w��k��r��+�$9�{j4/�[��Hh{,���7�&y6��:.B?��x,��H0�"�z��-��"���g��_�\;mwt�)����9������.�      &	   7   x�34�4�4204�50�50�4�4���p��J�$!R�躠�\1z\\\ O�Q      (	   7   x�3�4204�50�50���/�L�L,��2
��s�3��R�9c�8�b���� ��3      *	   h   x�3���+I-��/J-�LN,�/(�O)M.�/�τJ�e�s�yrqz%�d�a(L-FUh��Z���T�PY*X�	gFfJQ~A~^fr>�B��^A^:�G(W� ��<      ,	   )   x�3�,�OI�000�,N-*�L���	�e�r��qqq ��
(      .	   E   x�3�H,���O��O�,H��L��,v(���L�MM��/J�40401736���41�0245�4����� F_E      0	     x��VAj�0<[���h�U#�������E`K�����'5%�B����0̀�V�a
G_)�f#q�,(�q|�f��{�6�!�~��!X!��Ћ)�xVl��1���%����cl�?3M�ss
g(`�T��tt�;\�As*�褮-�V�9�����?%^�#崭�Yh;�M�SHb�����yP��������i��FCh���G��ga]��� e�ד���F�n�ZoXl��\��J/������B\ 	�p      2	   3   x�34�43�4204�50�54�4�24�2�2�2�2�������� /      3	   k   x�E���0D�3��b!�&R���#rV����r�C�.�W��=`O�z(�����!h
��6��R���T#�5J�QjR�Tq�,��f*kT�*�Q�ʌ*R�U���(�      6	   _  x�]T�n�6>;O1�Y���Xo�âŢ��S/45�P�JRN�o��r(�֫^lg(�I+@9���7.g����GuDgQwV+c3i���1�߅n����f	�P�k8A/��G�u���GFgR�:����[�a?x�Zx�0��'�AP�`��w�W�S"4 ���OC��"K�uʑ=��\Jh�Z�	Huq8�@���J<[:�2XN���Tt�n?>%��|>�O0l��V);e���Me�TC+Z��1�p1�HA��/���3��tJ�]���;������� G���_�Έ����$Wd��?>N�:l�x�6)�����.�z��V_�����I��*��?< �2�Q��r/\��>���L�� c%�����։���X��mcS)�O�!� ��(Q���!2#�[?>C`������J���Fq�QJ0��p[R���D�}r�8��Lک�����DP~'�L@C��l=�|A=�I-��V�|[F��"�D20������hٔ� M�	#|�8�H]+O��}��|7>x�G�ýFC��f?4��G(�|�7�z��мoġ/���%��
���r@8���4����B���i�[e��mO�i�(�y�f�1r������ߩ|^rv�R�4	#�{�1�31҉�a�*'G�ZKz^���{�#RNn�z�n�xxx����5��֢�_`����~�I�������*)�j�Zg�zu����Y6eR���U���I��N��:Ϫj�,����WI�1vyR�[��Q\U�e��jy�J�]QeE��Y��'%�8��E]6uQ���,���p�̫:����6�Klqk]�n3��'���$y��?�_L0|��+�����  �      8	   K  x��رN�0��9y�{ Z%),�F&��r���$ǎl'ަ#���i
*��S�&����U�T�ŢjU]\�j/��͎����k��ղ�*�؉Q�4�V[�g��Z�9N�q�[q��k�F��Y��:H�і'by��F�wG~�F�z���W����fٜ�h��I~�,�T�;&�����W���E	�Ih5ɴ�_+�>R+�����cw㓏�K5~[�?���UL��0i�C9�C9�>s����&���x8w;ު���Ҡ�O���[u>?{�k�xG�׋΀��qZ��;�L�������������������?�����|X�e���      :	   4   x�3�LO�I-�L�7�M
�5�w��*H�,�2���We��:g8Beb���� 	{�      <	   �   x�=��
�0�ϓ��	,i�=KAz)x*HAi"���w۬�f�fgw5.�[�PA���V5�G#�WQ��~r�|**|���4�Ȩ��J�EV�|���XI�8��M&��ku����!��#������3+�%i��	�y��Z)�N�=7      >	   S   x�3�,�,K-���Ӈ0���"s����
ҹ�83JS�J@�Fq�YTTTd�1Xژ�8��,39� ƌ�I��J4������� �� _      @	   9	  x�}XMo�=����z&�_���Uv���l9�ݜ
l�M6'����h:,|sr��cy��-�$�au��Q��ի�֋˓���G[����#/�Zm�Qe��^��i?h�����:;�%sm����c�vk������+u�]�j���x��M��2�7U��>�&t�'�#g�ԵN����&��mQ:�9��.��M4�cF��BT{��t���u��٤�ӫ��31��W5�7:U*Yx�9��kӱ,�������Q]�p��^sX;��q�J�itG=m��daz�3�6�>X
6��Q>`���>���kg�v��b�k;�Ǝ�js�k\�c=�j�[zHԷ�obP�lJt���s�za��@��]�AV�;s�}k�������r����+����#���5�?�7^��]�olO$T4o�� Є����[�eHm�c�1�51SpʶZh�af�����u�� �˝iu�R/��W�pa�ؖ�iG�a_�T+��������&�_�r�^���t�L�a�nM���k�|���;�iX�0�V��)���67��g��~�X/��N������0���[���0��K���+�&~���v`�1V08�����9p����_tpo@����]PpI�:�P�]��J�{��r�0~�L>�3!���A��:�jq^�F٭�Hi��[�R3����n�h6L���E;B�z���s�2 ���^5d@�W�
v9����΅�d7v�D�� <�+��=�I��3�I�1�� H����"����o��9��<&����g�N_[��3��/mH��$;ela�"�*uɉ��|�վ�A�t�Q4�"HV0 �[��I�i"P<s��^�퐨��_7�Wr6>�B��<���9v$����"i_ %�B=
᜜P����%JV�r+Y�H�쯗�p6~�~��L]�`+�3.d�d��]jЋ���@w�!����ګ+��v��v83��r�b�2u�lYI��d��&ʛ�-`ցa!:���r�}�\oL�+j=�\�,q,ѳ����Mn-'�D~�~�A��ݬI�~2ѓ*�zf�k���Mo��P�����Sd�U��2V��o���q�1��m2% w�(�a��{�!��B�ji��jȈ�]`*�}����jG����f�i�8��5��Zw57�T{)>9�B���=����s*���m���2nf!;~�W�Q�E��sE��14�`J�[��p<[��O�ݙXO��a���ό�j1� � mڕ �����]N��{� �4=&SY^0�(�Coo!J+j��p�)��6zx�$:	VeU�2QO��=[�\PC h��C��Abl�R��f����4�x�3�mOX�B�c�e<��(�	 �l�0�p5�B�O�����F��_�N�P":�Pܝޠҡ��Ը�Rá�rh�&���L�]zR��f�FU��=�����_���M4F6D�M�/P�eh0�$	�(]v���Ǯ�ro�9@��eE2pS7����吃QQ찹��`��XtoӖ��9�y�͖D0�0��A�Âd�Rڽ���줫cK(�H�C�$�pO��˂R/��Ne�nWL�HC�Eg7hp�Ҏi&��� ����=���� h|i�8���ZV1D�e|��-�z��܁~dZf��t�臨e'���Uϋ7�0Lw��JA��,��鼄�{��F�97��8��]	�b�%>=P?��~�����D�!OK���O2h*��rQF�im��V"�����7OOE*$�0Jiژ���t��	!�R��2�!L	��Y���i��:؞<D��頾�A�X�M5-�l/*��Ug7O�Y��W#͞4�rH�;]�������?;o��w�����K~z_=T��c��%f׸F��a�{��ٱ��]|V��+ѴC:������tɳ	��K3\���?�+�����4�P ��H sٿ�
c�jH���ġ����aR�PSÒ::dW�w?�$���hڀ�/�����I�����u��6����O{�V��$aF��\U
�kh3����@J5Q.��O:!Y�����K}��H���MIau,�;f$��f?�,W`/���a-�g��.˔�l�lȵ��Iu�<����/��W�� v:�?�?)�Ə	�@�Ҹ['��k�vZ��B0�F�}�׭��%��`�Z�d����VJ��n���E�ah��Jn7� �C4~�?���C=э�H�Y}|�K&�!T��>3���#��Ŏ��$Zb�X<��&j\4�F/�0�g�����;�_�~�������w�� ���l      C	   B   x�3�,H400��OITp,J��I-�4�4�4�3U��/J,�H��*���+�d�8��\1z\\\ ��.      D	   F   x�3�LKLNM�����())�����z����E�)�iIzy�\��%�%%�E0�P.\]I9X]� k�      F	      x�3�tO,JI��L$������ {V�     