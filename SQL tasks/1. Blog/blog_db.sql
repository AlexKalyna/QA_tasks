DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog; 
USE blog;


CREATE TABLE users (
user_id INT NOT NULL AUTO_INCREMENT ,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender VARCHAR(1),
email VARCHAR(50) NOT NULL,
phone VARCHAR(16),
birh_date DATE,
password VARCHAR(30) NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE posts (
post_id INT NOT NULL AUTO_INCREMENT,
author_id INT,
title TEXT(50),
post TEXT(5000),
creation_date DATE,
PRIMARY KEY(post_id)
);

ALTER TABLE posts ADD
FOREIGN KEY (author_id) REFERENCES users(user_id);


CREATE TABLE thematic_tags (
tag_id INT NOT NULL AUTO_INCREMENT,
tag VARCHAR(50),
PRIMARY KEY(tag_id)
);

CREATE TABLE post_tags (
post_id INT NOT NULL,
tag_id INT NOT NULL,
PRIMARY KEY (post_id, tag_id)
);

ALTER TABLE post_tags
ADD FOREIGN KEY (post_id) REFERENCES posts(post_id),
ADD FOREIGN KEY (tag_id) REFERENCES thematic_tags(tag_id);

-- TEST DATA--

-- users TABLE

INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Allister', 'Huckleby', 'M', 'ahuckleby0@irs.gov', '722-973-7299', '1996-7-16', 'ZMA7rapm');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Thor', 'Crownshaw', 'M', 'tcrownshaw1@nydailynews.com', '664-750-3554', '1982-7-8', 'U5PcgmCAFW');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Frayda', 'Jorio', 'F', 'fjorio2@icq.com', '488-799-1788', '1987-9-27', 'meDfx4fS2m2');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Felix', 'Ingall', 'M', 'fingall3@economist.com', '969-635-3071', '1997-4-27', 'Isf1NxA');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Kakalina', 'While', 'F', 'kwhile4@ed.gov', '337-291-9929', '1998-3-20', 'fXDHiOlCXaS');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Elinor', 'Narracott', 'F', 'enarracott5@time.com', '773-297-1090', '2003-2-11', '2K5bem');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Vladamir', 'Hindenberger', 'M', 'vhindenberger6@4shared.com', '402-475-3320', '1980-4-26', 'TPuZ3DOk0v6Z');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Charlie', 'Loton', 'M', 'cloton7@oaic.gov.au', '209-190-9254', '1997-5-11', 'ahDzwSG');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Carree', 'Portinari', 'F', 'cportinari8@google.com', '663-914-8261', '1997-12-22', 'K3n5tycyooE');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Gypsy', 'Bailey', 'F', 'gbailey9@xrea.com', '628-598-6870', '1988-11-30', 'APjjQ7');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Ambur', 'Fearnley', 'F', 'afearnleya@constantcontact.com', '988-384-2985', '1992-11-23', 'qHTbAWW');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Mallorie', 'Candelin', 'F', 'mcandelinb@columbia.edu', '835-493-7017', '2000-4-8', 't479snAuCEOc');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Helene', 'Franchi', 'F', 'hfranchic@harvard.edu', '350-907-0485', '2003-2-14', 'OY0KL32Exbc');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Ken', 'Cunniff', 'M', 'kcunniffd@nature.com', '371-210-6389', '1979-7-5', 'Bolx4F');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Cordey', 'Hylton', 'F', 'chyltone@trellian.com', '884-709-1848', '2000-7-17', '6HI885C');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Rickert', 'Kinane', 'M', 'rkinanef@goodreads.com', '512-853-9178', '1987-12-8', 'am2QVvX9pvQ');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Yard', 'Fauguel', 'M', 'yfauguelg@typepad.com', '348-641-9877', '1997-6-29', 'OWrXCmk');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Mickie', 'Thoresbie', 'F', 'mthoresbieh@creativecommons.org', '417-885-8353', '1988-3-31', 'LAt3wl1N');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Jamaal', 'Abramovici', 'M', 'jabramovicii@tiny.cc', '867-783-5698', '1995-5-24', 'GuDFVtBN6yX');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Orson', 'Housen', 'M', 'ohousenj@jigsy.com', '296-500-6044', '1981-3-11', 'OIXbZe');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Ema', 'Gyenes', 'F', 'egyenesk@statcounter.com', '673-114-7020', '1978-7-11', 'OGilEWIDaF');
INSERT INTO users(first_name, last_name, gender, email, phone, birh_date, password) VALUES ('Ilario', 'Fleisch', 'M', 'ifleischl@elegantthemes.com', '793-876-0656', '2000-3-23', '4z5wq5');

-- posts TABLE

INSERT INTO posts(author_id, title, post, creation_date) VALUES (22, 'Primis in faucibus', 'Urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2020-01-01');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (20, 'Proin risus praesent lectus', 'Ultrices Audi mattis odio Bentley donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', '2020-01-02');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (18, 'Scelerisque quam turpis adipiscing lorem', 'Ipsum praesent BMW blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', '2020-01-10');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (16, 'In eleifend quam a odio', 'Torbi Bugatti non  quam nec dui luctus rutrum nulla tellus in sagittis dui vel', '2020-01-22');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (14, 'Eget tempus vel', 'Gel Mazda accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', '2020-01-07');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (12, 'Ti integer ac', 'Duspendisse Infiniti potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '2020-01-04');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (10, 'Curabitur Lexus convallis duis consequat', 'Dagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', '2020-01-05');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (8, 'Maecenas Land Rover tincidunt lacus', 'Ied accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', '2020-01-01');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (6, 'Kusto in hac', 'Qroin Lamborghini leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2020-01-04');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (4, 'Jestibulum ante', 'Wassa Mercedes-Benz donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', '2020-01-09');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (2, 'Hellentesque quisque porta', 'Ruis Ford odio consequat varius integer ac leo pellentesque ultrices mattis', '2020-01-22');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (4, 'Gaculis diam erat fermentum', 'Ru Toyota tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2020-01-10');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (6, 'Furus sit amet nulla quisque', 'Torbi Ford, Audi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', '2020-01-03');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (8, 'Dibh in', 'Hellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', '2020-01-22');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (10, 'Sringilla rhoncus mauris enim', 'Nmet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '2020-01-04');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (12, 'Aget congue eget', 'Burus Toyota, Ford, Mercedes-Benz, Bugatti, Bentley eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', '2020-01-05');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (12, 'Luctus ultricies eu nibh', 'Visl Mazda, Land Rover nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', '2020-01-04');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (12, 'Sede ullamcorper', 'Conec ut mauris eget massa tempor convallis nulla neque libero convallis', '2020-01-22');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (2, 'Mongue diam id', 'Busto lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', '2020-01-03');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (4, 'Siso sojohhhkh', 'Nuis at velit eu est congue elementum in hac habitasse platea dictumst morbi', '2020-01-07');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (4, 'Bascetur ridiculus mus', 'Brci BMW, Lexus, Lamborghini luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', '2020-01-09');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (18, 'Xel accumsan tellus nisi eu', 'Blatea Mazda, Bugatti, Land Rover, Mercedes-Benz, Toyota, Ford dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', '2020-01-08');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (22, 'Sonsequat ut', 'Vuis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2020-01-02');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (22, 'Zuam suspendisse potenti nullam porttitor', 'Deugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', '2020-01-04');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (16, 'Shasellus in felis donec semper sapien a libero','Brci Bentley, Mercedes-Benz, Toyota luctus et ultrices posuere cubilia suspendisse potenti in eleifend quam a odio in hac habitasse', '2020-01-03');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (14, 'Id nisl venenatis', 'Eu Audi orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', '2020-01-22');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (8, 'Vestibulum sit amet cursus', 'Sapien  Audi, Infiniti, Ford, BMW a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2020-01-09');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (6, 'Quis odio consequat varius', 'M Audi, Infiniti viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', '2020-01-09');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (22, 'Mattis odio donec vitae', 'Cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2020-01-07');
INSERT INTO posts(author_id, title, post, creation_date) VALUES (20, 'Sodio in', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', '2020-01-23');

-- thematic_tags TABLE

INSERT INTO thematic_tags(tag) VALUES ('Audi');
INSERT INTO thematic_tags(tag) VALUES ('Bentley');
INSERT INTO thematic_tags(tag) VALUES ('BMW');
INSERT INTO thematic_tags(tag) VALUES ('Bugatti');
INSERT INTO thematic_tags(tag) VALUES ('Mazda');
INSERT INTO thematic_tags(tag) VALUES ('Infiniti');
INSERT INTO thematic_tags(tag) VALUES ('Lexus');
INSERT INTO thematic_tags(tag) VALUES ('Land Rover');
INSERT INTO thematic_tags(tag) VALUES ('Lamborghini');
INSERT INTO thematic_tags(tag) VALUES ('Mercedes-Benz');
INSERT INTO thematic_tags(tag) VALUES ('Ford');
INSERT INTO thematic_tags(tag) VALUES ('Toyota');

-- post_tags TABLE

INSERT INTO post_tags VALUES (2, 1);
INSERT INTO post_tags VALUES (2, 2);
INSERT INTO post_tags VALUES (3, 3);
INSERT INTO post_tags VALUES (4, 4);
INSERT INTO post_tags VALUES (5, 5);
INSERT INTO post_tags VALUES (6, 6);
INSERT INTO post_tags VALUES (7, 7);
INSERT INTO post_tags VALUES (8, 8);
INSERT INTO post_tags VALUES (9, 9);
INSERT INTO post_tags VALUES (10, 10);
INSERT INTO post_tags VALUES (11, 11);
INSERT INTO post_tags VALUES (12, 12);
INSERT INTO post_tags VALUES (13, 11);
INSERT INTO post_tags VALUES (13, 1);
INSERT INTO post_tags VALUES (16, 12);
INSERT INTO post_tags VALUES (16, 11);
INSERT INTO post_tags VALUES (16, 10);
INSERT INTO post_tags VALUES (16, 4);
INSERT INTO post_tags VALUES (16, 2);
INSERT INTO post_tags VALUES (17, 5);
INSERT INTO post_tags VALUES (17, 8);
INSERT INTO post_tags VALUES (21, 3);
INSERT INTO post_tags VALUES (21, 7);
INSERT INTO post_tags VALUES (21, 9);
INSERT INTO post_tags VALUES (22, 5);
INSERT INTO post_tags VALUES (22, 4);
INSERT INTO post_tags VALUES (22, 8);
INSERT INTO post_tags VALUES (22, 10);
INSERT INTO post_tags VALUES (22, 12);
INSERT INTO post_tags VALUES (22, 11);
INSERT INTO post_tags VALUES (25, 2);
INSERT INTO post_tags VALUES (25, 10);
INSERT INTO post_tags VALUES (25, 12);
INSERT INTO post_tags VALUES (26, 1);
INSERT INTO post_tags VALUES (27, 1);
INSERT INTO post_tags VALUES (27, 6);
INSERT INTO post_tags VALUES (27, 11);
INSERT INTO post_tags VALUES (28, 1);
INSERT INTO post_tags VALUES (28, 8);
