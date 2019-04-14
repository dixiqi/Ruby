CREATE DATABASE IF NOT EXISTS test;
USE test;

create table products( `id` int unsigned NOT NULL AUTO_INCREMENT, `name` varchar(50) NOT NULL, `price` int, `model` varchar(20), `details` text, PRIMARY KEY (`id`))