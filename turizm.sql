-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.37-log - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных turizm
CREATE DATABASE IF NOT EXISTS `turizm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `turizm`;

-- Дамп структуры для таблица turizm.attraction
CREATE TABLE IF NOT EXISTS `attraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы turizm.attraction: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `attraction` DISABLE KEYS */;
INSERT INTO `attraction` (`id`, `title`, `description`, `image`) VALUES
	(1, 'Джермук', 'В северо-восточной части Вайоц Дзора расположен известный курорт…', 'att2.jpeg'),
	(2, 'Иджеванский винно-коньячный завод', 'Иджеванский винно-коньячный завод, основанный в 1951 году…', 'att3.jpeg'),
	(3, 'Крепость Амберд', 'Одним из самых ярчайших примеров средневековой армянской архитектуры…', 'att4.jpeg'),
	(4, 'Монастырь Гегард', 'Знаменитый монастырский комплекс Гегард-непревзойденный шедевр...', 'att5.jpeg'),
	(5, 'Музей Истории Армении', 'Музей Истории Армении, расположенный на Площади Республики г…', 'att6.jpeg'),
	(6, 'Монастырь Хор Вирап', 'По своему географическому положению Хор Вирап – самое близкое место к…', 'att7.jpeg'),
	(7, 'Степанаванский Дендропарк', 'Степанаванский Дендропарк – единственный в своем…', 'att8.jpeg'),
	(8, 'Храм Гарни', 'Языческий храм Гарни – единственный в своем роде памятник эпохи…', 'att9.jpeg'),
	(9, 'Монастырь Нораванк', 'Одним из значительных культурных и религиозных центров средневековой…', 'att10.jpeg'),
	(10, 'Национальная Галерея Армении', 'Национальная Галерея Армении с ее 56 ярко освещенными залами…', 'att11.jpeg'),
	(11, 'Монастырь Татев', 'Среди памятников зангезурской архитектуры не найдется равного…', 'att12.jpeg'),
	(12, 'Озеро Севан', 'Озеро Севан – «голубая жемчужина» Армении, является самым крупным…', 'att13.jpeg');
/*!40000 ALTER TABLE `attraction` ENABLE KEYS */;

-- Дамп структуры для таблица turizm.excursion
CREATE TABLE IF NOT EXISTS `excursion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы turizm.excursion: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `excursion` DISABLE KEYS */;
INSERT INTO `excursion` (`id`, `title`, `description`, `image`) VALUES
	(1, 'Церкви Св. Рипсиме и Св. Гаяне, Эчмиадзинский кафедральный собор, Музей «Сокровища Эчмиадзина»…', 'В рамках этой индивидуальной экскурсии Вам предоставится возможность посетить духовный центр Армении – г. Эчмиадзин,', 'exc2.jpeg'),
	(2, 'Oбзорная экскурсия-прогулка по Еревану', 'Предлагаем начать путешествие по Армении с увлекательного обзорного тура по Еревану, сердцу Армении.', 'exc3.jpeg'),
	(3, 'Монастырь Татев, Канатная дорога «Крылья Татева»', 'Это длинное путешествие, проходящее сквозь два региона – Арарат и Вайоц Дзор, ведет к Сюникскому «царству», где расположен величественный и уникальный монастырский комплекс Татев.', 'exc4.jpeg'),
	(4, 'Храм Гарни, Монастырь Гегард, Ущелье Гарни «Симфония камней»', 'В эту индивидуальную экскурсию включены популярные достопримечательности Армении. Вы посетите языческий храм Гарни (1 век), посвященный богу Солнца Митре.', 'exc5.jpeg'),
	(5, 'Этнографический музей Сардарапат', 'Одним из значимых страниц истории Армении является битва Сардарапата 1918 года. В память об этой важной победе был построен мемориальный…', 'exc6.jpeg'),
	(6, 'Ключевые места Еревана, Музей и Крепость Эребуни, Цицернакаберд, Музей Геноцида, Музей Сергея…', 'Прекрасная экскурсия по Еревану с посещением самых популярных музеев. Побываете в крепости Эребуни на холме Арин Берд, построенную в 782 году до н. э.', 'exc7.jpeg');
/*!40000 ALTER TABLE `excursion` ENABLE KEYS */;

-- Дамп структуры для таблица turizm.hotel
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы turizm.hotel: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` (`id`, `title`, `description`, `image`) VALUES
	(1, 'Ани Плаза', '', 'hot2.jpeg'),
	(2, 'Ани Гранд', '', 'hot3.jpeg'),
	(3, 'Ани Сентрал Ин', '', 'hot4.jpeg'),
	(4, 'Париж', '', 'hot5.jpeg'),
	(5, 'Туфенкян Исторический Ереван', '', 'hot6.jpeg'),
	(6, 'Минотель Барсам Сюит', '', 'hot7.jpeg');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

-- Дамп структуры для таблица turizm.restaurant
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы turizm.restaurant: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` (`id`, `title`, `description`, `image`) VALUES
	(1, 'Таверна Арарат', 'В этом ресторане многовековые секреты армянской кулинарии умело сочетаются с комфортом, теплым приемом и традиционными орнаментами.', 'restauant1.png'),
	(2, 'Мозаик Скай ресторан и Скай-бар', 'Самые захватывающие блюда мировой кухни и дивные виды на гору Арарат ждут Вас здесь, чтобы украсить Ваш день!', 'res2.jpeg'),
	(3, 'Таверна Ереван – Терян', 'Вы можете насладиться здесь настоящей армянской атмосферой: национальные танцы, песни, уникальный ассортимент традиционных блюд.', 'res3.jpeg'),
	(4, 'Абовяна 12 – Далан', 'Вас ожидают самые вкусные блюда армянской традиционной кухни и работы современных армянских художников.', 'res4.jpeg'),
	(5, 'Дэ Италиан Армения', 'Прекрасный итальянский уголок в Армении: большой выбор блюд и солнечное настроение для приятного времяпрепровождения с друзьями.', 'res5.jpeg'),
	(6, 'Бардинер', 'Прекрасное место для празднования семейных событий. Насладитесь вкусными блюдами и свежим воздухом около реки Раздан.', 'res6.jpeg'),
	(7, 'Чаман', 'Ресторан напоминает традиционный армянский дом, где Вас ожидает гостеприимство, вкусные блюда и полная гармония.', 'res7.jpeg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
