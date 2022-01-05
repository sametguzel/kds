-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 21 Ara 2021, 09:21:48
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kds`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `eposta` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`eposta`, `sifre`) VALUES
('admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_park`
--

DROP TABLE IF EXISTS `arac_park`;
CREATE TABLE IF NOT EXISTS `arac_park` (
  `park_id` int(7) NOT NULL,
  `park_plaka` varchar(9) COLLATE utf8_turkish_ci NOT NULL,
  `park_tarih` date NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_park`
--

INSERT INTO `arac_park` (`park_id`, `park_plaka`, `park_tarih`) VALUES
(1, '35HJK74', '2021-12-21'),
(2, '35KLD98', '2021-12-21'),
(3, '35SAT78', '2021-12-21'),
(4, '35KLI741', '2021-12-21'),
(5, '35KSD84', '2021-12-21'),
(6, '35LUK87', '2021-12-21'),
(7, '35LOK96', '2021-12-21'),
(8, '35ASD822', '2021-12-21'),
(9, '35OLK749', '2021-12-21'),
(10, '35PKL15', '2021-12-21'),
(11, '35SAB69', '2021-12-21'),
(12, '35BUC4588', '2021-12-21'),
(13, '35MON458', '2021-12-21'),
(14, '35VHU944', '2021-12-21'),
(15, '35TFB93', '2021-12-21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_sayi`
--

DROP TABLE IF EXISTS `arac_sayi`;
CREATE TABLE IF NOT EXISTS `arac_sayi` (
  `2020_arac_sayisi` int(7) NOT NULL,
  `mevcut_arac_sayisi` int(7) NOT NULL,
  `ilce_id` int(7) NOT NULL,
  KEY `ilce_id` (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_sayi`
--

INSERT INTO `arac_sayi` (`2020_arac_sayisi`, `mevcut_arac_sayisi`, `ilce_id`) VALUES
(35145, 36145, 3501),
(32254, 32854, 3502),
(12541, 12698, 3503),
(55125, 58264, 3504),
(24998, 25471, 3505),
(2614, 2642, 3506),
(53856, 64963, 3507),
(61365, 72536, 3508),
(9125, 9634, 3509),
(27964, 39256, 3510),
(7018, 7249, 3511),
(5756, 5963, 3512),
(40986, 44512, 3513),
(6214, 6325, 3514),
(49852, 62965, 3515),
(1921, 1963, 3516),
(40123, 50632, 3517),
(30189, 34698, 3518),
(6459, 6932, 3519),
(9163, 9745, 3520),
(48124, 59326, 3521),
(24962, 29632, 3522),
(41265, 48678, 3523),
(13496, 15694, 3524),
(31174, 34289, 3525),
(7265, 7856, 3526),
(6012, 6397, 3527),
(10365, 11695, 3528),
(27965, 32654, 3529),
(9926, 12687, 3530);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac_tur`
--

DROP TABLE IF EXISTS `arac_tur`;
CREATE TABLE IF NOT EXISTS `arac_tur` (
  `arac_tur_id` int(7) NOT NULL,
  `arac_tur_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ucret` float NOT NULL,
  PRIMARY KEY (`arac_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `arac_tur`
--

INSERT INTO `arac_tur` (`arac_tur_id`, `arac_tur_ad`, `ucret`) VALUES
(1, 'Taksi', 25),
(2, 'Minibüs', 35),
(3, 'Kamyon', 40),
(4, 'SUV', 35),
(5, 'Pickup', 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisan`
--

DROP TABLE IF EXISTS `calisan`;
CREATE TABLE IF NOT EXISTS `calisan` (
  `calisan_tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `calisan_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `calisan_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `calisan_tel` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `sube_id` int(7) NOT NULL,
  PRIMARY KEY (`calisan_tc`),
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `calisan`
--

INSERT INTO `calisan` (`calisan_tc`, `calisan_ad`, `calisan_soyad`, `calisan_tel`, `sube_id`) VALUES
('25674125896', 'Hüseyin', 'Akif', '05513654125', 3),
('25698741256', 'Ensar', 'Çalışkan', '05587456325', 3),
('26547123695', 'Bilgin', 'Ünal', '05549874562', 5),
('36578965412', 'Ahmet', 'Çakar', '05536987415', 1),
('36587451236', 'Hüseyin', 'Çolak', '05535687412', 6),
('45896514753', 'Arif', 'Ben', '05546987412', 2),
('45896523657', 'Kadir', 'Tuzcu', '05569874156', 5),
('56987412547', 'Tunç', 'Mert', '05446598741', 2),
('58974123654', 'Berat', 'Demirel', '05516984521', 4),
('63248912457', 'Yunus', 'Doğan', '05586985412', 2),
('63547841265', 'Tufan', 'Şeker', '05546523147', 6),
('65941236521', 'Fikri', 'Şeker', '05574152364', 2),
('65941236897', 'Fırat', 'Doğan', '05594623587', 3),
('65974123569', 'Mehmet', 'Yılmaz', '05697451236', 1),
('65974123654', 'Emre', 'Akçe', '05549652314', 5),
('65995412365', 'Sezer', 'Güneş', '05512658974', 6),
('69841236587', 'Efe', 'Tezcan', '05564781236', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

DROP TABLE IF EXISTS `ilce`;
CREATE TABLE IF NOT EXISTS `ilce` (
  `ilce_id` int(7) NOT NULL,
  `ilce_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`ilce_id`, `ilce_ad`) VALUES
(3501, 'Aliağa'),
(3502, 'Balçova'),
(3503, 'Bayındır'),
(3504, 'Bayraklı'),
(3505, 'Bergama'),
(3506, 'Beydağ'),
(3507, 'Bornova'),
(3508, 'Buca'),
(3509, 'Çeşme'),
(3510, 'Çiğli'),
(3511, 'Dikili'),
(3512, 'Foça'),
(3513, 'Gaziemir'),
(3514, 'Güzelbahçe'),
(3515, 'Karabağlar'),
(3516, 'Karaburun'),
(3517, 'Karşıyaka'),
(3518, 'Kemalpaşa'),
(3519, 'Kınık'),
(3520, 'Kiraz'),
(3521, 'Konak'),
(3522, 'Menderes'),
(3523, 'Menemen'),
(3524, 'Narlıdere'),
(3525, 'Ödemiş'),
(3526, 'Seferihisar'),
(3527, 'Selçuk'),
(3528, 'Tire'),
(3529, 'Torbalı'),
(3530, 'Urla');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otopark`
--

DROP TABLE IF EXISTS `otopark`;
CREATE TABLE IF NOT EXISTS `otopark` (
  `otopark_id` int(7) NOT NULL,
  `otopark_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ilce_id` int(7) NOT NULL,
  PRIMARY KEY (`otopark_id`),
  KEY `ilce_id` (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `otopark`
--

INSERT INTO `otopark` (`otopark_id`, `otopark_ad`, `ilce_id`) VALUES
(1, 'Buca Otopark', 3508),
(2, 'Karşıyaka Otopark', 3517),
(3, 'Bornova Otopark', 3507),
(4, 'Karabağ Otopark', 3515);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otopark_kapasite`
--

DROP TABLE IF EXISTS `otopark_kapasite`;
CREATE TABLE IF NOT EXISTS `otopark_kapasite` (
  `otopark_kapasitesi` int(7) NOT NULL,
  `otopark_id` int(7) NOT NULL,
  KEY `otopark_id` (`otopark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `otopark_kapasite`
--

INSERT INTO `otopark_kapasite` (`otopark_kapasitesi`, `otopark_id`) VALUES
(6, 1),
(5, 2),
(5, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `park_edenler`
--

DROP TABLE IF EXISTS `park_edenler`;
CREATE TABLE IF NOT EXISTS `park_edenler` (
  `otopark_id` int(7) NOT NULL,
  `park_id` int(7) NOT NULL,
  KEY `otopark_id` (`otopark_id`),
  KEY `park_plaka` (`park_id`),
  KEY `park_plaka_2` (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `park_edenler`
--

INSERT INTO `park_edenler` (`otopark_id`, `park_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(1, 5),
(1, 6),
(4, 7),
(4, 8),
(4, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sube`
--

DROP TABLE IF EXISTS `sube`;
CREATE TABLE IF NOT EXISTS `sube` (
  `sube_id` int(7) NOT NULL,
  `sube_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ilce_id` int(7) NOT NULL,
  PRIMARY KEY (`sube_id`),
  KEY `ilce_id` (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sube`
--

INSERT INTO `sube` (`sube_id`, `sube_ad`, `ilce_id`) VALUES
(1, 'Bayraklı Şubesi', 3504),
(2, 'Konak Şubesi', 3521),
(3, 'Karşıyaka Şubesi', 3517),
(4, 'Bornova Şubesi', 3507),
(5, 'Karabağlar Şubesi', 3515),
(6, 'Buca Şubesi', 3508),
(7, 'Buca Şubesi 2', 3508);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sube_kapasite`
--

DROP TABLE IF EXISTS `sube_kapasite`;
CREATE TABLE IF NOT EXISTS `sube_kapasite` (
  `sube_kapasitesi` int(7) NOT NULL,
  `sube_id` int(7) NOT NULL,
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sube_kapasite`
--

INSERT INTO `sube_kapasite` (`sube_kapasitesi`, `sube_id`) VALUES
(4, 1),
(4, 2),
(5, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sube_yikanan_arac`
--

DROP TABLE IF EXISTS `sube_yikanan_arac`;
CREATE TABLE IF NOT EXISTS `sube_yikanan_arac` (
  `sube_id` int(7) NOT NULL,
  `yikanan_id` varchar(9) COLLATE utf8_turkish_ci NOT NULL,
  KEY `sube_id` (`sube_id`),
  KEY `yikanan_plaka` (`yikanan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sube_yikanan_arac`
--

INSERT INTO `sube_yikanan_arac` (`sube_id`, `yikanan_id`) VALUES
(1, '1'),
(1, '2'),
(1, '3'),
(4, '4'),
(4, '5'),
(6, '6'),
(6, '7'),
(6, '8'),
(5, '9'),
(3, '10'),
(2, '11'),
(2, '12'),
(3, '13'),
(3, '14'),
(3, '15'),
(5, '16'),
(3, '17'),
(3, '18'),
(3, '19'),
(3, '20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yikanan_arac`
--

DROP TABLE IF EXISTS `yikanan_arac`;
CREATE TABLE IF NOT EXISTS `yikanan_arac` (
  `yikanan_id` varchar(9) COLLATE utf8_turkish_ci NOT NULL,
  `yikanan_plaka` varchar(9) COLLATE utf8_turkish_ci NOT NULL,
  `yikama_tarih` date NOT NULL,
  `arac_tur_id` int(7) NOT NULL,
  PRIMARY KEY (`yikanan_id`),
  KEY `arac_tur_id` (`arac_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yikanan_arac`
--

INSERT INTO `yikanan_arac` (`yikanan_id`, `yikanan_plaka`, `yikama_tarih`, `arac_tur_id`) VALUES
('1', '35UAB49', '2021-12-21', 1),
('10', '35KUL847', '2021-12-21', 1),
('11', '35KLO45', '2021-12-21', 3),
('12', '35UKL41', '2021-12-21', 2),
('13', '35LKI78', '2021-12-21', 1),
('14', '35KOL123', '2021-12-21', 4),
('15', '35TUH85', '2021-12-21', 5),
('16', '35GS1905', '2021-12-21', 2),
('17', '35TS847', '2021-12-21', 2),
('18', '35JKL47', '2021-12-21', 4),
('19', '35SUH723', '2021-12-21', 1),
('2', '35KJL21', '2021-12-21', 4),
('20', '35FUN85', '2021-12-21', 1),
('3', '35UDA56', '2021-12-21', 1),
('4', '35OLP87', '2021-12-21', 3),
('5', '35UR765', '2021-12-21', 3),
('6', '35FB1907', '2021-12-21', 1),
('7', '35CHT74', '2021-12-21', 1),
('8', '35OLK128', '2021-12-21', 1),
('9', '35JUL36', '2021-12-21', 5);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `arac_sayi`
--
ALTER TABLE `arac_sayi`
  ADD CONSTRAINT `arac_sayi_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `calisan`
--
ALTER TABLE `calisan`
  ADD CONSTRAINT `calisan_ibfk_1` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `otopark`
--
ALTER TABLE `otopark`
  ADD CONSTRAINT `otopark_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `otopark_kapasite`
--
ALTER TABLE `otopark_kapasite`
  ADD CONSTRAINT `otopark_kapasite_ibfk_1` FOREIGN KEY (`otopark_id`) REFERENCES `otopark` (`otopark_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `park_edenler`
--
ALTER TABLE `park_edenler`
  ADD CONSTRAINT `park_edenler_ibfk_1` FOREIGN KEY (`otopark_id`) REFERENCES `otopark` (`otopark_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `park_edenler_ibfk_2` FOREIGN KEY (`park_id`) REFERENCES `arac_park` (`park_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sube`
--
ALTER TABLE `sube`
  ADD CONSTRAINT `sube_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sube_kapasite`
--
ALTER TABLE `sube_kapasite`
  ADD CONSTRAINT `sube_kapasite_ibfk_1` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sube_yikanan_arac`
--
ALTER TABLE `sube_yikanan_arac`
  ADD CONSTRAINT `sube_yikanan_arac_ibfk_1` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sube_yikanan_arac_ibfk_2` FOREIGN KEY (`yikanan_id`) REFERENCES `yikanan_arac` (`yikanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yikanan_arac`
--
ALTER TABLE `yikanan_arac`
  ADD CONSTRAINT `yikanan_arac_ibfk_1` FOREIGN KEY (`arac_tur_id`) REFERENCES `arac_tur` (`arac_tur_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
