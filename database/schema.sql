/* MySQL Database for Tattoo Artist Finder */
/* schema file to create database & tables */
/* Author:	Antonio Keefe */
/* Date:	Nov. 8, 2024 */

DROP DATABASE IF EXISTS TAT_FINDER;

CREATE DATABASE TAT_FINDER;
USE TAT_FINDER;

-- Create table for Artists

CREATE TABLE artists (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    website VARCHAR(100),
    license VARCHAR(100)
);

-- Create table for Styles

CREATE TABLE styles (
    id VARCHAR(10) PRIMARY KEY,
    style_name VARCHAR(100)
);

DELIMITER //
CREATE TRIGGER before_insert_styles
BEFORE INSERT ON styles
FOR EACH ROW
BEGIN
    SET @new_id = (SELECT CONCAT('s', LPAD(COALESCE(MAX(CAST(SUBSTRING(id, 2) AS UNSIGNED)), 0) + 1, 2, '0')) FROM styles);
    SET NEW.id = @new_id;
END;
//
DELIMITER ;

-- Create table for Categories

CREATE TABLE categories (
    id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(100)
);

DELIMITER //
CREATE TRIGGER before_insert_categories
BEFORE INSERT ON categories
FOR EACH ROW
BEGIN
    SET @new_id = (SELECT CONCAT('c', LPAD(COALESCE(MAX(CAST(SUBSTRING(id, 2) AS UNSIGNED)), 0) + 1, 2, '0')) FROM categories);
    SET NEW.id = @new_id;
END;
//
DELIMITER ;

-- Create linking tables

CREATE TABLE artist_styles (
    artist_id INT,
    style_id VARCHAR(10),
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    FOREIGN KEY (style_id) REFERENCES styles(id),
    PRIMARY KEY (artist_id, style_id)
);

CREATE TABLE artist_categories (
    artist_id INT,
    category_id VARCHAR(10),
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    FOREIGN KEY (category_id) REFERENCES categories(id),
    PRIMARY KEY (artist_id, category_id)
);
