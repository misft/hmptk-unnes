-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2019 at 05:19 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-hmptk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `user_admin` varchar(15) NOT NULL,
  `pass_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `user_admin`, `pass_admin`) VALUES
(17, 'admin', '$2y$10$1RSqhwQPzyqH.W3IzIzD4uoAXM6PNswBuv6ELRiq2ALQ4HR3kYBdC');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(5) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_sekarang` varchar(50) NOT NULL,
  `nomer_telepon` int(50) NOT NULL,
  `alamat_perusahaan` varchar(50) NOT NULL,
  `jenjang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama_lengkap`, `email`, `alamat_sekarang`, `nomer_telepon`, `alamat_perusahaan`, `jenjang`) VALUES
(3, 'Satrio Jati Wicaksono', 'satriotol69@gmail.com', 'Jl. Pandean Lamper 69 B', 2147483647, '-', '2017/S1'),
(4, 'Satrio Baru', 'sakdaodkaok', 'aoskdoakodak', 0, '', ''),
(5, 'Herman', 'asdas', 'asdasda', 0, '', ''),
(6, 'asdasd', 'asd', 'asd', 0, 'asd', ''),
(7, 'Satrio Jati Wicaksono', 'satriotol69@gmail.com', 'Jl. Pandean Lamper 69 B', 2147483647, '-', '2017/S1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_title`, `banner_image`) VALUES
(1, 'Banner 1', 'banner-1.jpg'),
(2, 'Banner 2', 'banner-2.jpg'),
(3, 'Banner 3', 'banner-3.jpg'),
(4, 'Banner 4', 'banner-4.jpg'),
(5, 'Banner 5', 'banner-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `tanggal_berita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `kategori`, `gambar`, `tanggal_berita`) VALUES
(3, 'Press Release Dua Mahasiswa Teknik Kimia Laksanakan International Collaboration', '<p>Semarang (14/06/2019). Wakil Dekan Bidang Kemahasiswaan Fakultas Teknik Universitas Negeri Semarang Melepas dua mahasiswa Teknik Kimia yang akan melaksanakan penelitian dan pengambilan data sebagai bentuk implementasi dari international Research collaboration di Universiti Teknologi Malaysia, Johor Bahru. Kedua mahasiswa tersebut adalah Kuat Noviana dan Chika Agnes Palupi mahasiswa angkatan 2016 yang merupakan mahasiswa bimbingan penelitian dari Dr. Ratna Dewi Kusumaningtyas, S.T., M.T.. International Research Collaboration merupakan salah satu inovasi dan pengembangan akademik yang diwujudkan dalam payung penelitian dosen yang melibatkan mahasiswa. Adapun proyek yang memayungi kegiatan tersebut adalah penelitian dasar (Kompetitif Nasional) yang didanai oleh DRPM Kemenristekdikti yang diusulkan oleh Dr. Ratna Dewi Kusumaningtyas, S.T.,M.T., dan Haniif Prasetiawan, S.T., M.Eng yang melibatkan Assoc. Prof. Dr. Zainul Akmar Zakaria dari Universiti Teknologi Malaysia dan Prof. Dr. G. Baskar dari St. Joseph’s Collage of Engineering sebagai mitra kerja sama. Penelitian tersebut berjudul “ Microwave Assisted Pyrolysis (MAP) Limbah Biomassa untuk Pembuatan Green Fuel Bio-Hidrogen dan Adsorben Penyimpan Bahan Bakar Gas. Hal ini merupakan pengembangan kerja sama antara Universiti Teknologi Malaysia, St. Joseph’s Collage of engineering, dan PT. Perkebunan nusantara XI.</p><p>Penelitian awal telah dilaksanakan di laboratorium Teknik Kimia UNNES yang selanjutnya di lakukan penyempurnaan di Universiti Teknologi Malaysia. Adapun pihak india memberikan fasilitas melalui skema dana riset ASEAN-India Collaborative Research and Development.</p><p>Kegiatan tersebut dilaksanakan sejak 15 Juni 2019 sampai dengan 14 juli 2019. Selama di Universiti Teknologi malaysia kedua mahasiswa tersebut menitikberatkan penelitiannya pada karakteristik bio-char yang dihasilkan dari pirolisis tempurung kelapa melalui Microwave Assisted Pyrolysis. Diharapkan dengan dikirimnya kedua mahasiswa tersebut selain dapat mengambil data penelitian dan menambah pengalaman juga dapat mempererat hubungan kerjasama anatara UNNES dan Universiti Teknologi Malaysia</p>', 'PRESS RELEASE', 'uploads/1/2019-07/download.jpg', '2019-07-15'),
(4, 'dsaf', '<p>test</p>', 'test', 'uploads/1/2019-07/monthly.png', '2019-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `chemengfair`
--

CREATE TABLE `chemengfair` (
  `id_chemeng` int(11) NOT NULL,
  `nama_chemeng` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemengfair`
--

INSERT INTO `chemengfair` (`id_chemeng`, `nama_chemeng`) VALUES
(1, 'SEMINAR NASIONAL'),
(2, 'ISO TRAINING'),
(3, 'CESA'),
(4, 'SCC'),
(5, 'CEPTION'),
(6, 'CHEMENG AWARDS');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-05-24 13:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-07-20 07:03:22', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/berita/add-save', 'Add New Data Dasra at Berita', '', 1, '2019-07-20 07:43:56', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/berita/delete/4', 'Delete data Dasra at Berita', '', 1, '2019-07-20 07:54:15', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/berita/add-save', 'Add New Data dsaf at Berita', '', 1, '2019-07-20 07:56:44', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/berita/delete-image', 'Delete the image of Press Release Dua Mahasiswa Teknik Kimia Laksanakan International Collaboration at Berita', '', 1, '2019-07-20 08:16:04', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.72', 'http://127.0.0.1:8000/admin/berita/edit-save/3', 'Update data Press Release Dua Mahasiswa Teknik Kimia Laksanakan International Collaboration at Berita', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>isi</td><td><p>Semarang (14/06/2019). Wakil Dekan Bidang Kemahasiswaan Fakultas Teknik Universitas Negeri Semarang Melepas dua mahasiswa Teknik Kimia yang akan melaksanakan penelitian dan pengambilan data sebagai bentuk implementasi dari international Research collaboration di Universiti Teknologi Malaysia, Johor Bahru. Kedua mahasiswa tersebut adalah Kuat Noviana dan Chika Agnes Palupi mahasiswa angkatan 2016 yang merupakan mahasiswa bimbingan penelitian dari Dr. Ratna Dewi Kusumaningtyas, S.T., M.T.. International Research Collaboration merupakan salah satu inovasi dan pengembangan akademik yang diwujudkan dalam payung penelitian dosen yang melibatkan mahasiswa. Adapun proyek yang memayungi kegiatan tersebut adalah penelitian dasar (Kompetitif Nasional) yang didanai oleh DRPM Kemenristekdikti yang diusulkan oleh Dr. Ratna Dewi Kusumaningtyas, S.T.,M.T., dan Haniif Prasetiawan, S.T., M.Eng yang melibatkan Assoc. Prof. Dr. Zainul Akmar Zakaria dari Universiti Teknologi Malaysia dan Prof. Dr. G. Baskar dari St. Joseph&rsquo;s Collage of Engineering sebagai mitra kerja sama. Penelitian tersebut berjudul &ldquo; Microwave Assisted Pyrolysis (MAP) Limbah Biomassa untuk Pembuatan Green Fuel Bio-Hidrogen dan Adsorben Penyimpan Bahan Bakar Gas. Hal ini merupakan pengembangan kerja sama antara Universiti Teknologi Malaysia, St. Joseph&rsquo;s Collage of engineering, dan PT. Perkebunan nusantara XI.</p><p>Penelitian awal telah dilaksanakan di laboratorium Teknik Kimia UNNES yang selanjutnya di lakukan penyempurnaan di Universiti Teknologi Malaysia. Adapun pihak india memberikan fasilitas melalui skema dana riset ASEAN-India Collaborative Research and Development.</p><p>Kegiatan tersebut dilaksanakan sejak 15 Juni 2019 sampai dengan 14 juli 2019. Selama di Universiti Teknologi malaysia kedua mahasiswa tersebut menitikberatkan penelitiannya pada karakteristik bio-char yang dihasilkan dari pirolisis tempurung kelapa melalui Microwave Assisted Pyrolysis. Diharapkan dengan dikirimnya kedua mahasiswa tersebut selain dapat mengambil data penelitian dan menambah pengalaman juga dapat mempererat hubungan kerjasama anatara UNNES dan Universiti Teknologi Malaysia</p></td><td><p>Semarang (14/06/2019). Wakil Dekan Bidang Kemahasiswaan Fakultas Teknik Universitas Negeri Semarang Melepas dua mahasiswa Teknik Kimia yang akan melaksanakan penelitian dan pengambilan data sebagai bentuk implementasi dari international Research collaboration di Universiti Teknologi Malaysia, Johor Bahru. Kedua mahasiswa tersebut adalah Kuat Noviana dan Chika Agnes Palupi mahasiswa angkatan 2016 yang merupakan mahasiswa bimbingan penelitian dari Dr. Ratna Dewi Kusumaningtyas, S.T., M.T.. International Research Collaboration merupakan salah satu inovasi dan pengembangan akademik yang diwujudkan dalam payung penelitian dosen yang melibatkan mahasiswa. Adapun proyek yang memayungi kegiatan tersebut adalah penelitian dasar (Kompetitif Nasional) yang didanai oleh DRPM Kemenristekdikti yang diusulkan oleh Dr. Ratna Dewi Kusumaningtyas, S.T.,M.T., dan Haniif Prasetiawan, S.T., M.Eng yang melibatkan Assoc. Prof. Dr. Zainul Akmar Zakaria dari Universiti Teknologi Malaysia dan Prof. Dr. G. Baskar dari St. Joseph’s Collage of Engineering sebagai mitra kerja sama. Penelitian tersebut berjudul “ Microwave Assisted Pyrolysis (MAP) Limbah Biomassa untuk Pembuatan Green Fuel Bio-Hidrogen dan Adsorben Penyimpan Bahan Bakar Gas. Hal ini merupakan pengembangan kerja sama antara Universiti Teknologi Malaysia, St. Joseph’s Collage of engineering, dan PT. Perkebunan nusantara XI.</p><p>Penelitian awal telah dilaksanakan di laboratorium Teknik Kimia UNNES yang selanjutnya di lakukan penyempurnaan di Universiti Teknologi Malaysia. Adapun pihak india memberikan fasilitas melalui skema dana riset ASEAN-India Collaborative Research and Development.</p><p>Kegiatan tersebut dilaksanakan sejak 15 Juni 2019 sampai dengan 14 juli 2019. Selama di Universiti Teknologi malaysia kedua mahasiswa tersebut menitikberatkan penelitiannya pada karakteristik bio-char yang dihasilkan dari pirolisis tempurung kelapa melalui Microwave Assisted Pyrolysis. Diharapkan dengan dikirimnya kedua mahasiswa tersebut selain dapat mengambil data penelitian dan menambah pengalaman juga dapat mempererat hubungan kerjasama anatara UNNES dan Universiti Teknologi Malaysia</p></td></tr><tr><td>gambar</td><td></td><td>uploads/1/2019-07/download.jpg</td></tr></tbody></table>', 1, '2019-07-20 08:17:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Alumni', 'Route', 'AdminAlumniControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 1, '2019-07-20 07:05:01', NULL),
(2, 'Berita', 'Route', 'AdminBeritaControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 2, '2019-07-20 07:06:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-05-24 13:11:53', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-05-24 13:11:53', NULL, NULL),
(12, 'Alumni', 'fa fa-glass', 'alumni', 'alumni', 'AdminAlumniController', 0, 0, '2019-07-20 07:05:00', NULL, NULL),
(13, 'Berita', 'fa fa-glass', 'berita', 'berita', 'AdminBeritaController', 0, 0, '2019-07-20 07:06:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-05-24 13:11:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-05-24 13:11:53', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-05-24 13:11:53', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-05-24 13:11:53', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-05-24 13:11:53', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-05-24 13:11:53', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-05-24 13:11:53', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-05-24 13:11:53', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-05-24 13:11:53', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-05-24 13:11:53', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-05-24 13:11:53', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-05-24 13:11:53', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-05-24 13:11:53', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-05-24 13:11:53', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-05-24 13:11:53', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-05-24 13:11:53', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-05-24 13:11:53', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-05-24 13:11:53', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$k1xVPcEX7TP.V6UC09jXiu3MzKWuIAMAxAoJ8kE2Tl6e9amawZHPO', 1, '2018-05-24 13:11:53', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_dept` int(11) NOT NULL,
  `nama_dept` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_dept`, `nama_dept`) VALUES
(1, 'GA'),
(2, 'HRD'),
(3, 'PRC'),
(4, 'SED'),
(5, 'RNT'),
(6, 'STD'),
(7, 'SOCDEV'),
(8, 'TECHNO');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(8, 'Beasiswa'),
(9, 'Seminar Nasional'),
(10, 'PRESS RELEASE'),
(11, 'Event'),
(12, 'CESA'),
(13, 'ISO'),
(14, 'SCC'),
(15, 'HRD'),
(16, 'PRC');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesan_pengirim`
--

CREATE TABLE `pesan_pengirim` (
  `id_pesan` int(11) NOT NULL,
  `nama_pengirim` varchar(30) NOT NULL,
  `email_pengirim` varchar(50) NOT NULL,
  `isi_pesan` longtext NOT NULL,
  `tanggal_pengirim` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_pengirim`
--

INSERT INTO `pesan_pengirim` (`id_pesan`, `nama_pengirim`, `email_pengirim`, `isi_pesan`, `tanggal_pengirim`) VALUES
(29, 'asd', 'a', 'aa', ''),
(30, '21', '21', '21', '2019/03/21.11:33:12pm'),
(31, '23', '23', '23', '2019/03/21.11:33:47pm'),
(32, '11', '11', 'aaaa', '2019/03/24.08:47:03am'),
(33, 'Aziz', 'aziz@gmail.com', 'Webnya sangat bagus', '2019/03/25.12:10:54pm'),
(34, 'SAtrio', 'satriotol69@gmail.com', 'webnya bagus bangsat\r\n', '2019/03/26.01:07:37pm'),
(35, 'Satrio', 'satriotol69@gmail.com', 'webnya sangat bagus bangsat, buatnya dimana ya ?', '2019/04/01.08:02:27pm'),
(36, 'asep', 'cvvvvvvvvvvvvvvvvvvv', 'eeeeeeeeeeeeeeeeeeeeee', '2019/04/03.02:53:03pm'),
(37, 'Hai', 'JEMbut', 'jembut', '2019/04/19.09:17:09pm');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(1, 'Selamat Datang', 'Himpunan Mahasiswa Profesi Teknik Kimia', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_advokasi`
--

CREATE TABLE `slide_advokasi` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_advokasi`
--

INSERT INTO `slide_advokasi` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_ception`
--

CREATE TABLE `slide_ception` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_ception`
--

INSERT INTO `slide_ception` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(14, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_cerc`
--

CREATE TABLE `slide_cerc` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_cerc`
--

INSERT INTO `slide_cerc` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_cesa`
--

CREATE TABLE `slide_cesa` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_cesa`
--

INSERT INTO `slide_cesa` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(4, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_chemist`
--

CREATE TABLE `slide_chemist` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_chemist`
--

INSERT INTO `slide_chemist` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_event`
--

CREATE TABLE `slide_event` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_event`
--

INSERT INTO `slide_event` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_ga`
--

CREATE TABLE `slide_ga` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_ga`
--

INSERT INTO `slide_ga` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(3, 'ga', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_hrd`
--

CREATE TABLE `slide_hrd` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_hrd`
--

INSERT INTO `slide_hrd` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_iso`
--

CREATE TABLE `slide_iso` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_iso`
--

INSERT INTO `slide_iso` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(14, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_ma`
--

CREATE TABLE `slide_ma` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_ma`
--

INSERT INTO `slide_ma` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(15, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_materi`
--

CREATE TABLE `slide_materi` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_materi`
--

INSERT INTO `slide_materi` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_oprec`
--

CREATE TABLE `slide_oprec` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_oprec`
--

INSERT INTO `slide_oprec` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_prc`
--

CREATE TABLE `slide_prc` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_prc`
--

INSERT INTO `slide_prc` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(2, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_press`
--

CREATE TABLE `slide_press` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_press`
--

INSERT INTO `slide_press` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(7, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_rnt`
--

CREATE TABLE `slide_rnt` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_rnt`
--

INSERT INTO `slide_rnt` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(1, 'RNT', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_s2c`
--

CREATE TABLE `slide_s2c` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_s2c`
--

INSERT INTO `slide_s2c` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(18, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_sed`
--

CREATE TABLE `slide_sed` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_sed`
--

INSERT INTO `slide_sed` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(1, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_semnas`
--

CREATE TABLE `slide_semnas` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_semnas`
--

INSERT INTO `slide_semnas` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(14, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_socdev`
--

CREATE TABLE `slide_socdev` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_socdev`
--

INSERT INTO `slide_socdev` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(1, 'SOCDEV', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_std`
--

CREATE TABLE `slide_std` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_std`
--

INSERT INTO `slide_std` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(1, 'STD', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_store`
--

CREATE TABLE `slide_store` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_store`
--

INSERT INTO `slide_store` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(5, '', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_techno`
--

CREATE TABLE `slide_techno` (
  `id_slide` int(255) NOT NULL,
  `main_judul` varchar(255) NOT NULL,
  `sub_judul` varchar(255) NOT NULL,
  `slide_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_techno`
--

INSERT INTO `slide_techno` (`id_slide`, `main_judul`, `sub_judul`, `slide_gambar`) VALUES
(2, 'techno', '', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subberita`
--

CREATE TABLE `subberita` (
  `id_subberita` int(11) NOT NULL,
  `judul_sub` varchar(100) NOT NULL,
  `subjudul_sub` varchar(100) NOT NULL,
  `link_sub` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subberita`
--

INSERT INTO `subberita` (`id_subberita`, `judul_sub`, `subjudul_sub`, `link_sub`) VALUES
(15, 'BUKU PANDUAN MAHASISWA TEKNIK KIMIA 2017', 'BUKU PANDUAN MAHASISWA TEKNIK KIMIA 2017', 'https://drive.google.com/file/d/0B-pW1rU-kU36MHBpMlI3UWszVEE/view'),
(20, 'KABINET PRESTASI HMPTK UNNES 2018', 'Logo Kabinet Inovasi HMPTK UNNES 2018 Filosofi Logo Kabinet Prestasi HMPTK UNNES 2018 1      1.     ', 'http://www.himprotekkimunnes.com/2018/03/kabinet-prestasi-hmptk-unnes-2018.html'),
(21, 'BUKU PANDUAN MAHASISWA TEKNIK KIMIA 2017', 'BUKU PANDUAN MAHASISWA TEKNIK KIMIA 2017', 'https://drive.google.com/file/d/0B-pW1rU-kU36MHBpMlI3UWszVEE/view');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `nama_video` varchar(50) NOT NULL,
  `link_video` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `nama_video`, `link_video`) VALUES
(13, '1643', 'https://www.youtube.com/embed/IAAgbPqZ-ME'),
(15, 'unnes', 'https://www.youtube.com/embed/9FzIEJNcQaA'),
(21, 'https://www.youtube.com/embed/tgbNymZ7vqY', 'https://www.youtube.com/embed/tgbNymZ7vqY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`kategori`);

--
-- Indexes for table `chemengfair`
--
ALTER TABLE `chemengfair`
  ADD PRIMARY KEY (`id_chemeng`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_pengirim`
--
ALTER TABLE `pesan_pengirim`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_advokasi`
--
ALTER TABLE `slide_advokasi`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_ception`
--
ALTER TABLE `slide_ception`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_cerc`
--
ALTER TABLE `slide_cerc`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_cesa`
--
ALTER TABLE `slide_cesa`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_chemist`
--
ALTER TABLE `slide_chemist`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_event`
--
ALTER TABLE `slide_event`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_ga`
--
ALTER TABLE `slide_ga`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_hrd`
--
ALTER TABLE `slide_hrd`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_iso`
--
ALTER TABLE `slide_iso`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_ma`
--
ALTER TABLE `slide_ma`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_materi`
--
ALTER TABLE `slide_materi`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_oprec`
--
ALTER TABLE `slide_oprec`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_prc`
--
ALTER TABLE `slide_prc`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_press`
--
ALTER TABLE `slide_press`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_rnt`
--
ALTER TABLE `slide_rnt`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_s2c`
--
ALTER TABLE `slide_s2c`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_sed`
--
ALTER TABLE `slide_sed`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_semnas`
--
ALTER TABLE `slide_semnas`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_socdev`
--
ALTER TABLE `slide_socdev`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_std`
--
ALTER TABLE `slide_std`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_store`
--
ALTER TABLE `slide_store`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `slide_techno`
--
ALTER TABLE `slide_techno`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `subberita`
--
ALTER TABLE `subberita`
  ADD PRIMARY KEY (`id_subberita`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chemengfair`
--
ALTER TABLE `chemengfair`
  MODIFY `id_chemeng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pesan_pengirim`
--
ALTER TABLE `pesan_pengirim`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_advokasi`
--
ALTER TABLE `slide_advokasi`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_ception`
--
ALTER TABLE `slide_ception`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slide_cerc`
--
ALTER TABLE `slide_cerc`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_cesa`
--
ALTER TABLE `slide_cesa`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slide_chemist`
--
ALTER TABLE `slide_chemist`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_event`
--
ALTER TABLE `slide_event`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_ga`
--
ALTER TABLE `slide_ga`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide_hrd`
--
ALTER TABLE `slide_hrd`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_iso`
--
ALTER TABLE `slide_iso`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slide_ma`
--
ALTER TABLE `slide_ma`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slide_materi`
--
ALTER TABLE `slide_materi`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_oprec`
--
ALTER TABLE `slide_oprec`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_prc`
--
ALTER TABLE `slide_prc`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide_press`
--
ALTER TABLE `slide_press`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slide_rnt`
--
ALTER TABLE `slide_rnt`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_s2c`
--
ALTER TABLE `slide_s2c`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slide_sed`
--
ALTER TABLE `slide_sed`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_semnas`
--
ALTER TABLE `slide_semnas`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slide_socdev`
--
ALTER TABLE `slide_socdev`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_std`
--
ALTER TABLE `slide_std`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_store`
--
ALTER TABLE `slide_store`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slide_techno`
--
ALTER TABLE `slide_techno`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subberita`
--
ALTER TABLE `subberita`
  MODIFY `id_subberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
