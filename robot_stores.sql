# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.30)
# Database: robot_stores
# Generation Time: 2021-12-03 14:45:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT '',
  `character_id` int(11) NOT NULL,
  `character` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `image2` varchar(255) DEFAULT '',
  `image3` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `title`, `price`, `image`, `category_id`, `category`, `character_id`, `character`, `description`, `image2`, `image3`)
VALUES
	(1,'It\'s All 0\'s and 1\'s to Me! Apron',24,'https://binaryville.com/images/products/fred-0s1s-apron-black.jpg',1,'Aprons',1,'Fred','Everyone\'s a chef in our eco-friendly apron, made from 55% organic cotton and 45% recycled polyester. Showcase your favorite Binaryville robot design, screen-printed in PVC- and phthalate-free inks. Apron measures 24 inches wide by 30 inches long and is easily adjustable around the neck and waist with one continuous strap. Machine wash warm, tumble dry low.','https://binaryville.com/images/products/fred-0s1s-apron-gray.jpg',NULL),
	(2,'I Compute, Therefore I Am Apron',24,'https://binaryville.com/images/products/dolores-compute-apron-black.jpg',1,'Aprons',3,'Dolores','Everyone\'s a chef in our eco-friendly apron, made from 55% organic cotton and 45% recycled polyester. Showcase your favorite Binaryville robot design, screen-printed in PVC- and phthalate-free inks. Apron measures 24 inches wide by 30 inches long and is easily adjustable around the neck and waist with one continuous strap. Machine wash warm, tumble dry low. ',NULL,NULL),
	(3,'A Gumball for Your Thoughts Apron',24,'https://binaryville.com/images/products/bubbles-gumball-apron-black.jpg',1,'Aprons',2,'Bubbles','Everyone\'s a chef in our eco-friendly apron, made from 55% organic cotton and 45% recycled polyester. Showcase your favorite Binaryville robot design, screen-printed in PVC- and phthalate-free inks. Apron measures 24 inches wide by 30 inches long and is easily adjustable around the neck and waist with one continuous strap. Machine wash warm, tumble dry low. ','https://binaryville.com/images/products/bubbles-gumball-apron-white.jpg',NULL),
	(4,'Great Microcontrollers Think Alike Apron',24,'https://binaryville.com/images/products/rex-microcontrollers-apron-black.jpg',1,'Aprons',4,'Rex','Everyone\'s a chef in our eco-friendly apron, made from 55% organic cotton and 45% recycled polyester. Showcase your favorite Binaryville robot design, screen-printed in PVC- and phthalate-free inks. Apron measures 24 inches wide by 30 inches long and is easily adjustable around the neck and waist with one continuous strap. Machine wash warm, tumble dry low. ',NULL,NULL),
	(5,'It\'s All 0\'s and 1\'s to Me! Baseball Hat',29,'https://binaryville.com/images/products/fred-0s1s-baseballhat-black.jpg',2,'Baseball Hats',1,'Fred','Cheer the team on in style with our unstructured, low crown, six-panel baseball cap made of 100% organic cotton twill. Featuring our original Binaryville artwork, screen-printed with PVC- and phthalate-free inks. Complete with matching, sewn eyelets, and adjustable fabric closure. ',NULL,NULL),
	(6,'I Compute, Therefore I Am Baseball Hat',29,'https://binaryville.com/images/products/dolores-compute-baseballhat-black.jpg',2,'Baseball Hats',3,'Dolores','Cheer the team on in style with our unstructured, low crown, six-panel baseball cap made of 100% organic cotton twill. Featuring our original Binaryville artwork, screen-printed with PVC- and phthalate-free inks. Complete with matching, sewn eyelets, and adjustable fabric closure. ','https://binaryville.com/images/products/dolores-compute-baseballhat-gray.jpg',NULL),
	(7,'A Gumball for Your Thoughts Baseball Hat',29,'https://binaryville.com/images/products/bubbles-gumball-baseballhat-black.jpg',2,'Baseball Hats',2,'Bubbles','Cheer the team on in style with our unstructured, low crown, six-panel baseball cap made of 100% organic cotton twill. Featuring our original Binaryville artwork, screen-printed with PVC- and phthalate-free inks. Complete with matching, sewn eyelets, and adjustable fabric closure. ',NULL,NULL),
	(8,'Great Microcontrollers Think Alike Baseball Hat',29,'https://binaryville.com/images/products/rex-microcontrollers-baseballhat-black.jpg',2,'Baseball Hats',4,'Rex','Cheer the team on in style with our unstructured, low crown, six-panel baseball cap made of 100% organic cotton twill. Featuring our original Binaryville artwork, screen-printed with PVC- and phthalate-free inks. Complete with matching, sewn eyelets, and adjustable fabric closure. ',NULL,NULL),
	(9,'It\'s All 0\'s and 1\'s to Me! Mug',16,'https://binaryville.com/images/products/fred-0s1s-mug-black.jpg',3,'Mugs',1,'Fred','Enjoy your morning coffee or tea in the company of your favorite Binaryville robot. Our strong ceramic mug, with its comfortable D-shaped handle, is microwave and dishwasher safe, and available in one size: 11 oz (3.2â€ diameter x 3.8â€ h). ','https://binaryville.com/images/products/fred-0s1s-mug-white.jpg',NULL),
	(10,'I Compute, Therefore I Am Mug',16,'https://binaryville.com/images/products/dolores-compute-mug-black.jpg',3,'Mugs',3,'Dolores','Enjoy your morning coffee or tea in the company of your favorite Binaryville robot. Our strong ceramic mug, with its comfortable D-shaped handle, is microwave and dishwasher safe, and available in one size: 11 oz (3.2â€ diameter x 3.8â€ h). ',NULL,NULL),
	(11,'A Gumball for Your Thoughts Mug',16,'https://binaryville.com/images/products/bubbles-gumball-mug-black.jpg',3,'Mugs',2,'Bubbles','Enjoy your morning coffee or tea in the company of your favorite Binaryville robot. Our strong ceramic mug, with its comfortable D-shaped handle, is microwave and dishwasher safe, and available in one size: 11 oz (3.2â€ diameter x 3.8â€ h). ',NULL,NULL),
	(12,'Great Microcontrollers Think Alike Mug',16,'https://binaryville.com/images/products/rex-microcontrollers-mug-black.jpg',3,'Mugs',4,'Rex','Enjoy your morning coffee or tea in the company of your favorite Binaryville robot. Our strong ceramic mug, with its comfortable D-shaped handle, is microwave and dishwasher safe, and available in one size: 11 oz (3.2â€ diameter x 3.8â€ h). ','https://binaryville.com/images/products/rex-microcontrollers-mug-gray.jpg',NULL),
	(13,'It\'s All 0\'s and 1\'s to Me! T-shirt',26,'https://binaryville.com/images/products/fred-0s1s-tshirt-black.jpg',4,'T-shirts',1,'Fred','Our t-shirts are made from ringspun, long-staple organic cotton that\'s ethically-sourced from member farms of local organic cotton cooperatives. Original artwork is screen-printed using PVC- and phthalate-free inks. Features crew-neck styling, shoulder-to-shoulder taping, and strong side seams. Machine wash warm, tumble dry low. ','https://binaryville.com/images/products/fred-0s1s-tshirt-gray.jpg','https://binaryville.com/images/products/fred-0s1s-tshirt-white.jpg'),
	(14,'I Compute, Therefore I Am T-shirt',26,'https://binaryville.com/images/products/dolores-compute-tshirt-black.jpg',4,'T-shirts',3,'Dolores','Our t-shirts are made from ringspun, long-staple organic cotton that\'s ethically-sourced from member farms of local organic cotton cooperatives. Original artwork is screen-printed using PVC- and phthalate-free inks. Features crew-neck styling, shoulder-to-shoulder taping, and strong side seams. Machine wash warm, tumble dry low. ','https://binaryville.com/images/products/dolores-compute-tshirt-gray.jpg',NULL),
	(15,'A Gumball for Your Thoughts T-shirt',26,'https://binaryville.com/images/products/bubbles-gumball-tshirt-black.jpg',4,'T-shirts',2,'Bubbles','Our t-shirts are made from ringspun, long-staple organic cotton that\'s ethically-sourced from member farms of local organic cotton cooperatives. Original artwork is screen-printed using PVC- and phthalate-free inks. Features crew-neck styling, shoulder-to-shoulder taping, and strong side seams. Machine wash warm, tumble dry low. ',NULL,NULL),
	(16,'Great Microcontrollers Think Alike T-shirt',26,'https://binaryville.com/images/products/rex-microcontrollers-tshirt-black.jpg',4,'T-shirts',4,'Rex','Our t-shirts are made from ringspun, long-staple organic cotton that\'s ethically-sourced from member farms of local organic cotton cooperatives. Original artwork is screen-printed using PVC- and phthalate-free inks. Features crew-neck styling, shoulder-to-shoulder taping, and strong side seams. Machine wash warm, tumble dry low. ',NULL,NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
