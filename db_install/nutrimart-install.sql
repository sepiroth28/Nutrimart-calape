DROP TABLE IF EXISTS `dbinventory`.`account_receivable`;
CREATE TABLE  `dbinventory`.`account_receivable` (
  `sales_order_no` varchar(45) NOT NULL DEFAULT '0',
  `remarks` varchar(45) DEFAULT 'unsettled',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`account_recievable_cart`;
CREATE TABLE  `dbinventory`.`account_recievable_cart` (
  `acount_recievable_cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `customer_type` varchar(45) NOT NULL,
  `acount_recievable_cart_date` datetime NOT NULL,
  `price` double(2,2) NOT NULL,
  `total_price` double(2,2) NOT NULL,
  `discount_amount` double(2,2) NOT NULL,
  PRIMARY KEY (`acount_recievable_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`account_recievable_payments`;
CREATE TABLE  `dbinventory`.`account_recievable_payments` (
  `account_recievable_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_recievable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`account_recievable_to_account_recievable_cart`;
CREATE TABLE  `dbinventory`.`account_recievable_to_account_recievable_cart` (
  `account_recievable_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`account_recievable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`agent`;
CREATE TABLE  `dbinventory`.`agent` (
  `agent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`agent_customers`;
CREATE TABLE  `dbinventory`.`agent_customers` (
  `agent_id` int(10) unsigned DEFAULT NULL,
  `customers_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`cart`;
CREATE TABLE  `dbinventory`.`cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `customer_type` varchar(45) NOT NULL,
  `cart_date` datetime NOT NULL,
  `price` double(2,2) NOT NULL,
  `total_price` double(2,2) NOT NULL,
  `discount` varchar(45) NOT NULL,
  `discount_amount` double(2,2) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`cod`;
CREATE TABLE  `dbinventory`.`cod` (
  `sales_order_no` varchar(45) NOT NULL DEFAULT '0',
  `remarks` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`cod_remitted`;
CREATE TABLE  `dbinventory`.`cod_remitted` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_date` date DEFAULT NULL,
  `remit_by` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  `date_accepted` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`customers`;
CREATE TABLE  `dbinventory`.`customers` (
  `customers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customers_name` varchar(45) DEFAULT NULL,
  `customers_add` varchar(45) DEFAULT NULL,
  `customers_number` varchar(45) DEFAULT NULL,
  `dealers_type` varchar(45) DEFAULT 'dealer',
  `credit_limit` double(10,2) DEFAULT NULL,
  `visible` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`customers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`customers_discount`;
CREATE TABLE  `dbinventory`.`customers_discount` (
  `customers_id` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`deleted_so`;
CREATE TABLE  `dbinventory`.`deleted_so` (
  `sales_order_no` varchar(45) NOT NULL,
  `responsible_customer` int(10) unsigned DEFAULT NULL,
  `responsible_agent` int(10) unsigned DEFAULT NULL,
  `discount` double(10,2) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `net_total` double(10,2) NOT NULL,
  `tendered_amount` double(10,2) DEFAULT NULL,
  `change` double(10,2) DEFAULT NULL,
  `delivery_date` datetime NOT NULL,
  `prepared_by` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`discount`;
CREATE TABLE  `dbinventory`.`discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discount_code` varchar(45) DEFAULT NULL,
  `discount_name` varchar(45) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`inventory`;
CREATE TABLE  `dbinventory`.`inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `beginning_balance` double(10,2) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75761 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`item_category`;
CREATE TABLE  `dbinventory`.`item_category` (
  `item_code` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`items`;
CREATE TABLE  `dbinventory`.`items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) NOT NULL,
  `item_qty` double(10,2) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `dealers_price` double(10,2) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `manufacturers_id` int(10) unsigned DEFAULT NULL,
  `reorder_point` int(10) unsigned DEFAULT NULL,
  `include_in_rebate` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`item_id`,`item_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`items_description`;
CREATE TABLE  `dbinventory`.`items_description` (
  `item_code` varchar(45) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `unit_of_measure` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`last_inventory`;
CREATE TABLE  `dbinventory`.`last_inventory` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `beginning_balance` double(10,2) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`manufacturers`;
CREATE TABLE  `dbinventory`.`manufacturers` (
  `manufacturers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(45) DEFAULT NULL,
  `manufacturers_add` varchar(45) DEFAULT NULL,
  `manufacturers_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`municipal_agent`;
CREATE TABLE  `dbinventory`.`municipal_agent` (
  `agent_id` int(10) unsigned DEFAULT NULL,
  `municipal_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`municipalities`;
CREATE TABLE  `dbinventory`.`municipalities` (
  `municipal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `municipal_name` varchar(45) NOT NULL,
  `tracking_price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`municipal_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`payment`;
CREATE TABLE  `dbinventory`.`payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `amount` double(2,2) NOT NULL,
  `date_of_payment` datetime NOT NULL,
  `remarks` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`payment_records`;
CREATE TABLE  `dbinventory`.`payment_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_order_no` varchar(45) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `balance` double(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`previleges`;
CREATE TABLE  `dbinventory`.`previleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `previleges` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`rebate_price_table`;
CREATE TABLE  `dbinventory`.`rebate_price_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qty_from` double(10,2) DEFAULT NULL,
  `qty_to` double(10,2) DEFAULT NULL,
  `applied_price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`rebates`;
CREATE TABLE  `dbinventory`.`rebates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `total_rebate_amount` double(10,2) DEFAULT NULL,
  `total_qty_bought` double(10,2) DEFAULT NULL,
  `month` varchar(45) DEFAULT NULL,
  `issue_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`remitted`;
CREATE TABLE  `dbinventory`.`remitted` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `remit_by` varchar(45) DEFAULT NULL,
  `accepted_by` varchar(45) DEFAULT NULL,
  `date_accepted` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`salesorder_responsible`;
CREATE TABLE  `dbinventory`.`salesorder_responsible` (
  `SaleOrder_Responsible_Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Prepared_by` varchar(100) DEFAULT NULL,
  `Checked_by` varchar(100) DEFAULT NULL,
  `Posted_by` varchar(100) DEFAULT NULL,
  `Delivered_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SaleOrder_Responsible_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_in`;
CREATE TABLE  `dbinventory`.`stock_in` (
  `stockin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(45) NOT NULL,
  `qty_in` int(10) unsigned NOT NULL,
  PRIMARY KEY (`stockin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_in_reference`;
CREATE TABLE  `dbinventory`.`stock_in_reference` (
  `reference_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_in_transaction`;
CREATE TABLE  `dbinventory`.`stock_in_transaction` (
  `stock_in_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(45) NOT NULL,
  `stocked_in_to` varchar(45) DEFAULT NULL,
  `from_supplier` int(10) unsigned DEFAULT NULL,
  `remarks` text,
  `stock_in_date` date DEFAULT NULL,
  `total_number_of_items` int(10) unsigned DEFAULT NULL,
  `total_qty` int(10) unsigned DEFAULT NULL,
  `prepared_by` varchar(45) DEFAULT NULL,
  `approved_by` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stock_in_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_in_transaction_to_stock_in_items`;
CREATE TABLE  `dbinventory`.`stock_in_transaction_to_stock_in_items` (
  `stock_in_transaction_id` int(10) unsigned DEFAULT NULL,
  `stock_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_out`;
CREATE TABLE  `dbinventory`.`stock_out` (
  `stockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(45) DEFAULT NULL,
  `qty_out` double(10,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `tracking_price` double(10,2) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`stockout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_out_reference`;
CREATE TABLE  `dbinventory`.`stock_out_reference` (
  `reference_no` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_out_transaction`;
CREATE TABLE  `dbinventory`.`stock_out_transaction` (
  `sales_order_no` varchar(45) NOT NULL,
  `responsible_customer` int(10) unsigned DEFAULT NULL,
  `responsible_agent` int(10) unsigned DEFAULT NULL,
  `discount` double(10,2) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `net_total` double(10,2) NOT NULL,
  `tendered_amount` double(10,2) DEFAULT NULL,
  `change` double(10,2) DEFAULT NULL,
  `delivery_date` datetime NOT NULL,
  `prepared_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sales_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`stock_out_transaction_stock_out_items`;
CREATE TABLE  `dbinventory`.`stock_out_transaction_stock_out_items` (
  `sales_order_no` varchar(45) DEFAULT NULL,
  `stockout_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`temp`;
CREATE TABLE  `dbinventory`.`temp` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `ending_balance` double(10,2) DEFAULT NULL,
  `item_qty` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`user_previleges`;
CREATE TABLE  `dbinventory`.`user_previleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `previleges` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dbinventory`.`useraccount`;
CREATE TABLE  `dbinventory`.`useraccount` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;









