DROP TABLE IF EXISTS `dbinventory`.`item_conversion_details`;
CREATE TABLE  `dbinventory`.`item_conversion_details` (
  `parent_id` varchar(45) DEFAULT NULL,
  `associated_id` varchar(45) DEFAULT NULL,
  `qty` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;