CREATE DATABASE IF NOT EXISTS messageservice;
USE messageservice;

-- assuming that messages are capped at 200 characters.
CREATE TABLE message
(
	messageid INT AUTO_INCREMENT,
    messagecontent VARCHAR (200),
    producerid VARCHAR(36),
    messagedate VARCHAR(20),
    CONSTRAINT MessageID_PK PRIMARY KEY (messageid)
);

CREATE TABLE subscribe
(
	subscriberid VARCHAR(36),
    subscriberfirstname VARCHAR(20),
    subscriberlastname VARCHAR(20),
	CONSTRAINT SubscriberID_PK PRIMARY KEY (subscriberid)
);

CREATE TABLE produce
(
	producerid VARCHAR(36),
    producerfirstname VARCHAR(20),
    producerlastname VARCHAR(20),
    CONSTRAINT ProducerID_PK PRIMARY KEY (producerid)
);

CREATE TABLE produce_subscribe
(
	producerid VARCHAR(36),
    subscriberid VARCHAR(36)
);

ALTER TABLE message
	ADD CONSTRAINT ProducerID_FK FOREIGN KEY (producerid) REFERENCES produce (producerid);
ALTER TABLE produce_subscribe    
  ADD CONSTRAINT INT_TABLE_ProducerID_FK FOREIGN KEY (producerid) REFERENCES produce (producerid);
ALTER TABLE produce_subscribe      
  ADD CONSTRAINT INT_TABLE_SubscriberID_FK FOREIGN KEY (subscriberid) REFERENCES subscribe (subscriberid)    

