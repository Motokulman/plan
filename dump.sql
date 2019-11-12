PGDMP                     
    w         	   postgres2    12.0    12.0 �   H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    18022 	   postgres2    DATABASE     �   CREATE DATABASE postgres2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE postgres2;
                postgres    false            �            1259    18054 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    18052    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            L           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    18064    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    18062    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            M           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    18046    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    18044    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            N           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    18072 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    18082    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    18080    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            O           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    18070    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            P           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    18090    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    18088 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            Q           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    18180    catalog_application    TABLE     �   CREATE TABLE public.catalog_application (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 '   DROP TABLE public.catalog_application;
       public         heap    postgres    false            �            1259    18178    catalog_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.catalog_application_id_seq;
       public          postgres    false    221            R           0    0    catalog_application_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.catalog_application_id_seq OWNED BY public.catalog_application.id;
          public          postgres    false    220            �            1259    18190    catalog_bindersolutiontype    TABLE     �   CREATE TABLE public.catalog_bindersolutiontype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 .   DROP TABLE public.catalog_bindersolutiontype;
       public         heap    postgres    false            �            1259    18188 !   catalog_bindersolutiontype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_bindersolutiontype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.catalog_bindersolutiontype_id_seq;
       public          postgres    false    223            S           0    0 !   catalog_bindersolutiontype_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.catalog_bindersolutiontype_id_seq OWNED BY public.catalog_bindersolutiontype.id;
          public          postgres    false    222            �            1259    18200    catalog_city    TABLE     h   CREATE TABLE public.catalog_city (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
     DROP TABLE public.catalog_city;
       public         heap    postgres    false            �            1259    18198    catalog_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.catalog_city_id_seq;
       public          postgres    false    225            T           0    0    catalog_city_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.catalog_city_id_seq OWNED BY public.catalog_city.id;
          public          postgres    false    224                       1259    26724    catalog_classblight    TABLE     �   CREATE TABLE public.catalog_classblight (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 '   DROP TABLE public.catalog_classblight;
       public         heap    postgres    false                       1259    26722    catalog_classb_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_classb_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.catalog_classb_id_seq;
       public          postgres    false    260            U           0    0    catalog_classb_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.catalog_classb_id_seq OWNED BY public.catalog_classblight.id;
          public          postgres    false    259            �            1259    18220    catalog_directproducer    TABLE     r   CREATE TABLE public.catalog_directproducer (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 *   DROP TABLE public.catalog_directproducer;
       public         heap    postgres    false                       1259    26734    catalog_markd    TABLE     �   CREATE TABLE public.catalog_markd (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 !   DROP TABLE public.catalog_markd;
       public         heap    postgres    false                       1259    26732    catalog_markd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_markd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_markd_id_seq;
       public          postgres    false    262            V           0    0    catalog_markd_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_markd_id_seq OWNED BY public.catalog_markd.id;
          public          postgres    false    261                       1259    26744    catalog_markm    TABLE     �   CREATE TABLE public.catalog_markm (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 !   DROP TABLE public.catalog_markm;
       public         heap    postgres    false                       1259    26742    catalog_markm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_markm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.catalog_markm_id_seq;
       public          postgres    false    264            W           0    0    catalog_markm_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.catalog_markm_id_seq OWNED BY public.catalog_markm.id;
          public          postgres    false    263            �            1259    18210    catalog_productbrand    TABLE     p   CREATE TABLE public.catalog_productbrand (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 (   DROP TABLE public.catalog_productbrand;
       public         heap    postgres    false            �            1259    18208    catalog_materialbrand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_materialbrand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catalog_materialbrand_id_seq;
       public          postgres    false    227            X           0    0    catalog_materialbrand_id_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.catalog_materialbrand_id_seq OWNED BY public.catalog_productbrand.id;
          public          postgres    false    226            �            1259    18218    catalog_producer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catalog_producer_id_seq;
       public          postgres    false    229            Y           0    0    catalog_producer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.catalog_producer_id_seq OWNED BY public.catalog_directproducer.id;
          public          postgres    false    228            �            1259    18230    catalog_provider    TABLE     �   CREATE TABLE public.catalog_provider (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    ownership_form character varying(1) NOT NULL,
    primary_activity_id integer
);
 $   DROP TABLE public.catalog_provider;
       public         heap    postgres    false            �            1259    18228    catalog_provider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catalog_provider_id_seq;
       public          postgres    false    231            Z           0    0    catalog_provider_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catalog_provider_id_seq OWNED BY public.catalog_provider.id;
          public          postgres    false    230            �            1259    18351 #   catalog_provider_secondary_activity    TABLE     �   CREATE TABLE public.catalog_provider_secondary_activity (
    id integer NOT NULL,
    provider_id integer NOT NULL,
    provideractivitytype_id integer NOT NULL
);
 7   DROP TABLE public.catalog_provider_secondary_activity;
       public         heap    postgres    false            �            1259    18349 *   catalog_provider_secondary_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_secondary_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.catalog_provider_secondary_activity_id_seq;
       public          postgres    false    255            [           0    0 *   catalog_provider_secondary_activity_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.catalog_provider_secondary_activity_id_seq OWNED BY public.catalog_provider_secondary_activity.id;
          public          postgres    false    254                       1259    18359    catalog_provider_tax_system    TABLE     �   CREATE TABLE public.catalog_provider_tax_system (
    id integer NOT NULL,
    provider_id integer NOT NULL,
    taxsystemtype_id integer NOT NULL
);
 /   DROP TABLE public.catalog_provider_tax_system;
       public         heap    postgres    false                        1259    18357 "   catalog_provider_tax_system_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provider_tax_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.catalog_provider_tax_system_id_seq;
       public          postgres    false    257            \           0    0 "   catalog_provider_tax_system_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.catalog_provider_tax_system_id_seq OWNED BY public.catalog_provider_tax_system.id;
          public          postgres    false    256            �            1259    18240    catalog_provideractivitytype    TABLE     �   CREATE TABLE public.catalog_provideractivitytype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 0   DROP TABLE public.catalog_provideractivitytype;
       public         heap    postgres    false            �            1259    18238 #   catalog_provideractivitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provideractivitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.catalog_provideractivitytype_id_seq;
       public          postgres    false    233            ]           0    0 #   catalog_provideractivitytype_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.catalog_provideractivitytype_id_seq OWNED BY public.catalog_provideractivitytype.id;
          public          postgres    false    232            �            1259    18250    catalog_provideroutlet    TABLE     �   CREATE TABLE public.catalog_provideroutlet (
    id integer NOT NULL,
    local_name character varying(200) NOT NULL,
    information text NOT NULL,
    city_id integer NOT NULL,
    name_id integer NOT NULL,
    owner_id integer
);
 *   DROP TABLE public.catalog_provideroutlet;
       public         heap    postgres    false            �            1259    18248    catalog_provideroutlet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_provideroutlet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.catalog_provideroutlet_id_seq;
       public          postgres    false    235            ^           0    0    catalog_provideroutlet_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.catalog_provideroutlet_id_seq OWNED BY public.catalog_provideroutlet.id;
          public          postgres    false    234            �            1259    18271 %   catalog_rockwallmaterialpriceposition    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialpriceposition (
    id integer NOT NULL,
    price double precision NOT NULL,
    name_id integer NOT NULL,
    owner_id integer
);
 9   DROP TABLE public.catalog_rockwallmaterialpriceposition;
       public         heap    postgres    false            �            1259    18269 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq;
       public          postgres    false    237            _           0    0 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.catalog_rockwallmaterialpriceposition_id_seq OWNED BY public.catalog_rockwallmaterialpriceposition.id;
          public          postgres    false    236            
           1259    26754 $   catalog_rockwallmaterialstandardsize    TABLE       CREATE TABLE public.catalog_rockwallmaterialstandardsize (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    a_size integer NOT NULL,
    b_size integer NOT NULL,
    c_size integer NOT NULL
);
 8   DROP TABLE public.catalog_rockwallmaterialstandardsize;
       public         heap    postgres    false            	           1259    26752 +   catalog_rockwallmaterialstandardsize_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialstandardsize_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.catalog_rockwallmaterialstandardsize_id_seq;
       public          postgres    false    266            `           0    0 +   catalog_rockwallmaterialstandardsize_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.catalog_rockwallmaterialstandardsize_id_seq OWNED BY public.catalog_rockwallmaterialstandardsize.id;
          public          postgres    false    265            �            1259    18279    catalog_rockwallmaterialunit    TABLE     `  CREATE TABLE public.catalog_rockwallmaterialunit (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    a_size integer NOT NULL,
    b_size integer NOT NULL,
    c_size integer NOT NULL,
    thermal_conductivity integer NOT NULL,
    type_size character varying(2) NOT NULL,
    primary_or_additional character varying(1) NOT NULL
);
 0   DROP TABLE public.catalog_rockwallmaterialunit;
       public         heap    postgres    false            �            1259    18287 (   catalog_rockwallmaterialunit_application    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_application (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    application_id integer NOT NULL
);
 <   DROP TABLE public.catalog_rockwallmaterialunit_application;
       public         heap    postgres    false            �            1259    18285 /   catalog_rockwallmaterialunit_application_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.catalog_rockwallmaterialunit_application_id_seq;
       public          postgres    false    241            a           0    0 /   catalog_rockwallmaterialunit_application_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_application_id_seq OWNED BY public.catalog_rockwallmaterialunit_application.id;
          public          postgres    false    240            �            1259    18295 -   catalog_rockwallmaterialunit_binding_solution    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_binding_solution (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    bindersolutiontype_id integer NOT NULL
);
 A   DROP TABLE public.catalog_rockwallmaterialunit_binding_solution;
       public         heap    postgres    false            �            1259    18293 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq;
       public          postgres    false    243            b           0    0 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_binding_solution_id_seq OWNED BY public.catalog_rockwallmaterialunit_binding_solution.id;
          public          postgres    false    242                       1259    26764 $   catalog_rockwallmaterialunit_class_b    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_class_b (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    classblight_id integer NOT NULL
);
 8   DROP TABLE public.catalog_rockwallmaterialunit_class_b;
       public         heap    postgres    false                       1259    26762 +   catalog_rockwallmaterialunit_class_b_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_class_b_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.catalog_rockwallmaterialunit_class_b_id_seq;
       public          postgres    false    268            c           0    0 +   catalog_rockwallmaterialunit_class_b_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.catalog_rockwallmaterialunit_class_b_id_seq OWNED BY public.catalog_rockwallmaterialunit_class_b.id;
          public          postgres    false    267            �            1259    18277 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.catalog_rockwallmaterialunit_id_seq;
       public          postgres    false    239            d           0    0 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.catalog_rockwallmaterialunit_id_seq OWNED BY public.catalog_rockwallmaterialunit.id;
          public          postgres    false    238                       1259    26772 #   catalog_rockwallmaterialunit_mark_d    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_mark_d (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    markd_id integer NOT NULL
);
 7   DROP TABLE public.catalog_rockwallmaterialunit_mark_d;
       public         heap    postgres    false                       1259    26770 *   catalog_rockwallmaterialunit_mark_d_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_mark_d_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.catalog_rockwallmaterialunit_mark_d_id_seq;
       public          postgres    false    270            e           0    0 *   catalog_rockwallmaterialunit_mark_d_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.catalog_rockwallmaterialunit_mark_d_id_seq OWNED BY public.catalog_rockwallmaterialunit_mark_d.id;
          public          postgres    false    269                       1259    26780 #   catalog_rockwallmaterialunit_mark_m    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_mark_m (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    markm_id integer NOT NULL
);
 7   DROP TABLE public.catalog_rockwallmaterialunit_mark_m;
       public         heap    postgres    false                       1259    26778 *   catalog_rockwallmaterialunit_mark_m_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_mark_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.catalog_rockwallmaterialunit_mark_m_id_seq;
       public          postgres    false    272            f           0    0 *   catalog_rockwallmaterialunit_mark_m_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.catalog_rockwallmaterialunit_mark_m_id_seq OWNED BY public.catalog_rockwallmaterialunit_mark_m.id;
          public          postgres    false    271            �            1259    18343 /   catalog_rockwallmaterialunit_reinforcement_type    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_reinforcement_type (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    wallreinforcementtype_id integer NOT NULL
);
 C   DROP TABLE public.catalog_rockwallmaterialunit_reinforcement_type;
       public         heap    postgres    false            �            1259    18341 6   catalog_rockwallmaterialunit_reinforcement_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_reinforcement_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.catalog_rockwallmaterialunit_reinforcement_type_id_seq;
       public          postgres    false    253            g           0    0 6   catalog_rockwallmaterialunit_reinforcement_type_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_reinforcement_type_id_seq OWNED BY public.catalog_rockwallmaterialunit_reinforcement_type.id;
          public          postgres    false    252                       1259    26788 *   catalog_rockwallmaterialunit_standard_size    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_standard_size (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    rockwallmaterialstandardsize_id integer NOT NULL
);
 >   DROP TABLE public.catalog_rockwallmaterialunit_standard_size;
       public         heap    postgres    false                       1259    26786 1   catalog_rockwallmaterialunit_standard_size_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_standard_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.catalog_rockwallmaterialunit_standard_size_id_seq;
       public          postgres    false    274            h           0    0 1   catalog_rockwallmaterialunit_standard_size_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_standard_size_id_seq OWNED BY public.catalog_rockwallmaterialunit_standard_size.id;
          public          postgres    false    273                       1259    26866 /   catalog_rockwallmaterialunit_wall_material_type    TABLE     �   CREATE TABLE public.catalog_rockwallmaterialunit_wall_material_type (
    id integer NOT NULL,
    rockwallmaterialunit_id integer NOT NULL,
    wallmaterialtype_id integer NOT NULL
);
 C   DROP TABLE public.catalog_rockwallmaterialunit_wall_material_type;
       public         heap    postgres    false                       1259    26864 6   catalog_rockwallmaterialunit_wall_material_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_rockwallmaterialunit_wall_material_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.catalog_rockwallmaterialunit_wall_material_type_id_seq;
       public          postgres    false    278            i           0    0 6   catalog_rockwallmaterialunit_wall_material_type_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.catalog_rockwallmaterialunit_wall_material_type_id_seq OWNED BY public.catalog_rockwallmaterialunit_wall_material_type.id;
          public          postgres    false    277            �            1259    18303    catalog_taxsystemtype    TABLE     �   CREATE TABLE public.catalog_taxsystemtype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 )   DROP TABLE public.catalog_taxsystemtype;
       public         heap    postgres    false            �            1259    18301    catalog_taxsystemtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_taxsystemtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catalog_taxsystemtype_id_seq;
       public          postgres    false    245            j           0    0    catalog_taxsystemtype_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.catalog_taxsystemtype_id_seq OWNED BY public.catalog_taxsystemtype.id;
          public          postgres    false    244            �            1259    18313    catalog_trademark    TABLE     �   CREATE TABLE public.catalog_trademark (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    brand_id integer NOT NULL
);
 %   DROP TABLE public.catalog_trademark;
       public         heap    postgres    false            �            1259    18311    catalog_trademark_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_trademark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catalog_trademark_id_seq;
       public          postgres    false    247            k           0    0    catalog_trademark_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catalog_trademark_id_seq OWNED BY public.catalog_trademark.id;
          public          postgres    false    246            �            1259    18323    catalog_trademarkseries    TABLE     �   CREATE TABLE public.catalog_trademarkseries (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    trademark_id integer NOT NULL
);
 +   DROP TABLE public.catalog_trademarkseries;
       public         heap    postgres    false            �            1259    18321    catalog_trademarkseries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_trademarkseries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.catalog_trademarkseries_id_seq;
       public          postgres    false    249            l           0    0    catalog_trademarkseries_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.catalog_trademarkseries_id_seq OWNED BY public.catalog_trademarkseries.id;
          public          postgres    false    248                       1259    26856    catalog_wallmaterialtype    TABLE     �   CREATE TABLE public.catalog_wallmaterialtype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    common_wall_type character varying(1) NOT NULL
);
 ,   DROP TABLE public.catalog_wallmaterialtype;
       public         heap    postgres    false                       1259    26854    catalog_wallmaterialtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_wallmaterialtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.catalog_wallmaterialtype_id_seq;
       public          postgres    false    276            m           0    0    catalog_wallmaterialtype_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.catalog_wallmaterialtype_id_seq OWNED BY public.catalog_wallmaterialtype.id;
          public          postgres    false    275            �            1259    18333    catalog_wallreinforcementtype    TABLE     �   CREATE TABLE public.catalog_wallreinforcementtype (
    id integer NOT NULL,
    identifier character varying(200) NOT NULL,
    name character varying(200) NOT NULL
);
 1   DROP TABLE public.catalog_wallreinforcementtype;
       public         heap    postgres    false            �            1259    18331 $   catalog_wallreinforcementtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalog_wallreinforcementtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.catalog_wallreinforcementtype_id_seq;
       public          postgres    false    251            n           0    0 $   catalog_wallreinforcementtype_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.catalog_wallreinforcementtype_id_seq OWNED BY public.catalog_wallreinforcementtype.id;
          public          postgres    false    250            �            1259    18150    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    18148    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            o           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    18036    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    18034    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            p           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    18025    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    18023    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202                       1259    18495    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            i           2604    18057    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            j           2604    18067    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            h           2604    18049    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            k           2604    18075    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            l           2604    18085    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            m           2604    18093    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            p           2604    18183    catalog_application id    DEFAULT     �   ALTER TABLE ONLY public.catalog_application ALTER COLUMN id SET DEFAULT nextval('public.catalog_application_id_seq'::regclass);
 E   ALTER TABLE public.catalog_application ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            q           2604    18193    catalog_bindersolutiontype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_bindersolutiontype ALTER COLUMN id SET DEFAULT nextval('public.catalog_bindersolutiontype_id_seq'::regclass);
 L   ALTER TABLE public.catalog_bindersolutiontype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            r           2604    18203    catalog_city id    DEFAULT     r   ALTER TABLE ONLY public.catalog_city ALTER COLUMN id SET DEFAULT nextval('public.catalog_city_id_seq'::regclass);
 >   ALTER TABLE public.catalog_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    26727    catalog_classblight id    DEFAULT     {   ALTER TABLE ONLY public.catalog_classblight ALTER COLUMN id SET DEFAULT nextval('public.catalog_classb_id_seq'::regclass);
 E   ALTER TABLE public.catalog_classblight ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            t           2604    18223    catalog_directproducer id    DEFAULT     �   ALTER TABLE ONLY public.catalog_directproducer ALTER COLUMN id SET DEFAULT nextval('public.catalog_producer_id_seq'::regclass);
 H   ALTER TABLE public.catalog_directproducer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    26737    catalog_markd id    DEFAULT     t   ALTER TABLE ONLY public.catalog_markd ALTER COLUMN id SET DEFAULT nextval('public.catalog_markd_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_markd ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            �           2604    26747    catalog_markm id    DEFAULT     t   ALTER TABLE ONLY public.catalog_markm ALTER COLUMN id SET DEFAULT nextval('public.catalog_markm_id_seq'::regclass);
 ?   ALTER TABLE public.catalog_markm ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264            s           2604    18213    catalog_productbrand id    DEFAULT     �   ALTER TABLE ONLY public.catalog_productbrand ALTER COLUMN id SET DEFAULT nextval('public.catalog_materialbrand_id_seq'::regclass);
 F   ALTER TABLE public.catalog_productbrand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            u           2604    18233    catalog_provider id    DEFAULT     z   ALTER TABLE ONLY public.catalog_provider ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_id_seq'::regclass);
 B   ALTER TABLE public.catalog_provider ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    18354 &   catalog_provider_secondary_activity id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_secondary_activity_id_seq'::regclass);
 U   ALTER TABLE public.catalog_provider_secondary_activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            �           2604    18362    catalog_provider_tax_system id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provider_tax_system ALTER COLUMN id SET DEFAULT nextval('public.catalog_provider_tax_system_id_seq'::regclass);
 M   ALTER TABLE public.catalog_provider_tax_system ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            v           2604    18243    catalog_provideractivitytype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provideractivitytype ALTER COLUMN id SET DEFAULT nextval('public.catalog_provideractivitytype_id_seq'::regclass);
 N   ALTER TABLE public.catalog_provideractivitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            w           2604    18253    catalog_provideroutlet id    DEFAULT     �   ALTER TABLE ONLY public.catalog_provideroutlet ALTER COLUMN id SET DEFAULT nextval('public.catalog_provideroutlet_id_seq'::regclass);
 H   ALTER TABLE public.catalog_provideroutlet ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            x           2604    18274 (   catalog_rockwallmaterialpriceposition id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialpriceposition_id_seq'::regclass);
 W   ALTER TABLE public.catalog_rockwallmaterialpriceposition ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    26757 '   catalog_rockwallmaterialstandardsize id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialstandardsize ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialstandardsize_id_seq'::regclass);
 V   ALTER TABLE public.catalog_rockwallmaterialstandardsize ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            y           2604    18282    catalog_rockwallmaterialunit id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_id_seq'::regclass);
 N   ALTER TABLE public.catalog_rockwallmaterialunit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            z           2604    18290 +   catalog_rockwallmaterialunit_application id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_application_id_seq'::regclass);
 Z   ALTER TABLE public.catalog_rockwallmaterialunit_application ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            {           2604    18298 0   catalog_rockwallmaterialunit_binding_solution id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_binding_solution_id_seq'::regclass);
 _   ALTER TABLE public.catalog_rockwallmaterialunit_binding_solution ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    26767 '   catalog_rockwallmaterialunit_class_b id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_class_b_id_seq'::regclass);
 V   ALTER TABLE public.catalog_rockwallmaterialunit_class_b ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            �           2604    26775 &   catalog_rockwallmaterialunit_mark_d id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_mark_d_id_seq'::regclass);
 U   ALTER TABLE public.catalog_rockwallmaterialunit_mark_d ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            �           2604    26783 &   catalog_rockwallmaterialunit_mark_m id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_mark_m_id_seq'::regclass);
 U   ALTER TABLE public.catalog_rockwallmaterialunit_mark_m ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            �           2604    18346 2   catalog_rockwallmaterialunit_reinforcement_type id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_reinforcement_type_id_seq'::regclass);
 a   ALTER TABLE public.catalog_rockwallmaterialunit_reinforcement_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            �           2604    26791 -   catalog_rockwallmaterialunit_standard_size id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_standard_size_id_seq'::regclass);
 \   ALTER TABLE public.catalog_rockwallmaterialunit_standard_size ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            �           2604    26869 2   catalog_rockwallmaterialunit_wall_material_type id    DEFAULT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type ALTER COLUMN id SET DEFAULT nextval('public.catalog_rockwallmaterialunit_wall_material_type_id_seq'::regclass);
 a   ALTER TABLE public.catalog_rockwallmaterialunit_wall_material_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            |           2604    18306    catalog_taxsystemtype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_taxsystemtype ALTER COLUMN id SET DEFAULT nextval('public.catalog_taxsystemtype_id_seq'::regclass);
 G   ALTER TABLE public.catalog_taxsystemtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            }           2604    18316    catalog_trademark id    DEFAULT     |   ALTER TABLE ONLY public.catalog_trademark ALTER COLUMN id SET DEFAULT nextval('public.catalog_trademark_id_seq'::regclass);
 C   ALTER TABLE public.catalog_trademark ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            ~           2604    18326    catalog_trademarkseries id    DEFAULT     �   ALTER TABLE ONLY public.catalog_trademarkseries ALTER COLUMN id SET DEFAULT nextval('public.catalog_trademarkseries_id_seq'::regclass);
 I   ALTER TABLE public.catalog_trademarkseries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    26859    catalog_wallmaterialtype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_wallmaterialtype ALTER COLUMN id SET DEFAULT nextval('public.catalog_wallmaterialtype_id_seq'::regclass);
 J   ALTER TABLE public.catalog_wallmaterialtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276                       2604    18336     catalog_wallreinforcementtype id    DEFAULT     �   ALTER TABLE ONLY public.catalog_wallreinforcementtype ALTER COLUMN id SET DEFAULT nextval('public.catalog_wallreinforcementtype_id_seq'::regclass);
 O   ALTER TABLE public.catalog_wallreinforcementtype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251            n           2604    18153    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            g           2604    18039    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            f           2604    18028    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       0    18054 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �F                0    18064    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   G      �          0    18046    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   6G                0    18072 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �M                0    18082    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   NN                0    18090    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   kN                0    18180    catalog_application 
   TABLE DATA           C   COPY public.catalog_application (id, identifier, name) FROM stdin;
    public          postgres    false    221   �N                0    18190    catalog_bindersolutiontype 
   TABLE DATA           J   COPY public.catalog_bindersolutiontype (id, identifier, name) FROM stdin;
    public          postgres    false    223   :O                0    18200    catalog_city 
   TABLE DATA           0   COPY public.catalog_city (id, name) FROM stdin;
    public          postgres    false    225   �O      3          0    26724    catalog_classblight 
   TABLE DATA           C   COPY public.catalog_classblight (id, identifier, name) FROM stdin;
    public          postgres    false    260   �O                0    18220    catalog_directproducer 
   TABLE DATA           :   COPY public.catalog_directproducer (id, name) FROM stdin;
    public          postgres    false    229   !P      5          0    26734    catalog_markd 
   TABLE DATA           =   COPY public.catalog_markd (id, identifier, name) FROM stdin;
    public          postgres    false    262   jP      7          0    26744    catalog_markm 
   TABLE DATA           =   COPY public.catalog_markm (id, identifier, name) FROM stdin;
    public          postgres    false    264   �P                0    18210    catalog_productbrand 
   TABLE DATA           8   COPY public.catalog_productbrand (id, name) FROM stdin;
    public          postgres    false    227   �P                0    18230    catalog_provider 
   TABLE DATA           Y   COPY public.catalog_provider (id, name, ownership_form, primary_activity_id) FROM stdin;
    public          postgres    false    231   �P      .          0    18351 #   catalog_provider_secondary_activity 
   TABLE DATA           g   COPY public.catalog_provider_secondary_activity (id, provider_id, provideractivitytype_id) FROM stdin;
    public          postgres    false    255   Q      0          0    18359    catalog_provider_tax_system 
   TABLE DATA           X   COPY public.catalog_provider_tax_system (id, provider_id, taxsystemtype_id) FROM stdin;
    public          postgres    false    257   1Q                0    18240    catalog_provideractivitytype 
   TABLE DATA           L   COPY public.catalog_provideractivitytype (id, identifier, name) FROM stdin;
    public          postgres    false    233   NQ                0    18250    catalog_provideroutlet 
   TABLE DATA           i   COPY public.catalog_provideroutlet (id, local_name, information, city_id, name_id, owner_id) FROM stdin;
    public          postgres    false    235   R                0    18271 %   catalog_rockwallmaterialpriceposition 
   TABLE DATA           ]   COPY public.catalog_rockwallmaterialpriceposition (id, price, name_id, owner_id) FROM stdin;
    public          postgres    false    237    R      9          0    26754 $   catalog_rockwallmaterialstandardsize 
   TABLE DATA           l   COPY public.catalog_rockwallmaterialstandardsize (id, identifier, name, a_size, b_size, c_size) FROM stdin;
    public          postgres    false    266   =R                0    18279    catalog_rockwallmaterialunit 
   TABLE DATA           �   COPY public.catalog_rockwallmaterialunit (id, name, a_size, b_size, c_size, thermal_conductivity, type_size, primary_or_additional) FROM stdin;
    public          postgres    false    239   �R                 0    18287 (   catalog_rockwallmaterialunit_application 
   TABLE DATA           o   COPY public.catalog_rockwallmaterialunit_application (id, rockwallmaterialunit_id, application_id) FROM stdin;
    public          postgres    false    241   �R      "          0    18295 -   catalog_rockwallmaterialunit_binding_solution 
   TABLE DATA           {   COPY public.catalog_rockwallmaterialunit_binding_solution (id, rockwallmaterialunit_id, bindersolutiontype_id) FROM stdin;
    public          postgres    false    243   �R      ;          0    26764 $   catalog_rockwallmaterialunit_class_b 
   TABLE DATA           k   COPY public.catalog_rockwallmaterialunit_class_b (id, rockwallmaterialunit_id, classblight_id) FROM stdin;
    public          postgres    false    268   �R      =          0    26772 #   catalog_rockwallmaterialunit_mark_d 
   TABLE DATA           d   COPY public.catalog_rockwallmaterialunit_mark_d (id, rockwallmaterialunit_id, markd_id) FROM stdin;
    public          postgres    false    270   S      ?          0    26780 #   catalog_rockwallmaterialunit_mark_m 
   TABLE DATA           d   COPY public.catalog_rockwallmaterialunit_mark_m (id, rockwallmaterialunit_id, markm_id) FROM stdin;
    public          postgres    false    272   S      ,          0    18343 /   catalog_rockwallmaterialunit_reinforcement_type 
   TABLE DATA           �   COPY public.catalog_rockwallmaterialunit_reinforcement_type (id, rockwallmaterialunit_id, wallreinforcementtype_id) FROM stdin;
    public          postgres    false    253   <S      A          0    26788 *   catalog_rockwallmaterialunit_standard_size 
   TABLE DATA           �   COPY public.catalog_rockwallmaterialunit_standard_size (id, rockwallmaterialunit_id, rockwallmaterialstandardsize_id) FROM stdin;
    public          postgres    false    274   YS      E          0    26866 /   catalog_rockwallmaterialunit_wall_material_type 
   TABLE DATA           {   COPY public.catalog_rockwallmaterialunit_wall_material_type (id, rockwallmaterialunit_id, wallmaterialtype_id) FROM stdin;
    public          postgres    false    278   vS      $          0    18303    catalog_taxsystemtype 
   TABLE DATA           E   COPY public.catalog_taxsystemtype (id, identifier, name) FROM stdin;
    public          postgres    false    245   �S      &          0    18313    catalog_trademark 
   TABLE DATA           ?   COPY public.catalog_trademark (id, name, brand_id) FROM stdin;
    public          postgres    false    247   T      (          0    18323    catalog_trademarkseries 
   TABLE DATA           I   COPY public.catalog_trademarkseries (id, name, trademark_id) FROM stdin;
    public          postgres    false    249   6T      C          0    26856    catalog_wallmaterialtype 
   TABLE DATA           Z   COPY public.catalog_wallmaterialtype (id, identifier, name, common_wall_type) FROM stdin;
    public          postgres    false    276   ST      *          0    18333    catalog_wallreinforcementtype 
   TABLE DATA           M   COPY public.catalog_wallreinforcementtype (id, identifier, name) FROM stdin;
    public          postgres    false    251   ,U      
          0    18150    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �U      �          0    18036    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   QZ      �          0    18025    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �[      1          0    18495    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    258   �]      r           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            s           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            t           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 120, true);
          public          postgres    false    206            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            v           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            x           0    0    catalog_application_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.catalog_application_id_seq', 5, true);
          public          postgres    false    220            y           0    0 !   catalog_bindersolutiontype_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.catalog_bindersolutiontype_id_seq', 2, true);
          public          postgres    false    222            z           0    0    catalog_city_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.catalog_city_id_seq', 2, true);
          public          postgres    false    224            {           0    0    catalog_classb_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.catalog_classb_id_seq', 2, true);
          public          postgres    false    259            |           0    0    catalog_markd_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_markd_id_seq', 2, true);
          public          postgres    false    261            }           0    0    catalog_markm_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.catalog_markm_id_seq', 2, true);
          public          postgres    false    263            ~           0    0    catalog_materialbrand_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.catalog_materialbrand_id_seq', 1, true);
          public          postgres    false    226                       0    0    catalog_producer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.catalog_producer_id_seq', 2, true);
          public          postgres    false    228            �           0    0    catalog_provider_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catalog_provider_id_seq', 1, false);
          public          postgres    false    230            �           0    0 *   catalog_provider_secondary_activity_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.catalog_provider_secondary_activity_id_seq', 1, false);
          public          postgres    false    254            �           0    0 "   catalog_provider_tax_system_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.catalog_provider_tax_system_id_seq', 1, false);
          public          postgres    false    256            �           0    0 #   catalog_provideractivitytype_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.catalog_provideractivitytype_id_seq', 4, true);
          public          postgres    false    232            �           0    0    catalog_provideroutlet_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.catalog_provideroutlet_id_seq', 1, false);
          public          postgres    false    234            �           0    0 ,   catalog_rockwallmaterialpriceposition_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.catalog_rockwallmaterialpriceposition_id_seq', 1, false);
          public          postgres    false    236            �           0    0 +   catalog_rockwallmaterialstandardsize_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.catalog_rockwallmaterialstandardsize_id_seq', 3, true);
          public          postgres    false    265            �           0    0 /   catalog_rockwallmaterialunit_application_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_application_id_seq', 1, false);
          public          postgres    false    240            �           0    0 4   catalog_rockwallmaterialunit_binding_solution_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_binding_solution_id_seq', 1, false);
          public          postgres    false    242            �           0    0 +   catalog_rockwallmaterialunit_class_b_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_class_b_id_seq', 1, false);
          public          postgres    false    267            �           0    0 #   catalog_rockwallmaterialunit_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_id_seq', 1, false);
          public          postgres    false    238            �           0    0 *   catalog_rockwallmaterialunit_mark_d_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_mark_d_id_seq', 1, false);
          public          postgres    false    269            �           0    0 *   catalog_rockwallmaterialunit_mark_m_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_mark_m_id_seq', 1, false);
          public          postgres    false    271            �           0    0 6   catalog_rockwallmaterialunit_reinforcement_type_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_reinforcement_type_id_seq', 1, false);
          public          postgres    false    252            �           0    0 1   catalog_rockwallmaterialunit_standard_size_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_standard_size_id_seq', 1, false);
          public          postgres    false    273            �           0    0 6   catalog_rockwallmaterialunit_wall_material_type_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.catalog_rockwallmaterialunit_wall_material_type_id_seq', 1, false);
          public          postgres    false    277            �           0    0    catalog_taxsystemtype_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.catalog_taxsystemtype_id_seq', 3, true);
          public          postgres    false    244            �           0    0    catalog_trademark_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catalog_trademark_id_seq', 1, false);
          public          postgres    false    246            �           0    0    catalog_trademarkseries_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.catalog_trademarkseries_id_seq', 1, false);
          public          postgres    false    248            �           0    0    catalog_wallmaterialtype_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.catalog_wallmaterialtype_id_seq', 5, true);
          public          postgres    false    275            �           0    0 $   catalog_wallreinforcementtype_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.catalog_wallreinforcementtype_id_seq', 2, true);
          public          postgres    false    250            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 39, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 29, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    202            �           2606    18061    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    18116 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    18069 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    18059    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    18102 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �           2606    18051 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �           2606    18087 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �           2606    18131 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �           2606    18077    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �           2606    18095 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    18145 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �           2606    18173     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    18513 6   catalog_application catalog_application_identifier_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.catalog_application
    ADD CONSTRAINT catalog_application_identifier_key UNIQUE (identifier);
 `   ALTER TABLE ONLY public.catalog_application DROP CONSTRAINT catalog_application_identifier_key;
       public            postgres    false    221            �           2606    18185 ,   catalog_application catalog_application_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.catalog_application
    ADD CONSTRAINT catalog_application_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.catalog_application DROP CONSTRAINT catalog_application_pkey;
       public            postgres    false    221            �           2606    18516 D   catalog_bindersolutiontype catalog_bindersolutiontype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_bindersolutiontype
    ADD CONSTRAINT catalog_bindersolutiontype_identifier_key UNIQUE (identifier);
 n   ALTER TABLE ONLY public.catalog_bindersolutiontype DROP CONSTRAINT catalog_bindersolutiontype_identifier_key;
       public            postgres    false    223            �           2606    18195 :   catalog_bindersolutiontype catalog_bindersolutiontype_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.catalog_bindersolutiontype
    ADD CONSTRAINT catalog_bindersolutiontype_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.catalog_bindersolutiontype DROP CONSTRAINT catalog_bindersolutiontype_pkey;
       public            postgres    false    223            �           2606    18207 "   catalog_city catalog_city_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.catalog_city
    ADD CONSTRAINT catalog_city_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_name_key;
       public            postgres    false    225            �           2606    18205    catalog_city catalog_city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.catalog_city
    ADD CONSTRAINT catalog_city_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_pkey;
       public            postgres    false    225            !           2606    26731 1   catalog_classblight catalog_classb_identifier_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.catalog_classblight
    ADD CONSTRAINT catalog_classb_identifier_key UNIQUE (identifier);
 [   ALTER TABLE ONLY public.catalog_classblight DROP CONSTRAINT catalog_classb_identifier_key;
       public            postgres    false    260            #           2606    26729 '   catalog_classblight catalog_classb_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.catalog_classblight
    ADD CONSTRAINT catalog_classb_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.catalog_classblight DROP CONSTRAINT catalog_classb_pkey;
       public            postgres    false    260            &           2606    26741 *   catalog_markd catalog_markd_identifier_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_markd
    ADD CONSTRAINT catalog_markd_identifier_key UNIQUE (identifier);
 T   ALTER TABLE ONLY public.catalog_markd DROP CONSTRAINT catalog_markd_identifier_key;
       public            postgres    false    262            (           2606    26739     catalog_markd catalog_markd_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_markd
    ADD CONSTRAINT catalog_markd_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_markd DROP CONSTRAINT catalog_markd_pkey;
       public            postgres    false    262            +           2606    26751 *   catalog_markm catalog_markm_identifier_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_markm
    ADD CONSTRAINT catalog_markm_identifier_key UNIQUE (identifier);
 T   ALTER TABLE ONLY public.catalog_markm DROP CONSTRAINT catalog_markm_identifier_key;
       public            postgres    false    264            -           2606    26749     catalog_markm catalog_markm_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.catalog_markm
    ADD CONSTRAINT catalog_markm_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.catalog_markm DROP CONSTRAINT catalog_markm_pkey;
       public            postgres    false    264            �           2606    18217 3   catalog_productbrand catalog_materialbrand_name_key 
   CONSTRAINT     n   ALTER TABLE ONLY public.catalog_productbrand
    ADD CONSTRAINT catalog_materialbrand_name_key UNIQUE (name);
 ]   ALTER TABLE ONLY public.catalog_productbrand DROP CONSTRAINT catalog_materialbrand_name_key;
       public            postgres    false    227            �           2606    18215 /   catalog_productbrand catalog_materialbrand_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.catalog_productbrand
    ADD CONSTRAINT catalog_materialbrand_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.catalog_productbrand DROP CONSTRAINT catalog_materialbrand_pkey;
       public            postgres    false    227            �           2606    18227 0   catalog_directproducer catalog_producer_name_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catalog_directproducer
    ADD CONSTRAINT catalog_producer_name_key UNIQUE (name);
 Z   ALTER TABLE ONLY public.catalog_directproducer DROP CONSTRAINT catalog_producer_name_key;
       public            postgres    false    229            �           2606    18225 ,   catalog_directproducer catalog_producer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.catalog_directproducer
    ADD CONSTRAINT catalog_producer_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.catalog_directproducer DROP CONSTRAINT catalog_producer_pkey;
       public            postgres    false    229            �           2606    18237 *   catalog_provider catalog_provider_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_name_key;
       public            postgres    false    231            �           2606    18235 &   catalog_provider catalog_provider_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_pkey;
       public            postgres    false    231                       2606    18478 c   catalog_provider_secondary_activity catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq UNIQUE (provider_id, provideractivitytype_id);
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_seconda_provider_id_provideracti_2a5631df_uniq;
       public            postgres    false    255    255                       2606    18356 L   catalog_provider_secondary_activity catalog_provider_secondary_activity_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_secondary_activity_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_secondary_activity_pkey;
       public            postgres    false    255                       2606    18492 [   catalog_provider_tax_system catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq UNIQUE (provider_id, taxsystemtype_id);
 �   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_sys_provider_id_taxsystemtyp_84bf5152_uniq;
       public            postgres    false    257    257                       2606    18364 <   catalog_provider_tax_system catalog_provider_tax_system_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_system_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_system_pkey;
       public            postgres    false    257            �           2606    18519 H   catalog_provideractivitytype catalog_provideractivitytype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideractivitytype
    ADD CONSTRAINT catalog_provideractivitytype_identifier_key UNIQUE (identifier);
 r   ALTER TABLE ONLY public.catalog_provideractivitytype DROP CONSTRAINT catalog_provideractivitytype_identifier_key;
       public            postgres    false    233            �           2606    18245 >   catalog_provideractivitytype catalog_provideractivitytype_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.catalog_provideractivitytype
    ADD CONSTRAINT catalog_provideractivitytype_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.catalog_provideractivitytype DROP CONSTRAINT catalog_provideractivitytype_pkey;
       public            postgres    false    233            �           2606    18258 2   catalog_provideroutlet catalog_provideroutlet_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_pkey;
       public            postgres    false    235            �           2606    18416 m   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmaterial_rockwallmaterialunit_id__1c9ef8d4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__1c9ef8d4_uniq UNIQUE (rockwallmaterialunit_id, bindersolutiontype_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__1c9ef8d4_uniq;
       public            postgres    false    243    243            4           2606    26809 d   catalog_rockwallmaterialunit_class_b catalog_rockwallmaterial_rockwallmaterialunit_id__6fe40e85_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__6fe40e85_uniq UNIQUE (rockwallmaterialunit_id, classblight_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__6fe40e85_uniq;
       public            postgres    false    268    268            
           2606    18446 o   catalog_rockwallmaterialunit_reinforcement_type catalog_rockwallmaterial_rockwallmaterialunit_id__72b205f1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__72b205f1_uniq UNIQUE (rockwallmaterialunit_id, wallreinforcementtype_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__72b205f1_uniq;
       public            postgres    false    253    253            �           2606    18402 h   catalog_rockwallmaterialunit_application catalog_rockwallmaterial_rockwallmaterialunit_id__78b43cf3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__78b43cf3_uniq UNIQUE (rockwallmaterialunit_id, application_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__78b43cf3_uniq;
       public            postgres    false    241    241            :           2606    26823 c   catalog_rockwallmaterialunit_mark_d catalog_rockwallmaterial_rockwallmaterialunit_id__ce4c7c58_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__ce4c7c58_uniq UNIQUE (rockwallmaterialunit_id, markd_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__ce4c7c58_uniq;
       public            postgres    false    270    270            F           2606    26851 j   catalog_rockwallmaterialunit_standard_size catalog_rockwallmaterial_rockwallmaterialunit_id__e3c0dd33_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__e3c0dd33_uniq UNIQUE (rockwallmaterialunit_id, rockwallmaterialstandardsize_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__e3c0dd33_uniq;
       public            postgres    false    274    274            @           2606    26837 c   catalog_rockwallmaterialunit_mark_m catalog_rockwallmaterial_rockwallmaterialunit_id__ef817d8b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__ef817d8b_uniq UNIQUE (rockwallmaterialunit_id, markm_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__ef817d8b_uniq;
       public            postgres    false    272    272            Q           2606    26884 o   catalog_rockwallmaterialunit_wall_material_type catalog_rockwallmaterial_rockwallmaterialunit_id__f42bf336_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type
    ADD CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__f42bf336_uniq UNIQUE (rockwallmaterialunit_id, wallmaterialtype_id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type DROP CONSTRAINT catalog_rockwallmaterial_rockwallmaterialunit_id__f42bf336_uniq;
       public            postgres    false    278    278            �           2606    18276 P   catalog_rockwallmaterialpriceposition catalog_rockwallmaterialpriceposition_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmaterialpriceposition_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmaterialpriceposition_pkey;
       public            postgres    false    237            0           2606    26761 X   catalog_rockwallmaterialstandardsize catalog_rockwallmaterialstandardsize_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialstandardsize
    ADD CONSTRAINT catalog_rockwallmaterialstandardsize_identifier_key UNIQUE (identifier);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialstandardsize DROP CONSTRAINT catalog_rockwallmaterialstandardsize_identifier_key;
       public            postgres    false    266            2           2606    26759 N   catalog_rockwallmaterialstandardsize catalog_rockwallmaterialstandardsize_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialstandardsize
    ADD CONSTRAINT catalog_rockwallmaterialstandardsize_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.catalog_rockwallmaterialstandardsize DROP CONSTRAINT catalog_rockwallmaterialstandardsize_pkey;
       public            postgres    false    266            �           2606    18292 V   catalog_rockwallmaterialunit_application catalog_rockwallmaterialunit_application_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application
    ADD CONSTRAINT catalog_rockwallmaterialunit_application_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application DROP CONSTRAINT catalog_rockwallmaterialunit_application_pkey;
       public            postgres    false    241            �           2606    18300 `   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmaterialunit_binding_solution_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmaterialunit_binding_solution_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmaterialunit_binding_solution_pkey;
       public            postgres    false    243            8           2606    26769 N   catalog_rockwallmaterialunit_class_b catalog_rockwallmaterialunit_class_b_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b
    ADD CONSTRAINT catalog_rockwallmaterialunit_class_b_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b DROP CONSTRAINT catalog_rockwallmaterialunit_class_b_pkey;
       public            postgres    false    268            >           2606    26777 L   catalog_rockwallmaterialunit_mark_d catalog_rockwallmaterialunit_mark_d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d
    ADD CONSTRAINT catalog_rockwallmaterialunit_mark_d_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d DROP CONSTRAINT catalog_rockwallmaterialunit_mark_d_pkey;
       public            postgres    false    270            D           2606    26785 L   catalog_rockwallmaterialunit_mark_m catalog_rockwallmaterialunit_mark_m_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m
    ADD CONSTRAINT catalog_rockwallmaterialunit_mark_m_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m DROP CONSTRAINT catalog_rockwallmaterialunit_mark_m_pkey;
       public            postgres    false    272            �           2606    18284 >   catalog_rockwallmaterialunit catalog_rockwallmaterialunit_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.catalog_rockwallmaterialunit
    ADD CONSTRAINT catalog_rockwallmaterialunit_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.catalog_rockwallmaterialunit DROP CONSTRAINT catalog_rockwallmaterialunit_pkey;
       public            postgres    false    239                       2606    18348 d   catalog_rockwallmaterialunit_reinforcement_type catalog_rockwallmaterialunit_reinforcement_type_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type
    ADD CONSTRAINT catalog_rockwallmaterialunit_reinforcement_type_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type DROP CONSTRAINT catalog_rockwallmaterialunit_reinforcement_type_pkey;
       public            postgres    false    253            J           2606    26793 Z   catalog_rockwallmaterialunit_standard_size catalog_rockwallmaterialunit_standard_size_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size
    ADD CONSTRAINT catalog_rockwallmaterialunit_standard_size_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size DROP CONSTRAINT catalog_rockwallmaterialunit_standard_size_pkey;
       public            postgres    false    274            U           2606    26871 d   catalog_rockwallmaterialunit_wall_material_type catalog_rockwallmaterialunit_wall_material_type_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type
    ADD CONSTRAINT catalog_rockwallmaterialunit_wall_material_type_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type DROP CONSTRAINT catalog_rockwallmaterialunit_wall_material_type_pkey;
       public            postgres    false    278            �           2606    18525 :   catalog_taxsystemtype catalog_taxsystemtype_identifier_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.catalog_taxsystemtype
    ADD CONSTRAINT catalog_taxsystemtype_identifier_key UNIQUE (identifier);
 d   ALTER TABLE ONLY public.catalog_taxsystemtype DROP CONSTRAINT catalog_taxsystemtype_identifier_key;
       public            postgres    false    245            �           2606    18308 0   catalog_taxsystemtype catalog_taxsystemtype_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.catalog_taxsystemtype
    ADD CONSTRAINT catalog_taxsystemtype_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.catalog_taxsystemtype DROP CONSTRAINT catalog_taxsystemtype_pkey;
       public            postgres    false    245            �           2606    18320 ,   catalog_trademark catalog_trademark_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.catalog_trademark
    ADD CONSTRAINT catalog_trademark_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.catalog_trademark DROP CONSTRAINT catalog_trademark_name_key;
       public            postgres    false    247            �           2606    18318 (   catalog_trademark catalog_trademark_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalog_trademark
    ADD CONSTRAINT catalog_trademark_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalog_trademark DROP CONSTRAINT catalog_trademark_pkey;
       public            postgres    false    247                        2606    18330 8   catalog_trademarkseries catalog_trademarkseries_name_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.catalog_trademarkseries
    ADD CONSTRAINT catalog_trademarkseries_name_key UNIQUE (name);
 b   ALTER TABLE ONLY public.catalog_trademarkseries DROP CONSTRAINT catalog_trademarkseries_name_key;
       public            postgres    false    249                       2606    18328 4   catalog_trademarkseries catalog_trademarkseries_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.catalog_trademarkseries
    ADD CONSTRAINT catalog_trademarkseries_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.catalog_trademarkseries DROP CONSTRAINT catalog_trademarkseries_pkey;
       public            postgres    false    249            M           2606    26863 @   catalog_wallmaterialtype catalog_wallmaterialtype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_wallmaterialtype
    ADD CONSTRAINT catalog_wallmaterialtype_identifier_key UNIQUE (identifier);
 j   ALTER TABLE ONLY public.catalog_wallmaterialtype DROP CONSTRAINT catalog_wallmaterialtype_identifier_key;
       public            postgres    false    276            O           2606    26861 6   catalog_wallmaterialtype catalog_wallmaterialtype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.catalog_wallmaterialtype
    ADD CONSTRAINT catalog_wallmaterialtype_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.catalog_wallmaterialtype DROP CONSTRAINT catalog_wallmaterialtype_pkey;
       public            postgres    false    276                       2606    18528 J   catalog_wallreinforcementtype catalog_wallreinforcementtype_identifier_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.catalog_wallreinforcementtype
    ADD CONSTRAINT catalog_wallreinforcementtype_identifier_key UNIQUE (identifier);
 t   ALTER TABLE ONLY public.catalog_wallreinforcementtype DROP CONSTRAINT catalog_wallreinforcementtype_identifier_key;
       public            postgres    false    251                       2606    18338 @   catalog_wallreinforcementtype catalog_wallreinforcementtype_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.catalog_wallreinforcementtype
    ADD CONSTRAINT catalog_wallreinforcementtype_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.catalog_wallreinforcementtype DROP CONSTRAINT catalog_wallreinforcementtype_pkey;
       public            postgres    false    251            �           2606    18159 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �           2606    18043 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �           2606    18041 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �           2606    18033 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    18502 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    258            �           1259    18104    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    18117 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    18118 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    18103 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �           1259    18133 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �           1259    18132 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �           1259    18147 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    18146 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �           1259    18174     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    18514 ,   catalog_application_identifier_0719a225_like    INDEX     �   CREATE INDEX catalog_application_identifier_0719a225_like ON public.catalog_application USING btree (identifier varchar_pattern_ops);
 @   DROP INDEX public.catalog_application_identifier_0719a225_like;
       public            postgres    false    221            �           1259    18517 3   catalog_bindersolutiontype_identifier_4a6bd315_like    INDEX     �   CREATE INDEX catalog_bindersolutiontype_identifier_4a6bd315_like ON public.catalog_bindersolutiontype USING btree (identifier varchar_pattern_ops);
 G   DROP INDEX public.catalog_bindersolutiontype_identifier_4a6bd315_like;
       public            postgres    false    223            �           1259    18367    catalog_city_name_cafc1586_like    INDEX     l   CREATE INDEX catalog_city_name_cafc1586_like ON public.catalog_city USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.catalog_city_name_cafc1586_like;
       public            postgres    false    225                       1259    26794 '   catalog_classb_identifier_d34d76e2_like    INDEX     �   CREATE INDEX catalog_classb_identifier_d34d76e2_like ON public.catalog_classblight USING btree (identifier varchar_pattern_ops);
 ;   DROP INDEX public.catalog_classb_identifier_d34d76e2_like;
       public            postgres    false    260            $           1259    26795 &   catalog_markd_identifier_94610a4e_like    INDEX     z   CREATE INDEX catalog_markd_identifier_94610a4e_like ON public.catalog_markd USING btree (identifier varchar_pattern_ops);
 :   DROP INDEX public.catalog_markd_identifier_94610a4e_like;
       public            postgres    false    262            )           1259    26796 &   catalog_markm_identifier_43ab376a_like    INDEX     z   CREATE INDEX catalog_markm_identifier_43ab376a_like ON public.catalog_markm USING btree (identifier varchar_pattern_ops);
 :   DROP INDEX public.catalog_markm_identifier_43ab376a_like;
       public            postgres    false    264            �           1259    18368 (   catalog_materialbrand_name_7bd3d144_like    INDEX     }   CREATE INDEX catalog_materialbrand_name_7bd3d144_like ON public.catalog_productbrand USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.catalog_materialbrand_name_7bd3d144_like;
       public            postgres    false    227            �           1259    18369 #   catalog_producer_name_d9d25ff3_like    INDEX     z   CREATE INDEX catalog_producer_name_d9d25ff3_like ON public.catalog_directproducer USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.catalog_producer_name_d9d25ff3_like;
       public            postgres    false    229            �           1259    18370 #   catalog_provider_name_23080848_like    INDEX     t   CREATE INDEX catalog_provider_name_23080848_like ON public.catalog_provider USING btree (name varchar_pattern_ops);
 7   DROP INDEX public.catalog_provider_name_23080848_like;
       public            postgres    false    231            �           1259    18461 -   catalog_provider_primary_activity_id_5ff3703d    INDEX     y   CREATE INDEX catalog_provider_primary_activity_id_5ff3703d ON public.catalog_provider USING btree (primary_activity_id);
 A   DROP INDEX public.catalog_provider_primary_activity_id_5ff3703d;
       public            postgres    false    231                       1259    18479 8   catalog_provider_secondary_activity_provider_id_1050e31c    INDEX     �   CREATE INDEX catalog_provider_secondary_activity_provider_id_1050e31c ON public.catalog_provider_secondary_activity USING btree (provider_id);
 L   DROP INDEX public.catalog_provider_secondary_activity_provider_id_1050e31c;
       public            postgres    false    255                       1259    18480 ;   catalog_provider_secondary_provideractivitytype_id_b77a182c    INDEX     �   CREATE INDEX catalog_provider_secondary_provideractivitytype_id_b77a182c ON public.catalog_provider_secondary_activity USING btree (provideractivitytype_id);
 O   DROP INDEX public.catalog_provider_secondary_provideractivitytype_id_b77a182c;
       public            postgres    false    255                       1259    18493 0   catalog_provider_tax_system_provider_id_d0d5b87d    INDEX        CREATE INDEX catalog_provider_tax_system_provider_id_d0d5b87d ON public.catalog_provider_tax_system USING btree (provider_id);
 D   DROP INDEX public.catalog_provider_tax_system_provider_id_d0d5b87d;
       public            postgres    false    257                       1259    18494 5   catalog_provider_tax_system_taxsystemtype_id_886b2f4c    INDEX     �   CREATE INDEX catalog_provider_tax_system_taxsystemtype_id_886b2f4c ON public.catalog_provider_tax_system USING btree (taxsystemtype_id);
 I   DROP INDEX public.catalog_provider_tax_system_taxsystemtype_id_886b2f4c;
       public            postgres    false    257            �           1259    18520 5   catalog_provideractivitytype_identifier_3b6aaeae_like    INDEX     �   CREATE INDEX catalog_provideractivitytype_identifier_3b6aaeae_like ON public.catalog_provideractivitytype USING btree (identifier varchar_pattern_ops);
 I   DROP INDEX public.catalog_provideractivitytype_identifier_3b6aaeae_like;
       public            postgres    false    233            �           1259    18387 '   catalog_provideroutlet_city_id_1642bb7a    INDEX     m   CREATE INDEX catalog_provideroutlet_city_id_1642bb7a ON public.catalog_provideroutlet USING btree (city_id);
 ;   DROP INDEX public.catalog_provideroutlet_city_id_1642bb7a;
       public            postgres    false    235            �           1259    18388 '   catalog_provideroutlet_name_id_da8a3b33    INDEX     m   CREATE INDEX catalog_provideroutlet_name_id_da8a3b33 ON public.catalog_provideroutlet USING btree (name_id);
 ;   DROP INDEX public.catalog_provideroutlet_name_id_da8a3b33;
       public            postgres    false    235            �           1259    18389 (   catalog_provideroutlet_owner_id_496d374f    INDEX     o   CREATE INDEX catalog_provideroutlet_owner_id_496d374f ON public.catalog_provideroutlet USING btree (owner_id);
 <   DROP INDEX public.catalog_provideroutlet_owner_id_496d374f;
       public            postgres    false    235            �           1259    18449 6   catalog_rockwallmaterialpriceposition_name_id_17c3a4a8    INDEX     �   CREATE INDEX catalog_rockwallmaterialpriceposition_name_id_17c3a4a8 ON public.catalog_rockwallmaterialpriceposition USING btree (name_id);
 J   DROP INDEX public.catalog_rockwallmaterialpriceposition_name_id_17c3a4a8;
       public            postgres    false    237            �           1259    18506 7   catalog_rockwallmaterialpriceposition_owner_id_5cb00786    INDEX     �   CREATE INDEX catalog_rockwallmaterialpriceposition_owner_id_5cb00786 ON public.catalog_rockwallmaterialpriceposition USING btree (owner_id);
 K   DROP INDEX public.catalog_rockwallmaterialpriceposition_owner_id_5cb00786;
       public            postgres    false    237            .           1259    26797 =   catalog_rockwallmaterialstandardsize_identifier_1e278702_like    INDEX     �   CREATE INDEX catalog_rockwallmaterialstandardsize_identifier_1e278702_like ON public.catalog_rockwallmaterialstandardsize USING btree (identifier varchar_pattern_ops);
 Q   DROP INDEX public.catalog_rockwallmaterialstandardsize_identifier_1e278702_like;
       public            postgres    false    266            �           1259    18404 2   catalog_rockwallmaterialun_application_id_552a7307    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_application_id_552a7307 ON public.catalog_rockwallmaterialunit_application USING btree (application_id);
 F   DROP INDEX public.catalog_rockwallmaterialun_application_id_552a7307;
       public            postgres    false    241            �           1259    18418 9   catalog_rockwallmaterialun_bindersolutiontype_id_1db39912    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_bindersolutiontype_id_1db39912 ON public.catalog_rockwallmaterialunit_binding_solution USING btree (bindersolutiontype_id);
 M   DROP INDEX public.catalog_rockwallmaterialun_bindersolutiontype_id_1db39912;
       public            postgres    false    243            G           1259    26853 >   catalog_rockwallmaterialun_rockwallmaterialstandardsi_2cd46407    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialstandardsi_2cd46407 ON public.catalog_rockwallmaterialunit_standard_size USING btree (rockwallmaterialstandardsize_id);
 R   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialstandardsi_2cd46407;
       public            postgres    false    274            �           1259    18417 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924 ON public.catalog_rockwallmaterialunit_binding_solution USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_1ef00924;
       public            postgres    false    243            �           1259    18403 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_255c43eb    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_255c43eb ON public.catalog_rockwallmaterialunit_application USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_255c43eb;
       public            postgres    false    241            R           1259    26885 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_2b69e04b    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_2b69e04b ON public.catalog_rockwallmaterialunit_wall_material_type USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_2b69e04b;
       public            postgres    false    278                       1259    18447 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_510d67d3    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_510d67d3 ON public.catalog_rockwallmaterialunit_reinforcement_type USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_510d67d3;
       public            postgres    false    253            5           1259    26810 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_51474c00    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_51474c00 ON public.catalog_rockwallmaterialunit_class_b USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_51474c00;
       public            postgres    false    268            H           1259    26852 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_53008b8e    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_53008b8e ON public.catalog_rockwallmaterialunit_standard_size USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_53008b8e;
       public            postgres    false    274            ;           1259    26824 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_81d664e3    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_81d664e3 ON public.catalog_rockwallmaterialunit_mark_d USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_81d664e3;
       public            postgres    false    270            A           1259    26838 ;   catalog_rockwallmaterialun_rockwallmaterialunit_id_fd6d0c7d    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_rockwallmaterialunit_id_fd6d0c7d ON public.catalog_rockwallmaterialunit_mark_m USING btree (rockwallmaterialunit_id);
 O   DROP INDEX public.catalog_rockwallmaterialun_rockwallmaterialunit_id_fd6d0c7d;
       public            postgres    false    272            S           1259    26886 7   catalog_rockwallmaterialun_wallmaterialtype_id_27e81015    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_wallmaterialtype_id_27e81015 ON public.catalog_rockwallmaterialunit_wall_material_type USING btree (wallmaterialtype_id);
 K   DROP INDEX public.catalog_rockwallmaterialun_wallmaterialtype_id_27e81015;
       public            postgres    false    278                       1259    18448 <   catalog_rockwallmaterialun_wallreinforcementtype_id_1a14c36b    INDEX     �   CREATE INDEX catalog_rockwallmaterialun_wallreinforcementtype_id_1a14c36b ON public.catalog_rockwallmaterialunit_reinforcement_type USING btree (wallreinforcementtype_id);
 P   DROP INDEX public.catalog_rockwallmaterialun_wallreinforcementtype_id_1a14c36b;
       public            postgres    false    253            6           1259    26811 7   catalog_rockwallmaterialunit_class_b_classb_id_2ae3624e    INDEX     �   CREATE INDEX catalog_rockwallmaterialunit_class_b_classb_id_2ae3624e ON public.catalog_rockwallmaterialunit_class_b USING btree (classblight_id);
 K   DROP INDEX public.catalog_rockwallmaterialunit_class_b_classb_id_2ae3624e;
       public            postgres    false    268            <           1259    26825 5   catalog_rockwallmaterialunit_mark_d_markd_id_0cb39fa5    INDEX     �   CREATE INDEX catalog_rockwallmaterialunit_mark_d_markd_id_0cb39fa5 ON public.catalog_rockwallmaterialunit_mark_d USING btree (markd_id);
 I   DROP INDEX public.catalog_rockwallmaterialunit_mark_d_markd_id_0cb39fa5;
       public            postgres    false    270            B           1259    26839 5   catalog_rockwallmaterialunit_mark_m_markm_id_d6c246a8    INDEX     �   CREATE INDEX catalog_rockwallmaterialunit_mark_m_markm_id_d6c246a8 ON public.catalog_rockwallmaterialunit_mark_m USING btree (markm_id);
 I   DROP INDEX public.catalog_rockwallmaterialunit_mark_m_markm_id_d6c246a8;
       public            postgres    false    272            �           1259    18526 .   catalog_taxsystemtype_identifier_c4e29c1f_like    INDEX     �   CREATE INDEX catalog_taxsystemtype_identifier_c4e29c1f_like ON public.catalog_taxsystemtype USING btree (identifier varchar_pattern_ops);
 B   DROP INDEX public.catalog_taxsystemtype_identifier_c4e29c1f_like;
       public            postgres    false    245            �           1259    18426 #   catalog_trademark_brand_id_1f05b25a    INDEX     e   CREATE INDEX catalog_trademark_brand_id_1f05b25a ON public.catalog_trademark USING btree (brand_id);
 7   DROP INDEX public.catalog_trademark_brand_id_1f05b25a;
       public            postgres    false    247            �           1259    18425 $   catalog_trademark_name_c2f3ac10_like    INDEX     v   CREATE INDEX catalog_trademark_name_c2f3ac10_like ON public.catalog_trademark USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.catalog_trademark_name_c2f3ac10_like;
       public            postgres    false    247            �           1259    18432 *   catalog_trademarkseries_name_539eb61f_like    INDEX     �   CREATE INDEX catalog_trademarkseries_name_539eb61f_like ON public.catalog_trademarkseries USING btree (name varchar_pattern_ops);
 >   DROP INDEX public.catalog_trademarkseries_name_539eb61f_like;
       public            postgres    false    249                       1259    18433 -   catalog_trademarkseries_trademark_id_49fa59f5    INDEX     y   CREATE INDEX catalog_trademarkseries_trademark_id_49fa59f5 ON public.catalog_trademarkseries USING btree (trademark_id);
 A   DROP INDEX public.catalog_trademarkseries_trademark_id_49fa59f5;
       public            postgres    false    249            K           1259    26872 1   catalog_wallmaterialtype_identifier_d62c39ea_like    INDEX     �   CREATE INDEX catalog_wallmaterialtype_identifier_d62c39ea_like ON public.catalog_wallmaterialtype USING btree (identifier varchar_pattern_ops);
 E   DROP INDEX public.catalog_wallmaterialtype_identifier_d62c39ea_like;
       public            postgres    false    276                       1259    18529 6   catalog_wallreinforcementtype_identifier_db4fa5b4_like    INDEX     �   CREATE INDEX catalog_wallreinforcementtype_identifier_db4fa5b4_like ON public.catalog_wallreinforcementtype USING btree (identifier varchar_pattern_ops);
 J   DROP INDEX public.catalog_wallreinforcementtype_identifier_db4fa5b4_like;
       public            postgres    false    251            �           1259    18170 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    18171 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    18504 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    258                       1259    18503 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    258            X           2606    18110 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2967            W           2606    18105 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2972    209            V           2606    18096 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2962    207            Z           2606    18125 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2972            Y           2606    18120 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2980            \           2606    18139 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    2967    217            [           2606    18134 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2980    217    213            _           2606    18462 K   catalog_provider catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider
    ADD CONSTRAINT catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p FOREIGN KEY (primary_activity_id) REFERENCES public.catalog_provideractivitytype(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.catalog_provider DROP CONSTRAINT catalog_provider_primary_activity_id_5ff3703d_fk_catalog_p;
       public          postgres    false    3035    233    231            m           2606    18467 Z   catalog_provider_secondary_activity catalog_provider_sec_provider_id_1050e31c_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_sec_provider_id_1050e31c_fk_catalog_p FOREIGN KEY (provider_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_sec_provider_id_1050e31c_fk_catalog_p;
       public          postgres    false    255    231    3029            n           2606    18472 c   catalog_provider_secondary_activity catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_provider_secondary_activity
    ADD CONSTRAINT catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p FOREIGN KEY (provideractivitytype_id) REFERENCES public.catalog_provideractivitytype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_secondary_activity DROP CONSTRAINT catalog_provider_sec_provideractivitytype_b77a182c_fk_catalog_p;
       public          postgres    false    255    233    3035            o           2606    18481 R   catalog_provider_tax_system catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p FOREIGN KEY (provider_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_provider_id_d0d5b87d_fk_catalog_p;
       public          postgres    false    257    231    3029            p           2606    18486 W   catalog_provider_tax_system catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provider_tax_system
    ADD CONSTRAINT catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t FOREIGN KEY (taxsystemtype_id) REFERENCES public.catalog_taxsystemtype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_provider_tax_system DROP CONSTRAINT catalog_provider_tax_taxsystemtype_id_886b2f4c_fk_catalog_t;
       public          postgres    false    245    3063    257            `           2606    18372 Q   catalog_provideroutlet catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id FOREIGN KEY (city_id) REFERENCES public.catalog_city(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_city_id_1642bb7a_fk_catalog_city_id;
       public          postgres    false    225    235    3014            a           2606    18377 U   catalog_provideroutlet catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id FOREIGN KEY (name_id) REFERENCES public.catalog_provider(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_name_id_da8a3b33_fk_catalog_provider_id;
       public          postgres    false    235    3029    231            b           2606    18382 O   catalog_provideroutlet catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_provideroutlet
    ADD CONSTRAINT catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.catalog_provideroutlet DROP CONSTRAINT catalog_provideroutlet_owner_id_496d374f_fk_auth_user_id;
       public          postgres    false    2980    235    213            f           2606    18396 b   catalog_rockwallmaterialunit_application catalog_rockwallmate_application_id_552a7307_fk_catalog_a    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application
    ADD CONSTRAINT catalog_rockwallmate_application_id_552a7307_fk_catalog_a FOREIGN KEY (application_id) REFERENCES public.catalog_application(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application DROP CONSTRAINT catalog_rockwallmate_application_id_552a7307_fk_catalog_a;
       public          postgres    false    3004    221    241            h           2606    18410 m   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmate_bindersolutiontype_i_1db39912_fk_catalog_b    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmate_bindersolutiontype_i_1db39912_fk_catalog_b FOREIGN KEY (bindersolutiontype_id) REFERENCES public.catalog_bindersolutiontype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmate_bindersolutiontype_i_1db39912_fk_catalog_b;
       public          postgres    false    243    3009    223            q           2606    26887 ^   catalog_rockwallmaterialunit_class_b catalog_rockwallmate_classblight_id_6e007ad6_fk_catalog_c    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b
    ADD CONSTRAINT catalog_rockwallmate_classblight_id_6e007ad6_fk_catalog_c FOREIGN KEY (classblight_id) REFERENCES public.catalog_classblight(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b DROP CONSTRAINT catalog_rockwallmate_classblight_id_6e007ad6_fk_catalog_c;
       public          postgres    false    268    3107    260            t           2606    26817 W   catalog_rockwallmaterialunit_mark_d catalog_rockwallmate_markd_id_0cb39fa5_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d
    ADD CONSTRAINT catalog_rockwallmate_markd_id_0cb39fa5_fk_catalog_m FOREIGN KEY (markd_id) REFERENCES public.catalog_markd(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d DROP CONSTRAINT catalog_rockwallmate_markd_id_0cb39fa5_fk_catalog_m;
       public          postgres    false    270    262    3112            v           2606    26831 W   catalog_rockwallmaterialunit_mark_m catalog_rockwallmate_markm_id_d6c246a8_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m
    ADD CONSTRAINT catalog_rockwallmate_markm_id_d6c246a8_fk_catalog_m FOREIGN KEY (markm_id) REFERENCES public.catalog_markm(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m DROP CONSTRAINT catalog_rockwallmate_markm_id_d6c246a8_fk_catalog_m;
       public          postgres    false    3117    264    272            c           2606    18450 X   catalog_rockwallmaterialpriceposition catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r FOREIGN KEY (name_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmate_name_id_17c3a4a8_fk_catalog_r;
       public          postgres    false    239    3046    237            d           2606    18507 Y   catalog_rockwallmaterialpriceposition catalog_rockwallmate_owner_id_5cb00786_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition
    ADD CONSTRAINT catalog_rockwallmate_owner_id_5cb00786_fk_auth_user FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialpriceposition DROP CONSTRAINT catalog_rockwallmate_owner_id_5cb00786_fk_auth_user;
       public          postgres    false    237    213    2980            x           2606    26845 j   catalog_rockwallmaterialunit_standard_size catalog_rockwallmate_rockwallmaterialstan_2cd46407_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialstan_2cd46407_fk_catalog_r FOREIGN KEY (rockwallmaterialstandardsize_id) REFERENCES public.catalog_rockwallmaterialstandardsize(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialstan_2cd46407_fk_catalog_r;
       public          postgres    false    3122    274    266            g           2606    18405 m   catalog_rockwallmaterialunit_binding_solution catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_binding_solution DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_1ef00924_fk_catalog_r;
       public          postgres    false    239    3046    243            e           2606    18391 h   catalog_rockwallmaterialunit_application catalog_rockwallmate_rockwallmaterialunit_255c43eb_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_255c43eb_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_application DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_255c43eb_fk_catalog_r;
       public          postgres    false    3046    239    241            y           2606    26873 o   catalog_rockwallmaterialunit_wall_material_type catalog_rockwallmate_rockwallmaterialunit_2b69e04b_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_2b69e04b_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_2b69e04b_fk_catalog_r;
       public          postgres    false    239    278    3046            k           2606    18435 o   catalog_rockwallmaterialunit_reinforcement_type catalog_rockwallmate_rockwallmaterialunit_510d67d3_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_510d67d3_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_510d67d3_fk_catalog_r;
       public          postgres    false    253    239    3046            r           2606    26892 d   catalog_rockwallmaterialunit_class_b catalog_rockwallmate_rockwallmaterialunit_51474c00_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_51474c00_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_class_b DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_51474c00_fk_catalog_r;
       public          postgres    false    239    3046    268            w           2606    26840 j   catalog_rockwallmaterialunit_standard_size catalog_rockwallmate_rockwallmaterialunit_53008b8e_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_53008b8e_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_standard_size DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_53008b8e_fk_catalog_r;
       public          postgres    false    274    239    3046            s           2606    26812 c   catalog_rockwallmaterialunit_mark_d catalog_rockwallmate_rockwallmaterialunit_81d664e3_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_81d664e3_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_d DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_81d664e3_fk_catalog_r;
       public          postgres    false    239    3046    270            u           2606    26826 c   catalog_rockwallmaterialunit_mark_m catalog_rockwallmate_rockwallmaterialunit_fd6d0c7d_fk_catalog_r    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m
    ADD CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_fd6d0c7d_fk_catalog_r FOREIGN KEY (rockwallmaterialunit_id) REFERENCES public.catalog_rockwallmaterialunit(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_mark_m DROP CONSTRAINT catalog_rockwallmate_rockwallmaterialunit_fd6d0c7d_fk_catalog_r;
       public          postgres    false    272    239    3046            z           2606    26878 n   catalog_rockwallmaterialunit_wall_material_type catalog_rockwallmate_wallmaterialtype_id_27e81015_fk_catalog_w    FK CONSTRAINT     
  ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type
    ADD CONSTRAINT catalog_rockwallmate_wallmaterialtype_id_27e81015_fk_catalog_w FOREIGN KEY (wallmaterialtype_id) REFERENCES public.catalog_wallmaterialtype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_wall_material_type DROP CONSTRAINT catalog_rockwallmate_wallmaterialtype_id_27e81015_fk_catalog_w;
       public          postgres    false    276    278    3151            l           2606    18440 o   catalog_rockwallmaterialunit_reinforcement_type catalog_rockwallmate_wallreinforcementtyp_1a14c36b_fk_catalog_w    FK CONSTRAINT       ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type
    ADD CONSTRAINT catalog_rockwallmate_wallreinforcementtyp_1a14c36b_fk_catalog_w FOREIGN KEY (wallreinforcementtype_id) REFERENCES public.catalog_wallreinforcementtype(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_rockwallmaterialunit_reinforcement_type DROP CONSTRAINT catalog_rockwallmate_wallreinforcementtyp_1a14c36b_fk_catalog_w;
       public          postgres    false    253    251    3080            i           2606    18420 Q   catalog_trademark catalog_trademark_brand_id_1f05b25a_fk_catalog_materialbrand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_trademark
    ADD CONSTRAINT catalog_trademark_brand_id_1f05b25a_fk_catalog_materialbrand_id FOREIGN KEY (brand_id) REFERENCES public.catalog_productbrand(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catalog_trademark DROP CONSTRAINT catalog_trademark_brand_id_1f05b25a_fk_catalog_materialbrand_id;
       public          postgres    false    227    247    3019            j           2606    18427 O   catalog_trademarkseries catalog_trademarkser_trademark_id_49fa59f5_fk_catalog_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.catalog_trademarkseries
    ADD CONSTRAINT catalog_trademarkser_trademark_id_49fa59f5_fk_catalog_t FOREIGN KEY (trademark_id) REFERENCES public.catalog_trademark(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.catalog_trademarkseries DROP CONSTRAINT catalog_trademarkser_trademark_id_49fa59f5_fk_catalog_t;
       public          postgres    false    3069    249    247            ]           2606    18160 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    2962    219            ^           2606    18165 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2980                   x������ � �            x������ � �      �   T  x��Y�n�D]�_�/`b�{�����I��lw��Jg`�D�k�F�`ݓi2I��D=n��Vlw�^Djۧνu��ܪ�k}��?����	gi|j���?�Gۓ��?;
	J�*�	�I�R�zU �x��L�(@�<�EO�$��3˓�/�>N� !;���D�a�"A�n�gyϗ�#��m� '��C^ qqN� �+R� �|��,�0��2��v�8>|��
��� ��_Ć�2��8�#�糔����.B�'3�W��q""����C~�ih�.��y�I�F�/�'�#��@�9�����04���*�3���>��l������=fgl���{���������Ok����b1��~*9ɺhM}&�d�f�3Zs�y����X��o|t���.�m�:�1{�����$2�d[��JM�Y��|�druȪn�	���'hHj��"�hH*�,�,��"�[vm�Ԫ�R^���^�F܇���0�A����N�~����������~Ƒ?9��Y`w�Q4$g4 ^D@��A��˄p�F��ن݊1`�|����>���t���H/�y�s3��j̥�eNGܭ1���9r��d���T�-��� ��O跼ɝ���S�fW/��m٥�zZ��(l�'[�'u�V��������V��+���x�G��}��s��lص���&�У�g�
���Q���	_��z�[��R~ꓭ�u)?6�V�Di����H8ٕ>`o�;cwl���������v���e��{]� =���Ts����,.C?��'��YLD+�3�*�d�
y�D�Ru����u�}��h<��ƛ��c�744�;��4��Px�H���H����q��<��*�?���!�kd˩7��r������D�,�h.�I$wg}Z�v"�k8i��ŉ���lc.\�b��(��o�X�%�9r�������E�ݧ5�%}��*�p-#T�"�zג�t;�~	+�F~/��f
���3Ȗ�����N��Ur���T���V��� ��I�\SN���ĕ�)��૩frD��PY�:���S?~i��m��)Z�W,�Z�P���Q���qђT%��L�&��J�=.�w@{��Y&���7uf�5�YI�8̞ǐֈ:����*�Ӥl��)6�2�:�������y<��f�j��\C�z.Х��Kԩg��T��3J�ӎ��'A��4?��CJCF��$5N)IAG��SRJAMB���YZod����N��,�CN��l=��\��8 u�z���s�ۓc.����򺨳) ��}`�5���L�IG4�_��Fik,r���o尟-n�'~��#j�&R��z�	��E
�`�3���H#������|fy}�;�_E�� ��F
K����7F
���@�e���ʲd�,o��9�~E�
���AE�
��ai�
�g*�h��ɗ��ةeg�ܴy��]m��i��A}�.��J�(�[#]��U�q�@�$Z�)��A�nm�á7ʋ{~6���qͭ��qP�7B����C����n����0������NO���?<:쩓��8�D�κ��������]tė�Ϋ2�]dȸ��ض�?�@�         �   x�U��
�@����-܅�3�:A%-D���䭬����m���Ҟ�$����pM@6f^�~[�]e��':h;�\�U:,�z���M������6�y�-��>#�@Z �'�+�	�|�8�H�4ō�B:������>��t�S�S��]�r�Ƒ���-            x������ � �            x������ � �         �   x�3�L+�ɉOJ,N�M�+�0���.l������m��.�دpaㅭ�+\l����V�����{.���T �:w��lj��e�Y�4:-193/���<4@�/6���e�	��j$�pA�NJL�+�t�Ƌ�@�07D�O9��1z\\\ ?ͥW         m   x�3�LN�M�+ἰ���{�x��& S�bÅ��M�]l�2�LL-�O.J-I�O�)M�0��n���
�\�}�_���.l�����[���]�{aW� �:�         ,   x�3�0�ہx��.#�s.��xaׅM6p��qqq s�      3      x�3�L2�1�t\F�I@�)W� 9�         9   x�3�0�¾��6\�ua߅M��;.l
m
m�2⼰�ى[E� tf0      5       x�3�L150�t\F�)f 6������� N��      7   !   x�3��540��\F@��)�md����� P�
            x�3��L�K-JJ-JO-����� D �            x������ � �      .      x������ � �      0      x������ � �         �   x�U�]
�0���S��?�$j�@,�V��}��A�AQ#���a�Fn
"��3��Pl�JS��δ��}C�^��|k�r�i�3-p���6{�T��#|B%�-qG�c�V�vFYZ�����'�/Ա���R�r"���r��f����3����yӁ��gmyW            x������ � �            x������ � �      9   A   x�3�4�K�4T�0��N#SNC#N3S.#Ns��D�Y����9�t@��$�6C�=... ���            x������ � �             x������ � �      "      x������ � �      ;      x������ � �      =      x������ � �      ?      x������ � �      ,      x������ � �      A      x������ � �      E      x������ � �      $   v   x�3�,N�I�O�-�ɯLMἰ�{.컰H����b���\Ɯř@%�i��)�%��ŕ�%���5̽0OA���[/lW r�\X��eę���Z����zL��F��=... ?#B�      &      x������ � �      (      x������ � �      C   �   x�]�1��@Ek�)r���6H�0����PDi(((�����fW�s#>���-����C&�,�c��6�c�����KX�Ƹ���h��J�h���U_��ϴ�>��f.8rx#X�}�?������@b��va_�)�M�dn	|���U�.�6.���Ιfʷ���%6����4�ڇ��N��O��)���Rw�Ћ�      *   W   x�3��M-I�ɉO/�L�0��֋M6\��;.�y�v]�p�_� I9\F�9��%��PM�7\l�� �ﻰ	]C� �z<�      
   �  x���[kWǟ�O��I���̹��ǐ�<�!F�֩�-��J����䡁�I��-���D�,߾��oԙ��>Z�b��Z��\��gf�%8�{ �@$ �N3n�1)��k.[��{~��uV�ŏ��/wz����%�_�x�r-X�L�"Z��?/v�̏�hD^���C&�	c�Ԟ|,^�s?�b�O�����S?i��fI�T�	�R�jQ�vP���R��H��IR�B�O�W���.���2��(2%��������G�?�#��7�x�bX71�f\3!]Z�U���^��NbH������2�ļ[�� <E���iz㏛x)�҈' <>�*&z������/0�Q���gtz��W���W��n��K�4�V����䣛��c��@"R��.;�8A��w�������7zO���򠳙/?�b����F�-�JH�,���p->ɇ�
E��3<j#�V��r_�褽��M�
M9���I�re���qA��f�UNT�<М'��7RQ�<E��VR�~<0�b������Ǚe�j�(���b�b�))LVU��&�h�K��1�P�sZq�*-��:D]5�NP����N�w� v�`%�g�m��a�-`
3m������G�Ė��T���r��u�¨a���	��/��'�LS�	>@�����ԝm?b�*a"
�18�j]V�nߐ�X8Rf�2k�v�^�2��|���òq��Ҥ�P�28Y��'gs�$ќ��R��v|g��~�!��+.j�����R@h�F�q�Ss��:�Ἠ�X�+\3�#��Q�O�d?�u�)�8T���Y��إ� e.��ԃ�C��t���	?�d�!���f�x��c�#_�T�tզ��0>)�p �[�e�}�C�2w�ޱ����I���R c����q+��*�b+^]���D�5F+�qe7+�Oxu*��晐8�����U���:��a�R�*����k[�~�[]���7��j�Q�2�����;���r������V�i�O�Yg���͇��~��b;�8�N] ��1��7iw��Vw�o�����j�B[W���K���~|�Dw��c����v�7��%��`�-�7�2��d�;j��O��x��T�l?���v���Y���U�ڌJ$��b��ǚs�<G�����Ҳ;����-��b6=�0ǭPձ����;��eKKK�S-�      �   -  x�u�Mr� ���0�@~{�n��&!�uO_l�vROv�{�'������B�`��(��Ue�J�a;��6�n,ڂ{�R��L��局�*8�.���Y��Gٜբ����)z�B�C��Yt$��\7V�Ɇ3��A�YȜ|��p�<�;��mW�:�{m>���JO���Y��n�����><i_6�I�Ls*4�U_^l#U�%�ߥ+��8�����X��٬a�
a��ћ0R�L찙�c�p<1:�c3�U�c�f�O�?~xX
�*8>���巋��}��:����s���K�.�R΁.W��7 ��u��      �      x����n�0F��S��*����,+Y��I���o߱�%dC6������h�!�!Ư��!�0�\W����M����45�WA;,�)�?K`	 H	*ܾ�"F ����n<p�ӗ�|?~z�����ی����2����um�`w�`��1�l`��B��Rw��o5�6�����6�H'�^��u]��=���JJyۻ?��Á��DI��[a]P���w�{J��R/���G.g<�z���¨֌��1�|�S��t4 �� D�܏S��Y�M�0�q�N})��ua��8͹�~����~���Q�y�d�\�g6�<�L�@b&ɅT���Hʨ�h]t���FQ)P�m U�>��m�ByZA���� +���i� � țf�5 ��O� � �ҥP�y��$���@6�nDU��@e_(�[w��f@��u��5@���[ �м`�=�P����
�h@�R��S��Ϋ�<o�fހ:O߯r��}�I�v      1     x�=�ˎ�0F����h�;��,��)��6��lk�J��ӏ�bg��$_t�� Nw����mj��L�qh.�v�_�75v�.���}����#Q��|����yF�#�<>�v:��o�l'#I�T>dk\oDS确�#Yv<#G�N�o΢4�}k�{��}���ST�ȿW�$,!֥�W]��ܮ���[;����A�
�O�T�a	,�E�.��:�p�{�3j�ě�ͫӥ��/�$T�E�#@�c<����D&s���'����eY��g     