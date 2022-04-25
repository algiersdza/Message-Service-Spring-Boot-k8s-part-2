-- INSERT INTO statements for messageservice

-- Subscribe table,
INSERT INTO subscribe (subscriberid, subscriberfirstname, subscriberlastname) VALUES ('8dfb2899-aa78-11ec-aadd-f02f74f4d78a', 'Joe', 'Wo');
INSERT INTO subscribe (subscriberid, subscriberfirstname, subscriberlastname) VALUES ('8dfc16f0-aa78-11ec-aadd-f02f74f4d78a', 'Omar','Green');


-- Produce table
INSERT INTO produce (producerid, producerfirstname, producerlastname) VALUES ('8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','Ibrahim','Hermouche');
INSERT INTO produce (producerid, producerfirstname, producerlastname) VALUES ('8dfb2899-aa78-11ec-aadd-f02f74f4d78a','Joe','Wo');


-- Produce_Subscribe Table
-- Omar green subscribed to Ibrahim
INSERT INTO produce_subscribe (producerid, subscriberid) 
VALUES ('8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','8dfc16f0-aa78-11ec-aadd-f02f74f4d78a');
-- Joe Wo subscribed to Ibrahim
INSERT INTO produce_subscribe (producerid, subscriberid) 
VALUES ('8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','8dfb2899-aa78-11ec-aadd-f02f74f4d78a');
-- Omar subscribed to Joe Wo
INSERT INTO produce_subscribe (producerid, subscriberid) 
VALUES ('8dfb2899-aa78-11ec-aadd-f02f74f4d78a','8dfc16f0-aa78-11ec-aadd-f02f74f4d78a');

-- Message table
-- Ibrahim says hello world i am ibrahim
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('1','Hello world!, I am Ibrahim!','8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','2022-02-01 09:00:02');

-- Ibrahim says Please subscribe to me for the up to date news!
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('2','Please subscribe to me for the up to date news!','8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','2022-02-02 09:02:00');

-- Joe WO says Happy New Year!
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('3','Happy New Year!','8dfb2899-aa78-11ec-aadd-f02f74f4d78a','2022-01-01 00:01:03');

-- Joe WO says New year new feeds!
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('4','New year new feeds!','8dfb2899-aa78-11ec-aadd-f02f74f4d78a','2022-01-01 00:03:23');

-- Joe Wo says Please subscribe for the best feeds on games!
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('5','Please subscribe for the best feeds on games!','8dfb2899-aa78-11ec-aadd-f02f74f4d78a','2022-01-02 00:12:33');

-- Ibrahim says Please subscribe to Joe Wo!!!
INSERT INTO message (messageid, messagecontent, producerid, messagedate) 
VALUES ('6','Please subscribe to Joe Wo!!!','8dfab8a0-aa78-11ec-aadd-f02f74f4d78a','2022-02-05 15:22:30');