-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 02:43 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pu_baubau`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_tb_admin` int(11) NOT NULL,
  `tb_admin_username` varchar(45) NOT NULL,
  `tb_admin_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_tb_admin`, `tb_admin_username`, `tb_admin_password`) VALUES
(1, 'perkimbaubau@gmail.com', '9a7dc3412c15d52af4011199adf78194'),
(2, 'Sofian', 'ed4ffd089af0cd336d5593c9abecbfa8'),
(3, 'ARI', '03f607fcb6794c0fca204db3f2d332ef'),
(4, 'super', '71e23baee837c5d2952f93a29b113cab');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aduan`
--

CREATE TABLE `tb_aduan` (
  `id_tb_aduan` int(11) NOT NULL,
  `tb_aduan_email` varchar(45) NOT NULL,
  `tb_aduan_isi` varchar(350) NOT NULL,
  `tb_aduan_tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aduan`
--

INSERT INTO `tb_aduan` (`id_tb_aduan`, `tb_aduan_email`, `tb_aduan_isi`, `tb_aduan_tgl`) VALUES
(1, 'ragil@addsd.com', 'cczxczx', '2019-07-31'),
(4, 'sas@sasa.com', 'sasdsad', '2019-07-31'),
(13, 'wqw@asa.com', 'sasa', '2019-09-17'),
(14, '', '', '2019-09-23'),
(15, '', '', '2019-12-17'),
(16, '', '', '2019-12-17'),
(17, '', '', '2019-12-17'),
(18, '', '', '2019-12-17'),
(19, '', '', '2019-12-17'),
(20, '', '', '2019-12-17'),
(21, 'dsds@gmail.com', 'dsd', '2020-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_baseline`
--

CREATE TABLE `tb_baseline` (
  `id_tb_baseline` int(11) NOT NULL,
  `tb_baseline_keldes` varchar(150) NOT NULL,
  `tb_baseline_luas_keldes_sk` double NOT NULL,
  `tb_baseline_luas_keldes_pad` double NOT NULL,
  `tb_baseline_rtrw` varchar(45) NOT NULL,
  `tb_baseline_luas_rtrw` double NOT NULL,
  `tb_baseline_nilai_kumuh_awal` double NOT NULL,
  `tb_baseline_kumuh_awal` varchar(45) NOT NULL,
  `tb_baseline_nilai_kumuh_akhir` double NOT NULL,
  `tb_baseline_kumuh_akhir` varchar(45) NOT NULL,
  `tb_baseline_luas_pengurangan` double NOT NULL,
  `tb_baseline_sisa_luas` double NOT NULL,
  `tb_baseline_tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_baseline`
--

INSERT INTO `tb_baseline` (`id_tb_baseline`, `tb_baseline_keldes`, `tb_baseline_luas_keldes_sk`, `tb_baseline_luas_keldes_pad`, `tb_baseline_rtrw`, `tb_baseline_luas_rtrw`, `tb_baseline_nilai_kumuh_awal`, `tb_baseline_kumuh_awal`, `tb_baseline_nilai_kumuh_akhir`, `tb_baseline_kumuh_akhir`, `tb_baseline_luas_pengurangan`, `tb_baseline_sisa_luas`, `tb_baseline_tahun`) VALUES
(3, 'LIPU', 9.8, 9.8, 'RT004-RW001', 1.28, 35, 'Kumuh_Ringan', 35, 'Kumuh_Ringan', 0, 1.28, 2018),
(4, 'LIPU', 9.8, 9.8, 'RT002-RW001', 1.23, 36, 'Kumuh_Ringan', 36, 'Kumuh_Ringan', 0, 1.23, 2018),
(5, 'LIPU', 9.8, 9.8, 'RT002-RW002', 1.16, 41, 'Kumuh_Ringan', 41, 'Kumuh_Ringan', 0, 1.16, 2018),
(6, 'LIPU', 9.8, 9.8, 'RT004-RW002', 1.25, 41, 'Kumuh_Ringan', 41, 'Kumuh_Ringan', 0, 1.25, 2018),
(7, 'LIPU', 9.8, 9.8, 'RT003-RW001', 1.25, 45, 'Kumuh_Sedang', 45, 'Kumuh_Sedang', 0, 1.25, 2018),
(8, 'LIPU', 9.8, 9.8, 'RT001-RW001', 1.03, 47, 'Kumuh_Sedang', 47, 'Kumuh_Sedang', 0, 1.03, 2018),
(9, 'KATOBENGKE', 9.15, 9.15, 'RT003-RW003', 1.92, 39, 'Kumuh_Ringan', 39, 'Kumuh_Ringan', 0, 1.92, 2018),
(10, 'KATOBENGKE', 9.15, 9.15, 'RT004-RW005', 3.42, 34, 'Kumuh_Ringan', 34, 'Kumuh_Ringan', 0, 3.42, 2018),
(11, 'KATOBENGKE', 9.15, 9.15, 'RT003-RW003', 3.01, 39, 'Kumuh_Ringan', 39, 'Kumuh_Ringan', 0, 3.01, 2018),
(12, 'KALIA LIA', 5, 5, 'RT003-RW002', 1.4, 38, 'Kumuh_Ringan', 38, 'Kumuh_Ringan', 0, 1.4, 2018),
(13, 'KALIA LIA', 5, 5, 'RT002-RW002', 1.3, 37, 'Kumuh_Ringan', 37, 'Kumuh_Ringan', 0, 1.3, 2018),
(14, 'KALIA LIA', 5, 5, 'RT003-RW002', 1.4, 37, 'Kumuh_Ringan', 37, 'Kumuh_Ringan', 0, 1.4, 2018),
(15, 'KALIA LIA', 5, 5, 'RT005-RW001', 0.9, 34, 'Kumuh_Ringan', 34, 'Kumuh_Ringan', 0, 0.9, 2018),
(16, 'WALIABUKU', 3.34, 3.34, 'RT002-RW002', 3.34, 26, 'Kumuh_Ringan', 26, 'Kumuh_Ringan', 0, 3.34, 2018),
(17, 'BAADIA', 2.01, 2.01, 'RT002-RW002', 1.01, 46, 'Kumuh_Sedang', 46, 'Kumuh_Sedang', 0, 1.01, 2018),
(18, 'BAADIA', 2.01, 2.01, 'RT003-RW001', 1.01, 36, 'Kumuh_Ringan', 36, 'Kumuh_Ringan', 0, 1.01, 2018),
(19, 'BONE-BONE', 4.65, 4.65, 'RT009-RW003', 1.56, 34, 'Kumuh_Ringan', 34, 'Kumuh_Ringan', 0, 1.56, 2018),
(20, 'BONE-BONE', 4.65, 4.65, 'RT010-RW003', 1.02, 38, 'Kumuh_Ringan', 38, 'Kumuh_Ringan', 0, 1.02, 2018),
(21, 'BONE-BONE', 4.65, 4.65, 'RT011-RW003', 2.08, 32, 'Kumuh_Ringan', 32, 'Kumuh_Ringan', 0, 2.08, 2018),
(22, 'WAMEO', 5.98, 5.98, 'RT001-RW003', 0.93, 19, 'Kumuh_Ringan', 19, 'Kumuh_Ringan', 0, 0.93, 2018),
(23, 'WAMEO', 5.98, 5.98, 'RT001-RW004', 0.9, 41, 'Kumuh_Ringan', 41, 'Kumuh_Ringan', 0, 0.9, 2018),
(24, 'WAMEO', 5.98, 5.98, 'RT001-RW007', 2, 24, 'Kumuh_Ringan', 24, 'Kumuh_Ringan', 0, 2, 2018),
(25, 'WAMEO', 5.98, 5.98, 'RT002-RW001', 0.62, 22, 'Kumuh_Ringan', 22, 'Kumuh_Ringan', 0, 0.62, 2018),
(26, 'WAMEO', 5.98, 5.98, 'RT002-RW004', 0.61, 35, 'Kumuh_Ringan', 35, 'Kumuh_Ringan', 0, 0.61, 2018),
(27, 'WAMEO', 5.98, 5.98, 'RT003-RW004', 0.92, 38, 'Kumuh_Ringan', 38, 'Kumuh_Ringan', 0, 0.92, 2018),
(28, 'TARAFU', 3.27, 3.27, 'RT002-RW005', 1.58, 23, 'Kumuh_Ringan', 23, 'Kumuh_Ringan', 0, 1.58, 0000),
(29, 'TARAFU', 3.27, 3.27, 'RT003-RW005', 1.68, 22, 'Kumuh_Ringan', 22, 'Kumuh_Ringan', 0, 1.68, 2018),
(30, 'WARURUMA', 2.65, 5, 'RT004-RW003', 2, 28, 'Kumuh_Ringan', 28, 'Kumuh_Ringan', 0, 2, 2018),
(31, 'WARURUMA', 2.65, 5, 'RT005-RW003', 3, 40, 'Kumuh_Ringan', 40, 'Kumuh_Ringan', 0, 3, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `tb_basemap`
--

CREATE TABLE `tb_basemap` (
  `id_tb_basemap` int(11) NOT NULL,
  `tb_basemap_file` varchar(45) NOT NULL,
  `tb_basemap_nama` varchar(150) DEFAULT NULL,
  `tb_basemap_tipe` varchar(45) DEFAULT NULL,
  `tb_basemap_warna` varchar(45) DEFAULT NULL,
  `tb_basemap_deskripsi` text NOT NULL,
  `tb_basemap_gambar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_basemap`
--

INSERT INTO `tb_basemap` (`id_tb_basemap`, `tb_basemap_file`, `tb_basemap_nama`, `tb_basemap_tipe`, `tb_basemap_warna`, `tb_basemap_deskripsi`, `tb_basemap_gambar`) VALUES
(60, 'Batas_RT_Bonebone_Polygon_map.geojson', 'RT Bonebone', 'polygon', '#01A3FF', '', ''),
(61, 'Batas_RT_Bungi_Polygon_map.geojson', 'RT Bungi', 'polygon', '#015FFF', '', ''),
(62, 'Batas_RT_GondaBaru_Polygon_map.geojson', 'RT Gonda', 'polygon', '#0D01FF', 'Hanya sebagai contoh', '1596931979.jpg'),
(63, 'Batas_RT_Kadolo_Polygon_map.geojson', 'RT Kadolo', 'polygon', '#8001FF', '', ''),
(64, 'Batas_RT_Kadolokantapi_Polygon_map.geojson', 'RT Kadolokantapi', 'polygon', '#FF01ED', '', ''),
(65, 'Batas_RT_Kaisabu_Polygon_map.geojson', 'RT Kaisabu', 'polygon', '#0D1CE0', '', ''),
(66, 'Batas_RT_Kampeonaho_Polygon_map.geojson', 'RT Kanpeonaho', 'polygon', '#0D8EE0', '', ''),
(67, 'Batas_RT_Kantalai_Polygon_map.geojson', 'RT Kantalai', 'polygon', '#760DE0', '', ''),
(68, 'Batas_RT_Kaoubula_Polygon_map.geojson', 'Kaoubula', 'polygon', '#FFC701', '', ''),
(69, 'Batas_RT_Karya_Baru_Polygon_map.geojson', 'RT Karya Baru', 'polygon', '#FFFC01', '', ''),
(70, 'Batas_RT_Katobengke_Polygon_map.geojson', 'RT Katobengke', 'polygon', '#9EFF01', '', ''),
(71, 'Batas_RT_Kel_Kadolomoko_Polygon_map.geojson', 'RT Kel. Kadolomoko', 'polygon', '#34FF01', '', ''),
(72, 'Batas_RT_Kel_Lakologou_Polygon_map.geojson', 'RT Kel. Lakologou', 'polygon', '#01FF7D', '', ''),
(73, 'Batas_RT_Kolese_Polygon_map.geojson', 'RT Kolese', 'polygon', '#01FFD8', '', ''),
(74, 'Batas_RT_Labalawa_Polygon_map.geojson', 'RT Labalawa', 'polygon', '#01B2FF', '', ''),
(75, 'Batas_RT_Lamngga_Polygon_map.geojson', 'RT Lamngga', 'polygon', '#0157FF', '', ''),
(76, 'Batas_RT_Lanto_Polygon_map.geojson', 'RT Lanto', 'polygon', '#44E00D', '', ''),
(77, 'Batas_RT_Liabuku_Polygon_map.geojson', 'RT Liabuku', 'polygon', '#E8B636', '', ''),
(78, 'Batas_RT_Lipu_Polygon_map.geojson', 'RT Lipu', 'polygon', '#E4E836', '', ''),
(79, 'Batas_RT_Liwuto_Polygon_map.geojson', 'RT Liwuto', 'polygon', '#9FE836', '', ''),
(80, 'Batas_RT_Lowulowu_Polygon_map.geojson', 'RT Lowulowu', 'polygon', '#44E836', '', ''),
(81, 'Batas_RT_Melai_Polygon_map.geojson', 'RT Melai', 'polygon', '#4BC97A', '', ''),
(82, 'Batas_RT_Nganganumala_Polygon_map.geojson', 'RT Nganganumala', 'polygon', '#4BC9B6', '', ''),
(83, 'Batas_RT_Ngkari2_Polygon_map.geojson', 'RT Ngkari', 'polygon', '#4BABC9', '', ''),
(84, 'Batas_RT_Palabusa_Polygon_map.geojson', 'RT Palabusa', 'polygon', '#4B6EC9', '', ''),
(85, 'Batas_RT_Sukanayo_Polygon_map.geojson', 'RT Sukanayo', 'polygon', '#644BC9', '', ''),
(86, 'Batas_RT_Tampuna_Polygon_map.geojson', 'RT Tampuna', 'polygon', '#8A4BC9', '', ''),
(87, 'Batas_RT_Tangganapada_Polygon_map.geojson', 'RT Tangganapada', 'polygon', '#B74BC9', '', ''),
(88, 'Batas_RT_Tarafu_Polygon_map.geojson', 'RT Tarafu', 'polygon', '#C94BA9', '', ''),
(89, 'Batas_RT_Tomba_Polygon_map.geojson', 'RT Tomba', 'polygon', '#C94B7C', '', ''),
(90, 'Batas_RT_Waborobo_Polygon_map.geojson', 'RT Waborobo', 'polygon', '#0DD3E0', '', ''),
(91, 'Batas_RT_Wajo_Polygon_map.geojson', 'RT Wajo', 'polygon', '#2ECAD4', '', ''),
(92, 'Batas_RT_Wameo_Polygon_map.geojson', 'RT Wameo', 'polygon', '#5E5517', '', ''),
(93, 'Batas_RT_Batulomap_Polygon_map.geojson', 'RT Batulo', 'polygon', '#21DA5A', '', ''),
(96, 'Deliniasi_kumuh_baubau_Polygon_map.geojson', 'Delinasi Kumuh Bau Bau', 'polygon', '#FB1607', 'dsdsd', '1596931211.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_tb_galeri` int(11) NOT NULL,
  `tb_galeri_gambar` varchar(45) DEFAULT NULL,
  `tb_galeri_deskripsi` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_tb_galeri`, `tb_galeri_gambar`, `tb_galeri_deskripsi`) VALUES
(1, '1567432736.jpg', 'Perumahan kumuh di kota Bau Bau'),
(2, '1567438207.jpg', 'Kawasan pinggir kolam'),
(3, '1567443612.jpg', 'Survey FGD di kota Bau Bau'),
(4, '1567443631.jpg', 'Pencatatan hasil survey'),
(5, '1567443655.jpg', 'Survey FGD kepada ibu ibu'),
(6, '1567443687.jpg', 'Diskusi sebelum survey FGD'),
(7, '1567460830.jpg', 'Musyawarah bersama masyarakat'),
(8, '1567460847.jpg', 'Kawasan Kumuh kel. kaobula RT03 Rw 03'),
(9, '1567460861.jpg', 'Kawasan Kumuh Kel.Kadolomoko'),
(10, '1567460874.jpg', 'Kawasan Kumuh Kel.palabusa'),
(11, '1567460893.jpg', 'kumuh Kawasan Kumuh Kel.nganganauala RT 03 Rw 04'),
(12, '1567460902.jpg', 'kumuh Kawasan Kumuh Kel.nganganauala RT 03 Rw 04'),
(59, '1567647988.jpg', 'jalan kumuh'),
(62, '1567648000.jpg', 'jalan kumuh'),
(72, '1567648603.jpg', 'jalan kumuh2'),
(73, '1567648665.jpg', 'jalan kumuh2'),
(74, '1567648792.jpg', 'jalan kumuh2'),
(75, '1567648811.jpg', 'jalan kumuh2'),
(76, '1567648814.jpg', 'Rumah Tidak Layak Huni'),
(77, '1567648835.jpg', 'jalan kumuh2'),
(78, '1567648874.jpg', 'jalan kumuh2'),
(81, '1567663215.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(82, '1567663438.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(83, '1567663497.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(84, '1567663581.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(85, '1567664499.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(86, '1567664528.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(87, '1567664534.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(88, '1567664875.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(89, '1567664887.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(90, '1567664900.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(91, '1567665513.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(93, '1567665524.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(94, '1567665527.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(95, '1567665685.jpg', 'seminar penyusunan data base kawasan kumuh kota baubau'),
(96, '1567665831.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(97, '1567665922.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(98, '1567665986.jpg', 'seminar pendahuluanpenyusunan naskah akademik peraturan daerah tentang  pencegahan dan peningkatan kualitas perumahan kumuh dan permukiman perumahan '),
(99, '1567666885.jpg', 'PELATIHAN PENYUSUNAN DATA BASE KAWASAN KUMUH KOTA BAUBAU'),
(100, '1567666899.jpg', 'PELATIHAN PENYUSUNAN DATA BASE KAWASAN KUMUH KOTA BAUBAU'),
(101, '1567666912.jpg', 'PELATIHAN PENYUSUNAN DATA BASE KAWASAN KUMUH KOTA BAUBAU'),
(102, '1567666937.jpg', 'PELATIHAN PENYUSUNAN DATA BASE KAWASAN KUMUH KOTA BAUBAU');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kumuh`
--

CREATE TABLE `tb_kumuh` (
  `id_tb_kumuh` int(11) NOT NULL,
  `tb_kumuh_gambar` varchar(45) NOT NULL,
  `tb_kumuh_nama` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kumuh`
--

INSERT INTO `tb_kumuh` (`id_tb_kumuh`, `tb_kumuh_gambar`, `tb_kumuh_nama`) VALUES
(1, '1567460188.jpg', 'INDIKATOR 5 AIR LIMBAH SANITASI'),
(2, '1567460198.jpg', 'INDIKATOR 6 PENGELOLAAN PERSAMPAHAN'),
(3, '1567460208.jpg', 'Inidaktor Air Minum'),
(4, '1567460216.jpg', 'Kebutuhan Air Bersih di Kota Baubau Tahun 2014-2034'),
(5, '1567460225.jpg', 'Keteraturan Bangunan (Baseline 100 0 100)'),
(6, '1567460234.jpg', 'Peta Jaringan Jalan Kota Baubau ( RTRW Kota Baubau 2011-2030 )'),
(7, '1567460244.jpg', 'PETA SEBARAN PRIORITAS PENANGANAN KAWASAN KUMUH'),
(8, '1567460264.jpg', 'Rencana pembangunan jalan By Pass sepanjang pesisir Kota Baubau'),
(9, '1567460279.jpg', 'Rencana Tata Ruang Wilayah (RTRW) Tahun 2011-2030'),
(10, '1567460291.jpg', 'SEBARAN DAN PRIORITAS PENANGANAN KAWASAN PERMUKIMAN KUMUH KOTA BAUBAU'),
(11, '1567460303.jpg', 'SSK KOTA BAUBAU 2012'),
(12, '1567460314.jpg', 'Tahapan Pengembangan Drainase Kota Baubau');

-- --------------------------------------------------------

--
-- Table structure for table `tb_map_kumuh`
--

CREATE TABLE `tb_map_kumuh` (
  `id_tb_map_kumuh` int(11) NOT NULL,
  `tb_map_kumuh_lat` varchar(100) DEFAULT NULL,
  `tb_map_kumuh_lng` varchar(100) DEFAULT NULL,
  `tb_map_kumuh_nama` varchar(45) DEFAULT NULL,
  `tb_map_kumuh_gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_peraturan`
--

CREATE TABLE `tb_peraturan` (
  `id_tb_peraturan` int(11) NOT NULL,
  `tb_peraturan_judul` varchar(250) DEFAULT NULL,
  `tb_peraturan_isi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peraturan`
--

INSERT INTO `tb_peraturan` (`id_tb_peraturan`, `tb_peraturan_judul`, `tb_peraturan_isi`) VALUES
(9, 'PERDA RTRW KOTA BAUBAU', '1_PERDA_RTRW_KOTA_BAUBAU.pdf'),
(10, 'PENJELASAN PERDA RTRW KOTA BAUBAU', '2_PENJELASAN_PERDA_RTRW_KOTA_BAUBAU.pdf'),
(11, 'LAMPIRAN I-XVIII PERDA RTRWK BAUBAU', '3_LAMPIRAN_I-XVIII_PERDA_RTRWK_BAUBAU.pdf'),
(12, 'LAMPIRAN XIX PERDA RTRWK BAUBAU', '4_LAMPIRAN_XIX_PERDA_RTRWK_BAUBAU.pdf'),
(13, 'LAMPIRAN XX PERDA RTRWK BAUBAU', '5_LAMPIRAN_XX_PERDA_RTRWK_BAUBAU.pdf'),
(15, 'PERATURAN PETA ', 'PP_No.8_TH_2013_TENTANG_KETELITIAN_PETA.pdf'),
(17, 'contoh', 'SERTIFIKAT_WISUDA_DEPAN.pdf'),
(18, 'Foto Rumah Korban Kebakaran Kelurahan Kadolomoko', 'FOTO_RUMAH_KEBAKARAN_KELURAHAN_KADOLOMOKO.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peta`
--

CREATE TABLE `tb_peta` (
  `id_tb_peta` int(11) NOT NULL,
  `tb_peta_gambar` varchar(45) NOT NULL,
  `tb_peta_nama` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peta`
--

INSERT INTO `tb_peta` (`id_tb_peta`, `tb_peta_gambar`, `tb_peta_nama`) VALUES
(3, '1567664023.jpg', 'Kampung Tradisional'),
(4, '1567664118.jpg', 'Kawasan Kumuh Kec. Murhum '),
(5, '1567664205.jpg', 'Kawasan Kumuh Kec. Bungi'),
(7, '1567664822.jpg', 'Kawasan Kumuh Kampung Nelayan'),
(8, '1567664959.jpg', 'Kawasan Kumuh Kec.Batupoaro'),
(9, '1567665060.jpg', 'Kawasan Kumuh Kec.Wolio'),
(10, '1567665219.jpg', 'Kawasan Kumuh Kelurahan Batulo dan Wangkanapi'),
(11, '1567665426.jpg', 'Kawasan Kumuh Kec.Sorawolio'),
(12, '1567665662.jpg', 'Kawasan Kumuh Kel.Baadia, Waborobo, Labalawa'),
(13, '1567665728.jpg', 'Kawasan Kumuh Pulau Makasar'),
(14, '1567665999.jpg', 'Sebaran Kawasan Kumuh Kota Baubau'),
(15, '1567666093.jpg', 'Kawasan Kumuh DAS Baubau');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_tb_admin`);

--
-- Indexes for table `tb_aduan`
--
ALTER TABLE `tb_aduan`
  ADD PRIMARY KEY (`id_tb_aduan`);

--
-- Indexes for table `tb_baseline`
--
ALTER TABLE `tb_baseline`
  ADD PRIMARY KEY (`id_tb_baseline`);

--
-- Indexes for table `tb_basemap`
--
ALTER TABLE `tb_basemap`
  ADD PRIMARY KEY (`id_tb_basemap`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_tb_galeri`);

--
-- Indexes for table `tb_kumuh`
--
ALTER TABLE `tb_kumuh`
  ADD PRIMARY KEY (`id_tb_kumuh`);

--
-- Indexes for table `tb_map_kumuh`
--
ALTER TABLE `tb_map_kumuh`
  ADD PRIMARY KEY (`id_tb_map_kumuh`);

--
-- Indexes for table `tb_peraturan`
--
ALTER TABLE `tb_peraturan`
  ADD PRIMARY KEY (`id_tb_peraturan`);

--
-- Indexes for table `tb_peta`
--
ALTER TABLE `tb_peta`
  ADD PRIMARY KEY (`id_tb_peta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_tb_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_aduan`
--
ALTER TABLE `tb_aduan`
  MODIFY `id_tb_aduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_baseline`
--
ALTER TABLE `tb_baseline`
  MODIFY `id_tb_baseline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_basemap`
--
ALTER TABLE `tb_basemap`
  MODIFY `id_tb_basemap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_tb_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tb_kumuh`
--
ALTER TABLE `tb_kumuh`
  MODIFY `id_tb_kumuh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_map_kumuh`
--
ALTER TABLE `tb_map_kumuh`
  MODIFY `id_tb_map_kumuh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_peraturan`
--
ALTER TABLE `tb_peraturan`
  MODIFY `id_tb_peraturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_peta`
--
ALTER TABLE `tb_peta`
  MODIFY `id_tb_peta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
