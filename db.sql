-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.14-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных suql_store
CREATE DATABASE IF NOT EXISTS `suql_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `suql_store`;

-- Дамп структуры для таблица suql_store.content
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receipt_id` int(10) unsigned NOT NULL,
  `messageFiscalSign` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `fiscalDriveNumber` varchar(255) NOT NULL,
  `kktRegId` varchar(255) NOT NULL,
  `userInn` varchar(255) NOT NULL,
  `fiscalDocumentNumber` int(10) NOT NULL,
  `dateTime` int(10) NOT NULL,
  `fiscalSign` int(10) NOT NULL,
  `shiftNumber` int(10) NOT NULL,
  `requestNumber` int(10) NOT NULL,
  `operationType` int(10) NOT NULL,
  `totalSum` int(10) NOT NULL,
  `fiscalDocumentFormatVer` int(10) NOT NULL,
  `cashTotalSum` int(10) NOT NULL,
  `ecashTotalSum` int(10) NOT NULL,
  `prepaidSum` int(10) NOT NULL,
  `creditSum` int(10) NOT NULL,
  `provisionSum` int(10) NOT NULL,
  `nds18` int(10) NOT NULL,
  `nds10` int(10) NOT NULL,
  `appliedTaxationType` int(10) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `operatorInn` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `retailPlace` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `numberKkt` varchar(255) NOT NULL,
  `redefine_mask` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы suql_store.content: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` (`id`, `receipt_id`, `messageFiscalSign`, `code`, `fiscalDriveNumber`, `kktRegId`, `userInn`, `fiscalDocumentNumber`, `dateTime`, `fiscalSign`, `shiftNumber`, `requestNumber`, `operationType`, `totalSum`, `fiscalDocumentFormatVer`, `cashTotalSum`, `ecashTotalSum`, `prepaidSum`, `creditSum`, `provisionSum`, `nds18`, `nds10`, `appliedTaxationType`, `operator`, `operatorInn`, `user`, `retailPlace`, `region`, `numberKkt`, `redefine_mask`) VALUES
	(1, 2147483647, 2147483647, 3, '9280440300895234', '0002777151011870    ', '7825706086  ', 61542, 1622491080, 2147483647, 167, 296, 1, 164450, 2, 0, 164450, 0, 0, 0, 17083, 5634, 1, 'Вулах Мария Викторовна, Продавец-каccир', '510300436616', 'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "АГРОТОРГ"', '305E 16240-Пятерочка', '51', '00106909276269', 14);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;

-- Дамп структуры для таблица suql_store.discounts
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы suql_store.discounts: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` (`id`, `item_id`) VALUES
	(1, '3'),
	(2, '10');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;

-- Дамп структуры для таблица suql_store.item
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы suql_store.item: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`id`, `name`) VALUES
	(1, '*Пиво BUD свет.5% ж/б 0.45л'),
	(2, '*ЗД.ТР.Пряники РЖАНЫЕ завар.340г'),
	(3, 'Агуша');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

-- Дамп структуры для таблица suql_store.items
CREATE TABLE IF NOT EXISTS `items` (
  `content_id` int(10) unsigned NOT NULL,
  `name` int(11) NOT NULL DEFAULT 0,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `sum` int(10) NOT NULL,
  `nds` int(10) NOT NULL,
  `productType` int(10) NOT NULL,
  `paymentType` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы suql_store.items: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`content_id`, `name`, `price`, `quantity`, `sum`, `nds`, `productType`, `paymentType`) VALUES
	(1, 1, 5299, 1, 5299, 1, 1, 4),
	(1, 1, 5299, 1, 5299, 1, 1, 4),
	(1, 1, 5299, 1, 5299, 1, 1, 4),
	(1, 1, 5299, 1, 5299, 1, 1, 4),
	(1, 1, 5299, 1, 5299, 1, 1, 4),
	(1, 2, 5499, 1, 5499, 1, 1, 4),
	(1, 3, 4069, 1, 4069, 1, 1, 4),
	(1, 3, 1999, 6, 11994, 2, 1, 4);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Дамп структуры для таблица suql_store.receipt
CREATE TABLE IF NOT EXISTS `receipt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ofdId` varchar(255) NOT NULL,
  `receiveDate` varchar(255) NOT NULL,
  `subtype` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2147483648 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы suql_store.receipt: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` (`id`, `ofdId`, `receiveDate`, `subtype`, `address`) VALUES
	(2147483647, 'ofd22', '2021-05-31T23:32:33Z', 'receipt', '184250,Россия,Мурманская область,,,Кировск г,,Олимпийская ул,,д 8,литер а,,, \r');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
