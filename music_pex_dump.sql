PGDMP                         {           Pex-AW    13.11    13.11     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16928    Pex-AW    DATABASE     m   CREATE DATABASE "Pex-AW" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "Pex-AW";
                postgres    false            �          0    16989    albums 
   TABLE DATA           M   COPY music_catalog.albums (album_id, title, release_date, genre) FROM stdin;
    music_catalog          postgres    false    204   G       �          0    17010    rightsholders 
   TABLE DATA           E   COPY music_catalog.rightsholders (rightsholder_id, name) FROM stdin;
    music_catalog          postgres    false    208   d       �          0    17018    rightsholders_organization 
   TABLE DATA           M   COPY music_catalog.rightsholders_organization (org_id, org_name) FROM stdin;
    music_catalog          postgres    false    210   �       �          0    16997    tracks 
   TABLE DATA           L   COPY music_catalog.tracks (track_id, title, duration, album_id) FROM stdin;
    music_catalog          postgres    false    206   �       �          0    16979    users 
   TABLE DATA           I   COPY music_catalog.users (user_id, username, password, role) FROM stdin;
    music_catalog          postgres    false    202   �       �           0    0    albums_album_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('music_catalog.albums_album_id_seq', 1, false);
          music_catalog          postgres    false    203            �           0    0 %   rightsholders_organization_org_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('music_catalog.rightsholders_organization_org_id_seq', 1, false);
          music_catalog          postgres    false    209            �           0    0 !   rightsholders_rightsholder_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('music_catalog.rightsholders_rightsholder_id_seq', 1, false);
          music_catalog          postgres    false    207            �           0    0    tracks_track_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('music_catalog.tracks_track_id_seq', 1, false);
          music_catalog          postgres    false    205            �           0    0    users_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('music_catalog.users_user_id_seq', 1, false);
          music_catalog          postgres    false    201            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     