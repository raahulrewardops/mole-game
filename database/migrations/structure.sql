create table users (
  user_id varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  PRIMARY KEY(user_id)
); 

create table games (
  game_code varchar(55) NOT NULL,
  owner varchar(255) NOT NULL,
  completed boolean DEFAULT FALSE,
  has_started boolean DEFAULT FALSE,
  PRIMARY KEY(code)
); 

create table players (
  game_code varchar(55) NOT NULL,
  user_id VARCHAR(255) NOT NULL,
  character_type varchar(55) NULL,
  finished boolean DEFAULT FALSE,
  died boolean DEFAULT FALSE,
  position INT(2) DEFAULT 1 NOT NULL,
  team INT(1) NULL,
  PRIMARY KEY(game_code, user_id)
); 
