-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 12:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `id` int(11) NOT NULL,
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
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
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
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
('root', '[{"db":"udis","table":"inventory"},{"db":"udis","table":"student"},{"db":"udis","table":"219cs319_sem2"},{"db":"udis","table":"219cs319_sem1"},{"db":"udis","table":"219cs87_account"},{"db":"phpmyadmin","table":"pma__history"}]');

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
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-06-16 10:28:33', '{"Server\\/hide_db":"","Server\\/only_db":"","collation_connection":"utf8mb4_unicode_ci"}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `udis`
--
CREATE DATABASE IF NOT EXISTS `udis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `udis`;

-- --------------------------------------------------------

--
-- Table structure for table `119cs307_account`
--

CREATE TABLE `119cs307_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs307_account`
--

INSERT INTO `119cs307_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('201', '-', 'Credited during joining of Institute', 201);

-- --------------------------------------------------------

--
-- Table structure for table `119cs307_sem1`
--

CREATE TABLE `119cs307_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs307_sem1`
--

INSERT INTO `119cs307_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C', '-', '-', '-'),
('C++', '-', '-', '-'),
('Data Structures And Algorithms', '-', '-', '-'),
('Operating Systems Design', '-', '-', '-'),
('Data Communication', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `119cs353_account`
--

CREATE TABLE `119cs353_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs353_account`
--

INSERT INTO `119cs353_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('50000', '-', 'Credited during joining of Institute', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `119cs353_sem1`
--

CREATE TABLE `119cs353_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs353_sem1`
--

INSERT INTO `119cs353_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C', '-', '-', '-'),
('Data Structures And Algorithms', '-', '-', '-'),
('Database Management Systems', '-', '-', '-'),
('Operating Systems Design', '-', '-', '-'),
('Data Communication', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `119cs455_account`
--

CREATE TABLE `119cs455_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs455_account`
--

INSERT INTO `119cs455_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('252', '-', 'Credited during joining of Institute', 252);

-- --------------------------------------------------------

--
-- Table structure for table `119cs518_account`
--

CREATE TABLE `119cs518_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs518_account`
--

INSERT INTO `119cs518_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('52000', '-', 'Credited during joining of Institute', 52000);

-- --------------------------------------------------------

--
-- Table structure for table `119cs518_sem1`
--

CREATE TABLE `119cs518_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `119cs518_sem1`
--

INSERT INTO `119cs518_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C', '80', 'No', 'B'),
('Data Structures And Algorithms', '90', 'No', 'A'),
('Database Management Systems', '80', 'No', 'B'),
('Operating Systems Design', '85', 'No', 'A'),
('Data Communication', '90', 'No', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `219cs319_account`
--

CREATE TABLE `219cs319_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs319_account`
--

INSERT INTO `219cs319_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('500000', '-', 'Credited during joining of Institute', 500000),
('-', '2500', 'mess', 497500);

-- --------------------------------------------------------

--
-- Table structure for table `219cs319_sem1`
--

CREATE TABLE `219cs319_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs319_sem1`
--

INSERT INTO `219cs319_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C++', '70', 'No', 'C'),
('Data Structures And Algorithms', '70', 'No', 'C'),
('Database Management Systems', '80', 'No', 'B'),
('Data Communication', '90', 'No', 'A'),
('Information Theory And Coding', '60', 'No', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `219cs319_sem2`
--

CREATE TABLE `219cs319_sem2` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs319_sem2`
--

INSERT INTO `219cs319_sem2` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C', '-', '-', '-'),
('Digital Electronics', '-', '-', '-'),
('Analog Electronics', '-', '-', '-'),
('Operating Systems Design', '-', '-', '-'),
('Computer Graphics', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `219cs87_account`
--

CREATE TABLE `219cs87_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs87_account`
--

INSERT INTO `219cs87_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('5655', '-', 'Credited during joining of Institute', 5655);

-- --------------------------------------------------------

--
-- Table structure for table `219cs87_sem1`
--

CREATE TABLE `219cs87_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs87_sem1`
--

INSERT INTO `219cs87_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('Data Structures And Algorithms', '-', '-', '-'),
('Database Management Systems', '-', '-', '-'),
('Digital Electronics', '-', '-', '-'),
('Operating Systems Design', '-', '-', '-'),
('Data Communication', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_account`
--

CREATE TABLE `219cs885_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_account`
--

INSERT INTO `219cs885_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('34', '-', 'Credited during joining of Institute', 34),
('43', '-', 'xyz', 77),
('-', '22', 'Eaten In Canteen', 55),
('234', '-', 'Stolen from Department LOL!', 311);

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_sem1`
--

CREATE TABLE `219cs885_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_sem1`
--

INSERT INTO `219cs885_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C++', '90', 'No', 'A'),
('Data Structures And Algorithms', '45', 'No', 'P'),
('Digital Electronics', '59', 'No', 'D'),
('Analog Electronics', '84', 'No', 'A'),
('Operating Systems Design', '75', 'No', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `219cs885_sem2`
--

CREATE TABLE `219cs885_sem2` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `219cs885_sem2`
--

INSERT INTO `219cs885_sem2` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('Data Structures And Algorithms', '-', '-', '-'),
('Digital Electronics', '-', '-', '-'),
('Analog Electronics', '-', '-', '-'),
('Information Theory And Coding', '-', '-', '-'),
('Computer Graphics', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `719cs691_account`
--

CREATE TABLE `719cs691_account` (
  `Credit` varchar(255) DEFAULT NULL,
  `Expense` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `719cs691_account`
--

INSERT INTO `719cs691_account` (`Credit`, `Expense`, `Details`, `Amount`) VALUES
('600', '-', 'Credited during joining of Institute', 600),
('-', '241', 'Spent in shopping', 359);

-- --------------------------------------------------------

--
-- Table structure for table `719cs691_sem1`
--

CREATE TABLE `719cs691_sem1` (
  `Course` varchar(255) DEFAULT NULL,
  `Marks` varchar(255) DEFAULT NULL,
  `Backlog` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `719cs691_sem1`
--

INSERT INTO `719cs691_sem1` (`Course`, `Marks`, `Backlog`, `Grade`) VALUES
('C++', '90', 'No', 'A'),
('Digital Electronics', '45', 'No', 'P'),
('Operating Systems Design', '34', 'No', 'P'),
('Information Theory And Coding', '84', 'No', 'A'),
('Computer Graphics', '75', 'No', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Credit` varchar(20) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Details` varchar(255) NOT NULL,
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Credit`, `Debit`, `Details`, `Amount`) VALUES
('200000', '-', 'Credited by Avengers', '200000'),
('500000', '-', 'Funds raised using e', '700000'),
('500000', '-', 'Funds raised using D', '1200000'),
('1000000', '-', 'Credited by King TCh', '2200000'),
('-', '400000', 'Debited for Books in', '1800000'),
('-', '100000', 'Credited by Furnitur', '1700000'),
('300000', '-', 'Credited by Tony Sta', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `gradeinfo`
--

CREATE TABLE `gradeinfo` (
  `MarksRange` varchar(10) NOT NULL,
  `Grade` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gradeinfo`
--

INSERT INTO `gradeinfo` (`MarksRange`, `Grade`, `num`) VALUES
('null', '2', '1'),
('null', '2', '2'),
('null', '2', '3'),
('null', '2', '4'),
('null', '2', '5'),
('null', 'null', '6'),
('null', 'null', '7');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Furniture` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Furniture`, `Location`, `Quantity`) VALUES
('Xyz500', 'CS-230', '20'),
('Xyz501', 'CS-231', '25'),
('Xyz504', 'SWLab-1', '45'),
('Xyz505', 'SWLab-2', '55'),
('Xyz506', 'ConferenceHall', '105'),
('Xyz507', 'SeminarRoom', '50'),
('Xyz508', 'CS-234', '34');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Name` varchar(20) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Name`, `Faculty`, `Status`, `Duration`) VALUES
('RP-1', 'DPM', 'Running', '2months'),
('RP-2', 'RKM', 'Running', '1month'),
('RP-3', 'SB', 'Completed', '2years'),
('RP-4', 'AKT', 'Upcoming', '5months'),
('RP-5', 'SP', 'Running', '10months');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Gender` text NOT NULL,
  `GuardiansName` text NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Programme` varchar(200) NOT NULL,
  `RollNumber` varchar(10) NOT NULL,
  `Rand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`FirstName`, `LastName`, `Address`, `Gender`, `GuardiansName`, `Mobile`, `Programme`, `RollNumber`, `Rand`) VALUES
('mohit', 'kumar', 'sxxxxxxxxxxxx', 'Male', 'rohit kumar', 5698, 'M.Tech', '219CS885', 885),
('Cypher', 'Stone', 'Some Address', 'Male', 'Rilee Stone', 86542, 'Dual Deg.', '719CS691', 691),
('raj', 'gupta', 'rourkela', 'Male', 'fadfadf', 1111, 'B.Tech', '119CS307', 307),
('Raushan', 'Gupta', 'rour', 'Male', 'Surendra', 55555, 'M.Tech', '219CS319', 319),
('Raj', 'Kapoor', 'Rourkela', 'Male', 'Surendra Gupta', 63334, 'B.Tech', '119CS353', 353),
('Ram', 'Kapoor', 'Rourkela', 'Male', 'Shyam Kapoor', 3666, 'B.Tech', '119CS455', 455),
('Shyam', 'Kapoor', 'mumbai', 'Male', 'Ram', 366555, 'B.Tech', '119CS518', 518);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
