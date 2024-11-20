/* MySQL Database for Tattoo Artist Finder */
/* seed file to insert rows into tables */
/* Author:	Antonio Keefe */
/* Date:	Nov. 8, 2024 */

USE TAT_FINDER;

-- Insert rows into the artists table 

INSERT INTO artists (name, city, phone, email, website, license) VALUES

('Aiden Smith', 'Lakeland', '555-124-4567', 'Aiden.Smith@maildrop.cc', 'www.example.com/asmith', 'TA123456'),
('Olivia Johnson', 'Lakeland', '555-234-5678', 'Olivia.Johnson@maildrop.cc', 'www.example.com/ojohnson', 'TA234567'),
('Liam Brown', 'Lakeland', '555-345-6789', 'Liam.Brown@maildrop.cc', 'www.example.com/lbrown', 'TA345678'),
('Emma Williams', 'Lakeland', '555-456-7890', 'Emma.Williams@maildrop.cc', 'www.example.com/ewilliams', 'TA456789'),
('Noah Jones', 'Lakeland', '555-567-8901', 'Noah.Jones@maildrop.cc', 'www.example.com/njones', 'TA567890'),
('Ava Garcia', 'Lakeland', '555-678-9012', 'Ava.Garcia@maildrop.cc', 'www.example.com/agarcia', 'TA678901'),
('Mason Miller', 'Tampa', '555-789-0123', 'Mason.Miller@maildrop.cc', 'www.example.com/mmiller', 'TA789012'),
('Sophia Davis', 'Tampa', '555-890-1234', 'Sophia.Davis@maildrop.cc', 'www.example.com/sdavis', 'TA890123'),
('Lucas Rodriguez', 'Tampa', '555-901-2345', 'Lucas.Rodriguez@maildrop.cc', 'www.example.com/lrodriguez', 'TA901234'),
('Isabella Martinez', 'Tampa', '555-112-3456', 'Isabella.Martinez@maildrop.cc', 'www.example.com/imartinez', 'TA012345'),
('Ethan Hernandez', 'Tampa', '555-135-2468', 'Ethan.Hernandez@maildrop.cc', 'www.example.com/ehernandez', 'TA112233'),
('Mia Lopez', 'Tampa', '555-246-3579', 'Mia.Lopez@maildrop.cc', 'www.example.com/mlopez', 'TA223344'),
('Logan Anderson', 'Tampa', '555-357-4680', 'Logan.Anderson@maildrop.cc', 'www.example.com/landerson', 'TA334455'),
('Amelia Wilson', 'Orlando', '555-468-5791', 'Amelia.Wilson@maildrop.cc', 'www.example.com/awilson', 'TA445566'),
('James Gonzalez', 'Orlando', '555-579-6802', 'James.Gonzalez@maildrop.cc', 'www.example.com/jgonzalez', 'TA556677'),
('Harper Thomas', 'Orlando', '555-680-7913', 'Harper.Thomas@maildrop.cc', 'www.example.com/hthomas', 'TA667788'),
('Benjamin Taylor', 'Orlando', '555-791-8024', 'Benjamin.Taylor@maildrop.cc', 'www.example.com/btaylor', 'TA778899'),
('Evelyn Moore', 'Orlando', '555-802-9135', 'Evelyn.Moore@maildrop.cc', 'www.example.com/emoore', 'TA889900'),
('Elijah Jackson', 'Orlando', '555-913-0246', 'Elijah.Jackson@maildrop.cc', 'www.example.com/ejackson', 'TA990011'),
('Abigail Martin', 'Orlando', '555-124-1357', 'Abigail.Martin@maildrop.cc', 'www.example.com/amartin', 'TA101112');

-- Insert rows into the styles table

INSERT INTO styles (style_name) VALUES
('Traditional'),
('Neo-Traditional'),
('New School'),
('Embroidery'),
('Watercolors'),
('Murals'),
('3-Dimensional'),
('Realism/Portraits'),
('Biomechanical'),
('Mandala'),
('Geometric'),
('Minimalist'),
('Japanese'),
('Tribal'),
('Celtic'),
('Trash Polka'),
('Dotwork'),
('Blackwork');

-- Insert rows into the categories table

INSERT INTO categories (category_name) VALUES
('Disney'),
('Star Wars'),
('Marvel/DC'),
('Harry Potter'),
('Doctor Who'),
('Game of Thrones'),
('Pokemon'),
('Dragon Ball'),
('Anime/Cartoons'),
('Video Games'),
('Sci-Fi/Fantasy'),
('Horror/Gothic'),
('Mythology'),
('Animals/Nature'),
('Cityscape/Skylines'),
('Military'),
('Faith-Based'),
('Pride');

-- Insert rows into the artist_styles table

INSERT INTO artist_styles (artist_id, style_id) VALUES
(1, 's01'), (1, 's02'), (1, 's03'), (1, 's04'), (1, 's05'), (1, 's06'), (1, 's08'),
(2, 's07'), (2, 's08'), (2, 's09'), (2, 's10'), (2, 's11'), (2, 's12'),
(3, 's13'), (3, 's14'), (3, 's15'), (3, 's16'), (3, 's17'), (3, 's18'), (3, 's09'), 
(4, 's02'), (4, 's04'), (4, 's06'), (4, 's08'), (4, 's10'), (4, 's12'), (4, 's14'), (4, 's16'), (4, 's18'),
(5, 's01'), (5, 's03'), (5, 's05'), (5, 's07'), (5, 's09'), (5, 's11'), (5, 's13'), (5, 's15'), (5, 's17'),
(6, 's01'), (6, 's04'), (6, 's07'), (6, 's10'), (6, 's13'), (6, 's16'),
(7, 's02'), (7, 's05'), (7, 's08'), (7, 's11'), (7, 's14'), (7, 's17'),
(8, 's03'), (8, 's06'), (8, 's09'), (8, 's12'), (8, 's15'), (8, 's18'),
(9, 's03'), (9, 's06'), (9, 's09'), (9, 's12'), (9, 's15'), (9, 's18'),
(10, 's01'), (10, 's02'), (10, 's03'), (10, 's04'), (10, 's05'), (10, 's06'),
(11, 's01'), (11, 's02'), (11, 's03'), (11, 's04'), (11, 's05'), (11, 's06'),
(12, 's07'), (12, 's08'), (12, 's09'), (12, 's10'), (12, 's11'), (12, 's12'),
(13, 's07'), (13, 's08'), (13, 's09'), (13, 's10'), (13, 's11'), (13, 's12'),
(14, 's13'), (14, 's14'), (14, 's15'), (14, 's16'), (14, 's17'), (14, 's18'),
(15, 's13'), (15, 's14'), (15, 's15'), (15, 's16'), (15, 's17'), (15, 's18'),
(16, 's05'), (16, 's07'), (16, 's10'), (16, 's11'), (16, 's14'), (16, 's15'), (16, 's16'), (16, 's17'), (16, 's18'),
(17, 's10'), (17, 's11'), (17, 's14'), (17, 's15'), (17, 's16'), (17, 's17'), (17, 's18'),
(18, 's02'), (18, 's04'), (18, 's05'), (18, 's07'), (18, 's08'), (18, 's09'), (18, 's12'), (18, 's13'), (18, 's14'),
(19, 's01'), (19, 's02'), (19, 's03'), (19, 's04'), (19, 's05'), (19, 's06'), (19, 's07'), (19, 's08'), (19, 's09'),
(20, 's10'), (20, 's11'), (20, 's12'), (20, 's13'), (20, 's14'), (20, 's15'), (20, 's16'), (20, 's17'), (20, 's18');


-- Insert rows into the artist_categories table

INSERT INTO artist_categories (artist_id, category_id) VALUES
(1, 'c01'), (1, 'c02'), (1, 'c03'), (1, 'c04'), (1, 'c05'), (1, 'c06'), (1, 'c18'),
(2, 'c07'), (2, 'c08'), (2, 'c09'), (2, 'c10'), (2, 'c11'), (2, 'c12'),
(3, 'c13'), (3, 'c14'), (3, 'c15'), (3, 'c16'), (3, 'c17'), (3, 'c18'),
(4, 'c01'), (4, 'c03'), (4, 'c05'), (4, 'c07'), (4, 'c09'), (4, 'c11'), (4, 'c13'), (4, 'c15'), (4, 'c17'),
(5, 'c02'), (5, 'c04'), (5, 'c06'), (5, 'c08'), (5, 'c10'), (5, 'c12'), (5, 'c14'), (5, 'c16'), (5, 'c18'),
(6, 'c02'), (6, 'c05'), (6, 'c08'), (6, 'c11'), (6, 'c14'), (6, 'c17'),
(7, 'c01'), (7, 'c04'), (7, 'c07'), (7, 'c10'), (7, 'c13'), (7, 'c16'),
(8, 'c02'), (8, 'c05'), (8, 'c08'), (8, 'c11'), (8, 'c14'), (8, 'c17'),
(9, 'c04'), (9, 'c07'), (9, 'c10'), (9, 'c13'), (9, 'c16'), (9, 'c18'),
(10, 'c07'), (10, 'c08'), (10, 'c09'), (10, 'c10'), (10, 'c11'), (10, 'c12'),
(11, 'c13'), (11, 'c14'), (11, 'c15'), (11, 'c16'), (11, 'c17'), (11, 'c18'),
(12, 'c01'), (12, 'c02'), (12, 'c03'), (12, 'c04'), (12, 'c05'), (12, 'c06'),
(13, 'c13'), (13, 'c14'), (13, 'c15'), (13, 'c16'), (13, 'c17'), (13, 'c18'),
(14, 'c01'), (14, 'c02'), (14, 'c03'), (14, 'c04'), (14, 'c05'), (14, 'c06'),
(15, 'c07'), (15, 'c08'), (15, 'c09'), (15, 'c10'), (15, 'c11'), (15, 'c12'),
(16, 'c03'), (16, 'c04'), (16, 'c05'), (16, 'c06'), (16, 'c09'), (16, 'c14'), (16, 'c15'), (16, 'c16'), (16, 'c18'),
(17, 'c09'), (17, 'c14'), (17, 'c15'), (17, 'c16'), (17, 'c18'),
(18, 'c03'), (18, 'c04'), (18, 'c05'), (18, 'c06'), (18, 'c09'), (18, 'c10'), (18, 'c11'), (18, 'c12'), (18, 'c18'), 
(19, 'c10'), (19, 'c11'), (19, 'c12'), (19, 'c13'), (19, 'c14'), (19, 'c15'), (19, 'c16'), (19, 'c17'), (19, 'c18'),
(20, 'c01'), (20, 'c02'), (20, 'c03'), (20, 'c04'), (20, 'c05'), (20, 'c06'), (20, 'c07'), (20, 'c08'), (20, 'c09');
