DROP DATABASE IF EXISTS E_business;
CREATE DATABASE E_business; 
USE e_business;


CREATE TABLE `customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `e_mail` VARCHAR(50) NOT NULL,
  `phone_number` VARCHAR(50) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
  ) AUTO_INCREMENT = 11;
INSERT INTO `customers` VALUES (1,"Roberts","Smith","robsmith28@gmail.com","+2348146789611","18 apapa lane");
INSERT INTO `customers` VALUES (2,"philemon","Awobifa","philbif12@gmail.com","+2347014563287","08 grace_estate");
INSERT INTO `customers` VALUES (3,"Bello", "Mohammed","bellmohma08@gmail.com","+2347076824106","15 dolphin estate");
INSERT INTO `customers` VALUES (4,"Damola","Bolutife","boluadedamola@gmail.com","+2349064508706","college road akoka");
INSERT INTO `customers` VALUES (5,"Felix","Thompson","thompsonfelix@gmail.com","+2348055647833","02,murtala way");
INSERT INTO `customers` VALUES (6,"John","Paul","pauljohn122@gmail.com","+2349165321869","10 oloba crescent");
INSERT INTO `customers` VALUES (7,"Victor","Adedotun","victorade012gmail.com","+2346084127854","14 ikoyi terrace");
INSERT INTO `customers` VALUES (8,"Anthony","Murewa","murewaanthony55@gmail.com","+234907167297","06 victoria island");
INSERT INTO `customers` VALUES (9,"Mary","Oroche","ochemar14@gmail.com","2348136521088","02 ikeja housing");
INSERT INTO `customers` VALUES (10,"Elizabeth","Disu","disulizabeth23@gmail.com","2347072710236","16 yaba road");

CREATE TABLE `orders` (
	`category_id` INT NOT NULL,
	`customer_id`INT NOT NULL,
    `order_id` INT NOT NULL,
    `order_date`DATE NOT NULL,
    `category` VARCHAR(50) NOT NULL,
    `total_amount` DECIMAL(9,2) NOT NULL,
    PRIMARY KEY(`category_id`),
	KEY `FK_customer_id` (`customer_id`),
    CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) AUTO_INCREMENT = 11;
INSERT INTO `orders` VALUES(1,5,1,"2021-01-18","food_stuffs",6785.23);
INSERT INTO `orders` VALUES (2,7,2,"2021-01-20","provisions",1560.36);
INSERT INTO `orders` VALUES (3,6,3,"2019-10-11","gadgets",4368.35);
INSERT INTO `orders` VALUES (4,5,4,"2021-08-01","home_appliances",12843.54);
INSERT INTO `orders` VALUES (5,2,5,"2022-06-22","arts_deco",2140.87);
INSERT INTO `orders` VALUES (6,10,6,"2021-09-02","furnitures",6798.10);
INSERT INTO `orders` VALUES (7,6,7,"2020-11-26","clothing",3180.66);
INSERT INTO `orders` VALUES (8,10,8,"2020-10-12","art_deco",1460.45);
INSERT INTO `orders` VALUES (9,1,9,"2022-11-29","clothing",2560.77);
INSERT INTO `orders` VALUES (10,7,10,"2023-03-12","home_appliances",4830.07);


CREATE TABLE `products` ( 
	`product_id` INT NOT NULL,
    `product_name` VARCHAR(50) NOT NULL,
    `category_id` INT NOT NULL,
    `unit_price` DECIMAL(9,2) NOT NULL,
    `quantity_available` INT NOT NULL,
    PRIMARY KEY (`product_id`),
    KEY `FK_category_id` (`category_id`),
    CONSTRAINT `FK_category_id` FOREIGN KEY (`category_id`) REFERENCES  `orders` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE
)AUTO_INCREMENT = 11;
INSERT INTO `products` VALUES (1,"packed_rice",1,1420.18,45);
INSERT INTO `products` VALUES (2,"ovaltine",4,83.00,200);
INSERT INTO `products` VALUES (3,"room_table",6,2543.65,15);
INSERT INTO `products` VALUES (4,"sweat_shirt",7,857.58,25);
INSERT INTO `products` VALUES (5,"mp3_player",3,1150.18,17);
INSERT INTO `products` VALUES (6,"vase",5,613.14,20);
INSERT INTO `products` VALUES (7,"smart_watch",2,2000.00,10);
INSERT INTO `products` VALUES (8,"chairs",6,1690.58,15);
INSERT INTO `products` VALUES (9,"packed_garri",1,450.68,37);
INSERT INTO `products` VALUES (10,"extension_box",3,650.00,27);


CREATE TABLE `employees` (
	`employee_id` INT NOT NULL,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `title` VARCHAR(50),
    `hire_date` DATE NOT NULL,
    PRIMARY KEY(`employee_id`)
);
INSERT INTO `employees` VALUES (1,"Bolaji","Adeyemi","CEO","2019-09-01");
INSERT INTO `employees` VALUES (2,"Desmond","Gbadebo","Manager","2019-09-12");
INSERT INTO `employees` VALUES (3,"Linda","Orhabor","Accountant","2019-09-21");
INSERT INTO `employees` VALUES (4,"Samuel","Bright","Secretary","2019-11-15");
INSERT INTO `employees` VALUES (5,"Mary","Okafor","Sales_rep I","2019-09-03");
INSERT INTO `employees` VALUES (6,"Bayo","Adesina","Sales_rep II","2020-01-10");
INSERT INTO `employees` VALUES (7,"Amina","Waziri","Sales rep III","2020-03-01");
INSERT INTO `employees` VALUES (8,"John", "Bello","Store_keeper I","2019-11-06");
INSERT INTO `employees` VALUES (9,"Isaac","Adepeju","Store_keeper II","2020-07-01");
INSERT INTO `employees` VALUES (10,"Fred","Ogbonna","Driver","2020-01-10");













    
    
    
    
  
	















