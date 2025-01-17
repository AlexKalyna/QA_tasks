
DROP DATABASE IF EXISTS ok_twitter;
CREATE DATABASE ok_twitter; 
USE ok_twitter;

CREATE TABLE users (
user_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender VARCHAR(1),
email VARCHAR(50) NOT NULL,
phone VARCHAR(16),
birth_date DATE,
password VARCHAR(30) NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE twits (
twit_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
twit TEXT(5000),
post_date DATETIME,
PRIMARY KEY(twit_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
comment_id INT NOT NULL AUTO_INCREMENT,
comment_text VARCHAR(500),
user_id INT,
twit_id INT,
creation_date DATETIME,
PRIMARY KEY(comment_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (twit_id) REFERENCES twits(twit_id)
);


CREATE TABLE followers (
user_id INT,
follower_id INT,
PRIMARY KEY (user_id, follower_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (follower_id) REFERENCES users(user_id)	
);

-- TEST DATA--

-- users TABLE

INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Allister', 'Huckleby', 'M', 'ahuckleby0@irs.gov', '722-973-7299', '1996-7-16', 'ZMA7rapm');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Thor', 'Crownshaw', 'M', 'tcrownshaw1@nydailynews.com', '664-750-3554', '1982-7-8', 'U5PcgmCAFW');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Frayda', 'Jorio', 'F', 'fjorio2@icq.com', '488-799-1788', '1987-9-27', 'meDfx4fS2m2');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Felix', 'Ingall', 'M', 'fingall3@economist.com', '969-635-3071', '1997-4-27', 'Isf1NxA');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Kakalina', 'While', 'F', 'kwhile4@ed.gov', '337-291-9929', '1998-3-20', 'fXDHiOlCXaS');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Elinor', 'Narracott', 'F', 'enarracott5@time.com', '773-297-1090', '2003-2-11', '2K5bem');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Vladamir', 'Hindenberger', 'M', 'vhindenberger6@4shared.com', '402-475-3320', '1980-4-26', 'TPuZ3DOk0v6Z');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Charlie', 'Loton', 'M', 'cloton7@oaic.gov.au', '209-190-9254', '1997-5-11', 'ahDzwSG');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Carree', 'Portinari', 'F', 'cportinari8@google.com', '663-914-8261', '1997-12-22', 'K3n5tycyooE');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Gypsy', 'Bailey', 'F', 'gbailey9@xrea.com', '628-598-6870', '1988-11-30', 'APjjQ7');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Ambur', 'Fearnley', 'F', 'afearnleya@constantcontact.com', '988-384-2985', '1992-11-23', 'qHTbAWW');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Mallorie', 'Candelin', 'F', 'mcandelinb@columbia.edu', '835-493-7017', '2000-4-8', 't479snAuCEOc');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Helene', 'Franchi', 'F', 'hfranchic@harvard.edu', '350-907-0485', '2003-2-14', 'OY0KL32Exbc');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Ken', 'Cunniff', 'M', 'kcunniffd@nature.com', '371-210-6389', '1979-7-5', 'Bolx4F');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Cordey', 'Hylton', 'F', 'chyltone@trellian.com', '884-709-1848', '2000-7-17', '6HI885C');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Rickert', 'Kinane', 'M', 'rkinanef@goodreads.com', '512-853-9178', '1987-12-8', 'am2QVvX9pvQ');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Yard', 'Fauguel', 'M', 'yfauguelg@typepad.com', '348-641-9877', '1997-6-29', 'OWrXCmk');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Mickie', 'Thoresbie', 'F', 'mthoresbieh@creativecommons.org', '417-885-8353', '1988-3-31', 'LAt3wl1N');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Jamaal', 'Abramovici', 'M', 'jabramovicii@tiny.cc', '867-783-5698', '1995-5-24', 'GuDFVtBN6yX');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Orson', 'Housen', 'M', 'ohousenj@jigsy.com', '296-500-6044', '1981-3-11', 'OIXbZe');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Ema', 'Gyenes', 'F', 'egyenesk@statcounter.com', '673-114-7020', '1978-7-11', 'OGilEWIDaF');
INSERT INTO users(first_name, last_name, gender, email, phone, birth_date, password) VALUES ('Ilario', 'Fleisch', 'M', 'ifleischl@elegantthemes.com', '793-876-0656', '2000-3-23', '4z5wq5');

-- twits TABLE 

INSERT INTO twits(user_id, twit, post_date) VALUES (22, 'Urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2020-01-01');
INSERT INTO twits(user_id, twit, post_date) VALUES (20, 'Ultrices mattis odio Bentley donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', '2020-04-02');
INSERT INTO twits(user_id, twit, post_date) VALUES (18, 'Ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', '2020-01-10');
INSERT INTO twits(user_id, twit, post_date) VALUES (16, 'Torbi non  quam nec dui luctus rutrum nulla tellus in sagittis dui vel', '2020-02-22');
INSERT INTO twits(user_id, twit, post_date) VALUES (14, 'Gel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', '2020-01-07');
INSERT INTO twits(user_id, twit, post_date) VALUES (12, 'Duspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '2020-01-04');
INSERT INTO twits(user_id, twit, post_date) VALUES (10, 'Dagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', '2020-01-05');
INSERT INTO twits(user_id, twit, post_date) VALUES (8, 'Ied accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', '2020-03-01');
INSERT INTO twits(user_id, twit, post_date) VALUES (6, 'Qroin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2020-02-04');
INSERT INTO twits(user_id, twit, post_date) VALUES (4, 'Wassa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', '2020-01-09');
INSERT INTO twits(user_id, twit, post_date) VALUES (2, 'Ruis odio consequat varius integer ac leo pellentesque ultrices mattis', '2020-03-22');
INSERT INTO twits(user_id, twit, post_date) VALUES (4, 'Ru tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2020-01-10');
INSERT INTO twits(user_id, twit, post_date) VALUES (6, 'Torbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', '2020-04-03');
INSERT INTO twits(user_id, twit, post_date) VALUES (8, 'Hellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', '2020-01-22');
INSERT INTO twits(user_id, twit, post_date) VALUES (10, 'Nmet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '2020-01-04');
INSERT INTO twits(user_id, twit, post_date) VALUES (12, 'Burus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', '2020-01-05');
INSERT INTO twits(user_id, twit, post_date) VALUES (12, 'Visl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', '2020-01-04');
INSERT INTO twits(user_id, twit, post_date) VALUES (12, 'Conec ut mauris eget massa tempor convallis nulla neque libero convallis', '2020-01-22');
INSERT INTO twits(user_id, twit, post_date) VALUES (2, 'Busto lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', '2020-01-03');
INSERT INTO twits(user_id, twit, post_date) VALUES (4, 'Nuis at velit eu est congue elementum in hac habitasse platea dictumst morbi', '2020-02-07');
INSERT INTO twits(user_id, twit, post_date) VALUES (4, 'Brci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', '2020-01-09');
INSERT INTO twits(user_id, twit, post_date) VALUES (18, 'Blatea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', '2020-01-08');
INSERT INTO twits(user_id, twit, post_date) VALUES (22, 'Vuis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2020-01-02');
INSERT INTO twits(user_id, twit, post_date) VALUES (22, 'Deugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', '2020-03-04');
INSERT INTO twits(user_id, twit, post_date) VALUES (16, 'Brci luctus et ultrices posuere cubilia suspendisse potenti in eleifend quam a odio in hac habitasse', '2020-01-03');
INSERT INTO twits(user_id, twit, post_date) VALUES (14, 'Eu Audi orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', '2020-01-22');
INSERT INTO twits(user_id, twit, post_date) VALUES (8, 'Sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2020-01-09');
INSERT INTO twits(user_id, twit, post_date) VALUES (6, 'Mo viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', '2020-01-09');
INSERT INTO twits(user_id, twit, post_date) VALUES (22, 'Cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2020-01-07');
INSERT INTO twits(user_id, twit, post_date) VALUES (20, 'Quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', '2020-03-23');
INSERT INTO twits(user_id, twit, post_date) VALUES (21, 'Vuis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2020-01-14');

-- comments TABLE

INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Waited period are played family man formed. He ye body or made on pain part meet. You one delay nor begin our folly abode.', 1, 1, '2020-03-07 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Of friendship on inhabiting diminution discovered as. Did friendly eat breeding building few nor. Object he barton no effect played valley afford.', 2, 1, '2020-02-17 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly.', 7, 3, '2020-03-27 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Do play they miss give so up. Words to up style of since world. We leaf to snug on no need.', 8, 7, '2020-04-15 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Was certainty remaining engrossed applauded sir how discovery. Settled opinion how enjoyed greater joy adapted too shy. Now properly surprise expenses interest nor replying she she.', 9, 4, '2020-03-09 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Bore tall nay many many time yet less. Doubtful for answered one fat indulged margaret sir shutters together.', 10, 6, '2020-01-07 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Was certainty remaining engrossed applauded sir how discovery. Settled opinion how enjoyed greater joy adapted too shy. Now properly surprise expenses interest nor replying she she.', 11, 7, '2020-04-12 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Ladies so in wholly around whence in at. Warmth he up giving oppose if. Impossible is dissimilar entreaties oh on terminated. Earnest studied article country ten respect showing had.', 12, 3, '2020-03-16 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Manor we shall merit by chief wound no or would. Oh towards between subject passage sending mention or it.', 16, 9, '2020-02-22 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Sight happy do burst fruit to woody begin at. Assurance perpetual he in oh determine as. The year paid met him does eyes same.', 18, 10, '2020-01-21 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Saw yet kindness too replying whatever marianne. Old sentiments resolution admiration unaffected its mrs literature.', 19, 12, '2020-01-25 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Behaviour new set existence dashwoods. It satisfied to mr commanded consisted disposing engrossed.', 19, 12, '2020-02-28 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Oh he decisively impression attachment friendship so if everything. Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.', 14, 13, '2020-03-23 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Sn so attention necessary at by provision otherwise existence direction. Unpleasing up announcing unpleasant themselves oh do on.', 13, 3, '2020-04-05 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Situation admitting promotion at or to perceived be. Mr acuteness we as estimable enjoyment up. An held late as felt know. Learn do allow solid to grave.', 8, 1, '2020-04-02 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Middleton suspicion age her attention. Chiefly several bed its wishing. Is so moments on chamber pressed to.', 7, 16, '2020-01-29 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Doubtful yet way properly answered humanity its desirous. Minuter believe service arrived civilly add all.', 11, 12, '2020-03-19 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Acuteness allowance an at eagerness favourite in extensive exquisite ye.', 4, 12, '2020-02-12 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Detract yet delight written farther his general. If in so bred at dare rose lose good. Feel and make two real miss use easy.', 3, 13, '2020-03-16 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Celebrated delightful an especially increasing instrument am. Indulgence contrasted sufficient to unpleasant in in insensible favourable.', 17, 3, '2020-02-15 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Latter remark hunted enough vulgar say man. Sitting hearted on it without me.', 13, 1, '2020-03-24 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('As moonlight of my resolving unwilling.', 9, 16, '2020-03-06 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Her rest west each spot his and you knew. Estate gay wooded depart six far her. Of we be have it lose gate bred. Do separate removing or expenses in.', 6, 12, '2020-02-02 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('By an outlived insisted procured improved am. Paid hill fine ten now love even leaf. Supplied feelings mr of dissuade recurred no it offering honoured.', 15, 12, '2020-04-01 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Am of of in collecting devonshire favourable excellence. Her sixteen end ashamed cottage yet reached get hearing invited.', 17, 6, '2020-02-27 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Resources ourselves sweetness ye do no perfectly. Warmly warmth six one any wisdom. Family giving is pulled beauty chatty highly no. Blessing appetite domestic did mrs judgment rendered entirely.', 2, 20, '2020-03-15 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Opinion regular in perhaps another enjoyed no engaged he at. It conveying he continual ye suspected as necessary.', 1, 1, '2020-01-07 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in.', 5, 22, '2020-01-30 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Sister depend change off piqued one. Contented continued any happiness instantly objection yet her allowance. Use correct day new brought tedious. By come this been in. Kept easy or sons my it done.', 9, 14, '2020-03-16 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Savings her pleased are several started females met. Short her not among being any. Thing of judge fruit charm views do.', 4, 12, '2020-03-21 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Prevent on present hastily passage an subject in be. Be happiness arranging so newspaper defective affection ye.', 3, 7, '2020-02-22 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('He do subjects prepared bachelor juvenile ye oh. He feelings removing informed he as ignorant we prepared. Evening do forming observe spirits is in.', 18, 17, '2020-04-05 02:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Celebrated if remarkably especially an. Going eat set she books found met aware.', 12, 3, '2020-02-14 13:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Celebrdsgrsg if remarkably especially an. Going eat set she books found met aware.', 12, 3, '2020-07-13 08:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Celebrdsgrsg if remarkably especially an. Going eat set she books found met aware.', 12, 3, '2020-07-12 09:30:12');
INSERT INTO comments(comment_text, user_id, twit_id, creation_date) VALUES ('Prevent on present hastily passage an subject in be. Be happiness arranging so newspaper defective affection ye.', 3, 7, '2020-07-14 08:10:12');

-- followers 

INSERT INTO followers(user_id, follower_id) VALUES (1, 7);
INSERT INTO followers(user_id, follower_id) VALUES (3, 7);
INSERT INTO followers(user_id, follower_id) VALUES (5, 1);
INSERT INTO followers(user_id, follower_id) VALUES (8, 7);
INSERT INTO followers(user_id, follower_id) VALUES (6, 2);
INSERT INTO followers(user_id, follower_id) VALUES (6, 4);
INSERT INTO followers(user_id, follower_id) VALUES (17, 7);
INSERT INTO followers(user_id, follower_id) VALUES (8, 21);
INSERT INTO followers(user_id, follower_id) VALUES (9, 11);
INSERT INTO followers(user_id, follower_id) VALUES (9, 13);
INSERT INTO followers(user_id, follower_id) VALUES (10, 9);
INSERT INTO followers(user_id, follower_id) VALUES (10, 3);
INSERT INTO followers(user_id, follower_id) VALUES (19, 14);
INSERT INTO followers(user_id, follower_id) VALUES (5, 20);
INSERT INTO followers(user_id, follower_id) VALUES (14, 7);
INSERT INTO followers(user_id, follower_id) VALUES (12, 7);
INSERT INTO followers(user_id, follower_id) VALUES (16, 12);
INSERT INTO followers(user_id, follower_id) VALUES (19, 7);
INSERT INTO followers(user_id, follower_id) VALUES (20, 7);
INSERT INTO followers(user_id, follower_id) VALUES (22, 1);
INSERT INTO followers(user_id, follower_id) VALUES (22, 2);
INSERT INTO followers(user_id, follower_id) VALUES (22, 5);
INSERT INTO followers(user_id, follower_id) VALUES (22, 12);
INSERT INTO followers(user_id, follower_id) VALUES (22, 14);
INSERT INTO followers(user_id, follower_id) VALUES (17, 16);
INSERT INTO followers(user_id, follower_id) VALUES (22, 17);
INSERT INTO followers(user_id, follower_id) VALUES (22, 18);
INSERT INTO followers(user_id, follower_id) VALUES (22, 21);
INSERT INTO followers(user_id, follower_id) VALUES (22, 15);
INSERT INTO followers(user_id, follower_id) VALUES (22, 16);
INSERT INTO followers(user_id, follower_id) VALUES (22, 20);