-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql53.unoeuro.com
-- Generation Time: May 23, 2017 at 06:40 PM
-- Server version: 5.7.17-13-log
-- PHP Version: 7.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kahojo_dk_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `img` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`) VALUES
(1, 'Bestik', 'Bestik.jpg'),
(2, 'Tallerkener', 'Tallerkner.jpg'),
(3, 'Glas, krus og kopper', 'Glas.jpg'),
(4, 'Kander', 'Kander.jpg'),
(5, 'Fade og skåle', 'Fade.jpg'),
(6, 'Diverse', 'Diverse.jpg'),
(7, 'Vaser', 'Vaser.jpg'),
(8, 'Borde og stole', 'bordestole.jpg'),
(9, 'Diverse bar', 'Diverse_bar.jpg'),
(10, 'Diverse snacks', 'Diverse_Snacks.jpg'),
(11, 'Drikkevarer', 'Drikkevarer.jpg'),
(12, 'Lyd, lys og røg', 'roeg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sku` char(10) CHARACTER SET utf8 NOT NULL,
  `img` varchar(128) CHARACTER SET utf8 NOT NULL,
  `cat_id` varchar(60) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `sku`, `img`, `cat_id`) VALUES
(1, 'Kniv', 'Almindelig spisekniv', '1.25', 'kv_001', 'kniv.png', 'Bestik'),
(2, 'Gaffel', 'Almindelig spisegaffel', '1.25', 'kv_002', 'gaffel.jpg', 'Bestik'),
(3, 'spiseske', 'Almindelig spiseske', '1.25', 'kv_003', 'spiseske.jpg', 'Bestik'),
(4, 'dessertske', 'Dessertske', '1.25', 'kv_004', 'dessertske.jpg', 'Bestik'),
(5, 'teske', 'Teske', '1.25', 'kv_005', 'teske.jpg', 'Bestik'),
(6, 'kagegaffel', 'Kagegaffel', '1.25', 'kv_006', 'kagegaffel.jpg', 'Bestik'),
(7, 'pålægsgaffel', 'Pålægsgaffel', '1.25', 'kv_007', 'paalaegsgaffel.jpg', 'Bestik'),
(8, 'kartoffelske', 'Kartoffelske', '1.50', 'kv_008', 'kartoffelske.jpg', 'Bestik'),
(9, 'forlaengelse_bordben', 'Forlængelse til bordben til træklapbord\r\nMateriale: Stål\r\nBordhøjde forøges med: 15 cm                  sæt med 4 stk    ', '10.00', 'kv_009', '', 'Borde og stole'),
(10, 'salatbestik', 'Salatbestik', '2.50', 'kv_010', 'salatbestik.jpg', 'Bestik'),
(12, 'sovseske', 'Sovseske', '2.50', 'kv_012', 'sovseske.jpg', 'Bestik'),
(13, 'kødbestik', 'Kødbestik', '2.50', 'kv_013', 'koedbestik.jpg', 'Bestik'),
(14, 'kagespade', 'Kagespade', '2.50', 'kv_014', 'kagespade.jpg', 'Bestik'),
(15, 'tallerken_forret', 'Tallerken til forret Ø17,5 cm', '1.25', 'kv_015', 'tallerken_forret.png', 'Tallerkener'),
(16, 'tallerken_hovedret', 'Tallerken til hovedret Ø23,5 cm', '1.25', 'kv_016', 'tallerken_hovedret.jpg', 'Tallerkener'),
(17, 'tallerken_hovedret_xl', 'Tallerken til hovedret XL Ø30 cm', '1.50', 'kv_017', 'tallerken_hovedretxl.jpg', 'Tallerkener'),
(18, 'tallerken_dessert', 'Tallerken til dessert. Ø17,5', '1.25', 'kv_018', 'tallerken_dessert.png', 'Tallerkener'),
(19, 'tallerken_frokost', 'Tallerken til frokost Ø22 cm', '1.25', 'kv_019', 'frokosttallerken.jpg', 'Tallerkener'),
(20, 'dyb_tallerken', 'Dyb tallerken til suppe', '1.25', 'kv_020', 'suppetallerken.jpg', 'Tallerkener'),
(21, 'pizzatallerken', 'Tallerken til pizza', '1.50', 'kv_021', 'pizzatallerken.jpg', 'Tallerkener'),
(22, 'salatskål', 'Salatskål til kuvert', '2.00', 'kv_022', 'salatskaal.png', 'Tallerkener'),
(23, 'dækketallerken', 'Dækketallerken sølv Ø33 cm', '4.00', 'kv_023', 'daekketallerken.jpg', 'Tallerkener'),
(25, 'glas_velkomst', 'Glas til velkomstdrinks', '2.25', 'kv_025', 'velkomstglas.jpg', 'Glas, krus og kopper'),
(26, 'glas_rødvin', 'Glas til rødvin', '1.50', 'kv_026', 'roedvinsglas.jpg', 'Glas, krus og kopper'),
(27, 'glas_hvidvin', 'Glas til hvidvin', '1.50', 'kv_027', 'hvidvinsglas.jpg', 'Glas, krus og kopper'),
(28, 'ølglas', 'Ølglas', '1.25', 'kv_028', 'oelglas.jpg', 'Glas, krus og kopper'),
(29, 'vandglas', 'Glas til vand', '1.50', 'kv_029', 'vandglas.jpg', 'Glas, krus og kopper'),
(30, 'glas_snaps', 'Glas til snaps', '1.25', 'kv_030', 'snapseglas.jpg', 'Glas, krus og kopper'),
(31, 'glas_cognac', 'Glas til cognac', '2.50', 'kv_031', 'cognacglas.jpg', 'Glas, krus og kopper'),
(32, 'glas_dessert', 'Glas til dessertvin', '2.50', 'kv_032', 'dessertvinsglas.png', 'Glas, krus og kopper'),
(33, 'glas_anretning', 'Glas til anretning af dessert/forret', '2.50', 'kv_033', 'anretningsglas.jpg', 'Glas, krus og kopper'),
(34, 'glas_martini', 'Glas til Martini', '2.50', 'kv_034', 'martiniglas.jpg', 'Glas, krus og kopper'),
(35, 'ølkrus', 'Ølkrus ½ L', '3.00', 'kv_035', 'oelkrus½l.jpg', 'Glas, krus og kopper'),
(36, 'ølkrus_1l', 'Øl krus 1 L', '5.00', 'kv_036', 'oelkrus1l.jpg', 'Glas, krus og kopper'),
(37, 'k-kop_m_u-kop', 'Kaffekop med underkop', '2.50', 'kv_037', 'kaffekopmunderkop.jpg', 'Glas, krus og kopper'),
(38, 'flødekande_sukkerskål', 'Flødekande og sukkerskål', '6.00', 'kv_038', 'flodeskaal.jpg', 'Glas, krus og kopper'),
(39, 'kaffe/the_krus', 'Kaffe/the krus', '2.50', 'kv_039', 'kaffethekrus.jpg', 'Glas, krus og kopper'),
(40, 'capu-kop_m_u-kop', 'Capuccino kop med underkop', '2.50', 'kv_040', 'capkopmunderkop.png', 'Glas, krus og kopper'),
(41, 'Espr_kop_m_u-kop', 'Espresso kop med underkop', '2.50', 'kv_041', 'esprkopmunderkop.jpg', 'Glas, krus og kopper'),
(42, 'vandkander', 'Vandkander', '8.00', 'kv_042', 'kande.jpg', 'Kander'),
(43, 'kaffe/thekander', 'Kaffe/the-kander', '6.50', 'kv_043', 'kaffekande.jpg', 'Kander'),
(44, 'kaffekander_alu', 'Kaffekander alu', '10.00', 'kv_044', 'kaffekandealu.jpg', 'Kander'),
(45, 'vinkaraffel_s', 'Vinkaraffel 1 L', '10.00', 'kv_045', 'vinkaraffel.jpg', 'Kander'),
(46, 'vinkaraffel_l', 'Vinkaraffel 1,5 L', '15.00', 'kv_046', 'vinkaraffel.jpg', 'Kander'),
(47, 'sovsekander', 'Sovsekander', '5.00', 'kv_047', 'sovsekande.jpg', 'Kander'),
(48, 'salatskål', 'Runde salat/kartoffel skåle. Ø23', '10.00', 'kv_048', 'salatskaal.png', 'Fade og skåle'),
(49, 'fad', 'Hvide fade til anretning (Firkantet)', '12.00', 'kv_049', 'serveringsfad.jpg', 'Fade og skåle'),
(50, 'souffleskål', 'Souffle skåle Ø19cm', '5.00', 'kv_050', 'souffle.jpg', 'Fade og skåle'),
(51, 'serveringsbakke', 'Serveringsbakke', '7.50', 'kv_051', 'serveringsbakke.jpg', 'Fade og skåle'),
(52, 'kagefad', 'Kagefad på fod Ø29 cm', '8.00', 'kv_052', 'kagefad.jpg', 'Fade og skåle'),
(53, 'saltpeber', 'Salt og pebersæt', '6.00', 'kv_053', 'saltpeber.jpg', 'Diverse'),
(54, 'skilteholder', 'Skilteholder', '1.00', 'kv_054', 'skilteholder.jpg', 'Diverse'),
(55, 'fyrfadsglas', 'Lysestager i glas til fyrfadslys', '2.00', 'kv_055', 'fyrfadsstager.png', 'Diverse'),
(56, 'lysestage_1', 'Lysestage i sølv (én-armet)', '9.00', 'kv_056', '1armet.jpg', 'Diverse'),
(57, 'lysestage_5', 'Lysestage i sølv (5-armet)', '20.00', 'kv_057', '5armet.jpg', 'Diverse'),
(58, 'lysestagegulv5_1', 'Lysestage i sølv (5-armet gulvmodel 1m)', '200.00', 'kv_058', '5armet1m.jpg', 'Diverse'),
(59, 'lysestagegulv5_15', 'Lysestage i sølv (5-armet gulvmodel 1½m)', '250.00', 'kv_059', '5armet15m.jpg', 'Diverse'),
(60, 'vase', 'Vase til buket', '5.00', 'kv_060', 'vasebuket.jpg', 'Vaser'),
(61, 'stilkvase', 'Stilkvase', '5.00', 'kv_061', 'stilkvase.jpg', 'Vaser'),
(62, 'klapbord_poly', 'Klapbord 183x76x75 cm, 6 pers. + bordender.\r\nMateriale: Polyethylen\r\nFarve: Lys grå\r\nGrundmål: L:182,9 x B:76,2 cm\r\nHøjde: 74,3 cm\r\nVægt: 14 kg\r\nBordplade: 45 mm\r\nMaksimum belastning: 315 kg\r\nLeje pr. bord 30 kr.\r\nGave/buffetbord højde justerbare ben 15 kr.', '30.00', 'kv_062', 'klapbord.png', 'Borde og stole'),
(63, 'gave/buffetbord', 'Gave/buffetbord', '15.00', 'kv_063', 'gavebord.jpg', 'Borde og stole'),
(64, 'klapbord_træ', 'Træ klapbord 200 x 80 x 73 cm (6 pers.)\r\nGrundmål: L:200 x B:80 cm\r\nHøjde: 73 cm\r\nBordplade: 16 mm\r\nVægt: 24,50 kg', '35.00', 'kv_064', 'klapbordtrae.jpg', 'Borde og stole'),
(65, 'bænke_borde', 'Bænke-bordesæt (tyroler)', '95.00', 'kv_065', 'tyroler.jpg', 'Borde og stole'),
(66, 'cafebord_alu', 'Cafe-bord (alu) højt bord\r\nMaterial: Mørkbejdset og lakeret birkefinér\r\nBordhøjde (ståbord): 106 cm\r\nVægt: 8,85 kg\r\nDiameter fod: 81,5 cm\r\nBordplade diameter: 80 cm\r\nBordplade tykkelse: 1,9 cm', '40.00', 'kv_066', 'cafebord.jpg', 'Borde og stole'),
(67, 'event_cafe_stå', 'Event cafe/ståbord Ø80 cm\r\nMateriale: Mørkbejdset og lakeret birkefinér\r\nBordhøjde (ståbord): 106 cm\r\nVægt: 8,85 kg\r\nDiameter fod: 81,5 cm\r\nBordplade diameter: 80 cm\r\nBordplade tykkelse: 1,9 cm', '60.00', 'kv_067', 'eventbord.png', 'Borde og stole'),
(68, 'rundtbord_8p', 'Rundt bord Ø160 8 personer\r\nGrundmål: Ø 160 cm\r\nHøjde: 73 cm\r\nBordplade: 16 mm\r\nVægt: 39 kg', '75.00', 'kv_068', 'rundtbord.jpg', 'Borde og stole'),
(69, 'rundtbord_10p', 'Rundt bord Ø180 10 personer\r\nGrundmål: Ø180 cm\r\nHøjde: 73 cm\r\nBordplade: 16 mm\r\nVægt: 39 kg', '90.00', 'kv_069', 'rundtbordst.jpg', 'Borde og stole'),
(70, 'højstol_hvid', 'Højstol til baby\r\n', '15.00', 'kv_071', 'babystolhvid.jpg', 'Borde og stole'),
(71, 'stabelstol', 'Stabelstol', '8.00', 'kv_070', 'stabelstol.png', 'Borde og stole'),
(72, 'højstol_blå', 'Højstol til baby\r\n', '15.00', 'kv_072', 'hojstol.jpg', 'Borde og stole'),
(73, 'party_cooler', 'Party cooler\r\nMed plads til 2 kasser flasker eller 3 kasser dåser\r\nFredag til søndag', '100.00', 'kv_073', 'partycooler.jpg', 'Diverse bar'),
(74, 'spiritusdispenser', 'Spiritusdispenser', '8.00', 'kv_074', 'spiritdisp.jpg', 'Diverse bar'),
(75, 'barbutler', 'Barbutler til bordkant', '0.00', 'kv_075', 'barbutler.jpg', 'Diverse bar'),
(76, 'hawaaib2', 'Hawaiibar med to stole', '300.00', 'kv_076', 'hawaiibar.jpg', 'Borde og stole'),
(77, 'ekstra_barstol_haw', 'Ekstra barstol til Hawaiibar', '10.00', 'kv_077', 'barstolhawaii.jpg', 'Borde og stole'),
(78, 'barbord_hawaii', 'Hawaii barbord (ståbord)', '40.00', 'kv_078', 'hawaiibarbord.jpg', 'Borde og stole'),
(79, 'askebæger', 'Askebæger metal', '5.00', 'kv_079', 'askeb.jpg', 'Diverse'),
(80, 'pop_tilbud', 'Popcornmaskine tilbud\r\nInkluderer:\r\n1 pakke med 50 stk popcornposer\r\n1 spand med fedt og salt - 200 portioner', '395.00', 'kv_080', 'popcornmaskine.jpeg', 'Diverse snacks'),
(81, 'pop_maskine', 'Popcornmaskine', '300.00', 'kv_081', 'popcornmaskine.jpeg', 'Diverse snacks'),
(82, 'ekstra_korn_salt_fedt', 'Ekstra spand (200 portioner) med fedt, korn og salt,', '180.00', 'kv_082', 'popmix.jpg', 'Diverse snacks'),
(83, 'ekstra_korn_salt_fedt_xl', 'Ekstra spand (500 potioner) med fedt, korn og salt', '240.00', 'kv_083', 'popmix.jpg', 'Diverse snacks'),
(84, 'ekstra_pose', 'Ekstra poser 50 stk.', '50.00', 'kv_084', 'poppose.jpg', 'Diverse snacks'),
(85, 'papbægre_pop', 'Papbægre til popcorn 50 stk.', '65.00', 'kv_085', 'poppap.jpg', 'Diverse snacks'),
(86, 'vogn_pop', 'Vogn til popcornsmaskine i rød', '25.00', 'kv_086', 'popcornvogn.jpg', 'Diverse snacks'),
(87, 'baconsnacks', 'Baconsnacks 900 g', '100.00', 'kv_087', 'baconsnacks.jpg', 'Diverse snacks'),
(88, 'baconsnack_tilbud', 'Bacon snacks og varmeskab med 2 x 900 g sprøde baconsnacks og 50 snackposer.\r\nKun fredag til søndag, ellers efter aftale.', '275.00', 'kv_088', 'bacontilbud.jpg', 'Diverse snacks'),
(89, 'varmeskab_bacon', 'Varmeskab', '65.00', 'kv_089', 'bacontilbud.jpg', 'Diverse snacks'),
(90, 'snackposer', 'Snack poser 50 stk. 40,- kr', '40.00', 'kv_090', 'papirspose.jpg', 'Diverse snacks'),
(91, 'softice_mas', 'Softice maskine 800 kr for weekend + forbrug', '800.00', 'kv_091', 'softicemask.png', 'Diverse snacks'),
(92, 'softi_2l', '2L softice mix\r\n10-12 personer\r\n\r\nVi bruger Matilde softice mix sammen med udlejning af softice maskiner.\r\n\r\nVi tage ubrudt softice mix retur. Så du kan altid bestille ekstra så der er nok til din fest.', '95.00', 'kv_092', 'softicemix.png', 'Diverse snacks'),
(93, 'softi_kop_ske_50', 'Softicekopper m. plast isske 50 sæt', '50.00', 'kv_093', 'softkop.jpg', 'Diverse snacks'),
(94, 'topping_1l_jbær', '1L topping jordbær', '99.00', 'kv_094', '', 'Diverse snacks'),
(95, 'topping_1l_kar', '1L topping karamel', '99.00', 'kv_095', '', 'Diverse snacks'),
(96, 'topping_1l_cho', '1L topping cho', '99.00', 'kv_096', '', 'Diverse snacks'),
(97, 'drys_choko', '90-95 Grams drys poser chokolade', '23.00', 'kv_097', '', 'Diverse snacks'),
(98, 'drys_tivoli', '90-95 Grams drys poser tivoli', '23.00', 'kv_098', '', 'Diverse snacks'),
(99, 'drys_lakrids', '90-95 Grams drys poser lakrids', '23.00', 'kv_099', '', 'Diverse snacks'),
(100, 'chokokrymmel', 'Chokoladekrymmel 1 kg.', '125.00', 'kv_100', '', 'Diverse snacks'),
(101, 'lakridskrymmel', 'Lakridskrymmel 1 kg.', '125.00', 'kv_101', '', 'Diverse snacks'),
(102, 'tivolikrymmel', 'Tivolikrymmel 1 kg.', '125.00', 'kv_102', '', 'Diverse snacks'),
(103, 'vaffel', 'Sprøde vafler pr. stk 1,25 kr.', '1.25', 'kv_103', 'vaffel.jpg', 'Diverse snacks'),
(104, 'chokofont_50p', 'Chokoladefontæne bord model (50 pers) weekendleje incl. 2,5 kg chokolade – 600 kr (u. choko. 300 kr)', '600.00', 'kv_104', 'chokfont.jpg', 'Diverse snacks'),
(105, 'choko', 'Chokolade 2,5 kg', '450.00', 'kv_015', 'choko25.jpg', 'Diverse snacks'),
(106, 'træpind_350', 'Træpinde 20 cm til frugt 350 stks.', '35.00', 'kv_106', 'traepind.jpg', 'Diverse snacks'),
(107, 'slush_mask', 'Slush ice maskine (2 kamre)\r\nSaft til 12 L. slush ice (2 forskellige smagsvarianter)\r\n1. pk med 50 splintfri slush ice plast krus.\r\n1. pk med 50 stk. slush ice sugerør med ske.\r\n Weekendleje (Hent fredag & aflever mandag) \r\neller\r\nUgeleje  (Hent mandag & aflever fredag)', '395.00', 'kv_107', 'slushicemask.jpg', 'Drikkevarer'),
(108, 'filur_eks_1', 'Filur\r\nEkstra smag\r\n1 L', '35.00', 'kv_108', '', 'Drikkevarer'),
(109, 'blue_ice_eks_1', 'Blue ice\r\nEkstra smag\r\n1 L', '35.00', 'kv_109', '', 'Drikkevarer'),
(110, 'hindb_eks_1', 'Hindbær\r\nEkstra smag\r\n1 L', '35.00', 'kv_110', '', 'Drikkevarer'),
(111, 'cola_eks_1', 'Cola\r\nEkstra smag\r\n1 L', '35.00', 'kv_111', '', 'Drikkevarer'),
(112, 'grøn_sp_eks_1', 'Grøn Sport\r\nEkstra smag\r\n1 L', '35.00', 'kv_112', '', 'Drikkevarer'),
(113, 'ananas_eks_1', 'Ananas\r\nEkstra smag\r\n1 L', '35.00', 'kv_113', '', 'Drikkevarer'),
(114, 'kæmpelæs_eks_1', 'Kæmpelæske\r\nEkstra smag\r\n1 L', '35.00', 'kv_114', '', 'Drikkevarer'),
(115, 'kung_eks_1', 'Kung Fu\r\nEkstra smag\r\n1 L', '35.00', 'kv_115', '', 'Drikkevarer'),
(116, 'blåb_eks_1', 'Blåbær\r\nEkstra smag\r\n1 L', '35.00', 'kv_116', '', 'Drikkevarer'),
(117, 'tutti_eks_1', 'Tutti Frutti\r\nEkstra smag\r\n1 L', '35.00', 'kv_117', '', 'Drikkevarer'),
(118, 'astro_eks_1', 'Astronaut\r\nEkstra smag\r\n1 L', '35.00', 'kv_118', '', 'Drikkevarer'),
(119, 'lemon_eks_1', 'Lemon/lime\r\nEkstra smag\r\n1 L', '35.00', 'kv_119', '', 'Drikkevarer'),
(120, 'cherry_eks_1', 'Cherry\r\nEkstra smag\r\n1 L', '35.00', 'kv_120', '', 'Drikkevarer'),
(121, 'jordb_eks_1', 'Jordbær\r\nEkstra smag\r\n1 L', '35.00', 'kv_121', '', 'Drikkevarer'),
(122, 'fersken_eks_1', 'Fersken\r\nEkstra smag\r\n1 L', '35.00', 'kv_122', '', 'Drikkevarer'),
(123, 'exot_eks_1', 'Exotic\r\nEkstra smag\r\n1 L', '35.00', 'kv_123', '', 'Drikkevarer'),
(124, 'sambi_eks_1', 'Sambi\r\nEkstra smag\r\n1 L', '35.00', 'kv_124', '', 'Drikkevarer'),
(125, 'pina_eks_1', 'Pina Colada\r\nEkstra smag\r\n1 L', '35.00', 'kv_125', '', 'Drikkevarer'),
(126, 'redb_eks_1', 'Red Bull\r\nEkstra smag\r\n1 L', '35.00', 'kv_126', '', 'Drikkevarer'),
(127, 'sugerør_50', '50 ekstra sugerør', '50.00', 'kv_127', 'straw.jpg', 'Drikkevarer'),
(128, 'bægre_50', '50 ekstra bægre', '50.00', 'kv_128', 'baegre.jpg', 'Drikkevarer'),
(129, 'kaffemask_indu', 'Industrikaffemaskine til kaffe og the (270 kopper)', '350.00', 'kv_129', 'industrikaffe.jpg', 'Drikkevarer'),
(130, 'kaffefiltre', 'Kaffefiltre pr. stk', '2.00', 'kv_130', 'kaffefilter.jpg', 'Drikkevarer'),
(131, 'rullebord_kaf_mask', 'Rullebord til kaffemaskine', '25.00', 'kv_131', 'rullebord.png', 'Drikkevarer'),
(132, 'adapter', 'Adapter fra rundt til fladt kraftstik', '50.00', 'kv_132', 'adapter.jpg', 'Drikkevarer'),
(133, 'kraft_kabel_10m', 'Kraftkabel 10 meter', '50.00', 'kv_133', 'kraftkabel.jpg', 'Drikkevarer'),
(134, 'vandslange_10m', 'Vandslange 10 m med diverse tilslutningsmuligheder', '50.00', 'kv_134', 'slang.jpg', 'Drikkevarer'),
(135, 'højttaler', 'Højttaler sæt med kabel (kræver forstærker)', '300.00', 'kv_135', '', 'Lyd, lys og røg'),
(136, 'højtaler_sæt', 'Højttaler sæt med kabel og forstærker\r\nsamt kabel til bærbar eller mobiltlf.\r\nWeekendleje.', '500.00', 'kv_136', 'speakers.jpg', 'Lyd, lys og røg'),
(137, 'røgmaskine', 'Røgmaskine weekendleje inkl. 1 liter væske ', '100.00', 'kv_137', 'smoke.jpg', 'Lyd, lys og røg'),
(138, 'lyskæde_5m_rød', 'Lyskæder 5 meter lange (RØD/GRØN/GUL/HVID) ', '75.00', 'kv_138', '', 'Lyd, lys og røg'),
(139, 'lyskæde_5m_grøn', 'Lyskæder 5 meter lange (RØD/GRØN/GUL/HVID) ', '75.00', 'kv_139', '', 'Lyd, lys og røg'),
(140, 'lyskæde_5m_gul', 'Lyskæder 5 meter lange (RØD/GRØN/GUL/HVID) ', '75.00', 'kv_140', '', 'Lyd, lys og røg'),
(141, 'lyskæde_5m_hvid', 'Lyskæder 5 meter lange (RØD/GRØN/GUL/HVID) ', '75.00', 'kv_141', '', 'Lyd, lys og røg'),
(142, 'lyskæde_reb_5m_rød', 'Lyskæde reb-lys 5 meter (RØD/GUL/GRØN/HVID)', '75.00', 'kv_142', '', 'Lyd, lys og røg'),
(143, 'lyskæde_reb_5m_gul', 'Lyskæde reb-lys 5 meter (RØD/GUL/GRØN/HVID)', '75.00', 'kv_143', '', 'Lyd, lys og røg'),
(144, 'lyskæde_reb_5m_grøn', 'Lyskæde reb-lys 5 meter (RØD/GUL/GRØN/HVID)', '75.00', 'kv_144', '', 'Lyd, lys og røg'),
(145, 'lyskæde_reb_5m_hvid', 'Lyskæde reb-lys 5 meter (RØD/GUL/GRØN/HVID)', '75.00', 'kv_145', '', 'Lyd, lys og røg'),
(146, 'lyskæde_reb_12m_hvid', 'Lyskæde med led pærer 12 meter\r\n10-15 pærer fås med hvidt lys eller kulørte pærer.\r\n(bliver ikke varme og smelter teltdug) Fredag - Søndag', '100.00', 'kv_146', '', 'Lyd, lys og røg'),
(147, 'lyskæde_reb_12m_kulørt', 'Lyskæde med led pærer 12 meter\r\n10-15 pærer fås med hvidt lys eller kulørte pærer.\r\n(bliver ikke varme og smelter teltdug) Fredag - Søndag', '100.00', 'kv_147', '', 'Lyd, lys og røg'),
(148, 'varmeblæser', 'Varmeblæser til kraftstik weekendleje', '100.00', 'kv_148', '', 'Diverse'),
(149, 'lysskilt', 'Lysskilt inkl. tuscher og klud', '100.00', 'kv_149', 'lysskilt.jpg', 'Diverse'),
(150, 'flagstang', 'Flagstang', '0.00', 'kv_150', 'flagstang.jpg', 'Diverse'),
(151, 'pointscorer', 'Pointscorer (fodbold)\r\nWeekendleje', '300.00', 'kv_151', 'penalty.jpg', 'Diverse'),
(152, 'binko_banko', 'Bingo/banko plader', '0.00', 'kv_152', 'banko.jpg', 'Diverse'),
(153, 'teltgulv_1m2', 'Teltgulv 1 m2 UDEN bestilling af borde, stole eller service', '20.00', 'kv_153', 'teltgulv.jpg', 'Diverse'),
(154, 'teltgulv_1m2', 'Teltgulv 1 m2 MED bestilling af borde, stole eller service', '15.00', 'kv_154', 'teltgulv.jpg', 'Diverse');

-- --------------------------------------------------------

--
-- Table structure for table `items_belongto_order`
--

CREATE TABLE `items_belongto_order` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_belongto_order`
--

INSERT INTO `items_belongto_order` (`item_id`, `order_id`) VALUES
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(64) NOT NULL,
  `order_number` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `price`, `status`, `order_number`, `quantity`) VALUES
(1, '100.00', 'Udført', 0, 5),
(2, '100.00', 'Udført', 555, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_belongto_order`
--
ALTER TABLE `items_belongto_order`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_belongto_order`
--
ALTER TABLE `items_belongto_order`
  ADD CONSTRAINT `items_belongto_order_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `items_belongto_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
