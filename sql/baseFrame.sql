/*************************************************************************
	 File Name: baseFrame.sql
	 Author: chliny
	 Mail: chliny11@gmail.com 
	 Created Time: 2013年03月26日 星期二 13时58分56秒
 ************************************************************************/

CREATE TABLE users (
    id varchar(70) NOT NULL,
    x double,
    y double,
    label text,
    PRIMARY KEY (id)
    );

CREATE TABLE map (
    id int(11) NOT NULL AUTO_INCREMENT,
    x double NOT NULL,
    y double NOT NULL,
    goodid int(11) REFERENCES goods(id),
    goodnum int(11),
    scale int(11),
    label text,
    PRIMARY KEY (id)
    );

CREATE TABLE goods(
    id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    usgae text,
    pic text,
    PRIMARY KEY (id)
    );

CREATE TABLE have(
    id int(11) NOT NULL AUTO_INCREMENT,
    userid varchar(70) NOT NULL REFERENCES users(id),
    goodid int(11) NOT NULL REFERENCES goods(id),
    PRIMARY KEY (id)
    );

CREATE TABLE merge(
    orgin varchar(50) NOT NULL,
    sequence varchar(50) NOT NULL,
    PRIMARY KEY (orgin,sequence)
    )
