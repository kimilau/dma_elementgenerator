

CREATE TABLE `tl_content` (
  `dma_eg_data` longtext NULL,
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tl_module` (
  `dma_eg_data` longtext NULL,
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tl_dma_eg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',  
  `title` varchar(255) NOT NULL default '',
  `template` varchar(255) NOT NULL default '',
  `module` char(1) NOT NULL default '',
  `content` char(1) NOT NULL default '',
  `category` varchar(255) NOT NULL default '',
  `class` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE `tl_dma_eg_fields` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',  
  `type` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `hidden` char(1) NULL default '',
  `options` blob NULL
  `explanation` varchar(255) NOT NULL default '',
  `default_value` varchar(255) NOT NULL default '',
  `exclude` char(1) NULL default '',
  `class` varchar(255) NULL default '',
  `eval_field_type` varchar(255) NOT NULL default '',
  `eval_path` varchar(255) NOT NULL default '',
  `eval_mandatory` char(1) NULL default '',
  `eval_maxlength` int(10) unsigned NOT NULL default '255',
  `eval_minlength` int(10) unsigned NOT NULL default '0',
  `eval_rows` int(10) unsigned NOT NULL default '5',
  `eval_cols` int(10) unsigned NOT NULL default '100',
  `eval_tl_class` varchar(255) NOT NULL default '',
  `eval_rgxp` varchar(255) NOT NULL default '',
  `eval_rte` char(1) NOT NULL default '',
  `eval_extensions` varchar(255) NOT NULL default '',
  `eval_allow_html` char(1) NULL default '',
  `eval_unique` char(1) NULL default '',
  `eval_do_not_copy` char(1) NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
