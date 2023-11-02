-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 09:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsi_web`
--
CREATE DATABASE IF NOT EXISTS `bsi_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bsi_web`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `pekerjaan`) VALUES
(1, 'Andi', 'Surabaya', 'web programmer'),
(2, 'Budi', 'Bandung', 'Web Designer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bsi_web\",\"table\":\"user\"},{\"db\":\"pustaka\",\"table\":\"role\"},{\"db\":\"pustaka\",\"table\":\"user\"},{\"db\":\"restful_db\",\"table\":\"product\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-02 08:11:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `projectci`
--
CREATE DATABASE IF NOT EXISTS `projectci` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projectci`;

-- --------------------------------------------------------

--
-- Table structure for table `ci`
--

CREATE TABLE `ci` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` int(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci`
--

INSERT INTO `ci` (`id`, `nama`, `nim`, `alamat`) VALUES
(1, 'gusdur', 123456, 'Bekasi'),
(2, 'Clay ajah', 456789, 'Jakarta barat'),
(3, 'Iqbal Rizky saputra', 15200416, 'Bekasi, regensi'),
(7, 'ANDIKA', 23456, 'BEKASI'),
(8, 'rizky', 592023, 'cikarang'),
(9, 'Putra Siregar', 76543, 'cikarang'),
(11, 'Robi', 132434, 'Bekasi'),
(12, 'Rozi', 12212313, 'Bogor'),
(13, 'Rozi', 121211, 'Bogor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci`
--
ALTER TABLE `ci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci`
--
ALTER TABLE `ci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `pustaka`
--
CREATE DATABASE IF NOT EXISTS `pustaka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pustaka`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2014, '9786022809432', 7, 0, 0, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 9, 0, -1, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 14, 0, -1, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke Minori', 'Cultura', 2016, '874387583987', 12, 0, 0, 'img1557401465.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 12, 0, 0, 'img1557402703.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 19, 0, 0, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 10, 0, 0, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 8, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 13, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 13, 0, 0, 'img1557404689.jpg'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', 2011, '32342342344234', 13, 0, 0, 'img1557404775.jpg'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', 2015, '7565646455757', 11, 0, 0, 'img1557404853.jpg'),
(22, 'Belajar Mudah Pemrograman Web dengan Framework Codeigniter', 1, 'Imam Nawawi, Frans Edward S, Andriansah', 'Graha Ilmu', 2019, '12314213432', 13, 0, 0, 'img1580209540.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('05022020001', 1, 5000),
('05022020001', 2, 5000),
('05022020001', 10, 5000),
('05022020002', 1, 5000),
('05022020002', 5, 5000),
('05022020003', 5, 5000),
('09022020004', 10, 5000),
('09022020004', 22, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Dewasa'),
(12, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('05022020001', '2020-02-05', '05022020001', 3, '2020-02-08', '2020-02-07', 'Kembali', 0),
('05022020002', '2020-02-05', '05022020002', 2, '2020-02-08', '2020-02-07', 'Kembali', 0),
('05022020003', '2020-02-05', '05022020003', 4, '2020-02-08', '2020-02-07', 'Kembali', 0),
('09022020004', '2020-02-09', '09022020001', 2, '2020-02-12', '2020-02-09', 'Kembali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `tgl_booking`, `id_user`, `email_user`, `id_buku`, `judul_buku`, `image`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(1, '2020-02-12 12:13:12', '3', 'andriansah.aiy@bsi.ac.id', 1, 'Statistika dengan Program Komputer', 'img1557402455.jpg', 'Ahmad Kholiqul Amin', 'Deep Publish', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Imam Nawawi', 'Tangerang Selatan', 'imam.imw@gmail.com', 'pro1557486527.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983),
(2, 'Maruloh, M.Kom', 'Cengkareng', 'maruloh.mru@bsi.ac.id', 'pro1579684727.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 2, 1, 1554219788),
(3, 'Andriansah', 'Tangerang', 'andriansah.aiy@bsi.ac.id', 'pro1579677270.jpg', '$2y$10$Aa2soOYCyttqpIa1m8/79uc6Psz563XlTPcs0E4TuOji/UiKGox4i', 2, 1, 1579677270),
(4, 'Mochamad Nandi Susila', 'Tangerang Selatan', 'mochamad.mnl@bsi.ac.id', 'pro1579677559.jpg', '$2y$10$N6itMt2sWT1dPXwedtmhsOFC/2eYoQ9k.MI5t1jNwGPE06oVv5Oqm', 2, 1, 1579677559);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `restful_db`
--
CREATE DATABASE IF NOT EXISTS `restful_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restful_db`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'Product 1', 2000),
(2, 'Product 2', 5000),
(3, 'Product 3', 4000),
(4, 'Product 4', 6000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `workshop_sample`
--
CREATE DATABASE IF NOT EXISTS `workshop_sample` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `workshop_sample`;

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(10) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `jenis_agenda` varchar(50) NOT NULL,
  `panitia` varchar(200) DEFAULT NULL,
  `tempat` varchar(200) DEFAULT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `nama`, `jenis_agenda`, `panitia`, `tempat`, `mulai`, `selesai`, `ringkasan`, `isi`, `tanggal`) VALUES
(1, 'Pelantikan Gubernur DKI Jakarta', 'Internal', 'Pusdatin', 'Balai Kota', '2017-09-08', '2017-09-09', 'adada', '<p>adada</p>\r\n', '2017-09-08 01:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_bagian` varchar(10) NOT NULL,
  `nama_bagian` varchar(255) NOT NULL,
  `status_bagian` enum('Aktif','Non Aktif') NOT NULL,
  `keterangan` text DEFAULT NULL,
  `wilayah` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `id_user`, `kode_bagian`, `nama_bagian`, `status_bagian`, `keterangan`, `wilayah`, `tanggal_post`, `tanggal_update`) VALUES
(12, 1, 'MARKETING', 'Bagian Pemasaran', 'Aktif', '', '', '2019-04-13 20:10:33', '2019-04-13 13:10:33'),
(13, 1, 'KEUANGAN', 'Bagian Keuangan', 'Aktif', '', '', '2019-04-13 20:10:46', '2019-04-13 13:10:46'),
(14, 1, 'adada', 'adad', 'Aktif', '', '', '2019-04-14 05:45:14', '2019-04-13 22:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `updater` varchar(32) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 5, '', 'pembuatan-website-profil', 'Pembuatan Website Profil', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia11.jpg', '', 3, 0, NULL, NULL, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2020-02-13 00:44:24'),
(2, 1, 5, '', 'kursus-statistik', 'Kursus Statistik', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Credibly utcost efective an expertise and web enabled proces that improvements Completely seamless channels', 'instagram-kursus-statistik-javawebmedia.png', 'fa fa-check', 3, 0, NULL, NULL, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2022-11-24 10:05:15'),
(3, 1, 5, '', 'kursus-web-development', 'Kursus Web Development', '<h2>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'web-development-javawebmedia11.png', 'fa fa-globe', 2, 2, NULL, NULL, '2019-05-17 04:37:00', '2019-05-17 04:36:19', '2020-02-13 00:40:58'),
(4, 1, 5, '', 'profil-java-web-media', 'Profil Java Web Media', '<p>Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.</p>', 'Publish', 'Profil', '', 'BANNER_INTERNAL_ASLI-011.jpg', '', 2, 1, NULL, NULL, '2019-07-26 10:38:15', '2019-07-26 10:36:47', '2020-02-13 00:48:45'),
(6, 1, 5, '', 'kursus-android-developer', 'Kursus Android Developer', '<p>Anda akan belajar&nbsp;membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran&nbsp;<em>device</em>&nbsp;dan bisa dipublikasikan di Google Play Store.</p>\r\n<p>Kursus ini diselenggarakan bekerjasama dengan&nbsp;<strong>Rumah Coding atau&nbsp;</strong><strong>Fazri Labs (www.<a href=\"https://fazrilabs.com/\">fazrilabs.com</a>)</strong></p>\r\n<h3>Level Kursus (Tingkat Kesulitan)</h3>\r\n<p>Secara umum kursus ini dibagi menjadi dua paket utama, yaitu:</p>\r\n<ul>\r\n<li>Level&nbsp;<strong><em>Beginner Class</em></strong><em><br /></em>Level ini diperuntukkan bagi yang benar-benar pemula atau baru belajar membuat aplikasi Android.</li>\r\n<li>Level&nbsp;<em><strong>Intermediate Class&nbsp;</strong></em><br />Bagi Anda yang telah memiliki dasar-dasar pembuatan aplikasi Android maka Anda dapat mengambil kelas lanjut ini.<strong><br /><br /></strong></li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<em><strong>Kursus Android (Android Developer Course)</strong></em>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat&nbsp;aplikasi Android</li>\r\n<li>Membuat aplikasi Android untuk situs berita</li>\r\n<li>Membuat aplikasi chat realtime</li>\r\n<li>Bekerja sebagai&nbsp;<strong>Junior Mobile Developer/Programmer</strong></li>\r\n</ul>\r\n<h3>Materi untuk&nbsp;<em>Beginner Class</em></h3>\r\n<ol>\r\n<li>Activity dan layout aplikasi</li>\r\n<li>View/tampilan</li>\r\n<li>Resource</li>\r\n<li>Java dan XML</li>\r\n<li>SQLite dan shared preferences</li>\r\n<li>List view</li>\r\n<li>List adapter dan activity lifecycle</li>\r\n<li>Menu dan style</li>\r\n<li>Dialog</li>\r\n<li>Android Volley</li>\r\n</ol>\r\n<h3>Materi untuk&nbsp;<em>Intermediate</em><em>&nbsp;Class</em></h3>\r\n<ol>\r\n<li>Constraint layout</li>\r\n<li>Fragment</li>\r\n<li>Navigation drawer</li>\r\n<li>Custom Drawable</li>\r\n<li>Android Animation</li>\r\n<li>Google Maps</li>\r\n<li>Firebase Cloud Messaging</li>\r\n<li>Service and intent services</li>\r\n<li>Task schedulling</li>\r\n<li>Multil anguage</li>\r\n<li>Google analytic and ad mobs</li>\r\n<li>Unit test framework</li>\r\n</ol>', 'Publish', 'Layanan', 'Anda akan belajar membuat aplikasi Android dengan menggunakan Android Studio, Genie Motion dan software-software pendukung lainnya. Aplikasi Android yang dibuat nantinya akan support terhadap berbagai ukuran device dan bisa dipublikasikan di Google Play Store.', 'android-kursus-javawebmedia.png', 'fa fa-mobile', 0, 0, NULL, NULL, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2020-02-13 00:42:56'),
(7, 1, 5, '', 'web-based-application', 'Web Based Application', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Berita', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', '', 0, 0, NULL, NULL, '2020-02-13 07:45:07', '2020-02-13 07:44:27', '2020-02-13 00:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `password_hint` varchar(64) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `status_testimoni` varchar(20) DEFAULT NULL,
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') NOT NULL,
  `status_siswa` enum('Aktif','Calon','Lulus') NOT NULL,
  `ip_address` varchar(24) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `password`, `password_hint`, `isi`, `status_testimoni`, `isi_testimoni`, `gambar`, `status_client`, `keywords`, `status_baca`, `status_siswa`, `ip_address`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'PT Java Web Media', 'Bapak Andoyo', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', '', 'javawebmedia@gmail.com', '8242de3f241790a591666ac9f6ad6be377c8a43f', 'wrygldyt', NULL, 'No', '', NULL, 'No', '', 'Sudah', 'Aktif', '', 'JAKARTA', '1962-01-02', '2019-04-14 01:08:26'),
(3, 1, 'Perorangan', 'PT Indosat Sukses  Makmur', 'Eflita Meiyetriani', '', '0813 8841 0829', '', 'admin@kabupatenlestari.org', NULL, NULL, NULL, 'No', '', NULL, 'No', '', 'Sudah', 'Aktif', '', '', '1970-01-01', '2019-04-14 03:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal`) VALUES
(3, 2, 1, 'Paket Harga Kursus Desain dan Programming Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>', 'Daftar_Harga_Kursus_2020_v2.pdf', '', 0, '2020-02-13 00:50:27'),
(4, 1, 1, 'Formulir Pendaftaran Siswa Kursus', 'Download', '<p>Formulir Pendaftaran Siswa Kursus</p>', 'FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf', '', 0, '2020-02-13 00:50:10'),
(5, 2, 1, 'Paket Harga Kursus Statistik Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Statistik Java Web Media 2020</p>', 'KURSUS_STATISTIK.pdf', '', 0, '2020-02-13 00:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(4, 5, 1, 'Kursus di Java Web Media', 'Homepage', '<p>Kursus di Java Web Media</p>', 'website.jpg', 'http://javawebmedia.com', NULL, 'Publish', 1, 'Ya', '2020-02-13 00:33:12'),
(5, 5, 1, 'Kursus Codeigniter di Java Web Media', 'Homepage', '<p>Kursus Codeigniter di Java Web Media</p>', 'BANNER_INTERNAL_ASLI-01.jpg', 'https://javawebmedia.com', NULL, 'Publish', 1, 'Ya', '2020-02-13 00:34:11'),
(6, 5, 1, 'Kursus Statistik di Java Web Media', 'Homepage', '<p>Kursus Statistik di Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia1.jpg', 'http://javawebmedia.com', NULL, 'Publish', 1, 'Ya', '2020-02-13 00:34:41'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', '', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', '', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', '', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia12.jpg', '', NULL, 'Publish', 0, 'Ya', '2020-02-13 00:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(4, 1, 'penelitian', 'Penelitian', 4, 0, '2019-03-04 01:31:22'),
(5, 1, 'kegiatan', 'Kegiatan', 5, 0, '2019-03-04 01:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `slug_kategori_download`, `nama_kategori_download`, `urutan`) VALUES
(1, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1),
(2, 'promosi-java-web-media', 'Promosi Java Web Media', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(4, 'kegiatan', 'Kegiatan', 4),
(5, 'banner-website', 'Banner Website', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`) VALUES
(1, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1),
(2, 'pejabat-struktural', 'Pejabat Struktural', 2);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `status_form_booking` enum('Aktif','Nonaktif') NOT NULL,
  `max_room_booking` int(11) DEFAULT NULL,
  `nama_direktur` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `stempel_tanda_tangan` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `footer`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `gambar_berita`, `status_form_booking`, `max_room_booking`, `nama_direktur`, `jabatan`, `stempel_tanda_tangan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `id_user`, `tanggal`) VALUES
(1, 'Java Web Media', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', 'CV Java Web Media', '<p>Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik</p>', 'Hotel Bumi Wiyata is a three stars hotel that located on Jl. Margonda Raya Depok 16423 West Java.Â \r\n\r\nHotel Bumi Wiyata has 13 ha areas and 91 Rooms which divided into six types of room; Standard Room, Superior Room, Deluxe Superior Room, Suite Room, Deluxe Suite Room & Executive Room.\r\n\r\nHotel Bumi Wiyata is the perfect choice for your business activity, gathering, wedding, outbound and family. With the concept of the greatest hotel for recreational meeting surrounding with traditional nature, various facilities and warm hospitality will makes all your event become a memorable one.', 'http://javawebmedia.com', 'contact@javawebmedia.co.id', 'bmwiyata@hotelbumiwiyata.com', '<p><strong>Java Web Media</strong><br />MALL DEPOK TOWN SQUARE<br />Lantai 2 Unit SS No. 5-7<br />(Samping Gerai Samsung)<br />Jl. Margonda Raya No 1<br />Kemiri Muka, Kecamatan Beji, Kota Depok, Jawa Barat 16424<br />Telepon: 085715100485<br />Whatsapp: +6281210697841<br />Email: contact@javawebmedia.co.id</p>', '+6285715100485', '+6281210697841', '+6285715100485', 'logo-java-web-media-01-01.png', 'icon-javawebmedia-2019.png', 'footer1.png', 'Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n', '', 'https://www.facebook.com/javawebmedia', 'http://twitter.com/javawebmedia', 'https://instagram.com/javawebmedia', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1145209004862!2d106.82752101476999!3d-6.379215695384046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec0869e31b4f%3A0xaa40278d69385917!2sHotel+Bumi+Wiyata!5e0!3m2!1sid!2sid!4v1532643481549\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Bersedekah untuk anak yatim', 'fa-money', 'Pengasuh yang santun', 'fa-thumbs-up', 'Jadwal Flexibel', 'fa-adn', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Berbagi kebahagiaan dengan anak yatim adalah perintah Allah dan rasul', 'Pengasuh yang baik dan santun serta memberikan teladan yang baik bagi anak asuh', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'istana-yatim.png', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'balairung-budiutomo-01.jpg', 'Aktif', 3, 'Sigit Yuwono Wachid', 'Direktur', 'tanda-tangan-nba.png', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', 0, '2020-02-13 00:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hari` date DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(1, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-23', '2019-02-23 12:38:06', '2019-02-23 05:38:06'),
(2, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-23', '2019-02-23 14:06:56', '2019-02-23 07:06:56'),
(3, 'http://localhost/bkkbn/index.php', '127.0.0.1', '2019-02-23', '2019-02-23 14:15:12', '2019-02-23 07:15:12'),
(4, 'http://localhost/bkkbn/peneliti/anggota/pendidikan/1', '127.0.0.1', '2019-02-23', '2019-02-23 14:38:24', '2019-02-23 07:38:24'),
(5, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 14:10:08', '2019-02-24 07:10:08'),
(6, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 16:56:03', '2019-02-24 09:56:03'),
(7, 'http://localhost/bkkbn/masuk', '127.0.0.1', '2019-02-24', '2019-02-24 20:00:37', '2019-02-24 13:00:37'),
(8, 'http://localhost/bkkbn/masuk', '::1', '2019-02-24', '2019-02-24 21:18:38', '2019-02-24 14:18:38'),
(9, 'http://localhost/bkkbn/masuk', '::1', '2019-02-24', '2019-02-24 21:41:37', '2019-02-24 14:41:37'),
(10, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 10:53:44', '2019-02-26 03:53:44'),
(11, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 10:58:07', '2019-02-26 03:58:07'),
(12, 'http://localhost/bkkbn/masuk', '::1', '2019-02-26', '2019-02-26 13:06:36', '2019-02-26 06:06:36'),
(13, 'http://localhost/bkkbn/index.php', '::1', '2019-02-26', '2019-02-26 14:52:03', '2019-02-26 07:52:03'),
(14, 'http://localhost/bkkbn/masuk', '::1', '2019-02-27', '2019-02-27 18:48:15', '2019-02-27 11:48:15'),
(15, 'http://localhost/bkkbn/masuk', '::1', '2019-02-28', '2019-02-28 20:30:53', '2019-02-28 13:30:53'),
(16, 'http://localhost/bkkbn/masuk', '::1', '2019-02-28', '2019-02-28 20:34:12', '2019-02-28 13:34:12'),
(17, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:29:12', '2019-03-01 03:29:12'),
(18, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-01', '2019-03-01 10:35:23', '2019-03-01 03:35:23'),
(19, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:36:32', '2019-03-01 03:36:32'),
(20, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-01', '2019-03-01 10:36:49', '2019-03-01 03:36:49'),
(21, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:37:57', '2019-03-01 03:37:57'),
(22, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:39:31', '2019-03-01 03:39:31'),
(23, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 10:54:13', '2019-03-01 03:54:13'),
(24, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 10:57:41', '2019-03-01 03:57:41'),
(25, 'http://localhost/bkkbn/kontak', '::1', '2019-03-01', '2019-03-01 11:04:07', '2019-03-01 04:04:07'),
(26, 'http://localhost/bkkbn/kontak', '::1', '2019-03-01', '2019-03-01 11:04:57', '2019-03-01 04:04:57'),
(27, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:05:07', '2019-03-01 04:05:07'),
(28, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:05:14', '2019-03-01 04:05:14'),
(29, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:07:10', '2019-03-01 04:07:10'),
(30, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:07:53', '2019-03-01 04:07:53'),
(31, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:10:09', '2019-03-01 04:10:09'),
(32, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:10:23', '2019-03-01 04:10:23'),
(33, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:11:48', '2019-03-01 04:11:48'),
(34, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:12:17', '2019-03-01 04:12:17'),
(35, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:12:20', '2019-03-01 04:12:20'),
(36, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:12:29', '2019-03-01 04:12:29'),
(37, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:13:15', '2019-03-01 04:13:15'),
(38, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:14:32', '2019-03-01 04:14:32'),
(39, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:16:15', '2019-03-01 04:16:15'),
(40, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:20:09', '2019-03-01 04:20:09'),
(41, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:21:19', '2019-03-01 04:21:19'),
(42, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:22:44', '2019-03-01 04:22:44'),
(43, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:08', '2019-03-01 04:23:08'),
(44, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:44', '2019-03-01 04:23:44'),
(45, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:23:55', '2019-03-01 04:23:55'),
(46, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:24:06', '2019-03-01 04:24:06'),
(47, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:24:32', '2019-03-01 04:24:32'),
(48, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:00', '2019-03-01 04:25:00'),
(49, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:18', '2019-03-01 04:25:18'),
(50, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:25:33', '2019-03-01 04:25:33'),
(51, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:26:07', '2019-03-01 04:26:07'),
(52, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:26:58', '2019-03-01 04:26:58'),
(53, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:27:59', '2019-03-01 04:27:59'),
(54, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:28:21', '2019-03-01 04:28:21'),
(55, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:29:18', '2019-03-01 04:29:18'),
(56, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:34:29', '2019-03-01 04:34:29'),
(57, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:34:33', '2019-03-01 04:34:33'),
(58, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:35:51', '2019-03-01 04:35:51'),
(59, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 11:35:53', '2019-03-01 04:35:53'),
(60, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:36:07', '2019-03-01 04:36:07'),
(61, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:38:01', '2019-03-01 04:38:01'),
(62, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:40:14', '2019-03-01 04:40:14'),
(63, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:40:46', '2019-03-01 04:40:46'),
(64, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:41:14', '2019-03-01 04:41:14'),
(65, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:41:57', '2019-03-01 04:41:57'),
(66, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:42:16', '2019-03-01 04:42:16'),
(67, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:43:34', '2019-03-01 04:43:34'),
(68, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:46:03', '2019-03-01 04:46:03'),
(69, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-01', '2019-03-01 11:46:45', '2019-03-01 04:46:45'),
(70, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:46:53', '2019-03-01 04:46:53'),
(71, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:49:23', '2019-03-01 04:49:23'),
(72, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:50:38', '2019-03-01 04:50:38'),
(73, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:50:58', '2019-03-01 04:50:58'),
(74, 'http://localhost/bkkbn/masuk', '::1', '2019-03-01', '2019-03-01 11:51:25', '2019-03-01 04:51:25'),
(75, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:51:40', '2019-03-01 04:51:40'),
(76, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:53:15', '2019-03-01 04:53:15'),
(77, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:53:37', '2019-03-01 04:53:37'),
(78, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:54:02', '2019-03-01 04:54:02'),
(79, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:55:03', '2019-03-01 04:55:03'),
(80, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:56:34', '2019-03-01 04:56:34'),
(81, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 11:57:05', '2019-03-01 04:57:05'),
(82, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:04:57', '2019-03-01 07:04:57'),
(83, 'http://localhost/bkkbn/download', '::1', '2019-03-01', '2019-03-01 14:05:19', '2019-03-01 07:05:19'),
(84, 'http://localhost/bkkbn/galeri', '::1', '2019-03-01', '2019-03-01 14:05:30', '2019-03-01 07:05:30'),
(85, 'http://localhost/bkkbn/video', '::1', '2019-03-01', '2019-03-01 14:05:42', '2019-03-01 07:05:42'),
(86, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 14:17:12', '2019-03-01 07:17:12'),
(87, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:28:50', '2019-03-01 07:28:50'),
(88, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-01', '2019-03-01 14:31:05', '2019-03-01 07:31:05'),
(89, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 14:43:34', '2019-03-01 07:43:34'),
(90, 'http://localhost/bkkbn/index.php', '::1', '2019-03-01', '2019-03-01 15:46:17', '2019-03-01 08:46:17'),
(91, 'http://localhost/bkkbn/index.php', '::1', '2019-03-02', '2019-03-02 13:53:37', '2019-03-02 06:53:37'),
(92, 'http://localhost/bkkbn/index.php', '::1', '2019-03-02', '2019-03-02 14:21:18', '2019-03-02 07:21:18'),
(93, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 06:02:48', '2019-03-03 23:02:48'),
(94, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:38:09', '2019-03-04 00:38:09'),
(95, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:41:19', '2019-03-04 00:41:19'),
(96, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 07:41:40', '2019-03-04 00:41:40'),
(97, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 07:42:10', '2019-03-04 00:42:10'),
(98, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 07:42:29', '2019-03-04 00:42:29'),
(99, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 07:42:43', '2019-03-04 00:42:43'),
(100, 'http://localhost/bkkbn/galeri', '::1', '2019-03-04', '2019-03-04 07:42:52', '2019-03-04 00:42:52'),
(101, 'http://localhost/bkkbn/video', '::1', '2019-03-04', '2019-03-04 07:42:59', '2019-03-04 00:42:59'),
(102, 'http://localhost/bkkbn/video', '::1', '2019-03-04', '2019-03-04 07:44:00', '2019-03-04 00:44:00'),
(103, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:44:04', '2019-03-04 00:44:04'),
(104, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:44:51', '2019-03-04 00:44:51'),
(105, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:45:06', '2019-03-04 00:45:06'),
(106, 'http://localhost/bkkbn/video/read/5', '::1', '2019-03-04', '2019-03-04 07:45:26', '2019-03-04 00:45:26'),
(107, 'http://localhost/bkkbn/berita', '::1', '2019-03-04', '2019-03-04 07:45:36', '2019-03-04 00:45:36'),
(108, 'http://localhost/bkkbn/galeri', '::1', '2019-03-04', '2019-03-04 07:45:44', '2019-03-04 00:45:44'),
(109, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:45:49', '2019-03-04 00:45:49'),
(110, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:46:30', '2019-03-04 00:46:30'),
(111, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 07:46:44', '2019-03-04 00:46:44'),
(112, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:53:11', '2019-03-04 00:53:11'),
(113, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:53:55', '2019-03-04 00:53:55'),
(114, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:54:27', '2019-03-04 00:54:27'),
(115, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 07:55:22', '2019-03-04 00:55:22'),
(116, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:24:22', '2019-03-04 01:24:22'),
(117, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:29:55', '2019-03-04 01:29:55'),
(118, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 08:30:43', '2019-03-04 01:30:43'),
(119, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:31:35', '2019-03-04 01:31:35'),
(120, 'http://localhost/bkkbn/berita/kategori/kegiatan', '::1', '2019-03-04', '2019-03-04 08:31:40', '2019-03-04 01:31:40'),
(121, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 08:31:45', '2019-03-04 01:31:45'),
(122, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 08:32:15', '2019-03-04 01:32:15'),
(123, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:34:08', '2019-03-04 01:34:08'),
(124, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:34:50', '2019-03-04 01:34:50'),
(125, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 08:35:16', '2019-03-04 01:35:16'),
(126, 'http://localhost/bkkbn/berita', '::1', '2019-03-04', '2019-03-04 08:35:29', '2019-03-04 01:35:29'),
(127, 'http://localhost/bkkbn/berita/profil/profil-kami', '::1', '2019-03-04', '2019-03-04 08:36:00', '2019-03-04 01:36:00'),
(128, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:36:38', '2019-03-04 01:36:38'),
(129, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:26', '2019-03-04 01:37:26'),
(130, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:41', '2019-03-04 01:37:41'),
(131, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:37:57', '2019-03-04 01:37:57'),
(132, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:38:16', '2019-03-04 01:38:16'),
(133, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:38:27', '2019-03-04 01:38:27'),
(134, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:17', '2019-03-04 01:39:17'),
(135, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:30', '2019-03-04 01:39:30'),
(136, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:39:38', '2019-03-04 01:39:38'),
(137, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:40:16', '2019-03-04 01:40:16'),
(138, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 08:40:33', '2019-03-04 01:40:33'),
(139, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 08:40:38', '2019-03-04 01:40:38'),
(140, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 08:42:42', '2019-03-04 01:42:42'),
(141, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 10:43:14', '2019-03-04 03:43:14'),
(142, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 11:29:05', '2019-03-04 04:29:05'),
(143, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 11:29:10', '2019-03-04 04:29:10'),
(144, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 11:30:34', '2019-03-04 04:30:34'),
(145, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 12:57:30', '2019-03-04 05:57:30'),
(146, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 12:57:37', '2019-03-04 05:57:37'),
(147, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 12:58:51', '2019-03-04 05:58:51'),
(148, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 12:59:13', '2019-03-04 05:59:13'),
(149, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 13:01:37', '2019-03-04 06:01:37'),
(150, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:03:32', '2019-03-04 06:03:32'),
(151, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:04:11', '2019-03-04 06:04:11'),
(152, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:04:46', '2019-03-04 06:04:46'),
(153, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:05:03', '2019-03-04 06:05:03'),
(154, 'http://localhost/bkkbn/penelitian/tema/kesehatan-reproduksi', '::1', '2019-03-04', '2019-03-04 13:05:16', '2019-03-04 06:05:16'),
(155, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 13:05:23', '2019-03-04 06:05:23'),
(156, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:05:31', '2019-03-04 06:05:31'),
(157, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:05:52', '2019-03-04 06:05:52'),
(158, 'http://localhost/bkkbn/koss', '::1', '2019-03-04', '2019-03-04 13:06:10', '2019-03-04 06:06:10'),
(159, 'http://localhost/bkkbn/download', '::1', '2019-03-04', '2019-03-04 13:06:29', '2019-03-04 06:06:29'),
(160, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:28:48', '2019-03-04 07:28:48'),
(161, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:31:21', '2019-03-04 07:31:21'),
(162, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 14:31:33', '2019-03-04 07:31:33'),
(163, 'http://localhost/bkkbn/berita/read/bkkbn-adakan-simposium-nasional-sebagai-upaya-hadapi-revolusi-industri-40', '::1', '2019-03-04', '2019-03-04 14:32:20', '2019-03-04 07:32:20'),
(164, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:32:45', '2019-03-04 07:32:45'),
(165, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:32:52', '2019-03-04 07:32:52'),
(166, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:05', '2019-03-04 07:33:05'),
(167, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:39', '2019-03-04 07:33:39'),
(168, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:33:54', '2019-03-04 07:33:54'),
(169, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:34:27', '2019-03-04 07:34:27'),
(170, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:35:49', '2019-03-04 07:35:49'),
(171, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:36:05', '2019-03-04 07:36:05'),
(172, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:37:42', '2019-03-04 07:37:42'),
(173, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:37:53', '2019-03-04 07:37:53'),
(174, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:38:10', '2019-03-04 07:38:10'),
(175, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:43:00', '2019-03-04 07:43:00'),
(176, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:44:17', '2019-03-04 07:44:17'),
(177, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:45:19', '2019-03-04 07:45:19'),
(178, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:45:56', '2019-03-04 07:45:56'),
(179, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:46:24', '2019-03-04 07:46:24'),
(180, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 14:46:53', '2019-03-04 07:46:53'),
(181, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:47:08', '2019-03-04 07:47:08'),
(182, 'http://localhost/bkkbn/kontak', '::1', '2019-03-04', '2019-03-04 14:48:43', '2019-03-04 07:48:43'),
(183, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:48:55', '2019-03-04 07:48:55'),
(184, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:49:16', '2019-03-04 07:49:16'),
(185, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 14:51:48', '2019-03-04 07:51:48'),
(186, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:51:53', '2019-03-04 07:51:53'),
(187, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:59:03', '2019-03-04 07:59:03'),
(188, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 14:59:20', '2019-03-04 07:59:20'),
(189, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:09:07', '2019-03-04 08:09:07'),
(190, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:10:46', '2019-03-04 08:10:46'),
(191, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:33:08', '2019-03-04 08:33:08'),
(192, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:43:13', '2019-03-04 08:43:13'),
(193, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:43:18', '2019-03-04 08:43:18'),
(194, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-04', '2019-03-04 15:43:38', '2019-03-04 08:43:38'),
(195, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:43:52', '2019-03-04 08:43:52'),
(196, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:44:38', '2019-03-04 08:44:38'),
(197, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 15:46:11', '2019-03-04 08:46:11'),
(198, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-04', '2019-03-04 15:46:46', '2019-03-04 08:46:46'),
(199, 'http://localhost/bkkbn/masuk', '::1', '2019-03-04', '2019-03-04 15:48:59', '2019-03-04 08:48:59'),
(200, 'http://localhost/bkkbn/index.php', '::1', '2019-03-04', '2019-03-04 16:23:00', '2019-03-04 09:23:00'),
(201, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 08:36:55', '2019-03-07 01:36:55'),
(202, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 10:22:10', '2019-03-07 03:22:10'),
(203, 'http://localhost/bkkbn/masuk', '::1', '2019-03-07', '2019-03-07 12:12:54', '2019-03-07 05:12:54'),
(204, 'http://localhost/bkkbn/masuk', '::1', '2019-03-07', '2019-03-07 20:14:44', '2019-03-07 13:14:44'),
(205, 'http://localhost/bkkbn/index.php', '::1', '2019-03-07', '2019-03-07 20:46:31', '2019-03-07 13:46:31'),
(206, 'http://localhost/bkkbn/provinsi/dasbor', '::1', '2019-03-07', '2019-03-07 21:09:42', '2019-03-07 14:09:42'),
(207, 'http://localhost/bkkbn/provinsi/panduan', '::1', '2019-03-08', '2019-03-08 06:14:51', '2019-03-07 23:14:51'),
(208, 'http://localhost/bkkbn/profil/password', '::1', '2019-03-08', '2019-03-08 06:25:58', '2019-03-07 23:25:58'),
(209, 'http://localhost/bkkbn/provinsi/hasil', '::1', '2019-03-08', '2019-03-08 06:41:11', '2019-03-07 23:41:11'),
(210, 'http://localhost/bkkbn/index.php', '::1', '2019-03-10', '2019-03-10 08:49:36', '2019-03-10 01:49:36'),
(211, 'http://localhost/bkkbn/masuk', '::1', '2019-03-11', '2019-03-11 10:59:46', '2019-03-11 03:59:46'),
(212, 'http://localhost/bkkbn/index.php', '::1', '2019-03-13', '2019-03-13 11:31:47', '2019-03-13 04:31:47'),
(213, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:31:52', '2019-03-13 04:31:52'),
(214, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:31:56', '2019-03-13 04:31:56'),
(215, 'http://localhost/bkkbn/masuk', '::1', '2019-03-13', '2019-03-13 11:34:54', '2019-03-13 04:34:54'),
(216, 'http://localhost/bkkbn/index.php', '::1', '2019-03-13', '2019-03-13 19:00:11', '2019-03-13 12:00:11'),
(217, 'http://localhost/bkkbn/provinsi/penelitian/review/2', '::1', '2019-03-14', '2019-03-14 07:56:24', '2019-03-14 00:56:24'),
(218, 'http://localhost/bkkbn/provinsi/penelitian/review/2', '::1', '2019-03-14', '2019-03-14 08:29:36', '2019-03-14 01:29:36'),
(219, 'http://localhost/bkkbn/index.php', '::1', '2019-03-14', '2019-03-14 08:48:37', '2019-03-14 01:48:37'),
(220, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-14', '2019-03-14 08:48:46', '2019-03-14 01:48:46'),
(221, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:49:48', '2019-03-14 01:49:48'),
(222, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:50:38', '2019-03-14 01:50:38'),
(223, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:51:47', '2019-03-14 01:51:47'),
(224, 'http://localhost/bkkbn/masuk', '::1', '2019-03-14', '2019-03-14 08:57:20', '2019-03-14 01:57:20'),
(225, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:46:38', '2019-03-18 08:46:38'),
(226, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:47:37', '2019-03-18 08:47:37'),
(227, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:48:13', '2019-03-18 08:48:13'),
(228, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:49:11', '2019-03-18 08:49:11'),
(229, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 15:49:17', '2019-03-18 08:49:17'),
(230, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:52:15', '2019-03-18 08:52:15'),
(231, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:52:49', '2019-03-18 08:52:49'),
(232, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:53:55', '2019-03-18 08:53:55'),
(233, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:54:03', '2019-03-18 08:54:03'),
(234, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-18', '2019-03-18 15:54:16', '2019-03-18 08:54:16'),
(235, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:54:41', '2019-03-18 08:54:41'),
(236, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:55:13', '2019-03-18 08:55:13'),
(237, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-18', '2019-03-18 15:55:46', '2019-03-18 08:55:46'),
(238, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 15:56:01', '2019-03-18 08:56:01'),
(239, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:33:37', '2019-03-18 09:33:37'),
(240, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-18', '2019-03-18 16:33:42', '2019-03-18 09:33:42'),
(241, 'http://localhost/bkkbn/gelombang/read/1-gelombang-tes-ukp-2019', '::1', '2019-03-18', '2019-03-18 16:33:46', '2019-03-18 09:33:46'),
(242, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:33:57', '2019-03-18 09:33:57'),
(243, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:34:12', '2019-03-18 09:34:12'),
(244, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:35:48', '2019-03-18 09:35:48'),
(245, 'http://localhost/bkkbn/index.php', '::1', '2019-03-18', '2019-03-18 16:35:52', '2019-03-18 09:35:52'),
(246, 'http://localhost/bkkbn/download', '::1', '2019-03-18', '2019-03-18 16:36:37', '2019-03-18 09:36:37'),
(247, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:36:52', '2019-03-18 09:36:52'),
(248, 'http://localhost/bkkbn/masuk', '::1', '2019-03-18', '2019-03-18 16:41:04', '2019-03-18 09:41:04'),
(249, 'http://localhost/bkkbn/kontak', '::1', '2019-03-18', '2019-03-18 16:50:22', '2019-03-18 09:50:22'),
(250, 'http://localhost/bkkbn/index.php', '::1', '2019-03-24', '2019-03-24 05:46:23', '2019-03-23 22:46:23'),
(251, 'http://localhost/bkkbn/sk', '::1', '2019-03-24', '2019-03-24 06:05:11', '2019-03-23 23:05:11'),
(252, 'http://localhost/bkkbn/sk', '::1', '2019-03-25', '2019-03-25 08:23:43', '2019-03-25 01:23:43'),
(253, 'http://localhost/bkkbn/sk', '::1', '2019-03-25', '2019-03-25 08:25:44', '2019-03-25 01:25:44'),
(254, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 10:37:24', '2019-03-25 03:37:24'),
(255, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:13:25', '2019-03-25 04:13:25'),
(256, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:17:10', '2019-03-25 04:17:10'),
(257, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:20:06', '2019-03-25 04:20:06'),
(258, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:21:18', '2019-03-25 04:21:18'),
(259, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:22:04', '2019-03-25 04:22:04'),
(260, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 11:22:24', '2019-03-25 04:22:24'),
(261, 'http://localhost/bkkbn/berita/kategori/kegiatan', '::1', '2019-03-25', '2019-03-25 11:22:39', '2019-03-25 04:22:39'),
(262, 'http://localhost/bkkbn/download', '::1', '2019-03-25', '2019-03-25 11:22:44', '2019-03-25 04:22:44'),
(263, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 11:32:13', '2019-03-25 04:32:13'),
(264, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:07:27', '2019-03-25 07:07:27'),
(265, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:19:16', '2019-03-25 07:19:16'),
(266, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:19:20', '2019-03-25 07:19:20'),
(267, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:23:40', '2019-03-25 07:23:40'),
(268, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:23:56', '2019-03-25 07:23:56'),
(269, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 14:40:40', '2019-03-25 07:40:40'),
(270, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 14:41:11', '2019-03-25 07:41:11'),
(271, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 14:42:24', '2019-03-25 07:42:24'),
(272, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:43:51', '2019-03-25 07:43:51'),
(273, 'http://localhost/bkkbn/masuk', '::1', '2019-03-25', '2019-03-25 14:45:14', '2019-03-25 07:45:14'),
(274, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:07:53', '2019-03-25 08:07:53'),
(275, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:13:42', '2019-03-25 08:13:42'),
(276, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:14:43', '2019-03-25 08:14:43'),
(277, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:15:14', '2019-03-25 08:15:14'),
(278, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:15:40', '2019-03-25 08:15:40'),
(279, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:17:44', '2019-03-25 08:17:44'),
(280, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:20:02', '2019-03-25 08:20:02'),
(281, 'http://localhost/bkkbn/gelombang', '::1', '2019-03-25', '2019-03-25 15:36:18', '2019-03-25 08:36:18'),
(282, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:36:45', '2019-03-25 08:36:45'),
(283, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:48:49', '2019-03-25 08:48:49'),
(284, 'http://localhost/bkkbn/berita/profil/fungsi-pusdu', '::1', '2019-03-25', '2019-03-25 15:52:51', '2019-03-25 08:52:51'),
(285, 'http://localhost/bkkbn/berita/profil/tugas-pokok', '::1', '2019-03-25', '2019-03-25 15:53:00', '2019-03-25 08:53:00'),
(286, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 15:53:10', '2019-03-25 08:53:10'),
(287, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:03', '2019-03-25 09:14:03'),
(288, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:26', '2019-03-25 09:14:26'),
(289, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:14:43', '2019-03-25 09:14:43'),
(290, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-25', '2019-03-25 16:15:01', '2019-03-25 09:15:01'),
(291, 'http://localhost/bkkbn/index.php', '::1', '2019-03-25', '2019-03-25 16:16:41', '2019-03-25 09:16:41'),
(292, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:15:07', '2019-03-26 06:15:07'),
(293, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:16:38', '2019-03-26 06:16:38'),
(294, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:17:32', '2019-03-26 06:17:32'),
(295, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:17:57', '2019-03-26 06:17:57'),
(296, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:18:23', '2019-03-26 06:18:23'),
(297, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-26', '2019-03-26 13:18:56', '2019-03-26 06:18:56'),
(298, 'http://localhost/bkkbn/index.php', '::1', '2019-03-26', '2019-03-26 14:45:30', '2019-03-26 07:45:30'),
(299, 'http://localhost/bkkbn/index.php', '::1', '2019-03-26', '2019-03-26 15:23:19', '2019-03-26 08:23:19'),
(300, 'http://localhost/bkkbn/masuk', '::1', '2019-03-26', '2019-03-26 15:23:37', '2019-03-26 08:23:37'),
(301, 'http://localhost/bkkbn/masuk', '::1', '2019-03-27', '2019-03-27 07:54:53', '2019-03-27 00:54:53'),
(302, 'http://localhost/bkkbn/index.php', '::1', '2019-03-27', '2019-03-27 08:54:06', '2019-03-27 01:54:06'),
(303, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-27', '2019-03-27 09:24:47', '2019-03-27 02:24:47'),
(304, 'http://localhost/bkkbn/masuk', '::1', '2019-03-27', '2019-03-27 10:21:39', '2019-03-27 03:21:39'),
(305, 'http://localhost/bkkbn/pendaftaran', '::1', '2019-03-27', '2019-03-27 10:21:56', '2019-03-27 03:21:56'),
(306, 'http://localhost/bkkbn/index.php', '::1', '2019-03-27', '2019-03-27 10:50:28', '2019-03-27 03:50:28'),
(307, 'http://localhost/bkkbn/index.php', '::1', '2019-04-03', '2019-04-03 14:10:13', '2019-04-03 07:10:13'),
(308, 'http://localhost/bkkbn/index.php', '::1', '2019-04-03', '2019-04-03 14:39:14', '2019-04-03 07:39:14'),
(309, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:32:31', '2019-05-13 08:32:31'),
(310, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:33:08', '2019-05-13 08:33:08'),
(311, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:33:32', '2019-05-13 08:33:32'),
(312, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:34:14', '2019-05-13 08:34:14'),
(313, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:34:21', '2019-05-13 08:34:21'),
(314, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:35:08', '2019-05-13 08:35:08'),
(315, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:36:08', '2019-05-13 08:36:08'),
(316, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:36:13', '2019-05-13 08:36:13'),
(317, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:00', '2019-05-13 08:37:00'),
(318, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:03', '2019-05-13 08:37:03'),
(319, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:29', '2019-05-13 08:37:29'),
(320, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:37:43', '2019-05-13 08:37:43'),
(321, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:48:01', '2019-05-13 08:48:01'),
(322, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:49:07', '2019-05-13 08:49:07'),
(323, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:50:30', '2019-05-13 08:50:30'),
(324, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:51:01', '2019-05-13 08:51:01'),
(325, 'http://localhost/sigit/index.php', '::1', '2019-05-13', '2019-05-13 15:51:55', '2019-05-13 08:51:55'),
(326, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 03:55:19', '2019-05-16 20:55:19'),
(327, 'http://localhost/sigit/galeri', '::1', '2019-05-17', '2019-05-17 03:56:05', '2019-05-16 20:56:05'),
(328, 'http://localhost/sigit/video', '::1', '2019-05-17', '2019-05-17 03:56:11', '2019-05-16 20:56:11'),
(329, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 03:57:36', '2019-05-16 20:57:36'),
(330, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:01:10', '2019-05-16 21:01:10'),
(331, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:08:10', '2019-05-16 21:08:10'),
(332, 'http://localhost/sigit/download', '::1', '2019-05-17', '2019-05-17 04:08:24', '2019-05-16 21:08:24'),
(333, 'http://localhost/sigit/download', '::1', '2019-05-17', '2019-05-17 04:08:32', '2019-05-16 21:08:32'),
(334, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:08:36', '2019-05-16 21:08:36'),
(335, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:08:53', '2019-05-16 21:08:53'),
(336, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:12', '2019-05-16 21:10:12'),
(337, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:36', '2019-05-16 21:10:36'),
(338, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:10:49', '2019-05-16 21:10:49'),
(339, 'http://localhost/sigit/kontak', '::1', '2019-05-17', '2019-05-17 04:11:18', '2019-05-16 21:11:18'),
(340, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:11:26', '2019-05-16 21:11:26'),
(341, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:12:08', '2019-05-16 21:12:08'),
(342, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:12:28', '2019-05-16 21:12:28'),
(343, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:14:13', '2019-05-16 21:14:13'),
(344, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:14:56', '2019-05-16 21:14:56'),
(345, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:16', '2019-05-16 21:15:16'),
(346, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:40', '2019-05-16 21:15:40'),
(347, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:15:56', '2019-05-16 21:15:56'),
(348, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:16:17', '2019-05-16 21:16:17'),
(349, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:16:56', '2019-05-16 21:16:56'),
(350, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:17:29', '2019-05-16 21:17:29'),
(351, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:18:05', '2019-05-16 21:18:05'),
(352, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:18:37', '2019-05-16 21:18:37'),
(353, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:18:42', '2019-05-16 21:18:42'),
(354, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:20:36', '2019-05-16 21:20:36'),
(355, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-05-17', '2019-05-17 04:21:03', '2019-05-16 21:21:03'),
(356, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:22:17', '2019-05-16 21:22:17'),
(357, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:22:35', '2019-05-16 21:22:35'),
(358, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:31:34', '2019-05-16 21:31:34'),
(359, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:06', '2019-05-16 21:32:06'),
(360, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:23', '2019-05-16 21:32:23'),
(361, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:32:37', '2019-05-16 21:32:37'),
(362, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:34:48', '2019-05-16 21:34:48'),
(363, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:35:07', '2019-05-16 21:35:07'),
(364, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:35:56', '2019-05-16 21:35:56'),
(365, 'http://localhost/sigit/index.php', '::1', '2019-05-17', '2019-05-17 04:37:07', '2019-05-16 21:37:07'),
(366, 'http://localhost/sigit/berita/layanan/temu-kolaborasi', '::1', '2019-05-17', '2019-05-17 07:35:57', '2019-05-17 00:35:57'),
(367, 'http://localhost/sigit/index.php', '::1', '2019-05-27', '2019-05-27 12:38:33', '2019-05-27 05:38:33'),
(368, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:31:01', '2019-07-15 05:31:01'),
(369, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:39:02', '2019-07-15 05:39:02'),
(370, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(371, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(372, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:39:03', '2019-07-15 05:39:03'),
(373, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:39:50', '2019-07-15 05:39:50'),
(374, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(375, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(376, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:39:51', '2019-07-15 05:39:51'),
(377, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:42:39', '2019-07-15 05:42:39'),
(378, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:42:39', '2019-07-15 05:42:39'),
(379, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:42:40', '2019-07-15 05:42:40'),
(380, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:42:40', '2019-07-15 05:42:40'),
(381, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:45:42', '2019-07-15 05:45:42'),
(382, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(383, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(384, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:45:43', '2019-07-15 05:45:43'),
(385, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:47:13', '2019-07-15 05:47:13'),
(386, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(387, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(388, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:47:14', '2019-07-15 05:47:14'),
(389, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:47:51', '2019-07-15 05:47:51'),
(390, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(391, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(392, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:47:52', '2019-07-15 05:47:52'),
(393, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:48:36', '2019-07-15 05:48:36'),
(394, 'http://localhost/sigit/images/image_3.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(395, 'http://localhost/sigit/images/image_2.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(396, 'http://localhost/sigit/images/image_1.jpg', '::1', '2019-07-15', '2019-07-15 12:48:37', '2019-07-15 05:48:37'),
(397, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:16', '2019-07-15 05:49:16'),
(398, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:21', '2019-07-15 05:49:21'),
(399, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:49:58', '2019-07-15 05:49:58'),
(400, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:50:09', '2019-07-15 05:50:09'),
(401, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:08', '2019-07-15 05:51:08'),
(402, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:16', '2019-07-15 05:51:16'),
(403, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:51:46', '2019-07-15 05:51:46'),
(404, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:53:02', '2019-07-15 05:53:02'),
(405, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:55:23', '2019-07-15 05:55:23'),
(406, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:56:38', '2019-07-15 05:56:38'),
(407, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:58:37', '2019-07-15 05:58:37'),
(408, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 12:58:44', '2019-07-15 05:58:44'),
(409, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:02:32', '2019-07-15 06:02:32'),
(410, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:05:43', '2019-07-15 06:05:43'),
(411, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:06:27', '2019-07-15 06:06:27'),
(412, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:07:11', '2019-07-15 06:07:11'),
(413, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:07:27', '2019-07-15 06:07:27'),
(414, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:07', '2019-07-15 06:08:07'),
(415, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:31', '2019-07-15 06:08:31'),
(416, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:08:53', '2019-07-15 06:08:53'),
(417, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:10:48', '2019-07-15 06:10:48'),
(418, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:13:14', '2019-07-15 06:13:14'),
(419, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:14:32', '2019-07-15 06:14:32'),
(420, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:19:34', '2019-07-15 06:19:34'),
(421, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:19:44', '2019-07-15 06:19:44'),
(422, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:21:29', '2019-07-15 06:21:29'),
(423, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:22:24', '2019-07-15 06:22:24'),
(424, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:31:30', '2019-07-15 06:31:30'),
(425, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:31:47', '2019-07-15 06:31:47'),
(426, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:31:47', '2019-07-15 06:31:47'),
(427, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:37:36', '2019-07-15 06:37:36'),
(428, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:37:37', '2019-07-15 06:37:37'),
(429, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:38:01', '2019-07-15 06:38:01'),
(430, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:38:02', '2019-07-15 06:38:02'),
(431, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:40:43', '2019-07-15 06:40:43'),
(432, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:40:43', '2019-07-15 06:40:43'),
(433, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:41:15', '2019-07-15 06:41:15'),
(434, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:41:16', '2019-07-15 06:41:16'),
(435, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:41:35', '2019-07-15 06:41:35'),
(436, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:41:36', '2019-07-15 06:41:36'),
(437, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:14', '2019-07-15 06:46:14'),
(438, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:15', '2019-07-15 06:46:15'),
(439, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:41', '2019-07-15 06:46:41'),
(440, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:42', '2019-07-15 06:46:42'),
(441, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:46:52', '2019-07-15 06:46:52'),
(442, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:46:52', '2019-07-15 06:46:52'),
(443, 'http://localhost/sigit/index.php', '::1', '2019-07-15', '2019-07-15 13:48:48', '2019-07-15 06:48:48'),
(444, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-15', '2019-07-15 13:48:48', '2019-07-15 06:48:48'),
(445, 'http://localhost/sigit/index.php', '::1', '2019-07-25', '2019-07-25 10:23:31', '2019-07-25 03:23:31'),
(446, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-25', '2019-07-25 10:23:35', '2019-07-25 03:23:35'),
(447, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:26:51', '2019-07-26 02:26:51'),
(448, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:26:58', '2019-07-26 02:26:58'),
(449, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:29:40', '2019-07-26 02:29:40'),
(450, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:29:41', '2019-07-26 02:29:41'),
(451, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:31:36', '2019-07-26 02:31:36'),
(452, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:31:37', '2019-07-26 02:31:37'),
(453, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:38:56', '2019-07-26 02:38:56');
INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(454, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:38:58', '2019-07-26 02:38:58'),
(455, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 09:40:10', '2019-07-26 02:40:10'),
(456, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 09:40:11', '2019-07-26 02:40:11'),
(457, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:05:16', '2019-07-26 03:05:16'),
(458, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 10:05:19', '2019-07-26 03:05:19'),
(459, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:06:19', '2019-07-26 03:06:19'),
(460, 'http://localhost/sigit/asets/upload/staff', '::1', '2019-07-26', '2019-07-26 10:06:20', '2019-07-26 03:06:20'),
(461, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:07:26', '2019-07-26 03:07:26'),
(462, 'http://localhost/sigit/berita/kategori/kegiatan', '::1', '2019-07-26', '2019-07-26 10:08:13', '2019-07-26 03:08:13'),
(463, 'http://localhost/sigit/berita/layanan/integrasi-data-dan-pengetahuan', '::1', '2019-07-26', '2019-07-26 10:08:20', '2019-07-26 03:08:20'),
(464, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:08:26', '2019-07-26 03:08:26'),
(465, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:11:02', '2019-07-26 03:11:02'),
(466, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:11:49', '2019-07-26 03:11:49'),
(467, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:12:17', '2019-07-26 03:12:17'),
(468, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:14:06', '2019-07-26 03:14:06'),
(469, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:14:49', '2019-07-26 03:14:49'),
(470, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:15:03', '2019-07-26 03:15:03'),
(471, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:16:56', '2019-07-26 03:16:56'),
(472, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:18:39', '2019-07-26 03:18:39'),
(473, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:21:24', '2019-07-26 03:21:24'),
(474, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:22:25', '2019-07-26 03:22:25'),
(475, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:23:07', '2019-07-26 03:23:07'),
(476, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:23:27', '2019-07-26 03:23:27'),
(477, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:24:17', '2019-07-26 03:24:17'),
(478, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:25:03', '2019-07-26 03:25:03'),
(479, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:25:39', '2019-07-26 03:25:39'),
(480, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:26:30', '2019-07-26 03:26:30'),
(481, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:26:44', '2019-07-26 03:26:44'),
(482, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:29:16', '2019-07-26 03:29:16'),
(483, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:30:52', '2019-07-26 03:30:52'),
(484, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:31:52', '2019-07-26 03:31:52'),
(485, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:34:47', '2019-07-26 03:34:47'),
(486, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:35:27', '2019-07-26 03:35:27'),
(487, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:35:29', '2019-07-26 03:35:29'),
(488, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:36:19', '2019-07-26 03:36:19'),
(489, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:38:37', '2019-07-26 03:38:37'),
(490, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:38:58', '2019-07-26 03:38:58'),
(491, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:10', '2019-07-26 03:39:10'),
(492, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:27', '2019-07-26 03:39:27'),
(493, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:39:36', '2019-07-26 03:39:36'),
(494, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:40:37', '2019-07-26 03:40:37'),
(495, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:52:08', '2019-07-26 03:52:08'),
(496, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:53:30', '2019-07-26 03:53:30'),
(497, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:54:11', '2019-07-26 03:54:11'),
(498, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:54:34', '2019-07-26 03:54:34'),
(499, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:56:33', '2019-07-26 03:56:33'),
(500, 'http://localhost/sigit/berita/layanan/iso-90012015', '::1', '2019-07-26', '2019-07-26 10:56:59', '2019-07-26 03:56:59'),
(501, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:57:18', '2019-07-26 03:57:18'),
(502, 'http://localhost/sigit/index.php', '::1', '2019-07-26', '2019-07-26 10:57:49', '2019-07-26 03:57:49'),
(503, 'http://localhost/sigit/galeri', '::1', '2019-07-26', '2019-07-26 11:01:58', '2019-07-26 04:01:58'),
(504, 'http://localhost/sigit/download', '::1', '2019-07-26', '2019-07-26 11:02:03', '2019-07-26 04:02:03'),
(505, 'http://localhost/sigit/index.php', '::1', '2019-10-11', '2019-10-11 19:30:33', '2019-10-11 12:30:33'),
(506, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:35:59', '2019-10-11 12:35:59'),
(507, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:47:01', '2019-10-11 12:47:01'),
(508, 'http://localhost/compro/kontak', '::1', '2019-10-11', '2019-10-11 19:48:17', '2019-10-11 12:48:17'),
(509, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:48:23', '2019-10-11 12:48:23'),
(510, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 19:48:57', '2019-10-11 12:48:57'),
(511, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:02:54', '2019-10-11 13:02:54'),
(512, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:04:44', '2019-10-11 13:04:44'),
(513, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:56:49', '2019-10-11 13:56:49'),
(514, 'http://localhost/compro/berita', '::1', '2019-10-11', '2019-10-11 20:57:16', '2019-10-11 13:57:16'),
(515, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2019-10-11', '2019-10-11 20:57:21', '2019-10-11 13:57:21'),
(516, 'http://localhost/compro/berita/profil/profil-pt-nuansa-abadi', '::1', '2019-10-11', '2019-10-11 20:57:28', '2019-10-11 13:57:28'),
(517, 'http://localhost/compro/download', '::1', '2019-10-11', '2019-10-11 20:57:35', '2019-10-11 13:57:35'),
(518, 'http://localhost/compro/galeri', '::1', '2019-10-11', '2019-10-11 20:57:47', '2019-10-11 13:57:47'),
(519, 'http://localhost/compro/index.php', '::1', '2019-10-11', '2019-10-11 20:58:44', '2019-10-11 13:58:44'),
(520, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:43:56', '2019-10-12 01:43:56'),
(521, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:44:53', '2019-10-12 01:44:53'),
(522, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:45:46', '2019-10-12 01:45:46'),
(523, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:46:06', '2019-10-12 01:46:06'),
(524, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:48:22', '2019-10-12 01:48:22'),
(525, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 08:54:49', '2019-10-12 01:54:49'),
(526, 'http://localhost/compro/download', '::1', '2019-10-12', '2019-10-12 09:00:49', '2019-10-12 02:00:49'),
(527, 'http://localhost/compro/kontak', '::1', '2019-10-12', '2019-10-12 09:00:54', '2019-10-12 02:00:54'),
(528, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 09:07:10', '2019-10-12 02:07:10'),
(529, 'http://localhost/compro/index.php', '::1', '2019-10-12', '2019-10-12 09:51:47', '2019-10-12 02:51:47'),
(530, 'http://localhost/compro/index.php', '::1', '2019-10-13', '2019-10-13 09:28:41', '2019-10-13 02:28:41'),
(531, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:16:17', '2019-10-15 10:16:17'),
(532, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:16:18', '2019-10-15 10:16:18'),
(533, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:43:20', '2019-10-15 10:43:20'),
(534, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:43:20', '2019-10-15 10:43:20'),
(535, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:45:12', '2019-10-15 10:45:12'),
(536, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:46:45', '2019-10-15 10:46:45'),
(537, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:10', '2019-10-15 10:57:10'),
(538, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:31', '2019-10-15 10:57:31'),
(539, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:57:59', '2019-10-15 10:57:59'),
(540, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:58:43', '2019-10-15 10:58:43'),
(541, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 17:59:40', '2019-10-15 10:59:40'),
(542, 'http://localhost/compro/index.php', '::1', '2019-10-15', '2019-10-15 18:00:01', '2019-10-15 11:00:01'),
(543, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 14:50:40', '2020-01-04 07:50:40'),
(544, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:12:47', '2020-01-04 08:12:47'),
(545, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:13:46', '2020-01-04 08:13:46'),
(546, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:14:04', '2020-01-04 08:14:04'),
(547, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 15:16:00', '2020-01-04 08:16:00'),
(548, 'http://localhost/compro/video', '::1', '2020-01-04', '2020-01-04 15:16:19', '2020-01-04 08:16:19'),
(549, 'http://localhost/compro/galeri', '::1', '2020-01-04', '2020-01-04 15:16:36', '2020-01-04 08:16:36'),
(550, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:07:39', '2020-01-04 09:07:39'),
(551, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:07:57', '2020-01-04 09:07:57'),
(552, 'http://localhost/compro/index.php', '::1', '2020-01-04', '2020-01-04 16:10:48', '2020-01-04 09:10:48'),
(553, 'http://localhost/compro/kontak', '::1', '2020-01-04', '2020-01-04 16:10:56', '2020-01-04 09:10:56'),
(554, 'http://localhost/compro/index.php', '::1', '2020-01-14', '2020-01-14 10:40:12', '2020-01-14 03:40:12'),
(555, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2020-01-14', '2020-01-14 10:40:20', '2020-01-14 03:40:20'),
(556, 'http://localhost/compro/berita/read/integrasi-data-dan-pengetahuan', '::1', '2020-01-14', '2020-01-14 10:41:54', '2020-01-14 03:41:54'),
(557, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:27:54', '2020-02-13 00:27:54'),
(558, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:29:39', '2020-02-13 00:29:39'),
(559, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:34:45', '2020-02-13 00:34:45'),
(560, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:36:55', '2020-02-13 00:36:55'),
(561, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:38:36', '2020-02-13 00:38:36'),
(562, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:40:08', '2020-02-13 00:40:08'),
(563, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:42:31', '2020-02-13 00:42:31'),
(564, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:43:19', '2020-02-13 00:43:19'),
(565, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:45:11', '2020-02-13 00:45:11'),
(566, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:45:28', '2020-02-13 00:45:28'),
(567, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:45:33', '2020-02-13 00:45:33'),
(568, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:47:02', '2020-02-13 00:47:02'),
(569, 'http://localhost/compro/video', '::1', '2020-02-13', '2020-02-13 07:48:37', '2020-02-13 00:48:37'),
(570, 'http://localhost/compro/berita/profil/profil-java-web-media', '::1', '2020-02-13', '2020-02-13 07:48:45', '2020-02-13 00:48:45'),
(571, 'http://localhost/compro/download', '::1', '2020-02-13', '2020-02-13 07:48:49', '2020-02-13 00:48:49'),
(572, 'http://localhost/compro/download', '::1', '2020-02-13', '2020-02-13 07:51:22', '2020-02-13 00:51:22'),
(573, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:51:29', '2020-02-13 00:51:29'),
(574, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:52:22', '2020-02-13 00:52:22'),
(575, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:53:28', '2020-02-13 00:53:28'),
(576, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:53:58', '2020-02-13 00:53:58'),
(577, 'http://localhost/compro/galeri', '::1', '2020-02-13', '2020-02-13 07:54:31', '2020-02-13 00:54:31'),
(578, 'http://localhost/compro/kontak', '::1', '2020-02-13', '2020-02-13 07:54:40', '2020-02-13 00:54:40'),
(579, 'http://localhost/compro/kontak', '::1', '2020-02-13', '2020-02-13 07:55:23', '2020-02-13 00:55:23'),
(580, 'http://localhost/compro/index.php', '::1', '2020-02-13', '2020-02-13 07:55:36', '2020-02-13 00:55:36'),
(581, 'http://localhost/compro/index.php', '::1', '2022-11-24', '2022-11-24 17:00:13', '2022-11-24 10:00:13'),
(582, 'http://localhost/compro/berita/kategori/kegiatan', '::1', '2022-11-24', '2022-11-24 17:04:56', '2022-11-24 10:04:56'),
(583, 'http://localhost/compro/berita', '::1', '2022-11-24', '2022-11-24 17:05:03', '2022-11-24 10:05:03'),
(584, 'http://localhost/compro/berita/layanan/kursus-statistik', '::1', '2022-11-24', '2022-11-24 17:05:15', '2022-11-24 10:05:15'),
(585, 'http://localhost/compro/index.php', '::1', '2022-11-24', '2022-11-24 17:06:11', '2022-11-24 10:06:11'),
(586, 'http://localhost/compro/index.php', '::1', '2022-11-24', '2022-11-24 17:08:22', '2022-11-24 10:08:22'),
(587, 'http://localhost/compro/kontak', '::1', '2022-11-24', '2022-11-24 17:09:04', '2022-11-24 10:09:04'),
(588, 'http://localhost/compro/index.php', '::1', '2022-11-24', '2022-11-24 17:10:00', '2022-11-24 10:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `slug_pekerjaan` varchar(200) NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `slug_pekerjaan`, `urutan`, `nama_pekerjaan`, `keterangan`) VALUES
(1, 'karyawan-swasta', 1, 'Karyawan Swasta', NULL),
(2, 'wirausaha', 2, 'Wirausaha', NULL),
(3, 'pegawa-negeri-sipil-pns', 3, 'Pegawa Negeri Sipil (PNS)', NULL),
(4, 'tni', 4, 'TNI', NULL),
(5, 'polri', 5, 'POLRI', NULL),
(6, 'ibu-rumah-tangga', 6, 'Ibu Rumah Tangga', NULL),
(7, 'tidak-bekerja', 10, 'Tidak Bekerja', NULL),
(8, 'guru-swasta', 7, 'Guru Swasta', NULL),
(9, 'dosen-swasta', 8, 'Dosen Swasta', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `password_hint` varchar(64) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') NOT NULL,
  `status_tutor` enum('Ya','Tidak') NOT NULL,
  `ip_address` varchar(24) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `urutan`, `nama`, `alamat`, `telepon`, `website`, `email`, `password`, `password_hint`, `isi`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `keywords`, `status_baca`, `status_tutor`, `ip_address`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, NULL, 0, 'Fitra Raudha', '', '0813 8841 0829', '', '', NULL, NULL, NULL, 'Direktur', '', NULL, 'Yes', '', 'Sudah', 'Ya', '', '', '1970-01-01', '2019-07-15 06:31:43'),
(10, 1, NULL, 0, 'Sigit Yuwono Wachid', '', '085715100485', '', '', NULL, NULL, NULL, '', '', NULL, 'No', '', 'Sudah', 'Ya', '', '', '1970-01-01', '2019-04-14 04:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_sub_menu` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(20) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id_sub_menu`, `id_menu`, `nama_sub_menu`, `link`, `target`, `urutan`) VALUES
(1, 1, 'Menu 1', 'http://localhost', '', 1),
(3, 1, 'Menu 2', 'http://localhost/1', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `up`
--

CREATE TABLE `up` (
  `id_up` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_up` varchar(255) NOT NULL,
  `bagian` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up`
--

INSERT INTO `up` (`id_up`, `id_client`, `id_user`, `nama_up`, `bagian`, `email`, `telepon`, `keterangan`, `tanggal`) VALUES
(2, 3, 1, 'Rayyan Andoyo', 'Marketing', 'eflita@gmail.com', '(021) 27534579', 'adada', '2019-04-29 21:26:55'),
(3, 3, 1, 'Izra', 'Keuangan', 'contact@nuansabaru.co.id', '0813 8841 0829', 'ok', '2019-04-29 21:19:51'),
(4, 3, 1, 'Ef', 'a', 'surat@javawebmedia.co.id', '', '', '2019-04-29 21:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `password_hint` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `id_bagian`, `nama`, `email`, `username`, `password`, `password_hint`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 0, 'Andoyo Cakep', 'andoyoandoyo@gmail.com', 'javawebmedia', 'dc28d4424ece38803650f440d7eb1cb2b3fb6651', 'javawebmedia', 'Admin', NULL, 'team-3.jpg', '', '2019-10-12 15:50:21', '2020-02-13 00:58:36'),
(2, 0, 'Rayyan', 'andoyoandoyo@gmail.com', 'rayyan', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', '', 'User', NULL, NULL, '', '2019-04-24 17:21:18', '2019-04-24 10:21:18'),
(3, 0, 'DITJEN PENYELENGGARAAN HAJI DAN UMRAH KEMENTERIAN ', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', '', 'User', NULL, NULL, '<p>adada</p>', '2019-10-12 14:10:05', '2019-10-12 07:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id_user_log` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `akses_level` varchar(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `jenis` varchar(24) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(1, '::1', 5, 'andoyo', '', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 03:51:54'),
(2, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 03:53:55'),
(3, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 03:54:13'),
(4, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 03:54:20'),
(5, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-16 03:54:25'),
(6, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 03:54:40'),
(7, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 03:56:54'),
(8, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 03:56:54'),
(9, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-16 03:57:28'),
(10, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 03:58:05'),
(11, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-05-16 03:58:07'),
(12, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-16 04:17:00'),
(13, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 04:17:03'),
(14, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 04:17:38'),
(15, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 04:17:38'),
(16, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 04:17:56'),
(17, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-16 04:18:00'),
(18, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 04:18:03'),
(19, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/panduan', 'Administrator', '2018-05-16 04:18:14'),
(20, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/profil', 'Administrator', '2018-05-16 04:18:16'),
(21, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 04:18:21'),
(22, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 04:29:37'),
(23, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 04:29:41'),
(24, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 04:30:04'),
(25, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 04:30:06'),
(26, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/excel/9', 'Administrator', '2018-05-16 04:30:22'),
(27, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 04:30:26'),
(28, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-16 04:30:28'),
(29, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-16 05:58:49'),
(30, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 06:57:19'),
(31, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:17'),
(32, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:26'),
(33, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:26'),
(34, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:30'),
(35, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:31'),
(36, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:36'),
(37, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:37'),
(38, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:44'),
(39, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:54:44'),
(40, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:55:25'),
(41, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-05-25 01:55:25'),
(42, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-05-25 01:55:37'),
(43, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-05-25 01:55:42'),
(44, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/login/logout', 'Member', '2018-05-25 01:56:44'),
(45, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 01:56:44'),
(46, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:56:49'),
(47, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:56:54'),
(48, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 01:56:54'),
(49, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 01:57:10'),
(50, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:57:24'),
(51, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:57:28'),
(52, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:57:28'),
(53, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 01:57:40'),
(54, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 01:57:40'),
(55, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 01:57:45'),
(56, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 01:57:48'),
(57, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:00:09'),
(58, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/detail/2', 'Administrator', '2018-05-25 02:00:19'),
(59, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:01:02'),
(60, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:01:22'),
(61, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:02:10'),
(62, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:02:25'),
(63, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:02:36'),
(64, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/approval', 'Administrator', '2018-05-25 02:02:47'),
(65, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:02:48'),
(66, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/akses/2', 'Administrator', '2018-05-25 02:02:55'),
(67, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cetak/2', 'Administrator', '2018-05-25 02:03:03'),
(68, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/excel/9', 'Administrator', '2018-05-25 02:03:28'),
(69, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:03:31'),
(70, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 02:09:27'),
(71, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 02:11:19'),
(72, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 02:12:41'),
(73, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 02:13:56'),
(74, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:14:30'),
(75, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:14:36'),
(76, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:15:25'),
(77, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:15:56'),
(78, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:15:58'),
(79, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:16:59'),
(80, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:17:30'),
(81, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:17:50'),
(82, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:18:27'),
(83, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:18:44'),
(84, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:18:55'),
(85, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:19:54'),
(86, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:19:55'),
(87, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:20:19'),
(88, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:21:43'),
(89, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:22:55'),
(90, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 02:30:07'),
(91, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_excel/9', 'Administrator', '2018-05-25 02:37:26'),
(92, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-25 02:39:39'),
(93, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:39:57'),
(94, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/profil', 'Administrator', '2018-05-25 02:40:01'),
(95, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:40:04'),
(96, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:44:28'),
(97, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:44:50'),
(98, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:45:13'),
(99, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:46:41'),
(100, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:47:06'),
(101, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:47:40'),
(102, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/approval', 'Administrator', '2018-05-25 02:47:46'),
(103, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 02:47:46'),
(104, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:47:49'),
(105, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:47:53'),
(106, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 02:50:29'),
(107, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:52:15'),
(108, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:53:09'),
(109, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:54:43'),
(110, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:54:57'),
(111, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:55:19'),
(112, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:55:39'),
(113, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:56:31'),
(114, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 02:56:45'),
(115, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:01:11'),
(116, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:01:47'),
(117, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:03:44'),
(118, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:04:33'),
(119, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:07:53'),
(120, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:08:28'),
(121, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:09:43'),
(122, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:10:22'),
(123, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:10:55'),
(124, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:20:21'),
(125, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:21:52'),
(126, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:22:10'),
(127, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:23:52'),
(128, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:24:22'),
(129, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:25:22'),
(130, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:26:03'),
(131, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:26:28'),
(132, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:29:01'),
(133, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 03:29:16'),
(134, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:47:50'),
(135, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:53:17'),
(136, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-25 03:53:36'),
(137, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 03:54:06'),
(138, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 03:54:37'),
(139, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 03:56:06'),
(140, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 03:59:54'),
(141, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 04:00:15'),
(142, '127.0.0.1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 04:02:18'),
(143, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 04:02:45'),
(144, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 04:06:35'),
(145, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:08:48'),
(146, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 04:09:05'),
(147, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:11:03'),
(148, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:11:06'),
(149, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 04:11:06'),
(150, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 04:11:11'),
(151, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 04:11:15'),
(152, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 04:11:23'),
(153, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 04:11:29'),
(154, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 04:13:28'),
(155, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 04:13:29'),
(156, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:13:32'),
(157, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:13:36'),
(158, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 04:13:37'),
(159, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 04:13:50'),
(160, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:14:11'),
(161, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:14:12'),
(162, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 04:14:13'),
(163, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 04:14:17'),
(164, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:14:37'),
(165, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:14:41'),
(166, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:14:41'),
(167, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 04:15:37'),
(168, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 04:16:20'),
(169, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:16:40'),
(170, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:20:34'),
(171, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:21:27'),
(172, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:21:30'),
(173, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:21:36'),
(174, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:21:40'),
(175, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:25:21'),
(176, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 04:25:24'),
(177, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 04:25:45'),
(178, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 04:26:14'),
(179, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 04:26:47'),
(180, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:26:49'),
(181, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 04:26:54'),
(182, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:27:09'),
(183, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:27:51'),
(184, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:30:18'),
(185, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:33:34'),
(186, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:34:12'),
(187, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/approval', 'Administrator', '2018-05-25 04:35:02'),
(188, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:35:02'),
(189, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:36:13'),
(190, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/approval', 'Administrator', '2018-05-25 04:36:18'),
(191, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:36:19'),
(192, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:36:23'),
(193, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:37:41'),
(194, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:38:08'),
(195, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:38:51'),
(196, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:39:05'),
(197, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:39:06'),
(198, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:39:45'),
(199, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:40:38'),
(200, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:41:56'),
(201, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 04:42:05'),
(202, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_excel/9', 'Administrator', '2018-05-25 04:43:23'),
(203, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:45:10'),
(204, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:45:17'),
(205, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 04:45:18'),
(206, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 04:49:34'),
(207, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 04:50:12'),
(208, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 04:50:40'),
(209, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:52:04'),
(210, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 04:52:14'),
(211, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 04:52:14'),
(212, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 04:52:22'),
(213, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 05:58:15'),
(214, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:20:54'),
(215, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:21:44'),
(216, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:26:03'),
(217, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:26:05'),
(218, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:26:52'),
(219, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:27:06'),
(220, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:28:18'),
(221, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 07:28:26'),
(222, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 07:30:29'),
(223, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 07:30:59'),
(224, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 07:31:00'),
(225, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 07:31:05'),
(226, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 07:40:14'),
(227, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 07:40:30'),
(228, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 07:41:25'),
(229, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 07:42:08'),
(230, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 07:45:59'),
(231, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 07:47:45'),
(232, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:48:10'),
(233, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:53:22'),
(234, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:53:39'),
(235, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:54:04'),
(236, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:55:20'),
(237, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 07:57:10'),
(238, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 08:02:00'),
(239, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:02:09'),
(240, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 08:06:28'),
(241, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:06:38'),
(242, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 08:06:47'),
(243, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 08:09:29'),
(244, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 08:09:42'),
(245, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:10:58'),
(246, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/8', 'Administrator', '2018-05-25 08:11:01'),
(247, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:11:03'),
(248, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:12:01'),
(249, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 08:14:29'),
(250, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-25 08:14:55'),
(251, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/delete/8', 'Administrator', '2018-05-25 08:15:02'),
(252, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-25 08:15:02'),
(253, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 08:15:05'),
(254, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-28 22:58:59'),
(255, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-28 22:59:04'),
(256, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-28 22:59:04'),
(257, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 22:59:12'),
(258, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 22:59:15'),
(259, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-28 22:59:20'),
(260, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 22:59:25'),
(261, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 22:59:29'),
(262, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:01:54'),
(263, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:02:44'),
(264, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:02:56'),
(265, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:03:11'),
(266, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:03:20'),
(267, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:03:55'),
(268, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:04:27'),
(269, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:04:39'),
(270, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:04:57'),
(271, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:05:35'),
(272, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:07:04'),
(273, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:08:16'),
(274, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:09:21'),
(275, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:09:52'),
(276, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:10:22'),
(277, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:10:35'),
(278, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:10:39'),
(279, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:11:16'),
(280, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:11:30'),
(281, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:12:14'),
(282, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:12:20'),
(283, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:12:46'),
(284, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:13:39'),
(285, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:14:18'),
(286, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-28 23:14:30'),
(287, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:14:34'),
(288, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:14:58'),
(289, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:17:29'),
(290, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:18:24'),
(291, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:18:59'),
(292, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:19:15'),
(293, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:19:36'),
(294, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:19:55'),
(295, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:20:06'),
(296, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:21:00'),
(297, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:51:56'),
(298, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:52:05'),
(299, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:52:09'),
(300, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:52:15'),
(301, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:52:24'),
(302, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-28 23:52:26'),
(303, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-05-28 23:52:33'),
(304, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-28 23:52:36'),
(305, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:52:43'),
(306, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:53:45'),
(307, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:54:00'),
(308, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-28 23:55:58'),
(309, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:56:03'),
(310, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-28 23:56:09'),
(311, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-28 23:58:32'),
(312, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-28 23:58:36'),
(313, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:00:20'),
(314, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:02:25'),
(315, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:02:49'),
(316, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:03:25'),
(317, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 00:06:38'),
(318, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:06:41'),
(319, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 00:08:07'),
(320, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:10:25'),
(321, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:10:44'),
(322, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:12:02'),
(323, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:12:24'),
(324, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:12:26'),
(325, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 00:12:33'),
(326, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:12:39'),
(327, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:12:43'),
(328, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:14:19'),
(329, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:14:21'),
(330, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:14:47'),
(331, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:15:05'),
(332, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:15:08'),
(333, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:15:25'),
(334, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:15:28'),
(335, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/9', 'Administrator', '2018-05-29 00:16:57'),
(336, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/9', 'Administrator', '2018-05-29 00:16:59'),
(337, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 00:17:04'),
(338, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 00:17:06'),
(339, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 00:17:15'),
(340, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 00:17:47'),
(341, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:20:58'),
(342, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 00:21:03'),
(343, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 00:41:12'),
(344, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 00:42:25'),
(345, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 00:42:33'),
(346, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 00:43:46'),
(347, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 00:44:00'),
(348, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 00:45:59'),
(349, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 00:47:14'),
(350, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 14:14:41'),
(351, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 14:20:38'),
(352, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-29 14:20:38'),
(353, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 14:21:02'),
(354, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 14:21:06'),
(355, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:21:22'),
(356, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:21:33'),
(357, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:22:03'),
(358, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:22:28'),
(359, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:22:49'),
(360, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:23:09'),
(361, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:23:17'),
(362, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-29 14:26:24'),
(363, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-29 14:26:51'),
(364, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:29:01'),
(365, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:30:22'),
(366, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:30:33'),
(367, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:31:49'),
(368, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:32:20'),
(369, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:32:57'),
(370, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:33:15'),
(371, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:33:52'),
(372, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:34:10'),
(373, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:35:26'),
(374, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:35:47'),
(375, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:36:40'),
(376, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:41:45'),
(377, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:42:22'),
(378, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:42:51'),
(379, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:43:11'),
(380, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:43:37'),
(381, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:43:46'),
(382, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:44:23'),
(383, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:45:28'),
(384, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:46:02'),
(385, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:46:12'),
(386, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:49:13'),
(387, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:49:49'),
(388, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/member/akses/2', 'Administrator', '2018-05-29 14:55:23'),
(389, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:55:40'),
(390, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-29 14:55:42'),
(391, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:55:43'),
(392, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:55:49'),
(393, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:55:51'),
(394, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:55:51'),
(395, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:55:59'),
(396, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:56:01'),
(397, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:56:24'),
(398, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:56:26'),
(399, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:56:26'),
(400, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/delete/2', 'Administrator', '2018-05-29 14:56:36'),
(401, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:56:39'),
(402, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 14:56:46'),
(403, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:57:41'),
(404, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-05-29 14:57:55'),
(405, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 14:57:59'),
(406, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:03:04'),
(407, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:03:19'),
(408, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:04:15');
INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(409, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 15:04:54'),
(410, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:06:42'),
(411, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:07:24'),
(412, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:07:39'),
(413, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:07:46'),
(414, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:08:55'),
(415, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:14:28'),
(416, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:14:47'),
(417, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:15:05'),
(418, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:16:00'),
(419, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-29 15:16:03'),
(420, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:16:07'),
(421, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:16:22'),
(422, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:16:53'),
(423, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:17:07'),
(424, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:17:54'),
(425, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:18:14'),
(426, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:19:07'),
(427, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:19:47'),
(428, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:20:27'),
(429, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:21:01'),
(430, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:21:15'),
(431, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:21:36'),
(432, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:21:58'),
(433, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:22:10'),
(434, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:22:25'),
(435, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/kategori', 'Administrator', '2018-05-29 15:24:20'),
(436, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:25:40'),
(437, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:26:01'),
(438, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:28:26'),
(439, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:28:47'),
(440, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:29:29'),
(441, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:30:08'),
(442, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:30:53'),
(443, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:31:43'),
(444, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:57:28'),
(445, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-29 15:57:36'),
(446, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:57:36'),
(447, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-29 15:58:30'),
(448, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:58:30'),
(449, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:59:50'),
(450, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-29 15:59:56'),
(451, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 15:59:56'),
(452, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 16:02:22'),
(453, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/2', 'Administrator', '2018-05-29 16:02:31'),
(454, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 16:02:31'),
(455, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/2', 'Administrator', '2018-05-29 16:04:41'),
(456, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/2', 'Administrator', '2018-05-29 16:04:44'),
(457, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 16:07:13'),
(458, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 16:07:16'),
(459, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-29 16:07:19'),
(460, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-29 16:20:25'),
(461, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-29 16:29:01'),
(462, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-29 16:31:27'),
(463, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-29 16:31:39'),
(464, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 01:06:01'),
(465, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 01:06:41'),
(466, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-05-30 01:07:02'),
(467, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 01:07:02'),
(468, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 01:07:04'),
(469, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 01:07:05'),
(470, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 01:07:08'),
(471, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-30 01:07:15'),
(472, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-05-30 01:07:18'),
(473, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 04:13:07'),
(474, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 04:18:47'),
(475, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:22:44'),
(476, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 04:22:48'),
(477, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 04:23:23'),
(478, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:25:21'),
(479, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:25:24'),
(480, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:26:44'),
(481, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:27:03'),
(482, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:27:35'),
(483, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:27:48'),
(484, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:01'),
(485, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:14'),
(486, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:19'),
(487, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 04:28:19'),
(488, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:40'),
(489, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:42'),
(490, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:28:42'),
(491, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:29:05'),
(492, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:29:10'),
(493, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:29:30'),
(494, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:29:32'),
(495, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:00'),
(496, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:02'),
(497, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:47'),
(498, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:51'),
(499, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:51'),
(500, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:30:56'),
(501, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:31:23'),
(502, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:31:26'),
(503, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:32:51'),
(504, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:32:55'),
(505, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:32:55'),
(506, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:32:59'),
(507, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 04:32:59'),
(508, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:38:39'),
(509, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:39:29'),
(510, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:40:00'),
(511, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:40:23'),
(512, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:40:53'),
(513, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 04:41:10'),
(514, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:41:11'),
(515, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:41:17'),
(516, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:41:17'),
(517, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 04:41:23'),
(518, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-05-30 04:41:23'),
(519, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/admin/dasbor', 'Member', '2018-05-30 06:18:24'),
(520, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-05-30 06:18:37'),
(521, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 06:18:38'),
(522, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 06:18:41'),
(523, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 06:18:41'),
(524, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-30 06:18:50'),
(525, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-30 06:18:56'),
(526, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-30 06:19:28'),
(527, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 06:26:50'),
(528, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:26:54'),
(529, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-05-30 06:26:58'),
(530, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 06:26:59'),
(531, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 06:27:02'),
(532, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:27:02'),
(533, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 06:27:06'),
(534, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan/tambah', 'Administrator', '2018-05-30 06:27:09'),
(535, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan/tambah', 'Administrator', '2018-05-30 06:27:38'),
(536, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 06:27:38'),
(537, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:27:58'),
(538, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 06:28:06'),
(539, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 06:28:12'),
(540, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga', 'Administrator', '2018-05-30 06:28:19'),
(541, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga/tambah', 'Administrator', '2018-05-30 06:28:21'),
(542, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga/tambah', 'Administrator', '2018-05-30 06:28:32'),
(543, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga', 'Administrator', '2018-05-30 06:28:33'),
(544, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan', 'Administrator', '2018-05-30 06:28:39'),
(545, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan/tambah', 'Administrator', '2018-05-30 06:28:42'),
(546, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan/tambah', 'Administrator', '2018-05-30 06:28:59'),
(547, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan', 'Administrator', '2018-05-30 06:29:00'),
(548, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/none', 'Administrator', '2018-05-30 06:29:01'),
(549, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:29:04'),
(550, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak', 'Administrator', '2018-05-30 06:29:16'),
(551, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/unduh', 'Administrator', '2018-05-30 06:29:19'),
(552, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/unduh', 'Administrator', '2018-05-30 06:29:22'),
(553, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:29:50'),
(554, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 06:29:55'),
(555, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 06:30:00'),
(556, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:30:07'),
(557, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi', 'Administrator', '2018-05-30 06:33:49'),
(558, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi/tambah', 'Administrator', '2018-05-30 06:33:56'),
(559, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 06:34:10'),
(560, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program/edit', 'Administrator', '2018-05-30 06:34:20'),
(561, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 06:34:42'),
(562, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi', 'Administrator', '2018-05-30 06:35:09'),
(563, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:36:18'),
(564, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 06:37:05'),
(565, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-05-30 06:37:31'),
(566, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 06:37:32'),
(567, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 06:38:45'),
(568, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 06:39:18'),
(569, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-30 06:39:19'),
(570, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-07-04 04:53:50'),
(571, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-07-04 04:53:53'),
(572, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 04:53:53'),
(573, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 04:54:16'),
(574, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 04:54:32'),
(575, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 04:54:39'),
(576, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:54:50'),
(577, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/edit/13', 'Administrator', '2018-07-04 04:55:20'),
(578, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/edit/13', 'Administrator', '2018-07-04 04:55:25'),
(579, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:55:28'),
(580, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:56:19'),
(581, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-07-04 04:56:26'),
(582, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-07-04 04:56:34'),
(583, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:56:35'),
(584, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:57:11'),
(585, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/delete/10', 'Administrator', '2018-07-04 04:57:17'),
(586, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 04:57:17'),
(587, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 04:57:37'),
(588, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 04:58:08'),
(589, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 04:58:12'),
(590, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 04:58:44'),
(591, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 04:58:45'),
(592, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 05:00:59'),
(593, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 03:03:16'),
(594, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 03:03:19'),
(595, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 03:03:20'),
(596, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 03:04:06'),
(597, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 03:35:40'),
(598, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 03:35:42'),
(599, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 03:35:42'),
(600, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 03:35:45'),
(601, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 03:35:46'),
(602, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 03:37:04'),
(603, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 03:38:45'),
(604, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 03:39:26'),
(605, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 03:40:30'),
(606, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 03:43:45'),
(607, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 03:43:47'),
(608, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 03:44:46'),
(609, '::1', 5, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-04 03:50:25'),
(610, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 03:50:25'),
(611, '::1', 0, '-', '-', 'http://localhost/dlp/admin/gelombang/tambah', '-', '2018-09-04 04:39:35'),
(612, '::1', 0, '-', '-', 'http://localhost/dlp/admin/login/logout', '-', '2018-09-04 04:39:53'),
(613, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-04 04:40:04'),
(614, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 04:40:05'),
(615, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 04:40:08'),
(616, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 04:40:09'),
(617, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 04:40:22'),
(618, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 04:40:30'),
(619, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 04:40:36'),
(620, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 04:41:07'),
(621, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 04:43:55'),
(622, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 04:47:26'),
(623, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 04:47:26'),
(624, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 04:48:02'),
(625, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 05:20:19'),
(626, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 05:40:08'),
(627, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:40:13'),
(628, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:40:28'),
(629, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:40:32'),
(630, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 05:40:34'),
(631, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:43:36'),
(632, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:43:38'),
(633, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:43:43'),
(634, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:43:46'),
(635, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:43:49'),
(636, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:43:51'),
(637, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:43:55'),
(638, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:43:56'),
(639, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 05:43:58'),
(640, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:44:02'),
(641, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 05:45:18'),
(642, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:45:21'),
(643, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 05:45:23'),
(644, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:45:25'),
(645, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 05:45:31'),
(646, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 05:45:34'),
(647, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 06:33:49'),
(648, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 06:34:29'),
(649, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 06:34:31'),
(650, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 06:35:18'),
(651, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 06:35:20'),
(652, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 06:44:04'),
(653, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 06:44:07'),
(654, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 06:44:09'),
(655, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-04 06:44:11'),
(656, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-04 07:05:55'),
(657, '::1', 1, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 03:59:56'),
(658, '::1', 1, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-24 04:00:13'),
(659, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 04:00:13'),
(660, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 04:00:19'),
(661, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 04:00:20'),
(662, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-09-24 04:00:26'),
(663, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/delete/1', 'Administrator', '2018-09-24 04:00:34'),
(664, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-09-24 04:02:50'),
(665, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 04:06:44'),
(666, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-24 04:06:53'),
(667, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:06:56'),
(668, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:08:29'),
(669, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:08:36'),
(670, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:14:33'),
(671, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/hapus/1', 'Administrator', '2018-09-24 04:14:37'),
(672, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:16:33'),
(673, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/hapus/1', 'Administrator', '2018-09-24 04:16:40'),
(674, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 04:16:40'),
(675, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 06:28:06'),
(676, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 06:28:12'),
(677, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 06:28:12'),
(678, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 06:28:21'),
(679, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 06:28:21'),
(680, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 06:32:30'),
(681, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 06:32:38'),
(682, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 06:32:39'),
(683, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-09-24 06:32:55'),
(684, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/11', 'Administrator', '2018-09-24 06:33:00'),
(685, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/edit/1', 'Administrator', '2018-09-24 06:33:04'),
(686, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:46:43'),
(687, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:46:52'),
(688, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:46:53'),
(689, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:02'),
(690, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:02'),
(691, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:09'),
(692, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:09'),
(693, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:15'),
(694, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:47:16'),
(695, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:49:51'),
(696, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 03:49:55'),
(697, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:49:56'),
(698, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/program', 'Member', '2018-10-10 03:50:01'),
(699, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/program/edit', 'Member', '2018-10-10 03:50:22'),
(700, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-10-10 03:50:32'),
(701, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-10-10 03:50:48'),
(702, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-10-10 03:51:39'),
(703, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-10-10 03:51:41'),
(704, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga', 'Member', '2018-10-10 03:51:58'),
(705, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga/tambah', 'Member', '2018-10-10 03:52:01'),
(706, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga/tambah', 'Member', '2018-10-10 03:52:16'),
(707, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga', 'Member', '2018-10-10 03:52:17'),
(708, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan', 'Member', '2018-10-10 03:52:22'),
(709, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan/tambah', 'Member', '2018-10-10 03:52:25'),
(710, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan/tambah', 'Member', '2018-10-10 03:52:49'),
(711, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan', 'Member', '2018-10-10 03:52:50'),
(712, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/none', 'Member', '2018-10-10 03:52:51'),
(713, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan', 'Member', '2018-10-10 03:52:56'),
(714, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan/tambah', 'Member', '2018-10-10 03:52:59'),
(715, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan/tambah', 'Member', '2018-10-10 03:53:37'),
(716, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan', 'Member', '2018-10-10 03:53:38'),
(717, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:53:43'),
(718, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:55:38'),
(719, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:55:48'),
(720, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:55:59'),
(721, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:56:14'),
(722, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/unduh', 'Member', '2018-10-10 03:56:17'),
(723, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:56:38'),
(724, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak', 'Member', '2018-10-10 03:57:16'),
(725, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak', 'Member', '2018-10-10 03:58:37'),
(726, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 03:59:20'),
(727, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 03:59:23'),
(728, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 04:00:51'),
(729, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 04:00:55'),
(730, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 04:01:17'),
(731, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 04:01:37'),
(732, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 04:01:39'),
(733, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 04:03:17'),
(734, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 04:03:23'),
(735, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/login/logout', 'Member', '2018-10-10 04:12:11'),
(736, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 04:12:12'),
(737, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 04:12:24'),
(738, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 04:12:28'),
(739, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 04:12:28'),
(740, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 04:12:31'),
(741, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-10 04:12:32'),
(742, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-10 04:13:15'),
(743, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 04:13:19'),
(744, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 04:13:37'),
(745, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 04:14:24'),
(746, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 04:14:48'),
(747, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 04:14:49'),
(748, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 04:14:54'),
(749, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:14:59'),
(750, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:15:03'),
(751, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:15:03'),
(752, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:15:08'),
(753, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 04:15:08'),
(754, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 04:15:13'),
(755, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 04:15:15'),
(756, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 04:17:01'),
(757, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 04:20:53'),
(758, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 04:21:38'),
(759, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/password', 'Administrator', '2018-10-10 04:21:43'),
(760, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/password', 'Administrator', '2018-10-10 04:25:38'),
(761, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 04:25:43'),
(762, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:25:48'),
(763, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:25:57'),
(764, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:26:46'),
(765, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:28:29'),
(766, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:29:40'),
(767, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:29:46'),
(768, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:30:30'),
(769, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:30:36'),
(770, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:30:48'),
(771, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:31:00'),
(772, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:31:01'),
(773, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:31:21'),
(774, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 04:31:21'),
(775, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-10-10 04:31:26'),
(776, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:31:26'),
(777, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 04:31:32'),
(778, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 04:31:33'),
(779, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 04:31:48'),
(780, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-10-10 04:31:55'),
(781, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:31:58'),
(782, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/1', 'Administrator', '2018-10-10 04:32:03'),
(783, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/1', 'Administrator', '2018-10-10 04:33:44'),
(784, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 04:40:01'),
(785, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:57:42'),
(786, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:58:13'),
(787, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:58:40'),
(788, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:59:10'),
(789, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:59:26'),
(790, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 04:59:54'),
(791, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 05:00:13'),
(792, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 05:00:48'),
(793, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 05:01:47'),
(794, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 05:01:56'),
(795, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-10 05:02:00'),
(796, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 05:02:24'),
(797, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 05:04:45'),
(798, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 05:04:53'),
(799, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 05:05:15'),
(800, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 05:05:18'),
(801, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 05:07:35'),
(802, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kampus/9', 'Administrator', '2018-10-10 05:07:48'),
(803, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 05:07:55'),
(804, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 05:08:45'),
(805, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 05:08:49'),
(806, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 05:09:54'),
(807, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 06:35:36'),
(808, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 06:35:45'),
(809, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 06:35:53'),
(810, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:35:57'),
(811, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:37:52'),
(812, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:38:21'),
(813, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:38:55'),
(814, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:39:50'),
(815, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:40:17'),
(816, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 06:40:52'),
(817, '::1', 0, '-', '-', 'http://localhost/dlp/member/cetak/cetaksaja', '-', '2018-10-10 08:50:32'),
(818, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 08:50:38'),
(819, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 08:50:41'),
(820, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 08:50:42'),
(821, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 08:50:45'),
(822, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 08:50:50'),
(823, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 21:14:18'),
(824, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 21:14:22'),
(825, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-10 21:14:23'),
(826, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:14:29'),
(827, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:14:33'),
(828, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:15:41'),
(829, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:15:43'),
(830, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-10 21:16:50'),
(831, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 21:16:56'),
(832, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 21:17:05'),
(833, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 21:18:00'),
(834, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:18:06'),
(835, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:18:11'),
(836, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-10 21:18:20'),
(837, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 21:18:20'),
(838, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:24:28'),
(839, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:24:31'),
(840, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-10 21:24:45'),
(841, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:24:45'),
(842, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:25:30'),
(843, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-10 21:25:40'),
(844, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:25:41'),
(845, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:26:43');
INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(846, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:26:47'),
(847, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:27:06'),
(848, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:28:09'),
(849, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:29:39'),
(850, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:30:36'),
(851, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-10 21:30:43'),
(852, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:31:52'),
(853, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:32:19'),
(854, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:32:39'),
(855, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:32:49'),
(856, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:32:51'),
(857, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:32:54'),
(858, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:49:37'),
(859, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-10-10 21:49:42'),
(860, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:49:50'),
(861, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:50:21'),
(862, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:50:28'),
(863, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:51:19'),
(864, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_pengusul/1', 'Administrator', '2018-10-10 21:51:24'),
(865, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:56:05'),
(866, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:56:27'),
(867, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:57:15'),
(868, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 21:57:20'),
(869, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 21:58:32'),
(870, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 21:58:33'),
(871, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 21:58:50'),
(872, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 21:58:55'),
(873, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 21:59:46'),
(874, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 21:59:51'),
(875, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 22:00:07'),
(876, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:00:16'),
(877, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:00:22'),
(878, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 22:00:48'),
(879, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:00:54'),
(880, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:03:55'),
(881, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:07:16'),
(882, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:07:36'),
(883, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:07:59'),
(884, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:09:07'),
(885, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:10:33'),
(886, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 22:15:51'),
(887, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 22:17:31'),
(888, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_keluarga/8', 'Administrator', '2018-10-10 22:20:23'),
(889, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 22:20:23'),
(890, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:23:58'),
(891, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:26:42'),
(892, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:27:33'),
(893, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:27:57'),
(894, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:28:44'),
(895, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:31:20'),
(896, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:32:32'),
(897, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:33:05'),
(898, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:33:17'),
(899, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:34:12'),
(900, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:36:08'),
(901, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:37:07'),
(902, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:37:51'),
(903, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:38:59'),
(904, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:40:50'),
(905, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:41:05'),
(906, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:42:18'),
(907, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:42:42'),
(908, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:43:26'),
(909, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:45:29'),
(910, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:45:33'),
(911, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:45:57'),
(912, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:46:31'),
(913, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:46:43'),
(914, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:47:41'),
(915, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 22:48:21'),
(916, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:51:51'),
(917, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:55:31'),
(918, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:56:18'),
(919, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:57:03'),
(920, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:57:16'),
(921, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:58:20'),
(922, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-10 23:59:13'),
(923, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:00:18'),
(924, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:00:51'),
(925, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:02:44'),
(926, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:02:59'),
(927, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:06:05'),
(928, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:07:02'),
(929, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:08:16'),
(930, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-10-11 00:08:16'),
(931, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 00:08:33'),
(932, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 00:09:05'),
(933, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 00:09:35'),
(934, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-12 06:51:58'),
(935, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-12 06:52:03'),
(936, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-12 06:52:03'),
(937, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 06:52:08'),
(938, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 06:54:23'),
(939, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 06:54:57'),
(940, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 06:55:32'),
(941, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:01:44'),
(942, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:01:56'),
(943, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:03:20'),
(944, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 07:03:24'),
(945, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:04:17'),
(946, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:04:18'),
(947, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 07:06:15'),
(948, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:07:16'),
(949, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:09:26'),
(950, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 07:09:30'),
(951, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:24:41'),
(952, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:27:31'),
(953, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:27:45'),
(954, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:29:38'),
(955, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:30:49'),
(956, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:30:49'),
(957, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:31:36'),
(958, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:31:52'),
(959, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:32:13'),
(960, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:32:15'),
(961, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:34:35'),
(962, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:35:35'),
(963, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:35:57'),
(964, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:36:10'),
(965, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:36:35'),
(966, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 07:37:13'),
(967, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:38:38'),
(968, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 07:38:44'),
(969, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 07:39:32'),
(970, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 07:39:55'),
(971, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 07:40:26'),
(972, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:43:18'),
(973, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 07:43:22'),
(974, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 07:50:54'),
(975, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-16 05:57:40'),
(976, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-04 22:35:17'),
(977, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-11-04 22:35:18'),
(978, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-04 22:35:26'),
(979, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-04 22:36:11'),
(980, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-04 22:36:12'),
(981, '::1', 5, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-11-04 22:36:18'),
(982, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-04 22:36:18'),
(983, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor/konfigurasi', '-', '2018-11-04 22:37:10'),
(984, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor/konfigurasi', '-', '2018-11-04 22:37:11'),
(985, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-11-04 22:37:15'),
(986, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-05 20:26:46'),
(987, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-05 20:26:51'),
(988, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-11-05 20:26:51'),
(989, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-11-05 20:26:57'),
(990, '::1', 1, 'andoyo', 'Admin', 'http://localhost/ltkl/admin/berita', 'Administrator', '2019-02-18 23:20:00'),
(991, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-18 23:21:31'),
(992, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-18 23:22:07'),
(993, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-18 23:23:19'),
(994, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita/tambah', '', '2019-02-18 23:23:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 03:54:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 03:59:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-01 03:59:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-01 03:59:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 03:59:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-01 03:59:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-01 04:01:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:01:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:01:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/proses', '', '2019-03-01 04:02:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:02:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:02:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/agenda', '', '2019-03-01 04:02:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-01 04:02:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-01 04:03:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-01 04:03:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 04:12:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 04:13:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 04:13:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 04:20:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 04:21:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:21:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 04:26:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 04:26:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 04:26:54'),
(0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:04:34'),
(0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:07:24'),
(0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:07:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:08:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:09:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:10:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:12:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 07:12:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:12:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 07:12:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:12:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:12:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:13:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:13:49'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:14:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:14:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:15:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:15:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 07:15:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 07:15:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 07:15:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:16:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:16:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 07:16:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:17:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:17:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:17:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:18:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:18:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:18:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 07:19:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:19:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:19:49'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 07:20:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 07:20:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:20:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 07:20:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 07:20:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 07:21:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 08:42:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-02 05:06:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-02 05:06:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-02 05:06:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-02 05:06:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-02 05:06:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:23:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:25:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:27:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:27:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:28:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/2', '', '2019-03-02 05:28:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:28:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:31:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:31:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:31:41'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:31:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 05:32:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:32:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:32:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:33:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 05:35:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 05:35:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 05:36:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:02:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:06:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:06:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:08:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:09:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:15:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:15:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:16:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:16:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:16:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:16:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:18:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:19:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:19:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:20:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:20:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:22:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:22:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:22:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:24:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:24:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:24:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:24:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:26:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:26:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 06:26:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-02 07:04:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:54:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:54:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-03 22:54:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-03 22:57:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-03 22:58:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-03 22:58:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:58:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:58:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:58:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:58:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:58:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:58:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:59:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:59:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:59:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-03 22:59:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 22:59:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 22:59:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 22:59:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:00:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:01:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:02:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:02:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:02:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:06:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:06:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:07:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:08:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:10:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:11:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:11:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:11:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:11:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:14:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:14:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:14:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/2/2', '', '2019-03-03 23:14:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/2/2', '', '2019-03-03 23:14:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:14:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:14:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:17:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-03 23:17:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-03 23:17:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-03 23:17:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:18:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:18:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:18:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:18:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:19:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:20:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:20:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-03 23:20:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-03 23:20:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-03 23:20:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:20:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:21:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:21:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:24:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:25:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:26:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:56:41'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:56:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-03 23:57:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-03 23:58:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-03 23:59:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:00:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:00:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:00:49'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:01:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:01:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:02:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:02:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:02:49'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 00:03:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 00:03:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/12', '', '2019-03-04 00:03:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 00:03:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 01:23:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 01:23:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 01:23:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 01:23:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 01:24:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 01:24:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 01:24:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-04 01:24:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-04 01:24:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 01:24:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 01:27:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 01:28:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 01:28:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 01:29:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 01:29:49'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 01:29:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 01:30:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:30:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-04 01:31:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-04 01:31:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:31:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/1', '', '2019-03-04 01:31:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/1', '', '2019-03-04 01:31:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:31:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/4', '', '2019-03-04 01:31:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/4', '', '2019-03-04 01:31:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:31:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/3', '', '2019-03-04 01:31:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/3', '', '2019-03-04 01:31:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:31:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/2', '', '2019-03-04 01:31:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/2', '', '2019-03-04 01:31:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 01:31:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:32:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/5', '', '2019-03-04 01:32:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/5', '', '2019-03-04 01:33:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:33:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/4', '', '2019-03-04 01:33:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/4', '', '2019-03-04 01:33:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:33:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/3', '', '2019-03-04 01:33:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/3', '', '2019-03-04 01:33:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:33:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/2', '', '2019-03-04 01:33:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/2', '', '2019-03-04 01:33:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:33:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/1', '', '2019-03-04 01:33:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/1', '', '2019-03-04 01:33:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 01:33:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_download', '', '2019-03-04 01:33:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 01:35:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-04 01:35:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-04 01:35:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 01:35:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 02:07:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 02:11:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 02:11:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 02:11:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 02:11:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 04:17:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 04:18:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 04:18:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 04:18:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 04:19:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 05:26:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 05:26:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 07:32:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/13', '', '2019-03-04 07:32:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 07:41:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 07:41:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 07:41:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 07:41:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 07:42:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 07:42:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/3', '', '2019-03-04 07:42:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/3', '', '2019-03-04 07:42:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 07:42:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:03:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 08:04:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/3/1', '', '2019-03-04 08:04:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/3/1', '', '2019-03-04 08:04:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-04 08:04:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:04:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/1', '', '2019-03-04 08:04:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/1', '', '2019-03-04 08:04:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:04:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 08:04:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 08:04:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:04:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:05:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:05:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 08:05:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 08:05:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 08:05:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:05:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:06:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:06:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:06:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:07:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:07:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:07:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:07:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:08:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/4/3', '', '2019-03-04 08:08:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/4/3', '', '2019-03-04 08:08:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 08:08:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:08:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/3', '', '2019-03-04 08:09:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/3', '', '2019-03-04 08:09:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:09:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 08:35:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 08:35:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 08:36:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/8', '', '2019-03-04 08:39:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/8', '', '2019-03-04 08:39:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 08:39:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-04 09:24:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download/tambah', '', '2019-03-04 09:24:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download/tambah', '', '2019-03-04 09:26:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:46:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:47:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:47:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:48:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:49:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:49:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 02:53:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:21:50');
INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:30:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:31:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:32:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:32:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:32:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:32:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:32:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:33:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:33:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 03:33:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 03:33:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 03:33:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:33:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/2', '', '2019-03-07 03:33:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/2', '', '2019-03-07 03:34:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:34:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/3', '', '2019-03-07 03:34:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/3', '', '2019-03-07 03:34:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 03:34:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:34:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:34:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:35:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:35:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:56:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:57:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:58:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:59:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:59:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 03:59:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:00:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:03:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:03:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:03:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:04:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:45:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:46:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:46:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:50:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-07 04:50:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-07 04:50:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:51:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:51:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:52:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:52:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:54:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:55:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:55:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:57:41'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:58:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:58:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:58:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:58:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:59:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:59:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:59:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 04:59:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 05:00:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 05:00:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 05:01:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 05:01:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:02:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:04:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:05:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 05:05:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 05:06:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 05:06:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:06:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:06:23'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-07 05:22:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 05:22:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-07 05:22:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:07:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-10 03:32:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:34:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:35:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:36:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:37:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:39:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:39:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:39:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:41:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:41:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:41:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:41:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:42:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 03:42:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 04:02:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 04:04:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 04:04:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 04:06:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 04:06:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 04:08:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 04:09:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 04:11:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:49:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:50:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:50:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:50:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:58:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:58:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:58:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 04:59:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:13:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:14:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:15:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:17:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:18:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:21:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:22:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:23:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:24:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:25:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:27:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:29:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:29:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:29:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:30:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:31:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter', '', '2019-03-10 05:31:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 05:31:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:31:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:31:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter', '', '2019-03-10 05:31:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:31:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:32:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:32:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:33:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:33:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:35:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:35:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:36:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:36:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:37:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:37:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:37:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:38:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 05:41:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 05:42:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 05:43:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 05:44:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:44:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/2', '', '2019-03-10 05:44:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/2', '', '2019-03-10 05:44:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:44:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/3', '', '2019-03-10 05:44:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/3', '', '2019-03-10 05:45:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:45:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 05:46:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 05:48:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:48:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 05:48:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 05:49:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:49:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:49:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/5', '', '2019-03-10 05:49:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 05:49:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:49:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:51:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:51:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/delete_parameter/7/1', '', '2019-03-10 05:51:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/delete_parameter/7/1', '', '2019-03-10 05:51:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 05:51:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 05:53:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 06:09:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 06:10:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 06:10:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 06:14:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 06:15:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 06:15:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 06:15:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 06:15:57'),
(0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 14:53:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 14:53:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 14:53:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 14:53:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 14:58:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 14:58:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:00:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:00:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:01:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:01:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:02:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:02:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:04:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:06:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:06:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:07:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:08:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:08:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:09:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:09:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:09:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:13:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:13:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:14:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:14:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:14:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:15:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:20:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:20:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:20:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:20:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:20:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:20:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:25:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:25:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:25:30'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:26:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:28:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:28:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:28:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:28:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-10 15:28:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:28:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/agenda', '', '2019-03-18 08:47:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 09:10:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-18 09:11:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 09:11:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 09:11:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-18 09:11:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 09:12:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 09:13:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 09:40:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-18 09:40:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 09:40:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-18 09:40:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 04:16:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-25 04:16:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-25 04:16:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 04:16:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-25 04:16:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-25 04:17:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 04:17:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 08:10:07'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:14:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:14:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 08:14:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/delete/1', '', '2019-03-25 08:14:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/delete/1', '', '2019-03-25 08:14:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 08:14:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:15:22'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:15:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 08:15:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:17:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 08:17:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 08:17:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 08:18:41'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-13 13:16:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-13 13:16:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-13 13:17:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/proses', '', '2019-04-13 13:17:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-13 13:17:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-13 13:18:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-13 13:25:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-04-13 13:25:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-04-13 13:26:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-04-13 13:26:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-13 13:26:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-13 13:28:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-13 13:29:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-14 00:53:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-13 08:17:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 08:17:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/video', '', '2019-05-13 08:17:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-13 08:17:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:18:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:22:45'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-05-13 08:23:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 08:23:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 08:24:41'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 08:24:56'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:48:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 08:48:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 08:49:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:49:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-05-13 08:49:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-05-13 08:50:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:50:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 08:50:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 08:50:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 08:50:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 08:51:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 08:51:50'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-13 08:51:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 09:07:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-05-16 21:03:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-16 21:03:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-16 21:04:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:04:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:04:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:05:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:06:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:15:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:15:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:15:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:15:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:15:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:23:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:28:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:29:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:30:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:30:59'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:31:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:31:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:31:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:32:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:32:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:33:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:34:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:34:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-16 21:34:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:34:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:36:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-16 21:37:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-16 21:37:01'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-07-15 06:22:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 02:30:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 02:30:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 02:31:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 02:31:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/delete/2', '', '2019-07-26 02:38:43'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 02:38:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/delete/3', '', '2019-07-26 02:38:51'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 02:38:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 02:39:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 02:40:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 02:40:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 03:20:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 03:20:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 03:20:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 03:21:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 03:21:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 03:21:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 03:21:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 03:28:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 03:28:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 03:28:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 03:28:58'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 03:29:11'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 03:29:12'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 03:36:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 03:38:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:38:16'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/4', '', '2019-07-26 03:38:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/4', '', '2019-07-26 03:38:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:38:34'),
(0, '::1', 0, '-', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:41:08'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:41:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 03:41:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:41:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:41:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:46:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Profil', '', '2019-07-26 03:46:38'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:47:32'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:48:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:49:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:50:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:50:18'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:50:53'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:51:09'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:51:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Profil', '', '2019-07-26 03:51:54'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:52:44'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:53:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:53:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:53:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:53:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:53:25'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 03:53:37'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 03:54:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:54:06'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 03:54:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 03:54:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:54:28'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 03:56:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 03:56:10'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:56:13'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:56:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:56:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:56:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:56:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:56:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:56:29'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:56:47'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:56:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:56:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:57:26'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 03:57:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:57:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:57:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 03:57:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 03:57:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-11 12:41:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:43:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/kategori_galeri', '', '2019-10-11 12:45:55'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/kategori', '', '2019-10-11 12:45:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-11 12:50:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-11 12:50:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda/tambah', '', '2019-10-11 12:50:35'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:52:17'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/delete/1', '', '2019-10-11 12:52:20'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:52:21'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-11 12:52:31'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita/delete/5', '', '2019-10-11 12:52:33'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-11 12:52:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-11 12:53:19'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:54:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-11 12:54:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-11 12:54:15'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-11 12:54:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:54:24'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/delete/2', '', '2019-10-11 12:54:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:54:27'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-11 12:54:52'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-11 12:55:02'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:55:03'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-11 12:55:36'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/galeri', '', '2019-10-11 12:55:39'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/video', '', '2019-10-11 12:55:46'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/video', '', '2019-10-11 12:56:57'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 12:57:00'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 12:57:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 12:57:34'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 12:58:04'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 12:58:05'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-11 12:58:14'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-11 12:58:42'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 13:45:40'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 13:45:48'),
(0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-11 13:45:48'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 01:45:05'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2019-10-12 01:45:09'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2019-10-12 01:45:40'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 01:45:42'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2019-10-12 01:45:57'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2019-10-12 01:46:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 01:46:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 01:46:32'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 01:46:35'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 04:56:46'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 08:53:28'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori', '', '2019-10-12 08:53:31'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 08:53:40'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 08:55:08'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 08:55:19'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 08:55:21'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 08:55:23'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2019-10-12 08:55:53'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/tambah', '', '2019-10-12 08:57:25'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/agenda', '', '2019-10-12 08:57:34'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-13 03:38:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-13 07:10:04'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 10:58:09'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2019-10-15 10:58:15'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2019-10-15 10:58:31'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 10:58:32'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2019-10-15 10:58:35'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2019-10-15 10:58:40'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 10:58:41'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-15 10:58:53'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-15 10:59:06'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-15 11:01:51'),
(0, '::1', 4, NULL, '', 'http://localhost/compro/admin/berita', '', '2019-10-15 11:39:04'),
(0, '::1', 4, NULL, '', 'http://localhost/compro/admin/berita', '', '2019-10-15 11:39:07'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-04 07:52:27'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-04 08:13:28'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-01-04 08:13:50'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-01-04 08:13:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-01-04 08:14:00'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-01-04 08:14:00'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-14 03:40:57'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-01-14 03:41:01'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-01-14 03:41:50'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-01-14 03:41:51'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 00:29:10'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:32:18'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 00:32:25'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 00:33:01'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:33:02'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 00:33:05'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 00:33:12'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:33:12'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2020-02-13 00:33:18'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2020-02-13 00:34:11'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:34:12'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2020-02-13 00:34:15'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2020-02-13 00:34:41'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:34:42'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 00:35:53'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:35:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:36:51'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 00:36:52'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:37:07'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:38:01'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 00:38:02'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:38:08');
INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 00:38:45'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:38:50'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 00:38:55'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 00:38:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 00:38:58'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 00:39:02'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 00:39:59'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:40:00'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 00:40:16'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 00:40:58'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:40:59'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 00:41:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 00:41:47'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:41:47'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 00:41:51'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 00:42:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:42:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/6', '', '2020-02-13 00:43:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:43:05'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 00:43:08'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:43:10'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 00:43:12'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 00:43:16'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 00:43:16'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 00:43:39'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-02-13 00:43:43'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-02-13 00:44:24'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-02-13 00:44:25'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 00:44:27'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 00:45:07'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-02-13 00:45:07'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 00:47:10'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/4', '', '2020-02-13 00:47:44'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/4', '', '2020-02-13 00:48:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 00:48:03'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/5', '', '2020-02-13 00:48:17'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/5', '', '2020-02-13 00:48:31'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 00:48:31'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 00:48:59'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 00:49:01'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 00:49:28'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 00:49:29'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 00:49:33'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 00:50:10'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 00:50:11'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 00:50:15'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 00:50:27'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 00:50:27'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 00:50:30'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 00:50:48'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 00:50:48'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download', '', '2020-02-13 00:50:53'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download/edit/2', '', '2020-02-13 00:50:55'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download/edit/2', '', '2020-02-13 00:51:04'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download', '', '2020-02-13 00:51:04'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:51:37'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:51:40'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:52:01'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:52:02'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:52:05'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:52:18'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:52:18'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:53:39'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:53:55'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:53:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:54:06'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 00:54:28'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 00:54:28'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 00:58:21'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun/password', '', '2020-02-13 00:58:36'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 00:58:37'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2022-11-24 10:03:24'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2022-11-24 10:05:44'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2022-11-24 10:05:50'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori', '', '2022-11-24 10:05:56'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2022-11-24 10:07:15'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2022-11-24 10:16:42'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2022-11-24 10:17:15'),
(0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2022-11-24 10:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `bahasa` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `bahasa`, `id_user`, `tanggal`) VALUES
(4, 'INSTALASI XAMPP DAN SUBLIME TEXT', 'Homepage', 'INSTALASI XAMPP DAN SUBLIME TEXT', 'A66PiaPuTZs', 1, 'Indonesia', 1, '2020-02-13 00:48:03'),
(5, 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'Homepage', 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'kFfAir_JgIU', 2, 'Indonesia', 1, '2020-02-13 00:48:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD UNIQUE KEY `kode_bagian` (`kode_bagian`),
  ADD UNIQUE KEY `nama_bagian` (`nama_bagian`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexes for table `up`
--
ALTER TABLE `up`
  ADD PRIMARY KEY (`id_up`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up`
--
ALTER TABLE `up`
  MODIFY `id_up` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
