create database ott_db;
use ott_db;

create table titles( 
show_id varchar(20) primary key,
title text,
type varchar(10),
director text, 
date_added date, 
release_year int,
rating varchar(10),
duration varchar(20),
description text, 
year_added int, 
month_added int );

create table genres(
show_id varchar(20),
genre varchar(100) );

create table countries( 
show_id varchar(20), 
country varchar(100) );

create table casts(
show_id varchar(20),
cast_name varchar(100) );




