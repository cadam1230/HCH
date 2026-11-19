-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Nov 19. 11:54
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `horgaszto`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `teljes_nev` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `regisztracio_datuma` timestamp NOT NULL DEFAULT current_timestamp(),
  `szerep` enum('felhasznalo','admin') NOT NULL DEFAULT 'felhasznalo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `teljes_nev`, `email`, `jelszo`, `regisztracio_datuma`, `szerep`) VALUES
(2, 'adamczifrak', 'adamczifrak@gmail.com', '$2y$10$9o.kEofCYL8jHD.fwaxPTuJf4Oj.UDsw95/2iYZMMAZVNe.Ctuj/m', '2026-09-29 08:03:43', 'admin');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fishing_spots`
--

CREATE TABLE `fishing_spots` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `szelesseg` decimal(10,8) NOT NULL,
  `hosszusag` decimal(11,8) NOT NULL,
  `leiras` text DEFAULT NULL,
  `verseny_idopont` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `fishing_spots`
--

INSERT INTO `fishing_spots` (`id`, `nev`, `szelesseg`, `hosszusag`, `leiras`, `verseny_idopont`) VALUES
(1, 'Edelényi Horgásztó', 48.29520000, 20.73830000, 'Aktív verseny: Nyári Ponty Kupa', '2026-06-20 08:00:00'),
(2, 'Balatoni Versenypálya', 46.89540000, 17.88640000, 'Aktív verseny: Balatoni Bojlis Párbaj', '2026-07-15 06:00:00'),
(3, 'Tisza-tavi Horgászparadicsom', 47.60150000, 20.65110000, 'Aktív verseny: Éjszakai Harcsafogó futam', '2026-08-01 20:00:00'),
(6, 'Sárberki Horgásztó', 46.61830000, 16.54920000, 'Aktív verseny: Lenti Method Feeder Kupa', '2026-06-06 07:00:00'),
(7, 'Hasznosi-víztározó', 47.92310000, 19.72140000, 'Aktív verseny: Pásztói Mátra Kupa', '2026-06-07 08:00:00'),
(8, 'Búzásvölgyi-víztározó', 47.93510000, 20.10820000, 'Aktív verseny: Recski Bojlis Kihívás', '2026-06-13 06:00:00'),
(9, 'Lencsés-tó', 47.65210000, 19.29820000, 'Aktív verseny: Veresegyházi Horgász Kupa', '2026-06-14 07:30:00'),
(10, 'Ipoly-völgyi Robinson Szigetek', 48.09310000, 19.52140000, 'Aktív verseny: Nógrádi Pergető Bajnokság', '2026-06-21 07:00:00'),
(11, 'Ráckevei Duna-ág (Tass)', 47.11820000, 18.99120000, 'Aktív verseny: Tassi Feeder Mesterek Futama', '2026-06-27 08:00:00'),
(12, 'Veresegyházi Öreg-tó', 47.65580000, 19.28420000, 'Aktív verseny: Nyári Pontyfogó Bajnokság', '2026-07-01 07:00:00'),
(13, 'Malom-tó (Veresegyház)', 47.65310000, 19.28810000, 'Aktív verseny: Finomszerelékes Éjszakai Kupasorozat', '2026-07-02 19:00:00'),
(14, 'Rákoscsabai Horgásztó', 47.49810000, 19.27820000, 'Aktív verseny: Budapesti Horgász Derby', '2026-07-03 08:00:00'),
(15, 'Omszki-tó', 47.60820000, 19.06210000, 'Aktív verseny: Budakalászi Pergető Verseny', '2026-07-05 07:00:00'),
(16, 'Kavicsbánya-tó (Gyékényes)', 46.23810000, 16.98520000, 'Aktív verseny: Nemzetközi Gyékényesi Búvár és Horgászkupa', '2026-07-08 06:00:00'),
(17, 'Környei-tó', 47.53810000, 18.33120000, 'Aktív verseny: Környei Harcsafogó Kupa', '2026-07-09 20:00:00'),
(18, 'Oroszlányi Erőmű-tó', 47.47820000, 18.32140000, 'Aktív verseny: Vértesi Bojlis Párbaj', '2026-07-10 07:00:00'),
(19, 'Bokodi-tó', 47.49120000, 18.25810000, 'Aktív verseny: Bokodi Method Kupa', '2026-07-11 08:00:00'),
(20, 'Tatai Öreg-tó', 47.64820000, 18.32810000, 'Aktív verseny: Tatai Horgászfesztivál és Kupa', '2026-07-12 07:00:00'),
(21, 'Cseke-tó (Tata)', 47.64120000, 18.33920000, 'Aktív verseny: Városi Nyári Feeder Verseny', '2026-07-16 08:00:00'),
(22, 'Tatai Derítő-tó', 47.63210000, 18.35120000, 'Aktív verseny: Derítő-tó Rekordfogó Bojlis Bajnokság', '2026-07-17 06:00:00'),
(23, 'Gébárti-tó', 46.87120000, 16.84120000, 'Aktív verseny: Zalaegerszegi Városi Kupa', '2026-07-18 07:30:00'),
(24, 'Pölöskei-tó', 46.72810000, 16.92140000, 'Aktív verseny: Pölöskei Tőzegtó Bojlis Kupa', '2026-07-19 06:00:00'),
(25, 'Miháldi-tó', 46.47120000, 17.13210000, 'Aktív verseny: Zalai Feeder Bajnokság', '2026-07-22 08:00:00'),
(26, 'Hársas-tó (Szentgotthárd)', 46.93810000, 16.31240000, 'Aktív verseny: Őrségi Horgászkupa', '2026-07-23 07:00:00'),
(27, 'Vadása-tó', 46.87910000, 16.54820000, 'Aktív verseny: Hegyháti Horgászverseny', '2026-07-24 08:00:00'),
(28, 'Borostyán-tó (Zalalövő)', 46.84820000, 16.58120000, 'Aktív verseny: Borostyán Kupasorozat', '2026-07-25 07:30:00'),
(29, 'Dörskei-tó', 46.99120000, 16.63810000, 'Aktív verseny: Vasi Hegyhát Nyári Verseny', '2026-07-26 08:00:00'),
(30, 'Szajki-tavak', 47.03810000, 16.99120000, 'Aktív verseny: Szajki-tavak Amur és Pontyfogó Kupa', '2026-07-29 07:00:00'),
(31, 'Gencsapáti Horgásztó', 47.28120000, 16.60120000, 'Aktív verseny: Gencsi Nyári Feeder Bajnokság', '2026-07-30 08:00:00'),
(32, 'Rába-holtág (Sárvár)', 47.25810000, 16.93810000, 'Aktív verseny: Sárvári Finomszerelékes Verseny', '2026-07-31 07:00:00'),
(33, 'Csónakázó-tó (Szombathely)', 47.23120000, 16.60820000, 'Aktív verseny: Szombathelyi Városi Nyári Kupa', '2026-08-02 08:00:00'),
(34, 'Szelidi-tó', 46.62810000, 19.05120000, 'Aktív verseny: Kalocsai Vidék Horgász Bajnokság', '2026-08-03 07:00:00'),
(35, 'Petőfi-tó (Kiskunfélegyháza)', 46.71210000, 19.84820000, 'Aktív verseny: Félegyházi Pontyfogó Verseny', '2026-08-04 08:00:00'),
(36, 'Csaj-tó (Tömörkény)', 46.59120000, 20.03810000, 'Aktív verseny: Tömörkényi Horgászkupa', '2026-08-05 07:00:00'),
(37, 'Sándorfalvi Bányató', 46.36810000, 20.09120000, 'Aktív verseny: Sándorfalvi Nyári Feeder Kupa', '2026-08-06 08:00:00'),
(38, 'Atkai-holtág', 46.33120000, 20.21820000, 'Aktív verseny: Tisza-menti Harcsafogó Verseny', '2026-08-07 19:00:00'),
(39, 'Mártélyi-holtág', 46.45810000, 20.22810000, 'Aktív verseny: Mártélyi Tájvédelmi Horgászkupa', '2026-08-08 07:00:00'),
(40, 'Körtvélyesi-holtág', 46.41210000, 20.25810000, 'Aktív verseny: Vásárhelyi Horgász Derby', '2026-08-09 08:00:00'),
(41, 'Lencsés-tó (Békéscsaba)', 46.67120000, 21.12810000, 'Aktív verseny: Békési Feeder Kupa', '2026-08-11 07:30:00'),
(42, 'Fás-tó (Békéscsaba)', 46.65810000, 21.08120000, 'Aktív verseny: Csaba Kupasorozat', '2026-08-12 08:00:00'),
(43, 'Szarvasi Holt-Körös', 46.86120000, 20.55810000, 'Aktív verseny: Szarvasi Holt-Körös Bojlis Bajnokság', '2026-08-13 06:00:00'),
(44, 'Kákafoki-holtág', 46.85120000, 20.53810000, 'Aktív verseny: Kákafoki Nyári Feeder Verseny', '2026-08-14 07:00:00'),
(45, 'Peresi-holtág', 46.92120000, 20.62810000, 'Aktív verseny: Mezőtúri Horgász Kupa', '2026-08-16 08:00:00'),
(46, 'Gyomaendrődi Bónom-zug', 46.93810000, 20.81210000, 'Aktív verseny: Bónom-zugi Pontyfogó Verseny', '2026-08-17 07:00:00'),
(47, 'Danitz-pusztai Bányató', 46.09120000, 18.25810000, 'Aktív verseny: Pécsi Horgász Derby', '2026-08-18 08:00:00'),
(48, 'Pécsi-tó (Orfű)', 46.14820000, 18.15120000, 'Aktív verseny: Orfűi Nyári Pontyfogó Kupa', '2026-08-19 07:00:00'),
(49, 'Herman Ottó-tó (Orfű)', 46.13810000, 18.16210000, 'Aktív verseny: Orfűi Finomszerelékes Bajnokság', '2026-08-20 08:00:00'),
(50, 'Kovácsszénájai-tó', 46.17120000, 18.11820000, 'Aktív verseny: Mecseki Bojlis Kihívás', '2026-08-21 06:00:00'),
(51, 'Sikondai-tavak', 46.18120000, 18.28120000, 'Aktív verseny: Komlói Bányász Horgászkupa', '2026-08-22 07:30:00'),
(52, 'Szászvári Horgásztó', 46.27120000, 18.38120000, 'Aktív verseny: Szászvári Nyári Feeder Verseny', '2026-08-23 08:00:00'),
(53, 'Merenyei-víztározó', 46.05810000, 17.69120000, 'Aktív verseny: Merenyei Nemzetközi Bojlis Kupa', '2026-08-24 06:00:00'),
(54, 'Hársas-tó (Szigetvár)', 46.04120000, 17.79810000, 'Aktív verseny: Szigetvári Vár Kupa', '2026-08-25 08:00:00'),
(55, 'Gorica-tó', 46.18810000, 17.91210000, 'Aktív verseny: Zselici Horgász Derby', '2026-08-26 07:00:00'),
(56, 'Bátaapáti Horgásztó', 46.21210000, 18.59810000, 'Aktív verseny: Tolnai-hegyhát Feeder Verseny', '2026-08-29 08:00:00'),
(57, 'Szálkai-tó', 46.28120000, 18.63120000, 'Aktív verseny: Szálkai Nyári Ponty Kupa', '2026-08-30 07:00:00'),
(58, 'Fadd-Dombori Holt-Duna', 46.47120000, 18.88120000, 'Aktív verseny: Dombori Harcsafogó Verseny', '2026-08-31 19:00:00'),
(59, 'Tolnai Holt-Duna', 46.42810000, 18.79120000, 'Aktív verseny: Tolnai Mesterek Kupája', '2026-09-02 08:00:00'),
(60, 'Paks-Kölesdi Tőzegtó', 46.61810000, 18.72120000, 'Aktív verseny: Mezőföldi Horgászkupa', '2026-09-03 07:30:00'),
(61, 'Sárszentmihályi-víztározó', 47.15810000, 18.31210000, 'Aktív verseny: Fejér Megyei Feeder Bajnokság', '2026-09-04 08:00:00'),
(62, 'Pátkai-víztározó', 47.27120000, 18.53120000, 'Aktív verseny: Pátkai Pergető Derby', '2026-09-05 07:00:00'),
(63, 'Zámolyi-víztározó', 47.31810000, 18.41210000, 'Aktív verseny: Zámolyi Nyári Ponty Kupa', '2026-09-06 08:00:00'),
(64, 'Velencei-tó (Gárdonyi versenypálya)', 47.19120000, 18.61210000, 'Aktív verseny: Velencei-tavi Finomszerelékes OB', '2026-09-07 07:00:00'),
(65, 'Palotavárosi-tavak (Székesfehérvár)', 47.18810000, 18.39810000, 'Aktív verseny: Fehérvári Városi Horgász Kupa', '2026-09-08 08:00:00'),
(66, 'Bicskei Horgásztó', 47.48120000, 18.62810000, 'Aktív verseny: Bicskei Method Kupa', '2026-09-09 08:00:00'),
(67, 'Etyeki Horgásztó', 47.44120000, 18.74120000, 'Aktív verseny: Etyeki Pince és Horgászkupa', '2026-09-10 07:30:00'),
(68, 'Törökbálinti-tó', 47.43120000, 18.91210000, 'Aktív verseny: Törökbálinti Bojlis Verseny', '2026-09-11 06:00:00'),
(69, 'Biatorbágyi Pecató', 47.46810000, 18.84120000, 'Aktív verseny: Biatorbágyi Feeder Kupa', '2026-09-13 08:00:00'),
(70, 'Sóskúti Horgásztó', 47.41120000, 18.83120000, 'Aktív verseny: Sóskúti Nyári Pontyfogó Verseny', '2026-09-14 07:00:00'),
(71, 'Dunaharaszti Kavicsbányató', 47.35120000, 19.09120000, 'Aktív verseny: Haraszti Method Feeder Derby', '2026-09-15 08:00:00'),
(72, 'Bugyi Horgásztó', 47.21810000, 19.14120000, 'Aktív verseny: Bugyi Nyári Horgászkupa', '2026-09-16 08:00:00'),
(73, 'Rukkel-tó', 47.19810000, 19.01210000, 'Aktív verseny: Rukkel-tó Éjszakai Harcsafogó Verseny', '2026-09-18 20:00:00'),
(74, 'Szigetszentmiklósi Kavicsbányatavak', 47.34120000, 19.02810000, 'Aktív verseny: Miklósi Pontyfogó Bajnokság', '2026-09-19 07:00:00'),
(75, 'Csepeli Kavicsbányató', 47.39120000, 19.05810000, 'Aktív verseny: Csepeli Nyári Feeder Kupa', '2026-09-21 08:00:00'),
(76, 'Naplás-tó (Budapest)', 47.51120000, 19.25120000, 'Aktív verseny: Naplás-tó Városi Horgász Derby', '2026-09-22 07:30:00'),
(77, 'Gödöllői-tó (Babolna)', 47.60120000, 19.35120000, 'Aktív verseny: Gödöllői Egyetemi Horgászkupa', '2026-09-23 08:00:00'),
(78, 'Isaszegi Horgásztavak', 47.53120000, 19.33810000, 'Aktív verseny: Isaszegi Ponty és Amur Kupa', '2026-09-24 07:00:00'),
(79, 'Péceli Horgásztó', 47.49120000, 19.34810000, 'Aktív verseny: Péceli Feeder Verseny', '2026-09-25 08:00:00'),
(80, 'Maglódi Kistó', 47.44810000, 19.35810000, 'Aktív verseny: Maglódi Horgászkupa', '2026-09-26 08:00:00'),
(81, 'Gyömrői Tófürdő és Horgásztó', 47.39810000, 19.39810000, 'Aktív verseny: Gyömrői Nyári Pontyfogó Kupa', '2026-09-27 07:30:00'),
(82, 'Sülysápi Horgásztó', 47.45120000, 19.53120000, 'Aktív verseny: Sülysápi Feeder Bajnokság', '2026-09-28 08:00:00'),
(83, 'Nagykátai Horgásztó', 47.41120000, 19.74120000, 'Aktív verseny: Tápió-vidéki Horgász Kupa', '2026-09-29 07:00:00'),
(84, 'Jászberényi Zagyva-holtág', 47.49810000, 19.91210000, 'Aktív verseny: Jászsági Nyári Feeder Verseny', '2026-09-30 08:00:00'),
(85, 'Jászboldogházi Horgásztó', 47.36810000, 19.99120000, 'Aktív verseny: Jász Kupasorozat', '2026-10-01 08:00:00'),
(86, 'Újszászi Horgásztó', 47.29120000, 20.08120000, 'Aktív verseny: Zagyva-menti Pontyfogó Verseny', '2026-10-02 07:30:00'),
(87, 'Szolnoki Holt-Tiszai Versenypálya', 47.16120000, 20.18120000, 'Aktív verseny: Szolnoki Tiszai Feeder OB', '2026-10-03 07:00:00'),
(88, 'Alcsi-Holt-Tisza (Szolnok)', 47.14810000, 20.21120000, 'Aktív verseny: Alcsi-Szigeti Bojlis Bajnokság', '2026-10-04 06:00:00'),
(89, 'Tiszakécskei Holt-Tisza', 46.92810000, 20.11210000, 'Aktív verseny: Kécskei Nyári Ponty Kupa', '2026-10-05 08:00:00'),
(90, 'Cserkeszőlői Horgásztó', 46.86120000, 20.19810000, 'Aktív verseny: Tiszazugi Horgász Derby', '2026-10-06 08:00:00'),
(91, 'Kunszentmártoni Holt-Körös', 46.83810000, 20.28120000, 'Aktív verseny: Körös-menti Harcsafogó Verseny', '2026-10-07 19:00:00'),
(92, 'Csongrádi Holt-Tisza', 46.71120000, 20.13810000, 'Aktív verseny: Csongrádi Nyári Feeder Kupa', '2026-10-08 08:00:00'),
(93, 'Tiszalöki Kenyérgyári-holtág', 48.01810000, 21.37810000, 'Aktív verseny: Tiszalöki Harcsafogó Kupa', '2026-10-09 20:00:00'),
(94, 'Tiszadada-Tiszadobi Holt-Tisza', 47.92810000, 21.22120000, 'Aktív verseny: Dobi Holt-Tisza Bojlis Verseny', '2026-10-10 06:00:00'),
(95, 'Rakamazi Nagy-Morotva', 48.11210000, 21.46810000, 'Aktív verseny: Rakamazi Pergető Bajnokság', '2026-10-11 07:00:00'),
(96, 'Tokaji Kovács-tó', 48.11810000, 21.41210000, 'Aktív verseny: Tokaj-Hegyalja Horgászkupa', '2026-10-12 08:00:00'),
(97, 'Sárospataki Bányató (Megyer-hegy)', 48.35810000, 21.56810000, 'Aktív verseny: Zempléni Pergető Kupa', '2026-10-13 08:00:00'),
(98, 'Sátoraljaújhelyi Csonka-tó', 48.38810000, 21.65120000, 'Aktív verseny: Újhelyi Nyári Ponty Kupa', '2026-10-14 07:30:00'),
(99, 'Cigándi-tó', 48.25810000, 21.89120000, 'Aktív verseny: Bodrogközi Horgász Derby', '2026-10-15 08:00:00'),
(100, 'Vásárosnaményi Gergelyiugornya Holt-Tisza', 48.12810000, 22.31210000, 'Aktív verseny: Beregi Horgászkupa', '2026-10-16 08:00:00'),
(101, 'Mátészalkai Csukás-tó', 47.95120000, 22.32810000, 'Aktív verseny: Szatmári Method Feeder Verseny', '2026-10-17 07:00:00'),
(102, 'Nyírbátori Sárkány-tó', 47.83810000, 22.13120000, 'Aktív verseny: Sárkány-tó Bojlis Bajnokság', '2026-10-18 06:00:00'),
(103, 'Vaja-tó', 47.98810000, 22.18120000, 'Aktív verseny: Vajai Természetvédelmi Horgászkupa', '2026-10-19 08:00:00'),
(104, 'Rohodi Horgásztó', 47.99120000, 22.12810000, 'Aktív verseny: Rohodi Pontyfogó Kupa', '2026-10-20 08:00:00'),
(105, 'Baktalórántháza Horgásztó', 47.98120000, 22.01210000, 'Aktív verseny: Baktalórántházi Feeder Verseny', '2026-10-21 08:00:00'),
(106, 'Orosi-tó (Nyíregyháza)', 47.95120000, 21.78120000, 'Aktív verseny: Nyíregyházi Városi Horgász Kupa', '2026-10-22 07:30:00'),
(107, 'Sóstói-tó (Nyíregyháza)', 48.00120000, 21.72810000, 'Aktív verseny: Sóstói Nyári Finomszerelékes Verseny', '2026-10-23 08:00:00'),
(108, 'Tiszavasvári Tőzegtó', 47.95810000, 21.38120000, 'Aktív verseny: Tiszavasvári Harcsafogó Verseny', '2026-10-24 19:00:00'),
(109, 'Hajdúnánási Téglagyári-tó', 47.84120000, 21.42810000, 'Aktív verseny: Nánási Horgász Derby', '2026-10-25 08:00:00'),
(110, 'Hajdúböszörményi Prónay-tó', 47.67120000, 21.51210000, 'Aktív verseny: Böszörményi Ponty Kupa', '2026-10-26 08:00:00'),
(111, 'Balmazújvárosi Szikszai-tó', 47.61210000, 21.34120000, 'Aktív verseny: Újvárosi Feeder Bajnokság', '2026-10-27 07:00:00'),
(112, 'Hajdúszoboszlói Horgásztó', 47.43810000, 21.39810000, 'Aktív verseny: Szoboszlói Gyógyvíz Kupa', '2026-10-28 08:00:00'),
(113, 'Püspökladányi Bányató', 47.31210000, 21.11210000, 'Aktív verseny: Sárréti Horgász Bajnokság', '2026-10-29 08:00:00'),
(114, 'Berettyóújfalui Téglagyári-tó', 47.21810000, 21.53810000, 'Aktív verseny: Bihar Megyei Feeder Verseny', '2026-10-30 08:00:00'),
(115, 'Kaba Horgásztó', 47.35120000, 21.28120000, 'Aktív verseny: Kabai Cukor Kupa', '2026-10-31 08:00:00'),
(116, 'Fancsikai-tavak (Debrecen)', 47.51810000, 21.72810000, 'Aktív verseny: Erdőspusztai Horgász Derby', '2026-11-01 07:30:00'),
(117, 'Vekeri-tó (Debrecen)', 47.44810000, 21.68120000, 'Aktív verseny: Debreceni Városi Pontyfogó Verseny', '2026-11-02 08:00:00'),
(118, 'Halápi-tó', 47.52810000, 21.79120000, 'Aktív verseny: Halápi Feeder Kupa', '2026-11-03 08:00:00'),
(119, 'Tiszafüredi Holt-Tisza', 47.61810000, 20.74120000, 'Aktív verseny: Tiszafüredi Pergető Mesterek Kupája', '2026-11-04 07:00:00'),
(120, 'Abádszalóki-öböl', 47.47810000, 20.59120000, 'Aktív verseny: Abádszalóki Nyári Bojlis Verseny', '2026-11-05 06:00:00'),
(121, 'Poroszlói-öböl', 47.64120000, 20.65810000, 'Aktív verseny: Poroszlói Harcsafogó Futam', '2026-11-06 19:00:00'),
(122, 'Sarudi-öböl', 47.58810000, 20.60120000, 'Aktív verseny: Élményfalu Horgászkupa', '2026-11-07 08:00:00'),
(123, 'Kisköre-Duzzasztó versenypálya', 47.49120000, 20.51210000, 'Aktív verseny: Kiskörei Feeder Bajnokság', '2026-11-08 07:30:00'),
(124, 'Tiszanánai Dinnyésháti-holtág', 47.54120000, 20.54810000, 'Aktív verseny: Dinnyésháti Nyári Kupa', '2026-11-09 08:00:00'),
(125, 'Hevesi Horgásztó', 47.59120000, 20.28120000, 'Aktív verseny: Hevesi Nyári Ponty Kupa', '2026-11-10 08:00:00'),
(126, 'Hatvani Bányató', 47.66120000, 19.67810000, 'Aktív verseny: Hatvani Feeder Derby', '2026-11-11 08:00:00'),
(127, 'Gyöngyösi Mátra-tó', 47.77120000, 19.92810000, 'Aktív verseny: Mátra-aljai Horgászkupa', '2026-11-12 08:00:00'),
(128, 'Markazi-víztározó', 47.82810000, 20.06120000, 'Aktív verseny: Markazi Bojlis Mesterek Versenye', '2026-11-13 06:00:00'),
(129, 'Domoszlói-víztározó', 47.82120000, 20.12120000, 'Aktív verseny: Domoszlói Pontyfogó Kupa', '2026-11-14 07:00:00'),
(130, 'Egerbaktai Horgásztó', 47.93810000, 20.28120000, 'Aktív verseny: Bükki Horgász Derby', '2026-11-15 08:00:00'),
(131, 'Egerszalóki-víztározó (Laskó-völgy)', 47.88120000, 20.31210000, 'Aktív verseny: Egerszalóki Feeder Mesterek Kupája', '2026-11-16 07:30:00'),
(132, 'Felsőtárkányi-tó', 47.97120000, 20.42120000, 'Aktív verseny: Felsőtárkányi Pisztráng és Ponty Verseny', '2026-11-17 08:00:00'),
(133, 'Bélapátfalvai Lak-völgyi tó', 48.05120000, 20.36120000, 'Aktív verseny: Bélapátfalvai Bükk Kupa', '2026-11-18 08:00:00'),
(134, 'Szilvásváradi Szalajka-tó', 48.10120000, 20.39810000, 'Aktív verseny: Szalajka-völgyi Pisztrángfogó Kupa', '2026-11-19 08:00:00'),
(135, 'Vadna Park Horgásztó', 48.27120000, 20.55120000, 'Aktív verseny: Vadna Park Nyári Feeder Verseny', '2026-11-20 08:00:00'),
(136, 'Kazincbarcikai Csónakázó-tó', 48.24810000, 20.62810000, 'Aktív verseny: Bányász Horgászkupa Kazincbarcika', '2026-11-21 08:00:00'),
(137, 'Sajó-holtág (Sajószöged)', 47.95120000, 20.97810000, 'Aktív verseny: Sajó-menti Pontyfogó Kupa', '2026-11-22 08:00:00'),
(138, 'Tiszapalkonyai Holt-Tisza', 47.88810000, 21.06120000, 'Aktív verseny: Tiszapalkonyai Nyári Verseny', '2026-11-23 08:00:00'),
(139, 'Tiszaújvárosi Derítő-tó', 47.92120000, 21.03810000, 'Aktív verseny: Tiszaújvárosi Feeder Derby', '2026-11-24 08:00:00'),
(140, 'Muhi Bányató', 47.97120000, 20.89120000, 'Aktív verseny: Muhi csata Emlékkupa Horgászverseny', '2026-11-25 08:00:00'),
(141, 'Nyékládházi Gólem-tó', 47.98810000, 20.83810000, 'Aktív verseny: Gólem-tó Bojlis Bajnokság', '2026-11-26 06:00:00'),
(142, 'Debreceni-tó (Nyékládháza)', 47.99810000, 20.82120000, 'Aktív verseny: Nyéki Kavicsbánya Kupa', '2026-11-27 07:30:00'),
(143, 'Miskolci Csorba-tó', 48.06120000, 20.81210000, 'Aktív verseny: Csorba-tó Miskolci Városi Kupa', '2026-11-28 08:00:00'),
(144, 'Miskolci Hejő-tó', 48.04120000, 20.78120000, 'Aktív verseny: Hejő-menti Feeder Verseny', '2026-11-29 08:00:00'),
(145, 'Szerencsi Cukorgyári-tó', 48.15810000, 21.21210000, 'Aktív verseny: Szerencsi Édes Kupa', '2026-11-30 08:00:00'),
(146, 'Mádi Horgásztó', 48.19120000, 21.28120000, 'Aktív verseny: Hegyaljai Bojlis Párbaj', '2026-12-01 06:00:00'),
(147, 'Encsi Horgásztó', 48.32810000, 21.18120000, 'Aktív verseny: Hernád-völgyi Horgász Kupa', '2026-12-02 08:00:00'),
(148, 'Forgácsi Horgásztó (Salgotarján)', 48.09810000, 19.81210000, 'Aktív verseny: Salgótarjáni Bányász Kupa', '2026-12-03 08:00:00'),
(149, 'Vizslási Horgásztó', 48.05810000, 19.82810000, 'Aktív verseny: Vizslási Feeder Verseny', '2026-12-04 08:00:00'),
(150, 'Mihálygergei-víztározó', 48.19120000, 19.63810000, 'Aktív verseny: Komravölgyi Rekordfogó Kupa', '2026-12-05 07:00:00'),
(151, 'Ludányhalászi Öreg-tó', 48.08120000, 19.53810000, 'Aktív verseny: Ludányi Holt-Ipoly Kupa', '2026-12-06 08:00:00'),
(152, 'Rétsági Horgásztó', 47.92810000, 19.13810000, 'Aktív verseny: Rétsági Nyári Ponty Kupa', '2026-12-07 08:00:00'),
(153, 'Nógrádsorosi Horgásztó', 47.88810000, 19.23810000, 'Aktív verseny: Cserháti Feeder Bajnokság', '2026-12-08 08:00:00'),
(154, 'Bánki-tó', 47.92120000, 19.17120000, 'Aktív verseny: Bánki-tó Nyári Horgász Mesterkupa', '2026-12-09 07:30:00'),
(155, 'Romhányi-tó', 47.92810000, 19.25810000, 'Aktív verseny: Romhányi Nyári Feeder Verseny', '2026-12-10 08:00:00'),
(156, 'Kemencei Horgásztó', 47.88810000, 18.89120000, 'Aktív verseny: Börzsönyi Horgászkupa', '2026-12-11 08:00:00'),
(157, 'Zebegényi Duna-parti Versenypálya', 47.79810000, 18.91210000, 'Aktív verseny: Dunakanyar Pergető Mester Kupa', '2026-12-12 07:00:00'),
(158, 'Esztergomi Bányatavak (Palatinus-tó)', 47.74810000, 18.78120000, 'Aktív verseny: Palatinus-tó Bojlis Kihívás', '2026-12-13 06:00:00'),
(159, 'Dorogi Tőzegtó', 47.73120000, 18.73810000, 'Aktív verseny: Dorogi Bányász Feeder Kupa', '2026-12-14 08:00:00'),
(160, 'Nyergesújfalui Téglagyári-tó', 47.75810000, 18.55810000, 'Aktív verseny: Duna-menti Pontyfogó Verseny', '2026-12-15 08:00:00'),
(161, 'Lábatlani Horgásztó', 47.74810000, 18.49810000, 'Aktív verseny: Lábatlani Horgász Derby', '2026-12-16 08:00:00'),
(162, 'Süttői Horgásztó', 47.75120000, 18.44120000, 'Aktív verseny: Gerecse-menti Feeder Kupa', '2026-12-17 08:00:00'),
(163, 'Gönyűi Duna-holtág', 47.73810000, 17.82810000, 'Aktív verseny: Gönyűi Pergető Verseny', '2026-12-18 07:00:00'),
(164, 'Győri Püspökerdői Holt-Duna', 47.69810000, 17.62120000, 'Aktív verseny: Győri Városi Finomszerelékes OB', '2026-12-19 07:30:00'),
(165, 'Abda Rábca-holtág', 47.69120000, 17.54120000, 'Aktív verseny: Rábca-menti Horgász Derby', '2026-12-20 08:00:00'),
(166, 'Mosonmagyaróvári Malom-ág', 47.87810000, 17.27120000, 'Aktív verseny: Lajta-menti Feeder Kupa', '2026-12-21 08:00:00'),
(167, 'Rajkai Kavicsbányató', 47.99810000, 17.19810000, 'Aktív verseny: Szigetközi Bojlis Párbaj', '2026-12-22 06:00:00'),
(168, 'Lipóti Holt-Duna', 47.85810000, 17.45810000, 'Aktív verseny: Szigetköz Horgász Derby', '2026-12-23 08:00:00'),
(169, 'Dunaszegitó', 47.76810000, 17.55810000, 'Aktív verseny: Dunaszegi Nyári Ponty Kupa', '2026-12-24 08:00:00'),
(170, 'Fertőrákosi Horgásztó', 47.71810000, 16.64810000, 'Aktív verseny: Sopron-Vidék Horgász Bajnokság', '2026-12-25 08:00:00'),
(171, 'Kapuvári Cserpes-tó', 47.58810000, 16.11210000, 'Aktív verseny: Rábaközi Feeder Verseny', '2026-12-26 08:00:00'),
(172, 'Csornai Téglagyári-tó', 47.61210000, 17.24810000, 'Aktív verseny: Csornai Horgász Kupa', '2026-12-27 08:00:00'),
(173, 'Marcaltői Horgásztó', 47.46810000, 17.31210000, 'Aktív verseny: Marcal-menti Pontyfogó Kupa', '2026-12-28 08:00:00'),
(174, 'Papa-Kéttornyúlaki Horgásztó', 47.34810000, 17.43810000, 'Aktív verseny: Pápai Városi Horgász Derby', '2026-12-29 08:00:00'),
(175, 'Bakonygyepesi Horgásztó', 47.12810000, 17.52810000, 'Aktív verseny: Ajkai Bányász Feeder Kupa', '2026-12-30 08:00:00'),
(176, 'Devecseri Téglagyári-tó', 47.10810000, 17.43810000, 'Aktív verseny: Somló-vidéki Horgászkupa', '2026-12-31 08:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalasok`
--

CREATE TABLE `foglalasok` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `datum_kezdet` date NOT NULL,
  `datum_veg` date NOT NULL,
  `steg` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `galeria_kepek`
--

CREATE TABLE `galeria_kepek` (
  `id` int(11) NOT NULL,
  `kep_utvonal` varchar(255) NOT NULL,
  `kep_hash` varchar(32) NOT NULL,
  `submited_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `galeria_kepek`
--

INSERT INTO `galeria_kepek` (`id`, `kep_utvonal`, `kep_hash`, `submited_at`) VALUES
(1, 'imgs/c2f0fdb0afe6b1267d87c288b99ed20f.jpg', 'c2f0fdb0afe6b1267d87c288b99ed20f', '2026-09-10 11:51:37'),
(2, 'imgs/c5c61ace708aabe6606df76675d8a24e.jpg', 'c5c61ace708aabe6606df76675d8a24e', '2026-09-10 12:08:36'),
(3, 'imgs/1dce4049237b9b30e257a7f6e444fdfa.jpg', '1dce4049237b9b30e257a7f6e444fdfa', '2026-09-29 11:03:22'),
(4, 'imgs/51420caa3a2b15699d09c211a3ab776a.jpg', '51420caa3a2b15699d09c211a3ab776a', '2026-09-29 11:06:17'),
(7, 'imgs/8fb6d55597984d1be3ee2e26532a69de.jpg', '8fb6d55597984d1be3ee2e26532a69de', '2026-10-09 11:14:15');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `id` int(11) NOT NULL,
  `cim` varchar(180) NOT NULL,
  `kategoria` varchar(80) NOT NULL DEFAULT 'EGYES▄LET',
  `tartalom` text NOT NULL,
  `datum` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`id`, `cim`, `kategoria`, `tartalom`, `datum`, `created_at`) VALUES
(1, 'Megtörtént a nyári haltelepítés!', 'HALTELEPÍTÉS', 'A tegnapi nap folyamán több mint 2 tonna ponty és 300 kg ragadozó hal (csuka, süllő) került betelepítésre a tóba. Kellemes pecázást kívánunk mindenkinek!', '2026-07-12', '2026-10-01 08:24:44'),
(2, 'Elkészültek az új stégek a Sziget részen', 'EGYESÜLET', 'Végre befejeződtek az átalakítások! Három új, stabil tölgyfa stég várja a horgászni vágyókat a szigetnél, melyek mostantól foglalhatók.', '2026-06-28', '2026-10-01 08:24:44');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyek`
--

CREATE TABLE `versenyek` (
  `id` int(11) NOT NULL,
  `helyszin_id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `leiras` text DEFAULT NULL,
  `idopont` datetime DEFAULT NULL,
  `letrehozva` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `versenyek`
--

INSERT INTO `versenyek` (`id`, `helyszin_id`, `nev`, `leiras`, `idopont`, `letrehozva`) VALUES
(1, 1, 'Aktív verseny: Nyári Ponty Kupa', NULL, '2026-06-20 08:00:00', '2026-11-19 10:53:28'),
(2, 2, 'Aktív verseny: Balatoni Bojlis Párbaj', NULL, '2026-07-15 06:00:00', '2026-11-19 10:53:28'),
(3, 3, 'Aktív verseny: Éjszakai Harcsafogó futam', NULL, '2026-08-01 20:00:00', '2026-11-19 10:53:28'),
(6, 6, 'Aktív verseny: Lenti Method Feeder Kupa', NULL, '2026-06-06 07:00:00', '2026-11-19 10:53:28'),
(7, 7, 'Aktív verseny: Pásztói Mátra Kupa', NULL, '2026-06-07 08:00:00', '2026-11-19 10:53:28'),
(8, 8, 'Aktív verseny: Recski Bojlis Kihívás', NULL, '2026-06-13 06:00:00', '2026-11-19 10:53:28'),
(9, 9, 'Aktív verseny: Veresegyházi Horgász Kupa', NULL, '2026-06-14 07:30:00', '2026-11-19 10:53:28'),
(10, 10, 'Aktív verseny: Nógrádi Pergető Bajnokság', NULL, '2026-06-21 07:00:00', '2026-11-19 10:53:28'),
(11, 11, 'Aktív verseny: Tassi Feeder Mesterek Futama', NULL, '2026-06-27 08:00:00', '2026-11-19 10:53:28'),
(12, 12, 'Aktív verseny: Nyári Pontyfogó Bajnokság', NULL, '2026-07-01 07:00:00', '2026-11-19 10:53:28'),
(13, 13, 'Aktív verseny: Finomszerelékes Éjszakai Kupasorozat', NULL, '2026-07-02 19:00:00', '2026-11-19 10:53:28'),
(14, 14, 'Aktív verseny: Budapesti Horgász Derby', NULL, '2026-07-03 08:00:00', '2026-11-19 10:53:28'),
(15, 15, 'Aktív verseny: Budakalászi Pergető Verseny', NULL, '2026-07-05 07:00:00', '2026-11-19 10:53:28'),
(16, 16, 'Aktív verseny: Nemzetközi Gyékényesi Búvár és Horgászkupa', NULL, '2026-07-08 06:00:00', '2026-11-19 10:53:28'),
(17, 17, 'Aktív verseny: Környei Harcsafogó Kupa', NULL, '2026-07-09 20:00:00', '2026-11-19 10:53:28'),
(18, 18, 'Aktív verseny: Vértesi Bojlis Párbaj', NULL, '2026-07-10 07:00:00', '2026-11-19 10:53:28'),
(19, 19, 'Aktív verseny: Bokodi Method Kupa', NULL, '2026-07-11 08:00:00', '2026-11-19 10:53:28'),
(20, 20, 'Aktív verseny: Tatai Horgászfesztivál és Kupa', NULL, '2026-07-12 07:00:00', '2026-11-19 10:53:28'),
(21, 21, 'Aktív verseny: Városi Nyári Feeder Verseny', NULL, '2026-07-16 08:00:00', '2026-11-19 10:53:28'),
(22, 22, 'Aktív verseny: Derítő-tó Rekordfogó Bojlis Bajnokság', NULL, '2026-07-17 06:00:00', '2026-11-19 10:53:28'),
(23, 23, 'Aktív verseny: Zalaegerszegi Városi Kupa', NULL, '2026-07-18 07:30:00', '2026-11-19 10:53:28'),
(24, 24, 'Aktív verseny: Pölöskei Tőzegtó Bojlis Kupa', NULL, '2026-07-19 06:00:00', '2026-11-19 10:53:28'),
(25, 25, 'Aktív verseny: Zalai Feeder Bajnokság', NULL, '2026-07-22 08:00:00', '2026-11-19 10:53:28'),
(26, 26, 'Aktív verseny: Őrségi Horgászkupa', NULL, '2026-07-23 07:00:00', '2026-11-19 10:53:28'),
(27, 27, 'Aktív verseny: Hegyháti Horgászverseny', NULL, '2026-07-24 08:00:00', '2026-11-19 10:53:28'),
(28, 28, 'Aktív verseny: Borostyán Kupasorozat', NULL, '2026-07-25 07:30:00', '2026-11-19 10:53:28'),
(29, 29, 'Aktív verseny: Vasi Hegyhát Nyári Verseny', NULL, '2026-07-26 08:00:00', '2026-11-19 10:53:28'),
(30, 30, 'Aktív verseny: Szajki-tavak Amur és Pontyfogó Kupa', NULL, '2026-07-29 07:00:00', '2026-11-19 10:53:28'),
(31, 31, 'Aktív verseny: Gencsi Nyári Feeder Bajnokság', NULL, '2026-07-30 08:00:00', '2026-11-19 10:53:28'),
(32, 32, 'Aktív verseny: Sárvári Finomszerelékes Verseny', NULL, '2026-07-31 07:00:00', '2026-11-19 10:53:28'),
(33, 33, 'Aktív verseny: Szombathelyi Városi Nyári Kupa', NULL, '2026-08-02 08:00:00', '2026-11-19 10:53:28'),
(34, 34, 'Aktív verseny: Kalocsai Vidék Horgász Bajnokság', NULL, '2026-08-03 07:00:00', '2026-11-19 10:53:28'),
(35, 35, 'Aktív verseny: Félegyházi Pontyfogó Verseny', NULL, '2026-08-04 08:00:00', '2026-11-19 10:53:28'),
(36, 36, 'Aktív verseny: Tömörkényi Horgászkupa', NULL, '2026-08-05 07:00:00', '2026-11-19 10:53:28'),
(37, 37, 'Aktív verseny: Sándorfalvi Nyári Feeder Kupa', NULL, '2026-08-06 08:00:00', '2026-11-19 10:53:28'),
(38, 38, 'Aktív verseny: Tisza-menti Harcsafogó Verseny', NULL, '2026-08-07 19:00:00', '2026-11-19 10:53:28'),
(39, 39, 'Aktív verseny: Mártélyi Tájvédelmi Horgászkupa', NULL, '2026-08-08 07:00:00', '2026-11-19 10:53:28'),
(40, 40, 'Aktív verseny: Vásárhelyi Horgász Derby', NULL, '2026-08-09 08:00:00', '2026-11-19 10:53:28'),
(41, 41, 'Aktív verseny: Békési Feeder Kupa', NULL, '2026-08-11 07:30:00', '2026-11-19 10:53:28'),
(42, 42, 'Aktív verseny: Csaba Kupasorozat', NULL, '2026-08-12 08:00:00', '2026-11-19 10:53:28'),
(43, 43, 'Aktív verseny: Szarvasi Holt-Körös Bojlis Bajnokság', NULL, '2026-08-13 06:00:00', '2026-11-19 10:53:28'),
(44, 44, 'Aktív verseny: Kákafoki Nyári Feeder Verseny', NULL, '2026-08-14 07:00:00', '2026-11-19 10:53:28'),
(45, 45, 'Aktív verseny: Mezőtúri Horgász Kupa', NULL, '2026-08-16 08:00:00', '2026-11-19 10:53:28'),
(46, 46, 'Aktív verseny: Bónom-zugi Pontyfogó Verseny', NULL, '2026-08-17 07:00:00', '2026-11-19 10:53:28'),
(47, 47, 'Aktív verseny: Pécsi Horgász Derby', NULL, '2026-08-18 08:00:00', '2026-11-19 10:53:28'),
(48, 48, 'Aktív verseny: Orfűi Nyári Pontyfogó Kupa', NULL, '2026-08-19 07:00:00', '2026-11-19 10:53:28'),
(49, 49, 'Aktív verseny: Orfűi Finomszerelékes Bajnokság', NULL, '2026-08-20 08:00:00', '2026-11-19 10:53:28'),
(50, 50, 'Aktív verseny: Mecseki Bojlis Kihívás', NULL, '2026-08-21 06:00:00', '2026-11-19 10:53:28'),
(51, 51, 'Aktív verseny: Komlói Bányász Horgászkupa', NULL, '2026-08-22 07:30:00', '2026-11-19 10:53:28'),
(52, 52, 'Aktív verseny: Szászvári Nyári Feeder Verseny', NULL, '2026-08-23 08:00:00', '2026-11-19 10:53:28'),
(53, 53, 'Aktív verseny: Merenyei Nemzetközi Bojlis Kupa', NULL, '2026-08-24 06:00:00', '2026-11-19 10:53:28'),
(54, 54, 'Aktív verseny: Szigetvári Vár Kupa', NULL, '2026-08-25 08:00:00', '2026-11-19 10:53:28'),
(55, 55, 'Aktív verseny: Zselici Horgász Derby', NULL, '2026-08-26 07:00:00', '2026-11-19 10:53:28'),
(56, 56, 'Aktív verseny: Tolnai-hegyhát Feeder Verseny', NULL, '2026-08-29 08:00:00', '2026-11-19 10:53:28'),
(57, 57, 'Aktív verseny: Szálkai Nyári Ponty Kupa', NULL, '2026-08-30 07:00:00', '2026-11-19 10:53:28'),
(58, 58, 'Aktív verseny: Dombori Harcsafogó Verseny', NULL, '2026-08-31 19:00:00', '2026-11-19 10:53:28'),
(59, 59, 'Aktív verseny: Tolnai Mesterek Kupája', NULL, '2026-09-02 08:00:00', '2026-11-19 10:53:28'),
(60, 60, 'Aktív verseny: Mezőföldi Horgászkupa', NULL, '2026-09-03 07:30:00', '2026-11-19 10:53:28'),
(61, 61, 'Aktív verseny: Fejér Megyei Feeder Bajnokság', NULL, '2026-09-04 08:00:00', '2026-11-19 10:53:28'),
(62, 62, 'Aktív verseny: Pátkai Pergető Derby', NULL, '2026-09-05 07:00:00', '2026-11-19 10:53:28'),
(63, 63, 'Aktív verseny: Zámolyi Nyári Ponty Kupa', NULL, '2026-09-06 08:00:00', '2026-11-19 10:53:28'),
(64, 64, 'Aktív verseny: Velencei-tavi Finomszerelékes OB', NULL, '2026-09-07 07:00:00', '2026-11-19 10:53:28'),
(65, 65, 'Aktív verseny: Fehérvári Városi Horgász Kupa', NULL, '2026-09-08 08:00:00', '2026-11-19 10:53:28'),
(66, 66, 'Aktív verseny: Bicskei Method Kupa', NULL, '2026-09-09 08:00:00', '2026-11-19 10:53:28'),
(67, 67, 'Aktív verseny: Etyeki Pince és Horgászkupa', NULL, '2026-09-10 07:30:00', '2026-11-19 10:53:28'),
(68, 68, 'Aktív verseny: Törökbálinti Bojlis Verseny', NULL, '2026-09-11 06:00:00', '2026-11-19 10:53:28'),
(69, 69, 'Aktív verseny: Biatorbágyi Feeder Kupa', NULL, '2026-09-13 08:00:00', '2026-11-19 10:53:28'),
(70, 70, 'Aktív verseny: Sóskúti Nyári Pontyfogó Verseny', NULL, '2026-09-14 07:00:00', '2026-11-19 10:53:28'),
(71, 71, 'Aktív verseny: Haraszti Method Feeder Derby', NULL, '2026-09-15 08:00:00', '2026-11-19 10:53:28'),
(72, 72, 'Aktív verseny: Bugyi Nyári Horgászkupa', NULL, '2026-09-16 08:00:00', '2026-11-19 10:53:28'),
(73, 73, 'Aktív verseny: Rukkel-tó Éjszakai Harcsafogó Verseny', NULL, '2026-09-18 20:00:00', '2026-11-19 10:53:28'),
(74, 74, 'Aktív verseny: Miklósi Pontyfogó Bajnokság', NULL, '2026-09-19 07:00:00', '2026-11-19 10:53:28'),
(75, 75, 'Aktív verseny: Csepeli Nyári Feeder Kupa', NULL, '2026-09-21 08:00:00', '2026-11-19 10:53:28'),
(76, 76, 'Aktív verseny: Naplás-tó Városi Horgász Derby', NULL, '2026-09-22 07:30:00', '2026-11-19 10:53:28'),
(77, 77, 'Aktív verseny: Gödöllői Egyetemi Horgászkupa', NULL, '2026-09-23 08:00:00', '2026-11-19 10:53:28'),
(78, 78, 'Aktív verseny: Isaszegi Ponty és Amur Kupa', NULL, '2026-09-24 07:00:00', '2026-11-19 10:53:28'),
(79, 79, 'Aktív verseny: Péceli Feeder Verseny', NULL, '2026-09-25 08:00:00', '2026-11-19 10:53:28'),
(80, 80, 'Aktív verseny: Maglódi Horgászkupa', NULL, '2026-09-26 08:00:00', '2026-11-19 10:53:28'),
(81, 81, 'Aktív verseny: Gyömrői Nyári Pontyfogó Kupa', NULL, '2026-09-27 07:30:00', '2026-11-19 10:53:28'),
(82, 82, 'Aktív verseny: Sülysápi Feeder Bajnokság', NULL, '2026-09-28 08:00:00', '2026-11-19 10:53:28'),
(83, 83, 'Aktív verseny: Tápió-vidéki Horgász Kupa', NULL, '2026-09-29 07:00:00', '2026-11-19 10:53:28'),
(84, 84, 'Aktív verseny: Jászsági Nyári Feeder Verseny', NULL, '2026-09-30 08:00:00', '2026-11-19 10:53:28'),
(85, 85, 'Aktív verseny: Jász Kupasorozat', NULL, '2026-10-01 08:00:00', '2026-11-19 10:53:28'),
(86, 86, 'Aktív verseny: Zagyva-menti Pontyfogó Verseny', NULL, '2026-10-02 07:30:00', '2026-11-19 10:53:28'),
(87, 87, 'Aktív verseny: Szolnoki Tiszai Feeder OB', NULL, '2026-10-03 07:00:00', '2026-11-19 10:53:28'),
(88, 88, 'Aktív verseny: Alcsi-Szigeti Bojlis Bajnokság', NULL, '2026-10-04 06:00:00', '2026-11-19 10:53:28'),
(89, 89, 'Aktív verseny: Kécskei Nyári Ponty Kupa', NULL, '2026-10-05 08:00:00', '2026-11-19 10:53:28'),
(90, 90, 'Aktív verseny: Tiszazugi Horgász Derby', NULL, '2026-10-06 08:00:00', '2026-11-19 10:53:28'),
(91, 91, 'Aktív verseny: Körös-menti Harcsafogó Verseny', NULL, '2026-10-07 19:00:00', '2026-11-19 10:53:28'),
(92, 92, 'Aktív verseny: Csongrádi Nyári Feeder Kupa', NULL, '2026-10-08 08:00:00', '2026-11-19 10:53:28'),
(93, 93, 'Aktív verseny: Tiszalöki Harcsafogó Kupa', NULL, '2026-10-09 20:00:00', '2026-11-19 10:53:28'),
(94, 94, 'Aktív verseny: Dobi Holt-Tisza Bojlis Verseny', NULL, '2026-10-10 06:00:00', '2026-11-19 10:53:28'),
(95, 95, 'Aktív verseny: Rakamazi Pergető Bajnokság', NULL, '2026-10-11 07:00:00', '2026-11-19 10:53:28'),
(96, 96, 'Aktív verseny: Tokaj-Hegyalja Horgászkupa', NULL, '2026-10-12 08:00:00', '2026-11-19 10:53:28'),
(97, 97, 'Aktív verseny: Zempléni Pergető Kupa', NULL, '2026-10-13 08:00:00', '2026-11-19 10:53:28'),
(98, 98, 'Aktív verseny: Újhelyi Nyári Ponty Kupa', NULL, '2026-10-14 07:30:00', '2026-11-19 10:53:28'),
(99, 99, 'Aktív verseny: Bodrogközi Horgász Derby', NULL, '2026-10-15 08:00:00', '2026-11-19 10:53:28'),
(100, 100, 'Aktív verseny: Beregi Horgászkupa', NULL, '2026-10-16 08:00:00', '2026-11-19 10:53:28'),
(101, 101, 'Aktív verseny: Szatmári Method Feeder Verseny', NULL, '2026-10-17 07:00:00', '2026-11-19 10:53:28'),
(102, 102, 'Aktív verseny: Sárkány-tó Bojlis Bajnokság', NULL, '2026-10-18 06:00:00', '2026-11-19 10:53:28'),
(103, 103, 'Aktív verseny: Vajai Természetvédelmi Horgászkupa', NULL, '2026-10-19 08:00:00', '2026-11-19 10:53:28'),
(104, 104, 'Aktív verseny: Rohodi Pontyfogó Kupa', NULL, '2026-10-20 08:00:00', '2026-11-19 10:53:28'),
(105, 105, 'Aktív verseny: Baktalórántházi Feeder Verseny', NULL, '2026-10-21 08:00:00', '2026-11-19 10:53:28'),
(106, 106, 'Aktív verseny: Nyíregyházi Városi Horgász Kupa', NULL, '2026-10-22 07:30:00', '2026-11-19 10:53:28'),
(107, 107, 'Aktív verseny: Sóstói Nyári Finomszerelékes Verseny', NULL, '2026-10-23 08:00:00', '2026-11-19 10:53:28'),
(108, 108, 'Aktív verseny: Tiszavasvári Harcsafogó Verseny', NULL, '2026-10-24 19:00:00', '2026-11-19 10:53:28'),
(109, 109, 'Aktív verseny: Nánási Horgász Derby', NULL, '2026-10-25 08:00:00', '2026-11-19 10:53:28'),
(110, 110, 'Aktív verseny: Böszörményi Ponty Kupa', NULL, '2026-10-26 08:00:00', '2026-11-19 10:53:28'),
(111, 111, 'Aktív verseny: Újvárosi Feeder Bajnokság', NULL, '2026-10-27 07:00:00', '2026-11-19 10:53:28'),
(112, 112, 'Aktív verseny: Szoboszlói Gyógyvíz Kupa', NULL, '2026-10-28 08:00:00', '2026-11-19 10:53:28'),
(113, 113, 'Aktív verseny: Sárréti Horgász Bajnokság', NULL, '2026-10-29 08:00:00', '2026-11-19 10:53:28'),
(114, 114, 'Aktív verseny: Bihar Megyei Feeder Verseny', NULL, '2026-10-30 08:00:00', '2026-11-19 10:53:28'),
(115, 115, 'Aktív verseny: Kabai Cukor Kupa', NULL, '2026-10-31 08:00:00', '2026-11-19 10:53:28'),
(116, 116, 'Aktív verseny: Erdőspusztai Horgász Derby', NULL, '2026-11-01 07:30:00', '2026-11-19 10:53:28'),
(117, 117, 'Aktív verseny: Debreceni Városi Pontyfogó Verseny', NULL, '2026-11-02 08:00:00', '2026-11-19 10:53:28'),
(118, 118, 'Aktív verseny: Halápi Feeder Kupa', NULL, '2026-11-03 08:00:00', '2026-11-19 10:53:28'),
(119, 119, 'Aktív verseny: Tiszafüredi Pergető Mesterek Kupája', NULL, '2026-11-04 07:00:00', '2026-11-19 10:53:28'),
(120, 120, 'Aktív verseny: Abádszalóki Nyári Bojlis Verseny', NULL, '2026-11-05 06:00:00', '2026-11-19 10:53:28'),
(121, 121, 'Aktív verseny: Poroszlói Harcsafogó Futam', NULL, '2026-11-06 19:00:00', '2026-11-19 10:53:28'),
(122, 122, 'Aktív verseny: Élményfalu Horgászkupa', NULL, '2026-11-07 08:00:00', '2026-11-19 10:53:28'),
(123, 123, 'Aktív verseny: Kiskörei Feeder Bajnokság', NULL, '2026-11-08 07:30:00', '2026-11-19 10:53:28'),
(124, 124, 'Aktív verseny: Dinnyésháti Nyári Kupa', NULL, '2026-11-09 08:00:00', '2026-11-19 10:53:28'),
(125, 125, 'Aktív verseny: Hevesi Nyári Ponty Kupa', NULL, '2026-11-10 08:00:00', '2026-11-19 10:53:28'),
(126, 126, 'Aktív verseny: Hatvani Feeder Derby', NULL, '2026-11-11 08:00:00', '2026-11-19 10:53:28'),
(127, 127, 'Aktív verseny: Mátra-aljai Horgászkupa', NULL, '2026-11-12 08:00:00', '2026-11-19 10:53:28'),
(128, 128, 'Aktív verseny: Markazi Bojlis Mesterek Versenye', NULL, '2026-11-13 06:00:00', '2026-11-19 10:53:28'),
(129, 129, 'Aktív verseny: Domoszlói Pontyfogó Kupa', NULL, '2026-11-14 07:00:00', '2026-11-19 10:53:28'),
(130, 130, 'Aktív verseny: Bükki Horgász Derby', NULL, '2026-11-15 08:00:00', '2026-11-19 10:53:28'),
(131, 131, 'Aktív verseny: Egerszalóki Feeder Mesterek Kupája', NULL, '2026-11-16 07:30:00', '2026-11-19 10:53:28'),
(132, 132, 'Aktív verseny: Felsőtárkányi Pisztráng és Ponty Verseny', NULL, '2026-11-17 08:00:00', '2026-11-19 10:53:28'),
(133, 133, 'Aktív verseny: Bélapátfalvai Bükk Kupa', NULL, '2026-11-18 08:00:00', '2026-11-19 10:53:28'),
(134, 134, 'Aktív verseny: Szalajka-völgyi Pisztrángfogó Kupa', NULL, '2026-11-19 08:00:00', '2026-11-19 10:53:28'),
(135, 135, 'Aktív verseny: Vadna Park Nyári Feeder Verseny', NULL, '2026-11-20 08:00:00', '2026-11-19 10:53:28'),
(136, 136, 'Aktív verseny: Bányász Horgászkupa Kazincbarcika', NULL, '2026-11-21 08:00:00', '2026-11-19 10:53:28'),
(137, 137, 'Aktív verseny: Sajó-menti Pontyfogó Kupa', NULL, '2026-11-22 08:00:00', '2026-11-19 10:53:28'),
(138, 138, 'Aktív verseny: Tiszapalkonyai Nyári Verseny', NULL, '2026-11-23 08:00:00', '2026-11-19 10:53:28'),
(139, 139, 'Aktív verseny: Tiszaújvárosi Feeder Derby', NULL, '2026-11-24 08:00:00', '2026-11-19 10:53:28'),
(140, 140, 'Aktív verseny: Muhi csata Emlékkupa Horgászverseny', NULL, '2026-11-25 08:00:00', '2026-11-19 10:53:28'),
(141, 141, 'Aktív verseny: Gólem-tó Bojlis Bajnokság', NULL, '2026-11-26 06:00:00', '2026-11-19 10:53:28'),
(142, 142, 'Aktív verseny: Nyéki Kavicsbánya Kupa', NULL, '2026-11-27 07:30:00', '2026-11-19 10:53:28'),
(143, 143, 'Aktív verseny: Csorba-tó Miskolci Városi Kupa', NULL, '2026-11-28 08:00:00', '2026-11-19 10:53:28'),
(144, 144, 'Aktív verseny: Hejő-menti Feeder Verseny', NULL, '2026-11-29 08:00:00', '2026-11-19 10:53:28'),
(145, 145, 'Aktív verseny: Szerencsi Édes Kupa', NULL, '2026-11-30 08:00:00', '2026-11-19 10:53:28'),
(146, 146, 'Aktív verseny: Hegyaljai Bojlis Párbaj', NULL, '2026-12-01 06:00:00', '2026-11-19 10:53:28'),
(147, 147, 'Aktív verseny: Hernád-völgyi Horgász Kupa', NULL, '2026-12-02 08:00:00', '2026-11-19 10:53:28'),
(148, 148, 'Aktív verseny: Salgótarjáni Bányász Kupa', NULL, '2026-12-03 08:00:00', '2026-11-19 10:53:28'),
(149, 149, 'Aktív verseny: Vizslási Feeder Verseny', NULL, '2026-12-04 08:00:00', '2026-11-19 10:53:28'),
(150, 150, 'Aktív verseny: Komravölgyi Rekordfogó Kupa', NULL, '2026-12-05 07:00:00', '2026-11-19 10:53:28'),
(151, 151, 'Aktív verseny: Ludányi Holt-Ipoly Kupa', NULL, '2026-12-06 08:00:00', '2026-11-19 10:53:28'),
(152, 152, 'Aktív verseny: Rétsági Nyári Ponty Kupa', NULL, '2026-12-07 08:00:00', '2026-11-19 10:53:28'),
(153, 153, 'Aktív verseny: Cserháti Feeder Bajnokság', NULL, '2026-12-08 08:00:00', '2026-11-19 10:53:28'),
(154, 154, 'Aktív verseny: Bánki-tó Nyári Horgász Mesterkupa', NULL, '2026-12-09 07:30:00', '2026-11-19 10:53:28'),
(155, 155, 'Aktív verseny: Romhányi Nyári Feeder Verseny', NULL, '2026-12-10 08:00:00', '2026-11-19 10:53:28'),
(156, 156, 'Aktív verseny: Börzsönyi Horgászkupa', NULL, '2026-12-11 08:00:00', '2026-11-19 10:53:28'),
(157, 157, 'Aktív verseny: Dunakanyar Pergető Mester Kupa', NULL, '2026-12-12 07:00:00', '2026-11-19 10:53:28'),
(158, 158, 'Aktív verseny: Palatinus-tó Bojlis Kihívás', NULL, '2026-12-13 06:00:00', '2026-11-19 10:53:28'),
(159, 159, 'Aktív verseny: Dorogi Bányász Feeder Kupa', NULL, '2026-12-14 08:00:00', '2026-11-19 10:53:28'),
(160, 160, 'Aktív verseny: Duna-menti Pontyfogó Verseny', NULL, '2026-12-15 08:00:00', '2026-11-19 10:53:28'),
(161, 161, 'Aktív verseny: Lábatlani Horgász Derby', NULL, '2026-12-16 08:00:00', '2026-11-19 10:53:28'),
(162, 162, 'Aktív verseny: Gerecse-menti Feeder Kupa', NULL, '2026-12-17 08:00:00', '2026-11-19 10:53:28'),
(163, 163, 'Aktív verseny: Gönyűi Pergető Verseny', NULL, '2026-12-18 07:00:00', '2026-11-19 10:53:28'),
(164, 164, 'Aktív verseny: Győri Városi Finomszerelékes OB', NULL, '2026-12-19 07:30:00', '2026-11-19 10:53:28'),
(165, 165, 'Aktív verseny: Rábca-menti Horgász Derby', NULL, '2026-12-20 08:00:00', '2026-11-19 10:53:28'),
(166, 166, 'Aktív verseny: Lajta-menti Feeder Kupa', NULL, '2026-12-21 08:00:00', '2026-11-19 10:53:28'),
(167, 167, 'Aktív verseny: Szigetközi Bojlis Párbaj', NULL, '2026-12-22 06:00:00', '2026-11-19 10:53:28'),
(168, 168, 'Aktív verseny: Szigetköz Horgász Derby', NULL, '2026-12-23 08:00:00', '2026-11-19 10:53:28'),
(169, 169, 'Aktív verseny: Dunaszegi Nyári Ponty Kupa', NULL, '2026-12-24 08:00:00', '2026-11-19 10:53:28'),
(170, 170, 'Aktív verseny: Sopron-Vidék Horgász Bajnokság', NULL, '2026-12-25 08:00:00', '2026-11-19 10:53:28'),
(171, 171, 'Aktív verseny: Rábaközi Feeder Verseny', NULL, '2026-12-26 08:00:00', '2026-11-19 10:53:28'),
(172, 172, 'Aktív verseny: Csornai Horgász Kupa', NULL, '2026-12-27 08:00:00', '2026-11-19 10:53:28'),
(173, 173, 'Aktív verseny: Marcal-menti Pontyfogó Kupa', NULL, '2026-12-28 08:00:00', '2026-11-19 10:53:28'),
(174, 174, 'Aktív verseny: Pápai Városi Horgász Derby', NULL, '2026-12-29 08:00:00', '2026-11-19 10:53:28'),
(175, 175, 'Aktív verseny: Ajkai Bányász Feeder Kupa', NULL, '2026-12-30 08:00:00', '2026-11-19 10:53:28'),
(176, 176, 'Aktív verseny: Somló-vidéki Horgászkupa', NULL, '2026-12-31 08:00:00', '2026-11-19 10:53:28');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `verseny_eredmenyek`
--

CREATE TABLE `verseny_eredmenyek` (
  `id` int(11) NOT NULL,
  `verseny_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) DEFAULT NULL,
  `resztvevo_nev` varchar(100) NOT NULL,
  `helyezes` smallint(5) UNSIGNED DEFAULT NULL,
  `pontszam` decimal(8,2) DEFAULT NULL,
  `megjegyzes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `fishing_spots`
--
ALTER TABLE `fishing_spots`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `foglalasok`
--
ALTER TABLE `foglalasok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `galeria_kepek`
--
ALTER TABLE `galeria_kepek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kep_hash` (`kep_hash`);

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hirek_datum` (`datum`,`id`);

--
-- A tábla indexei `versenyek`
--
ALTER TABLE `versenyek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_versenyek_helyszin_idopont` (`helyszin_id`,`idopont`);

--
-- A tábla indexei `verseny_eredmenyek`
--
ALTER TABLE `verseny_eredmenyek`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_eredmeny_verseny_felhasznalo` (`verseny_id`,`felhasznalo_id`),
  ADD KEY `idx_eredmeny_verseny_helyezes` (`verseny_id`,`helyezes`),
  ADD KEY `idx_eredmeny_felhasznalo` (`felhasznalo_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `fishing_spots`
--
ALTER TABLE `fishing_spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT a táblához `foglalasok`
--
ALTER TABLE `foglalasok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `galeria_kepek`
--
ALTER TABLE `galeria_kepek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `versenyek`
--
ALTER TABLE `versenyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT a táblához `verseny_eredmenyek`
--
ALTER TABLE `verseny_eredmenyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `versenyek`
--
ALTER TABLE `versenyek`
  ADD CONSTRAINT `fk_versenyek_helyszin` FOREIGN KEY (`helyszin_id`) REFERENCES `fishing_spots` (`id`) ON UPDATE CASCADE;

--
-- Megkötések a táblához `verseny_eredmenyek`
--
ALTER TABLE `verseny_eredmenyek`
  ADD CONSTRAINT `fk_eredmeny_felhasznalo` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_eredmeny_verseny` FOREIGN KEY (`verseny_id`) REFERENCES `versenyek` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
