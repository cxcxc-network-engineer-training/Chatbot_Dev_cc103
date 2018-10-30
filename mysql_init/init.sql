create database chatbot_db;
use chatbot_db;

create table users (
    user_open_id varchar(255),
    user_nick_name varchar(255),
    user_status varchar(255),
    user_img varchar(255),
    user_register_date varchar(255),
    user_register_menu varchar(255),
    PRIMARY KEY (user_open_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table menus (
	menu_id varchar(255),
	menu_content longtext,
	PRIMARY KEY (menu_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table assoc_sa_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer VARCHAR(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE  '/docker-entrypoint-initdb.d/SA.csv'
INTO TABLE `chatbot_db`.`assoc_sa_questions`
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table assoc_dev_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer varchar(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE  '/docker-entrypoint-initdb.d/Develope.csv'
INTO TABLE `chatbot_db`.`assoc_dev_questions`
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



create table assoc_sys_questions (
	question_id INTEGER(255),
	question_content TEXT,
	answer1_content TEXT,
	answer2_content TEXT,
	answer3_content TEXT,
	answer4_content TEXT,
	true_answer VARCHAR(255),
	true_answer_decribe_content TEXT,
	external_link VARCHAR(255),
	PRIMARY KEY (question_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE  '/docker-entrypoint-initdb.d/SYS.csv'
INTO TABLE `chatbot_db`.`assoc_sys_questions`
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create user 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.users TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.menus TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_sa_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_dev_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';
GRANT SELECT ON chatbot_db.assoc_sys_questions TO 'read_only_user'@'%' IDENTIFIED BY 'iii';







