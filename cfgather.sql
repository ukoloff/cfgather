CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL auto_increment,
  `device` int(11) NOT NULL,
  `ctime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `log` int(11) NOT NULL,
  `info` text,
  `comment` text,
  PRIMARY KEY  (`id`),
  KEY `device` (`device`,`ctime`)
);

CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(31) NOT NULL,
  `host` varchar(31) NOT NULL,
  `model` int(11) NOT NULL,
  `disable` tinyint(1) NOT NULL default '0',
  `ctime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'Время создания',
  `itime` datetime default NULL COMMENT 'Время инициализации',
  `comment` text,
  PRIMARY KEY  (`id`),
  KEY `model` (`model`)
);

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `comment` text,
  PRIMARY KEY  (`id`),
  KEY `ctime` (`ctime`)
);

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(63) NOT NULL,
  `ctime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ANSI` tinyint(4) NOT NULL default '0',
  `comment` text,
  PRIMARY KEY  (`id`)
);

CREATE TABLE IF NOT EXISTS `snippet` (
  `id` int(11) NOT NULL auto_increment,
  `model` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `command` text NOT NULL,
  `comment` text,
  PRIMARY KEY  (`id`),
  KEY `model` (`model`)
);
