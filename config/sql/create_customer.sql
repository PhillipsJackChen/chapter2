use smartdb;

DELIMITER $$
DROP PROCEDURE IF EXISTS `smartdb`.`sp_create_customer`$$
CREATE PROCEDURE `sp_create_customer`(
)
BEGIN

create table customer (
  `id` bigint(20) not null auto_increment,
  `name` varchar(255) default null,
  `contact` varchar(255) default null,
  `telephone` varchar(255) default null,
  `email` varchar(255) default null,
  `remark` text,
  primary key (`id`)
) engine=innoDB default charset=utf8;

insert into `customer` values('1', 'customer1', 'Jack', '1111111', 'jack@gmail.com', null);
insert into `customer` values('2', 'customer2', 'Rose', '2222222', 'rose@gmail.com', null);

END $$

CALL sp_create_customer();