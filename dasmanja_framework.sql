-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 12:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1018471_dasmanjaV2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_activated` int(1) DEFAULT NULL,
  `alias` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `is_activated`, `alias`) VALUES
(1, 'mugiachoir', '$2y$10$.ele9G5aJ0AcrInPJmQ3iuJ5tMWCEmZtZ03uROWNzf09UfO7CaHmy', 1, 'gandalf'),
(2, 'rijanlibriyan', '$2y$10$Mz9VKYeTeA3YC7MtQNJRFuHt39R6Xy5CeyZ9lbNvhBxVl7f.UDnoW', 1, 'aragorn'),
(3, 'thoriqaziz', '$2y$10$T7hMziK/TsUzNaTwo1zIkucz0N7rpPvqVIg23Xcq8V3S.JilN2qyO', 1, 'frodo');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kegiatan`
--

CREATE TABLE `daftar_kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_kegiatan`
--

INSERT INTO `daftar_kegiatan` (`id`, `nama`, `deskripsi`, `gambar`, `kategori`) VALUES
(1, 'Pertemuan Dewan Ambalan', 'Dewan Ambalan melakukan pertemuan wajib dua kali dalam seminggu. Pada pertemuan ini kami membahas kelangsungan kegiatan di Pangkalan dalam minggu tersebut,\r\n        serta mempersiapkan kegiatan selanjutnya yang akan dilaksanakan.', 'latihan.jpg', 'internal'),
(2, 'Latihan Mingguan', 'Setiap Pramuka di Pangkalan SMAN 1 Jalancagak menjalankan latihan satu kali dalam seminggu,\r\n          berbagai materi kepramukaan disampaikan dengan cara sebaik dan semenarik mungkin.', 'wajib.jpg', 'internal'),
(3, 'Lomba Variasi Baris-Berbaris', 'Ini adalah program kerja tahunan kami, untuk melaksanakan lomba LVBB antar kelas di SMAN 1 Jalancagak.\r\n        Kegiatan ini bertujuan untuk memberikan pengalaman menarik dalam latihan pramuka kepada seluruh Pramuka di Pangkalan SMAN 1 Jalancagak.', 'lvbb.jpg', 'internal'),
(4, 'Lomba Giat Tangkas Medan', 'LGTM juga merupakan kegiatan tahunan kami yang melibatkan seluruh Pramuka di Pangkalan SMAN 1 Jalancagak, kegiatan yang berisi berbagai jenis lomba\r\n        dan menekankan teknik kepramukaan ini bertujuan sebagai ajang evaluasi kegiatan latihan Pramuka selama setahun.', 'lgtm.jpg', 'internal'),
(5, 'Pengenalan Gerakan Pramuka', 'Setiap tahunnya pada masa penerimaan siswa baru, kami menyelenggarakan kegiatan Pengenalan Gerakan Pramuka\r\n          untuk memperkenalkan dunia kepramukaan di SMAN 1 Jalancagak kepada para tamu Ambalan, dan memberikan bekal untuk melanjutkan kegiatan kepramukaan seterusnya.', 'pgp2.jpg', 'internal'),
(6, 'Pelantikan Gabungan', 'Sebelum resmi menjabat sebagai Dewan Ambalan, terlebih dahulu melaksanakan pelantikan gabungan, dengan calon-calon\r\n           pengurus ekskul lainnya.', 'ekskul.jpg', 'internal'),
(7, 'Kenaikan Tingkat', 'Setiap Pramuka Penegak berhak melakukan pengisian SKU, dan setelah dapat menyelesaikannya\r\n          jika telah dianggap siap, ia dapat naik tingkat menjadi Penegak Bantara atau Penegak Laksana.', 'bantara.jpg', 'internal'),
(8, 'Scout Sport', 'Melakukan kegiatan olahraga bersama, seperti futsal dan lari, untuk membangun tubuh dan jiwa yang sehat, serta mempererat silaturahmi antar anggota.', 'futsal.jpg', 'hiburan'),
(9, 'Scout Mamayu', 'Kami selalu melakukan kegiatan makan bersama, atau biasa disebut dengan istilah \"ngaliwet\", kegiatan sederhana namun sangat terasa manfaatnya terhadap\r\n          keakraban antar anggota.', 'liwet.jpg', 'hiburan'),
(10, 'Scout Holiday', 'Agar hubungan tetap terjaga saat waktu liburan sekolah, kami biasa melaksanakan liburan bersama, dengan jalan-jalan ke tempat-tempat yang masih bernuansa alami.', 'cileat.jpg', 'hiburan'),
(11, 'Muncak', 'Mungkin kegiatan refreshing yang paling ditunggu-tunggu, yang memiliki kesan yang sangat hebat, serta menyajikan pengalaman yang tak tergantikan,\r\n          yaitu mendaki Gunung atau Muncak.', 'muncak.jpg', 'hiburan'),
(12, 'Raimuna Ranting', 'Pertemuan Pramuka Penegak-Pandega yang biasanya dilaksanakan setiap tahun, di Kwartir Ranting masing-masing, dengan jangka waktu 3-5 hari.', 'rairan.jpg', 'perkemahan'),
(13, 'Raimuna Cabang', 'Pertemuan Pramuka Penegak-Pandega yang dilaksanakan di Kwartir Cabang setiap 2 tahun sekali, yang mencakup setiap gugus depan yang ada di Kwartir Cabang tersebut.', 'raicab.jpg', 'perkemahan'),
(14, 'Raimuna Daerah', 'Pertemuan Pramuka Penegak-Pandega yang dilaksanakan di Kwartir Daerah setiap 3 tahun sekali, biasanya dibagi menjadi kontingen per Kwartir Ranting.', 'raida.jpg', 'perkemahan'),
(15, 'Raimuna Nasional', 'Pertemuan Pramuka Penegak-Pandega yang dilaksanakan di Kwartir Nasional setiap 4 tahun sekali, biasanya dibagi menjadi kontingen per Kwartir Cabang.', 'rainas.jpg', 'perkemahan'),
(16, 'Perkemahan Wirakarya', 'Pertemuan pramuka penegak atau pandega dalam rangka ikut serta dalam kegiatan pembangunan masyarakat.', 'pw.jpg', 'perkemahan'),
(17, 'Perkemahan Saka', 'Perkemahan yang dilaksanakan oleh Satuan Karya tertentu, yang bertujuan untuk memberikan ilmu serta skill yang berkaitan dengan Saka tersebut.', 'saka.jpg', 'perkemahan'),
(18, 'Kata, Seni dan Olahraga (Kanira)', 'Walaupun Kanira tidak harus berupa perkemahan, namun cukup sering dilaksanakan pada saat kegiatan perkemahan pula,\r\n           dimana para pramuka akan berlomba dalam bidang kata, seni, dan olahraga.', 'kanira.jpg', 'perkemahan'),
(19, 'GSS XIII Tingkat Nasional 2017', 'Dalam kegiatan yang dilaksanakan di Kota Sumedang ini, kami hanya mengirimkan 1 sangga, dan\r\n            berhasil mendapatkan Juara 2 Ragam Sandi Penegak Putra, dan Juara Harapan 2 Madya LJK Penegak Putra.', 'lomba.jpg', 'perlombaan'),
(20, 'Festival FU2P UPI Purwakarta 2017 Tingkat Jawa Barat', 'Pada kegiatan ini kami berhasil mendapatkan Juara Pioneering Terkreatif,\r\n         Dengan mengusung tema \"Merak Beger\". Juara 2 LKBB, Juara 3 Tari Komando, Juara Pangkalan Terfavorit, dan Juara Harapan 3', 'pioneering.jpg', 'perlombaan'),
(21, 'LKP XI Tingkat Nasional STKIP Sebelas April Sumedang 2018', 'Dalam kegiatan ini kami mengirimkan 1 sangga putra dan 1 sangga putri, dan berhasil mendapatkan Juara Harapan 1 LJK Putri.', 'ljk.jpg', 'perlombaan'),
(22, 'Ramadhan Ceria Kwarcab Subang 2018', 'Pada kegiatan yang diselenggarakan oleh DKC Subang ini, kami berhasil meraih\r\n          Juara 1 Ikhwan-Akhwat Pramuka, Juara 2 Pidato Putri, dan Juara 3 Pidato Putra.', 'ceria.jpg', 'perlombaan'),
(23, 'Lomba Kabaret Tingkat Kabupaten Sumedang dan Sekitarnya STKIP Sebelas April 2016', 'Pada kegiatan ini kami mengusung Judul \"Kabayan Dagang Ganas\", dan berhasil mendapatkan Juara Umum 3.', 'kabaret.jpg', 'perlombaan');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_materi`
--

CREATE TABLE `daftar_materi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `quote` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_materi`
--

INSERT INTO `daftar_materi` (`id`, `nama`, `deskripsi`, `gambar`, `quote`) VALUES
(1, 'Sejarah Kepanduan Dunia', '<p align=”justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nHallo kakak-kakak pramuka, kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit materi tentang Sejarah Kepanduan Dunia. Apakah kakak-kakak sudah tahu tentang materi ini?  Tentunya materi ini sudah tidak asing lagi bukan? Nah, untuk lebih jelasnya, simak pembahasan di bawah ini. <br><br>\r\n\r\n<strong>KEPANDUAN BERMULA</strong><br>\r\nKepanduan dunia bermula ketika Baden-Powell mengadakan perkemahan eksperimental di Pulau Brownsea, Inggris. Ide untuk mengadakan perkemahan ini muncul ketika Baden-Powell mempertahankan kota Mafeking di Afrika Selatan pada perang Boer II. Pada saat itu Baden-Powell dibantu oleh para pemuda yang dilatih menjadi Tentara Sukarela untuk melawan Para Tentara Boer, tentara ini kini dikenal sebagai Kadet Mafeking. Keberhasilan para pemuda itu menumbuhkan ide dalam pikiran BP yang kelak akan berkembang menjadi Gerakan Kepanduan.<br><br>\r\n<strong>KEPANDUAN MULAI BERKEMBANG PESAT</strong><br>\r\nPada Tahun 1899 Baden-Powell membuat buku Aids To Scouting yang dijadikan buku panduan para Scout muda pada saat itu. Lalu untuk menguji ide-ide di buku tersebut, Baden-Powell mengadakan perkemahan selama 9 hari pertama bulan agustus pada 1907 di Pulau Brownsea dengan 20 pemuda (10 dari Boys Brigade, dan 10 dari sekolah umum), selain itu keponakan BP yang masih berumur 9 tahun bernama Donald Baden-Powell, dan putra dari Baron Rodney yaitu Simon Rodney juga ikut menghadiri perkemahaan di Pulau Brownsea itu.. Selama berkemah Baden-Powell mencatat pengalaman nya setiap hari, pada akhir perkemahan catatn nya itu dibukukan dalam sebuah buku yang berjudul Scouting For Boys. Buku itu dijadikan petunjuk ide baru untuk organisasi pemuda pada saat itu. Berkat kesuksesan buku Scouting For Boys Baden Powell mendirikan organisasi Boys Scout. Organisasi itu diperuntukan untuk anak laki laki usia penggalang. Namun karena besarnya pula minat para kaum perempuan dalam mengikuti organisasi tersebut. Akhirnya dengan bantuan Adik Baden-Powell yaitu Agnes, ia mendirikan organisasi kepanduan putri dengan nama Rosebuds pada 1910, tapi setelah itu berganti nama menjadi Girl Guides pada tahun 1914. Dan Agnes ditunjuk sebagai Presiden Organisasi Kepanduan Putri yang pertama. Tahun 1917 Agnes mundur dan digantikan oleh Olave Baden-Powell.<br><br>\r\n<strong>Beberapa organisasi yang didirikan Baden-Powell :</strong><br>\r\n<ol>\r\n<li>Tahun 1908 mendirikan organisasi Boy Scout, organisasi untuk para pandu putra usia penggalang.\r\n<li>Tahun 1912 dengan bantuan adiknya Agnes, mendirikan organisasi Girls Guides, organisasi untuk para pandu putri usia penggalang.\r\n<li>Tahun 1916 mendirikan organisasi CUB (anak serigala), organisasi ini untuk para pandu usia siaga. Dengan petunjuk buku The Jungle Book karya Rudyard Kiplling.\r\n<li>Tahun 1918 mendirikan organisasi Rover Scout, organisasi untuk para pandu usia Penegak. Yang kemudian pada tahun 1922 Baden-Powell menerbitkan buku yang berjudul Rover Scout. Buku itulah yang kemudian dijadikan sebagai petunjuk organisasi ini.\r\n</ol>\r\n<p align=”justify>\r\n\r\nTahun 1919 Baden-Powell membeli taman yang ia beri nama Gilwell Park, taman tersebut dijadikan sebagai tempat latihan. Pada tahun 1920 diadakan jabore dunia pertama di Olympia Hall, London. Jambore itu diikuti kurang lebih ada 27 negara. Dan pada hari terakhir jambore itu, tepatnya 6 agustus 1920 juga Baden-Powell di anugerahi sebagai Bapak Pandu Sedunia.<br><br>\r\nSejak tahun 1920 dibentuklah kantor Biro Kepanduan Dunia yang bertempat di London. Namun pada tahun 1958 dipindahkan ke Ottawa, Kanada. Lalu pada tahun 1968 dipindahkan lagi ke Jenewa, Swiss, dan sekarang kantor Biro Kepanduan Dunia sudah tetap berada disana. Lalu padatahun 1939 Baden-Powell dan istrinya memutuskan untuk pindah ke Nyeri, Kenya. Hingga pada tangga 8 Januari 1941 Baden-Powell mengembuskan nafas terakhirnya disana. Dan dimakankan di pemakaman St. Peter Nyeri.<br><br>\r\n\r\nItulah yang dapat kami sampaikan, mohon maaf jika terdapat banyak kekurangan dan kekeliruan.</p>\r\n', 'skd.jpg', '<i>\"The Spirit is there in every boy, it has to be discovered and brought to light.\"</i><br>-Robert Baden-Powell'),
(2, 'Sejarah Gerakan Pramuka', '<p align=”justify”>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak semua kali ini kami akan menjelaskan sedikit tentang Sejarah Gerakan Pramuka di Indonesia.<br><br>\r\n<strong>YUK MARI MENGULAS KEMBALI SEJARAH KEPANDUAN DI INDONESIA!!!</strong> <br>\r\n     Sejarah pramuka di Indonesia berawal dari Gagasan Baden PowelI yang merupakan Bapak Pandu sedunia. Lord Robert Baden-Powell Of Gilwell menuliskan pengalaman dalam pembinaan remaja di negara lnggris, yang kemudian tumbuh berkembang menjadi gerakan kepanduan (kepramukaan). <br><br>\r\n    Baden Powell menulis buku Scouting for Boys lalu menyebar ke berbagai negara, termasuk ke Netherland (Belanda) dengan nama “Padvinder“. Oleh orang Belanda, gagasan itu dibawa ke Indonesia yang merupakan wilayah jajahannya. Lalu didirikanlah organisasi dengan nama NIPV (Nederland Indische Padvinders Vereeniging atau Persatuan Pandu-Pandu Hindia Belanda). <br><br>\r\n   Melihat dan memperhatikan gerakan kepanduan tersebut, maka tokoh-tokoh gerakan nasional berniat mendirikan Padvinders (Pandu) untuk anak bangsa dan kemudian muncullah Padvinders Indonesia. Sejarah telah mencatat bahwa gerakan pramuka (kepanduaan) turut berperan aktif dalam kongres pemuda pada tanggal 28 Oktober 1928 yang mencetuskan sumpah pemuda sehingga kepanduan Indonesia semakin berkembang. K.H. Agus Salim mencetuskan untuk mengganti Padvenders dengan nama Pandu atau kepanduan setelah adanya larangan Pemerintah Hindia Belanda menggunakan istilah Padvinders. <br><br>\r\n   Pada tahun 1930 organisasi kepanduan seperti IPO, PK (Pandu Kesultanan), dan PPS (Pandu Pemuda Sumatra) bergabung menjadi KBI (Kepanduan Bangsa Indonesia]. Saat pada masa penjajahan Jepang, pergerakan Kepanduan sempat dilarang karena para pandu ikut terjun dan saling bahu-membahu untuk memperjuangkan kemerdekaan Indonesia. Namun, idealisme dan semangat tetap menjiwai para pandu. <br><br>\r\n   Pada awal tahun 1950, banyak bermunculan organisasi-organisasi kepanduan sehingga Menteri Pendidikan, Pengajaran, dan Kebudayaan, mengganti  keputusan Nomor 93/Bhg.A, Tanggal 1 Februari 1947 dengan Keputusan Nomor 23441/ Kab, Tanggal 6 September 1951. Hal ini memungkinkan organisasi kepanduan lain selain Pandu Rakyat Indonesia. <br><br>\r\n   Pada tanggal 16 September 1951, terbentuklah IPINDO (Ikatan Pandu Indonesia) yang diterima menjadi anggota Internasional Conference (Organisasi Kepanduan Sedunia) mewakili Indonesia masuk dalam Far East Regional Scout Ofﬁcer pada tahun 1953. <br><br>\r\n   Pada tahun 1954, terbentuklah organisasi POPPINDO (Persaudaraan Organisasi Pandu Puteri Indonesia) dan PKPI (Kepanduan Putri Indonesia) yang melebur menjadi PERKINDO (Persatuan Kepanduan Indonesia). <br><br>\r\n\r\n<strong>TERBENTUKNYA GERAKAN PRAMUKA</strong><br>\r\nDalam kurun waktu 1950-1960 banyak organisasi kepanduan tumbuh di Indonesia. 100 organisasi kepanduan yang terhimpun dalam tiga federasi organisasi, yaitu IPINDO, POPPINDO dan PKPI. Oleh sebab itu, Presiden Soekarno memberikan amanat pemimpin pandu di Istana Merdeka pada tanggal 9 Maret 1961. Presiden Soekarno menyatakan pembubaran semua organisasi kepanduan di Indonesia dan kemudian meleburnya menjadi organisasi baru yang bernama Gerakan Pramuka dengan lambang tunas kelapa, tanggal 9 Maret ini kini diperingati sebagai Hari Tunas Gerakan Pramuka. <br><br>\r\nLalu pada 20 Mei pada tahun yang sama diterbitkanlah keputusan presiden nomor 238 tahun 1961, yang menetapkan bahwa Gerakan Pramuka sebagai satu-satunya organisasi kepanduan di Indonesia, hari itu diperingati sebagai Hari Permulaan Tahun Kerja, setelah itu setiap perwakilan organisasi kepanduan di Indonesia dikumpulkan dan memberikan pernyataan bahwa seluruh organisasi tersebut dengan suka rela dilebur kedalam Gerakan Pramuka pada 30 Juli 1961 sehingga tanggal itu disebut sebagai Hari Ikrar Gerakan Pramuka.\r\nDan Sampailah puncaknya pada 14 Agustus 1961 dimana dilaksanakannya pelantikan Mapinas, Kwarnas, dan Kwarnari di Istana negara  dengan Sri Sultan Hamengkubuwona IX sebagai ketua Kwarnas, dan itulah yang kini kita kenal sebagai Hari Pramuka. </p>\r\n', 'sgp.jpg', '<i>\"Dalam negeri kita, janganlah kita yang menumpang.\"</i><br>-Agus Salim'),
(3, 'Biografi Baden-Powell', '<p align=justify>\r\n<table class=\"table table-responsive table-striped\">\r\n        <tr><td>Nama Lengkap		<td>: Robert Stephenson Smyth Baden-Powell\r\n          <tr><td>Nama Panggilan		<td>: Baden-Powell atau dipanggil “BP” (Dibaca : bipi)\r\n          <tr><td>Nama Kecil	<td>: Stephenson\r\n          <tr><td>TTL	<td>: London, Inggris, 22 Februari 1857\r\n          <tr><td>Wafat	<td>: Nyeri, Kenya, 8 Januari 1941\r\n          <tr><td>Nama Ayah	<td>: Prof. Domine Baden-Powell\r\n          <tr><td>Nama Ibu	<td>: Miss Henrietta Grace Smyth\r\n          <tr><td>Sembilan Saudara Baden-Powell <td>:<ol type=\"1\">\r\n          <li>Warrington (lahir awal 1847)\r\n          <li>George (lahir akhir 1847)\r\n          <li>Augustus (lahir 1849)\r\n          <li>Frank (lahir 1850)\r\n          <li>Penrose\r\n          <li>Agnes (lahir 1858)\r\n          <li>Henrietta\r\n          <li>Jessie\r\n          <li>Baden Flecter (lahir 1860)\r\n          </ol>\r\n\r\n          <tr><td>Nama Istri	<td>: Olave St. Clair Soames (Lady Baden-Powell)\r\n          <tr><td>Nama Anak 	<td>:<ol type=\"1\"><li>Arthur Robert Peter Baden-Powell (1913-1962)\r\n          	   <li>Heather Grace Baden-Powell (1915-1986)\r\n          	   <li>Betty Clay (1917-2004)</ol>\r\n          <tr><td>Cucu Baden-Powell	<td>:  <ol type=\"A\"><li>Anak dari pernikahan Peter dengan Carine<ol type=\"1\">\r\n          <li>Robert Clause\r\n          <li>David Michael\r\n          <li>Wendy</ol>\r\n          	  <li>Anak dari pernikahan Heather dengan John King<ol type=\"1\">\r\n          	       <li>Michael\r\n          	       <li>Timothy</ol>\r\n          	   <li>Anak dari pernikahan Betty dengan Charles<ol type=\"1\">\r\n          	       <li>Gillian\r\n          	       <li>Robin\r\n          	       <li>Nigel\r\n          	       <li>Crispin</ol></ol>\r\n          <tr><td>Sekolah Baden-Powell	<td>: Charter house (1870)\r\n          <tr><td>Kegiatan Extra BP di Charterhouse <td>:<ol type=\"a\"><li>Marching Band\r\n          	              <li>Klub Menembak (rifle corps)\r\n          	              <li>Kiper Kesebelasan Charter house\r\n          	              <li>Teater\r\n          	              <li>Melukis / Menggambar</ol>\r\n          <tr><td>Julukan Baden-Powell	<td>:<ol type=\"1\">\r\n          <li>BP (bee-pee / bipi) Oleh para pandu\r\n          <li>Ste, Stephe, Steevie atau Stephenson (nama kecil Baden-Powell)\r\n          <li>“impeesa” yang artinya “Serigala yang tidak pernah tidur” di Afrika Selatan.\r\n          <li>“Bathing-Towel” di Charter house School.\r\n          <li>Gelar Lord Baden-Powell of Gilwell, dengan julukan Baron oleh Raja George V.</ol>\r\n</p>\r\n\r\n          <tr><td>Beberapa karangan buku dan peristiwa penting Baden-Powell	<td>:<ol type=\"1\">\r\n          <li>Buku pertama berjudul “Aids To Scouting” (petunjuk para tentara muda Inggris) pada 1899.\r\n          <li>Scouting for Boys (Materi latihan kepanduan) tahun 1908\r\n          <li>Berdirinya Boys Scout (usia penggalang) pada 1908\r\n          <li>Tahun 1910 bersama adiknya (Maria Agnes) membentuk Pandu untuk Perempuan dengan sebutan “Girl Guides”\r\n          <li>Tahun 1916 berdiri CUB (anak serigala) / kelompok usia Siaga yang berpedoman pada buku The Jungle Book karangan Rudyard Kippling\r\n          <li>Tahun 1918 terbentuk Rover Scout (usia penegak / organisasi pemuda yang sudah berusia 17 tahun).\r\n          <li>Tahun 1920, jamboree pertama kali di Arena Olympia Hall, London. Baden-Powell mengundang Pandu dari 27 negara dan Baden Powell diangkat sebagai Bapak Pandu Sedunia (Chiefscout of the World)\r\n          <li>Tahun 1922, terbit buku Rovering to Success (menggambarkan seorang pemuda yang mengayun sampannya sampai menuju pantai yang bahagia)\r\n          </ol>\r\n          <tr><td>Pengalaman Baden-Powell yang berpengaruh pada kegiatan kepanduan<td>:<ol type=\"1\">\r\n          <li>Karena ditinggal bapak sejak kecil, maka mendapatkan pembinaan watak ibunya.\r\n          <li>Dari kakaknya mendapat latihan keterampilan berlayar, berenang, berkemah,\r\n                Olahraga dan lain-lainnya.\r\n          <li>Pengalaman di India sebagai pembantu Letnan pada Resimen 13 Kavaleri yang\r\n             berhasil mengikuti jejak kuda yang hilang di puncak gunung serta keberhasilan\r\n             melatih panca indera kepada Kimball O’Hara.\r\n          <li>Terkepung bangsa Boer di kota Mafeking, Afrika Selatan selama 127 hari dan\r\n                kekurangan makan.\r\n          <li>Pengalaman mengalahkan Kerajaan Zulu di Afrika dan mengambil kalung manik\r\n                kayu milik Raja Dinizulu.</ol>\r\n      </table>', 'bp.jpg', '<i>\"No one can pass through life, any more than he can pass through a bit of country,\r\n     without leaving tracks behind, and those tracks may often be helpful to those coming after him in finding their way.\"</i><br>-Robert Baden-Powell'),
(8, 'Pramuka dalam Pendidikan', '<p align=justify>\r\n<strong>Salam pramuka!</strong><br>\r\nHallo kakak-kakak Pramuka, kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit tentang kepramukaan di bidang pendidikan,  mungkin juga kakak-kakak sudah merasakan peran pramuka di sekolah seperti diadakannya kegiatan pramuka wajib. Untuk lebih jelasnya berikut penjelasannya. <br><br>\r\n<strong>KENAPA SIH HARUS ADA KEGIATAN PRAMUKA DI SEKOLAH?</strong><br>\r\n     Pramuka wajib adalah kegiatan kepramukaan yang bertujuan untuk membangun karakter siswa menjadi lebih baik dan mengembangkan fungsi kewarganegaraan. Selain itu diwajibkannya kegiatan pramuka di sekolah dapat memberikan keseimbangan skill yang diajarkan disekolah, dimana pendidikan akademik menyediakan ilmu-ilmu teoritis, dalam kegiatan pramuka siswa dituntuk agar belajar dengan melakukan atau praktek<br><br>\r\n<strong>APA MANFAATNYA TERHADAP SISWA? </strong><br>     \r\nPramuka di dalam pendidikan sangat bermanfaat bagi pertumbuhan karakter. Karakter sangatlah penting bagi semua orang karena karakter inilah yang akan selalu dinilai oleh masyarakat sekitar, bukan dari nilai-nilai pada pelajaran saja.<br><br>\r\n<strong>APA SAJA YANG DIAJARKAN PADA KEGIATAN INI?</strong><br>\r\nUntuk mengembangkan fungsi kewarganegaraan pramuka mengajarkan hal-hal berikut.</p>\r\n<ul>\r\n<li>Pramuka mengajarkan seseorang untuk memiliki karakter yang unggul dan kuat.\r\n<li>Pramuka mengajarkan seseorang untuk mandiri dan bisa beradaptasi dengan lingkungan sekitarnya, contohnya ketika semua orang harus menerima adanya teknologi yang sangat canggih dan harus beradaptasi dengan perubahan jaman.\r\n<li>Memiliki watak yang mulia dan saling menghargai, contohnya saling menghargai ketika bertemu atau bersama orang yang berbeda agama.\r\n<li>Bertanggung jawab, jujur, dan gotong royong, sebagai contoh ketika seseorang merusak sesuatu ia harus mengakui atau jujur bahwa dia yang melakukan dan bekerja sama untuk memperbaiki.\r\n<li>Menumbuhkan rasa nasionalisme dan patriotisme sebagai contoh rasa cinta tanah air yaitu dengan menjaga alam yang ada di sekitar.\r\n</ul>\r\n<p align=justify>Nah, sekarang kita sudah tahu apa saja manfaat pramuka dalam bidang pendidikan semoga dengan penjelasan ini kita dapat lebih memahami kepramukaan yah kakak-kakak, mohon maaf bila ada kesalahan, terimakasih.<br><br></p>\r\n', '5edd7645a2b55.jpg', '<i>\"Berikan aku sepuluh pemuda, niscaya akan kuguncang dunia.\"</i><br>-Ir. Soekarno'),
(10, 'Api Unggun', '<p align=justify>\r\n<strong>Salam Pramuka!</strong> <br>\r\nHalo kakak-kakak semua, kami dari Pramuka SMAN 1 Jalancagak, di kesempatan kali ini kami akan membahas tentang Api Unggun. Wah nama yang sudah tidak asing lagi bukan ? Pasti kakak-kakak sering mendengar tentang Api Unggun. Biasanya api unggun dipakai dikegiatan seperti berkemah, pelantikan dan lain-lain. Nah kali ini kami akan memberikan sedikit materi tentang Api Unggun.  Yuu simak pembahasannya !!!!! <br><br>\r\n<strong>Kakak-kakak, apa sih api unggun itu ?</strong> <br>\r\nApi Unggun adalah api yang dibuat atau dinyalakan pada unggun (timbunan kayu) agar nyalanya lebih terang dan hangatnya lebih meluas untuk suatu kepentingan. Makna yang terkandung dalam api unggun adalah api yang berkobar menyala yakni semangat yang membara. Juga panasnya api melambangkan kekuatan dan cahayanya melambangkan petunjuk persatuan dan persaudaraan.<br><br>\r\n<strong>Berbagai fungsi api unggun:</strong><br>\r\nNah ada 4  fungsi yaitu :\r\n<ol>\r\n<li> Alat pemanas dikala cuaca dingin.\r\n<li> Alat penerang dikala suasana gelap gulita.\r\n<li>Alat pengusir binatang buas dari hutan.\r\n<li>Alat ketenteraman dan kegembiraan.\r\n</ol>\r\n<p align=justify><strong>Ada macam-macam api unggun yaitu:</strong><br>\r\n<ol type=”1”>\r\n<li>Menurut keperluan dan sifatnya :<br>\r\n<ol type=”a”>\r\n<li>Api unggun resmi <br>\r\n    Api unggun yang dipergunakan untuk acara-acara resmi atau formal.\r\n       <li>Api unggun biasa<br>\r\n           Api unggun untuk keperluan rekreasi sehingga suasana lebih meriah dan  \r\n           gembira\r\n</ol>\r\n<li>Menurut bentuknya : <br>\r\n<ol type=”a”>\r\n        <li>Api unggun asli<br>\r\n            Api unggun yang benar-benar dibuat dengan unggu-kan kayu dan\r\n            diselenggarakan di tempat terbuka.\r\n        <li>Api unggun tiruan (imitasi)<br>\r\n            Api unggun yang tidak sebenarnya dibuat dengan unggukan kayu melainkan \r\n            hanya tiruan belaka. Hal ini dapat berupa lampu, lilin, atau Iistrik yang\r\n            dipergunakan dalam ruangan.\r\n</ol>\r\n</ol>\r\n<p align=justify><strong>Syarat-syarat tempat api Unggun:</strong><br>\r\nNah untuk menyalakan api unggun harus memperhatikan tempat dengan syarat-syarat sebagai berikut:<br>\r\n<ol>\r\n<li>Tempat yang terbuka cukup luas yang sesuai dengan peserta.\r\n<li>Tanah lapang yang cukup kering, sehat, dan permukaannya datar.\r\n<li>Suasana sekitar lapangan tidak rimbun.\r\n<li>Tempatnya jauh dari kediaman umum agar tidak mengganggu dan terganggu.\r\n<li>Terlindung dari angin keras yang akan mengacau asap dan abu api unggun.\r\n</ol>\r\n<p align=justify><strong>Upacara penyalaan api unggun </strong><br>\r\nAgar proses penyalaan api unggun terasa hikmat maka diperlukan upacara, dengan urutan sebagai berikut:<br>\r\n<ol>\r\n<li>Persiapan\r\n<li>Penyalaan obor Dasa Darma\r\n<li>Penyalaan Umum.\r\n<li>Amanat Pembina\r\n<li>Atraksi\r\n<li>Penutup.\r\n</ol>\r\n<p align=justify>Nah, itulah kakak-kakak sedikit materi tentang Api Unggun, semoga materinya bermanfaat. Mohon maaf jika ada kesalahan, terimakasih atas perhatiannya.<br><br></p>\r\n', '5edd7bdf81ab5.jpg', '<i>\"Seseorang hanya bisa menikmati api unggun jika ia menghangatkan pikirannya dengan api itu, sama dengan ia menghangatkan tangan dan kakinya\"</i><br>-Odell Shepherd'),
(11, 'Pertolongan Pertama Pada Kecelakaan (P3K)', '<p align=justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak sahabat pramuka sekalian Kami dari Pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang P3K. Berbicara tentang P3K mungkin kakak kakak sering mendengarnya. <br><br>\r\n<strong>Apa sih itu P3K?</strong><br>\r\nP3K (PPPK) adalah upaya pertolongan dan perawatan sementara terhadap korban kecelakaan sebelum mendapat pertolongan yang lebih sempurna dari dokter. Berarti pertolongan tersebut bukan sebagai pengobatan atau penanganan yang sempurna, tetapi hanyalah berupa pertolongan sementara yang dilakukan oleh orang yang pertama melihat korban.<br><br>\r\n<strong>Apa kakak-kakak tahu kenapa dilakukan P3K?</strong><br>\r\nTujun P3K yaitu:\r\n<ol>\r\n<li>Mencegah keadaan memburuk.\r\n<li>Mencegah cacat yang lebih berat\r\n<li>Mencegah infeksi\r\n<li>Mengurangi rasa sakit dan rasa takut\r\n</ol>\r\n<p align=justify>\r\n<strong>Apa saja prinsip yang diterapkan dalam P3K?</strong><br>\r\nBeberapa prinsip yang harus ditanamkan pada petugas P3K apabila menghadapi kecelakaan yaitu :\r\n<ol>\r\n<li>Bersikaplah tenang, jangan panik. Karena ketika kita tidak tenang bisa jadi akan menambah beban kepada korban kecelakaan.\r\n<li>Gunakan mata dengan jeli. Liat lah luka yang dapat diliat mata terlebih dahulu.\r\n<li>Perhatikan keadaan sekitar kecelakaan.\r\n<li>4.Perhatikan keadaan penderita apakah pingsan, ada perdarahan dan luka, patah tulang, merasa sangat kesakitan.\r\n<li>Periksa pernafasan korban. Kalau tidak bernafas, periksa dan bersihkan jalan nafas.</ol>\r\n<p align=justify>\r\nItulah beberapa prinsip yang harus dimiliki petugas P3K. Baik kakak kakak sekalian kali ini kami akan memberikan cara melakukan pertolongan pertama pada patah tulang. <br><br>\r\n<strong>Bagaimana sih caranya?</strong><br>\r\nTentunya kakak-kakak tahu patah tulang ini tidak mengancam nyawa tetapi kita sebagai pramuka ketika melakukan kegiatan terus ada teman kita yang terkena patah pulang kita harus tau apa yang harus kita lakukan. Baik teman-teman pramuka sekalian pada korban patah tulang ini memiliki beberapa ciri. Diantaranya:<ol>\r\n<li>Rasa sakit di area yang cedera.\r\n<li>Area yang cedera tampak kebiruan, bengkak, atau berubah bentuk.\r\n<li>Tulang tampak menembus kulit atau menonjol.\r\n<li>Pendarahan di lokasi cedera.</ol>\r\n<p align=justify>\r\n   Itulah yang sering terjadi pada korban patah tulang. Setelah tau ciri-cirinya kita lanjut cara pertolongan pertama pada kecelakaan patah tulang. Berikut penjelasannya. <br><ol>\r\n<li>Lepaskan pakaian yang menutupi area yang dicurigai mengalami patah tulang.\r\n<li>Jika tidak bisa dilepas, gunting pakaian tanpa memindahkan bagian tubuh yang patah.\r\n<li>3. Rekatkan area patah tulang dengan penggaris atau tongkat sebagai bidai.\r\n<li>4. Apabila tidak ada perban gulung, Anda bisa menggunakan sepotong pakaian.\r\n<li>Setelah pembidaian kompres dengan menggunakan es batu.\r\n<li>Bawa korban ketempat yang aman.</ol>\r\n<p align=justify>\r\n\r\n   Itulah sedikit yang dapat kami berikan tentang pertolongan pertama pada kecelakaan patah pulang. Sedangkan Untuk kecelakaan yang terjadi dan menyebabkan luka cukup parah, sebaiknya memang segera memanggil layanan ambulans dan staf kesehatan profesional. Demikian pula jika ada kejadian tersedak yang parah. <br><br>\r\nMeski demikian, sambil menunggu kedatangan bantuan medis, ada beberapa langkah pertolongan pertama yang bisa Anda lakukan untuk membantu orang yang terluka maupun tersedak.<br><br>\r\n<strong>Lalu untuk luka pendarahan, bagaimana pertolongan pertamanya?</strong><br>\r\nLangkah-langkah untuk luka berdarah diantaranya:<br><ol>\r\n<li> Menghentikan perdarahan.<br>\r\n   Langkah ini harus dilakukan sebelum membalut luka. Cara menghentikan darah dengan benar meliputi menekan area yang terluka menggunakan bahan yang bersih. Lakukan tekanan selama beberapa menit sampai darah berhenti keluar. <br><br>\r\n<li> Gunakan sarung tangan.<br>\r\n    Jika ada sarung tangan gunakanlah sarung tangan sekali pakai saat menangani luka berdarah. Langkah ini berguna untuk mengurangi risiko infeksi. <br><br>\r\n<li> Memeriksa luka.<br>\r\n    Periksalah apa ada benda yang tertinggal atau tertancap di dalam luka. Jika ada, jangan menekan atau mencabutnya.Untuk menghentikan perdarahan, beri tekanan di sekitar benda tersebut. Buatlah semacam penyangga atau ganjal di sekitar benda yang tertancap sebelum membalutnya dengan perban. Dengan ini, benda tersebut tidak terkena tekanan. <br><br>\r\n<li> Gunakan perban.<br>\r\n    Setalah dibersihkan dan darah nya udah reda maka gunakanlah perban untuk menghentikan darah. Kemudian bawa ke dokter untuk penanganan lebih lanjut. Itulah sedikit yang dapat kami berikan pertolongan pertama pada luka pendarahan. <br><br>\r\n<p align=justify>\r\n    Mohon maaf bila ada kata-kata yang kurang dimengerti atau pembahasan yang kurang lengkap karna kami masih dalam tahap belajar. <br><br></p>\r\n', 'p3k.png', '<i>\"The most worthwhile thing is to try to put happiness into the lives of others.\"</i><br>-Robert Baden-Powell'),
(12, 'World Organization of the Scout Movement (WOSM)', '<p align=justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak sekalian Kami dari Pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang WOSM .<br><br>\r\n<strong>APA ITU WOSM?</strong><br>\r\nWOSM adalah Gerakan kepanduan seluruh dunia. WOSM adalah singkatan dari World Organization of the Scout Movement yang didirikan oleh Sir Robert Baden-Powell pada 1922, hingga saat ini WOSM memiliki keanggotaan sebanyak 171 organisasi kepanduan di seluruh dunia dan memiliki anggota lebih dari 54 juta pandu, markas utama WOSM berada di Jenewa, Swiss, namun untuk kantor operasionalnya ada di Kuala Lumpur, Malaysia. Misi dari WOSM adalah untuk  berkontribusi terhadap pendidikan dan pembinaan generasi muda melalui sistem nilai yang berdasarkan Janji dan aturan Pandu.<br><br>\r\n Logo WOSM diambil dari lencana yang diberikan pada para pemuda yang dilatih BP saat ia bertugas di India, lencana berbentuk fleur de lis juga diberikan pada para pemuda yang mengikuti perkemahan pertama di Brownsea Island. BP menjadikan fleur de lis sebagai lambang, karena fleur de lis sering digunakan pada jarum kompas yang menunjuk utara sehingga diharapkan setiap pandu dapat selalu menuju ke arah yang benar. Oh iya WOSM juga bekerja sama dengan oraganisasi serupa untuk kelompok wanita yaitu the World Association of Girl Guides and Girl Scouts (WAGGGS). <br><br>\r\n<strong>APA AJA SIH YANG ADA DALAM LOGO WOSM?</strong><br>\r\n<ol>\r\n<li> Kompas yang artinya adalah peringatan.\r\n<li> Treefoil yang artinya 3 janji.\r\n<li> Dua Bintang yang artinya sebagai penerang dan menolong kebenaran \r\n<li> Tali Melingkar aritinya persahahatan.\r\n<li> Warna Ungu artinya keterampilan.\r\n<li> Warna putih yang berarti suci dan bersih.\r\n</ol><p align=justify>\r\n\r\n<strong>BAGAIMANA LETAK DAN BENTUK LAMBANG WOSM DI SERAGAM PRAMUKA INDONESIA </strong><br>\r\nLetak lambang WOSM atau bunga lily untuk laki-laki terletak di bagian dada sebelah kanan. Lebih tepatnya diatas saku. Sedangkan untuk perempuan, terletak di bagian ujung kerah baju sebelah kanan.<br>\r\nUntuk bentuk lambang WOSM ini, untuk pramuka laki-laki berbentuk persegi. Sedangkan untuk perempuan, berbentuk lingkaran.<br><br>\r\n', '5edd90e377cad.png', 'Creating a Better World'),
(13, 'Lambang Gerakan Pramuka', '<p align=”justify”>\r\n<strong>Salam pramuka!</strong><br>\r\nBaik kakak kakak sekalian kami dari pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang Lambang Gerakan Pramuka. <br><br>\r\n<strong>APA SIH LAMBANG GERAKAN PRAMUKA ITU?</strong><br> \r\n       Lambang Gerakan Pramuka adalah Tanda Pengenal Gerakan Pramuka yang bersifat Tetap. Lambang Gerakan Pramuka diciptakan oleh R. Soenardjo Atmodipoerwo. Pertama kali dipergunakan pada tanggal 14 agustus 1961.<br><br>\r\n<strong>BAGAIMANA SIH BENTUK LAMBANG GERAKAN PRAMUKA?</strong><br>\r\n        Lambang Gerakan Pramuka berbentuk Silluet (bayangan) Tunas kelapa. Apakah Kakak tahu kenapa Lambang Gerakan Pramuka berbentuk Tunas kelapa?<br>\r\n<ol>\r\n<li>Pohon kelapa ini banyak memiliki manfaat bahkan disebut pohon seribu guna. Artinya Pramuka sangat berguna bagi Nusa, Bangsa dan Agama.\r\n<li>Pohon kelapa bisa tumbuh dimana saja dan dapat bertahan lama. Artinya Pramuka juga dapat bertahan hidup dalam keadaan apapun kuat jasmani dan rohani.\r\n<li>Tumbuh menujulan tinggi. Artinya setiap pramuka memiliki keinginan atau cita-cita yang sangat tinggi.\r\n<li>Akar kelapa yang kuat. Artinya berpegang pada dasar-dasar yang kuat.</ol>\r\n<p align=”justify”>\r\nItulah kenapa tunas kelapa dijadikan sebagai Lambang Gerakan Pramuka. <br><br>\r\n<strong>LAMBANG GERAKAN PRAMUKA BIASA DUGUNAKAN DIMANA SAJA?</strong><br>\r\nBiasanya Lambang Gerakan Pramuka digunakan:<br>\r\n<ol>\r\n<li> Panji.\r\n<li> Bendera.\r\n<li> Papan nama kwartir/satuan.\r\n<li> Tanda pengenal Satuan.\r\n<li> Administrasi Satuan.\r\n<li> Selain itu, lambang gerakan pramuka juga digunakan sebagai alat pendidikan menanamkan sifat yang terdapat dalam arti kiasan dari lambang tersebut kepada anggota gerakan pramuka. Sorang pramuka juga harus berperan aktif dalam masyarakat mereka harus mampu mengamalkan ilmu pengetahuan dan teknologi kepada masyarakat.\r\n<li> Pada seragam pramuka putra digunakan disaku sebelah kiri dan pada seragam pramuka putri digunakan dikerah sebelah kiri.\r\n<li> Pada kepala surat digunakan disamping kiri.\r\n</ol>\r\n<p align=”justify”>\r\n<strong>APAKAH KAKAK-KAKAK TAHU WARNA PADA LAMBANG GERAKAN PRAMUKA DAPAT DISESUAIKAN DENGAN PENGGUNAANNYA?</strong><br>\r\nMari kita pelajari seperti apa saja penggunaan warna lambang gerakan pramuka.<br>\r\n<ol>\r\n<li> Pada kepala surat menggunakan warna hitam.\r\n<li> Pada bendera Gerakan Pramuka menggunakan warna merah.\r\n<li> Pada tanda kecakapan umum (TKU) penegak dan pandega memakai warna kuning.\r\n<li> Pada cover buku terbitan kwarnas sering dibentuk berwarna putih.\r\n<li> 5. Pada beberapa logo kegiatan bisa menggunakan warna lain, bahkan kombinasi beberapa warna.</ol></p>\r\n', '5edd9392d97aa.png', 'Satyaku kudarmakan, Darmaku kubaktikan'),
(15, 'Kepemimpinan', '<p align=”justify”>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak-kakak sahabat pramuka sekalian Kami dari Pramuka SMAN 1 Jalancagak, kali ini akan membahas sedikit tentang Kepemimpinan. Berbicara tentang kepemimpinan mungkin kakak kakak sering mendengarnya. Buat kakak apa kakak kakak tau.<br><br> \r\n<strong>APA ITU KEPEMIMPINAN?</strong><br>\r\n   kepemimpinan adalah cara pemimpin buat mempengaruhi, mendorong, membimbing seseorang atau golongan untuk mencapai sebuah tujuan.<br><br>\r\n<strong>TIPE-TIPE KEPEMIMPINAN</strong><br>\r\n<ul>\r\n<li>Kepemimpinan demokratis, tipe ini biasanya banyak melibatkan kontribusi bawahan dalam mengambil keputusan.\r\n<li>Kepemimpinan otokratis,  tipe yang dalam proses memimpinnya sangat bergantung pada dirinya sendiri selaku pemimpin.\r\n<li>Kepemimpinan strategis,  tipe  yang menjadikan seorang pemimpin layaknya sebuah kepala organisasi.\r\n<li>Kepemimpinan tim,biasanya dibentuk dari hasil rembuk bersama dalam sebuah tim.\r\n<li>kepemimpinan liberal,tipe yang memberikan kebebasan kepada anggotanya untuk melakukan tugasnya. \r\n<li>Kepemimpinan pembinaan,tipe yang selalu berusaha mengajari dan mengawasi anggotanya secara penuh. \r\n<li>Kepemimpinan visioner, tipe ini selalu berusaha mewujudkan visi yang telah disusun bersama. \r\n</ul>\r\n<p align=”justify”>\r\n<strong>ASAS KEPEMIMPINAN</strong><br>\r\nAsas kepemimpinan menurut Bapak Presiden Soeharto berdasar Pancasila terdiri dari :<br>\r\n<ol>\r\n<li>Ketuhanan Yang Maha Esa,\r\nBeriman kepada Tuhan Yang Maha Esa dan taat kepada-Nya. \r\n<li>Inga ngarso sun tulodho,\r\nMenjadi teladan  terhadap anak buah. \r\n<li>Ing madya mangun karso,\r\nIkut membangun semangat di tengah-tengah anak buah. \r\n<li>Tut wuri handayani,\r\nMempengaruhi dan memberi dukungan dari belakang kepada anak buah. \r\n<li>Waspada purba wasesa,\r\nSelalu waspada,  sanggup dan memberi koreksi kepada anak buah. \r\n<li>Prasaja,\r\nBerperilaku yang sederhana dan tidak berlebih-lebihan. \r\n<li>Satya,\r\nSikap loyal yang timbal balik.\r\n<li>Ambeg parama arta,\r\nDapat memilih dengan tepat mana yang harus didahulukan. \r\n<li>Gemi nastiti,\r\nKesadaran dan kebutuhan untuk penggunaan  yang benar-benar dibutuhkan. \r\n<li>Belaka, \r\nKemauan, kerelaan dan keberanian untuk mempertanggungjawabkan tindakan-tindakannya. \r\n<li>Legawa, \r\nKemauan, kerelaan, dan keikhlasan  saat menerima tanggung jawab dan kedudukan untuk generasi berikutnya.\r\n</ol>\r\n<p align=”justify”><br>\r\n<strong>PELAKSANAAN KEPEMIMPINAN</strong><br>\r\n   kepemimpinan dalam gerakan Pramuka menerapkan sistem kepemimpinan pamong,yaitu : ing ngarso sung tulodo,ing madya mangun Karso,Tut Wuri Handayani.\r\n<ul>\r\n<li>Pembinaan Pramuka siaga lebih mengutamakan pada ing ngarso sung tulodo.\r\n<li>Pembinaan Pramuka penggalang lebih mengutamakan pada ing madya mangun Karso.\r\n<li>Pembinaan Pramuka penegak dan pandega lebih mengutamakan pada Tut Wuri Handayani.\r\n</ul>\r\n<p align=”justify>\r\n\r\nMohon maaf apabila ada kata-kata yang kurang dimengerti atau pembahasan yang kurang lengkap karena kami masih dalam tahap belajar.</p>\r\n', '5ede31b52fbc1.jpg', '<i>\"The more responsibility the Scoutmaster gives his patrol leaders, the more they will respond.\"</i><br>-Robert Baden-Powell'),
(16, 'Menerapkan Disiplin', '<p align=”justify>\r\n<strong>Salam Pramuka</strong><br>\r\nHallo kakak-kakak pramuka, kali ini kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit tentang Disiplin. Yu simak pembahasannya!<br><br>\r\n<strong>APA SIH ITU DISIPLIN?</strong> <br>\r\n   Kata ‘disiplin’ sendiri berasal dari bahas Latin yaitu ‘discipline’ yang artinya latihan akan kesopanan dan kerohanian juga sebagai pengembangan kepribadian. Sikap disiplin dapat muncul sebagai bentuk usaha kita dalam memperbaiki diri sebagai individu yang taat akan aturan yang sudah berlaku. <br>\r\n   Disiplin merupakan perasaan taat dan patuh terhadap nilai-nilai yang dipercaya merupakan tanggung jawabnya. Pendisiplinan adalah usaha usaha untuk menanamkan nilai ataupun pemaksaan agar subjek memiliki kemampuan untuk menaati sebuah peraturan. <br><br>\r\n<strong>BAGAIMANA CARA MENANAMKAN DISIPLIN?</strong> <br>\r\n<ol>\r\n<li>Jangan Tunggu Motivasi Datang <br>\r\nMelatih disiplin harus datang dari hati kakak-kakak sendiri. Jangan tunggu digerakkan atau mendapat motivasi dari orang lain. Menunggu motivasi tidak akan membuat diri kakak-kakak bisa lebih disiplin. Disiplin adalah tetap melakukan kegiatan meski kakak-kakak tidak menyukainya. kakak-kakak akan dilatih untuk mengubah sikap positif menjadi sebuah kebiasaan. <br>\r\n<li>Tahan Godaan <br>\r\nSaat kakak-kakak mulai melatih kedisiplinan, godaan pasti akan datang tak tertahan. Di sinilah akan terlihat sekuat apa niat kakak-kakak untuk bisa menjadi sosok yang disiplin. Sebagai awal, jauhkan semua hal yang bisa menjadi godaan saat melatih kedisiplinan. Sebagai contoh, jauhkan telepon seluler dari jangkauan dan pendengaran saat kakak-kakak bekerja. Matikan televisi atau apa pun yang bisa mengganggu fokus kakak-kakak terhadap pekerjaan. Jauhkan keinginan kakak-kakak untuk memainkan ponsel atau remote TV. <br><br>\r\n\r\n<li>Mulailah dari Hal Kecil <br>\r\nSesuatu yang besar pasti dimulai dari hal kecil. Kedisiplinan bukan sesuatu yang bisa didapat secara instan. Tidak bisa tercipta hanya dalam waktu satu malam, seperti permintaan Roro Jonggrang kepada Bandung Bondowoso untuk membangun seribu candi. Maka itu, untuk bisa meningkatkan disiplin diri harus dimulai dari hal sederhana. Seperti disiplin dalam membuang sampah atau datang tepat waktu ke tempat bekerja maupun ke sekolah. Kedisiplinan kakak-kakak pasti akan meningkat secara otomatis ketika kakak-kakak sering melatihnya. Lakukan dalam banyak aspek di kehidupan kakak-kakak sehingga bisa mendapatkan masa depan yang bahagia. <br><br>\r\n<li>Tetapkan Rutinitas Harian <br>\r\nCara melatih disiplin bisa dimulai dengan menetapkan rutinitas harian. Misalkan saja, kakak-kakak menargetkan setiap hari akan bangun setiap pukul 4 pagi. Setelah ditetapkan, lakukan upaya maksimal untuk bisa mewujudkannya. Jadikan target tersebut sebagai sebuah kebiasaan/ kunci. <bt><br>\r\n<li>Makan Teratur dan Bergizi <br>\r\nkakak-kakak tidak akan pernah bisa melatih disiplin jika kakak-kakak  sendiri tidak pernah berada dalam kondisi sehat. Melatih disiplin bisa juga dimulai dengan makan secara teratur. Usahakan asupan makanan kakak-kakak selalu terjaga kandungan nutrisinya. Makan makanan bergizi akan membantu kakak-kakak meningkatkan konsentrasi dan daya ingat yang berdampak pada pendisiplinan diri.<br><br>\r\n<li>Fokus pada Target Jangka Panjang <br>\r\nKakak-kakak harus punya target dalam hidup yang kakak-kakak jalani. Baik target jangka pendek maupun jangka panjang. Nah, salah satu cara dalam meningkatkan disiplin diri adalah dengan fokus kepada target jangka panjang. Kenapa target jangka panjang? Karena target jangka panjang adalah sasaran yang tidak akan bisa kakak-kakak raih dalam waktu dekat. Sehingga kakak-kakak pun terpacu menjaga motivasi untuk bisa mencapainya. Dan salah satu cara mencapainya adalah dengan melatih kedisiplinan. <br><br>\r\n<li>Segera Move On <br>\r\nSaat menjalankan upaya apa pun pasti akan mengalami masa naik dan turun. Termasuk ketika kakak-kakak tengah berupaya meningkatkan kedisiplinan diri. Saat itulah usahakan agar jangan mudah terlarut oleh godaan dan seribu alasan. Ketika kakak-kakak merasa tengah berada di bawah, jangan lantas terlena dan melemah. Jangan terbelenggu oleh rasa bersalah. Lupakan semuanya dan terus maju ke depan. Jadikan kondisi tersebut sebagai pelajaran untuk  menjadi pribadi yang lebih baik. Maafkan diri kakak-kakak dan segera move on. <br><br>\r\n<li>Buat Tenggat <br>\r\nHarapan dan tenggat yang dimunculkan pihak lain biasanya akan meningkatkan kinerja kakak-kakak. Jika tidak ada yang memberi tenggat, coba ciptakan sendiri tenggat pribadi. Caranya, jika kakak-kakak punya rencana untuk menyelesaikan satu proyek selama satu pekan, informasikan hal ini kepada teman terdekat kakak-kakak. <br><br>\r\n<li>Tepis Hal-hal Negatif <br>\r\nSaat kakak-kakak melakukan sebuah upaya dan rencana, akan ada orang atau pihak lain yang menganggap sepele. Mereka akan menyebut kakak-kakak tidak akan mampu mewujudkan rencana tersebut. Bahkan mengatakan semua upaya mereka itu salah. <br><br>\r\n<li>Berlatih untuk Berkata “Tidak”<br>\r\nGodaan dan rintangan pasti akan kakak-kakak temui dalam upaya meningkatkan kedisiplinan. Karena itu kakak-kakak harus bisa memilah, mana proses latihan yang harus dilakukan dan mana yang ingin kakak-kakak lakukan. Bedakan, antara “harus” dengan “ingin”. Mulailah belajar berkata tidak saat kakak-kakak melihat pakaian atau sepatu yang keren di supermarket. Lakukan hal ini dalam semua aspek kehidupan kakak-kakak. Saat kakak-kakak mulai bisa mengontrol mana yang harus dan mana yang bisa ditunda atau bahkan tidak dilakukan, secara perlahan kakak-kakak sudah menapaki tangga untuk lebih disiplin. <br><br>\r\n<li>Ambil Inspirasi dari Idola <br>\r\nkakak-kakak pasti punya satu sosok yang dipuja atau jadi idola. Cari sisi positif yang paling menonjol dari idola kakak-kakak tersebut. Lalu jadikan inspirasi yang bisa menambah motivasi kakak-kakak dalam meningkatkan kedisiplinan. Tokoh idola ini tidak mesti harus orang terkenal. Dia bisa saja senior kakak-kakak di kampus, atau bahkan atasan di tempat kerja. Inspirasi yang kakak-kakak dapatkan dari mereka bisa menjaga kakak-kakak berada di jalur yang tepat untuk mencapai target. <br><br>\r\n<li>Visualisasikan Target kakak-kakak <br>\r\n     Saat kakak-kakak sudah merencanakan sebuah target, berlatihlah untuk memvisualisasikannya. Bayangkan kakak-kakak berada dalam situasi saat kakak-kakak meraih target tersebut. Ini akan menstimulus motivasi di dalam diri untuk mencapai target tersebut. Rasakan bagaimana saat kakak-kakak meraih target tersebut. Terutama target jangka panjang. Dengan fokus untuk meraih target jangka panjang maka kakak-kakak akan lebih termotivasi dan menjadi lebih disiplin. \r\n</ol>\r\n<p align=”justify”>\r\n       Meningkatkan disiplin diri tidak akan bisa dijalankan tanpa hambatan. Jika ditambah dengan motivasi yang terjaga dengan baik, maka kakak-kakak akan lebih kuat dalam berjuang mencapai target. </p>\r\n', '5ede38af797d3.jpg', '<i>\"Correcting bad habits cannot be done by forbidding or punishment.\"</i><br>-Robert Baden-Powell');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_pengurus`
--

CREATE TABLE `daftar_pengurus` (
  `id` int(11) NOT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `yt` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_pengurus`
--

INSERT INTO `daftar_pengurus` (`id`, `kategori`, `nama`, `jabatan`, `fb`, `ig`, `yt`, `gambar`) VALUES
(1, '15-16', 'RIFA MUHAMAD FAUZI', 'Pradana Putra 2015', 'https://www.facebook.com/ifcthe.yanxtersakiti', 'https://www.instagram.com/fauzirifa23/', NULL, 'rifa.jpg'),
(2, '15-16', 'YUYUN LESMANA', 'Juru Adat Putra 2015', 'https://www.facebook.com/yunz.cyuyunnaxspansathea', 'https://www.instagram.com/y.lesmana15/', NULL, 'yuyun.jpg'),
(3, '15-16', 'RIZAL RAMLI', 'Kerani Putra 2015', 'https://www.facebook.com/zal.pamungkas.1', 'https://www.instagram.com/ramlirzl/', NULL, 'rizal.jpg'),
(4, '15-16', 'MUHAMAD SIGIT FIRDAUS', 'Juru Uang Putra 2015', 'https://www.facebook.com/muhamad.s.firdaus.106', 'https://www.instagram.com/m.s.f.013/', NULL, 'sigit.jpg'),
(5, '15-16', 'CAHYA', 'Ketua Bidang Putra 2015', 'https://www.facebook.com/CahyaNuurr', 'https://www.instagram.com/cahya_nuurrr/\"', NULL, 'cahya.jpg'),
(6, '15-16', 'ALDY PERMANA PUTRA', 'Kajian Kepramukaan Putra 2015', 'https://www.facebook.com/aldykaisarrasta.natural', 'https://www.instagram.com/aldy.poetra/', NULL, 'aldy.jpg'),
(7, '15-16', 'EKA BUDIANTORO', 'Sie. Kegiatan Putra 2015', 'https://www.facebook.com/eka.budiantoro', 'https://www.instagram.com/eka_boediantouroe/', NULL, 'eka.jpg'),
(8, '15-16', 'SUNI FONDA RAMDANI', 'Humas Putra 2015', 'https://www.facebook.com/profile.php?id=100006070037847', 'https://www.instagram.com/suniramdani/', NULL, 'suni.jpg'),
(9, '15-16', 'ILHAM MAULANI F.', 'Sie. Evaluasi Putra 2015', 'https://www.facebook.com/profile.php?id=100003546654745', 'https://www.instagram.com/kupiagan/', NULL, 'ilham.jpg'),
(10, '15-16', 'ELFA NURAINI FADILAH', 'Pradana Putri 2015', NULL, 'https://www.instagram.com/elfanfadilah/', NULL, 'elfa.jpg'),
(11, '15-16', 'FENI FEBRIANI', 'Juru Adat Putri 2015', 'https://www.facebook.com/feny.febriani.733', 'https://www.instagram.com/febrianifeny/', NULL, 'feni.jpg'),
(12, '15-16', 'RIKA YUSTIKA', 'Kerani Putri 2015', 'https://www.facebook.com/ncha.thea.77', 'https://www.instagram.com/rikaystk_/', NULL, 'rika.jpg'),
(13, '15-16', 'FAULIKA GUSTIANA V.', 'Juru Uang Putri 2015', NULL, 'https://www.instagram.com/faulikavanny/', NULL, 'faulika.jpg'),
(14, '15-16', 'ENUNG SITI NURJANAH', 'Ketua Bidang Putri 2015', 'https://www.facebook.com/nunx.ukhtitriethenkhasitha', 'https://www.instagram.com/esitinurjannah9/', NULL, 'enung.jpg'),
(15, '15-16', 'TIARA MAHARANI', 'Kajian Kepramukaan Putri 2015', 'https://www.facebook.com/rha.alwaysbeehappy', 'https://www.instagram.com/tyramhrn_/', NULL, 'tiara.jpg'),
(16, '15-16', 'AGNES MAULIDAYANI', 'Humas Putri 2015', NULL, 'https://www.instagram.com/agnesm_06/', NULL, 'agnes.jpg'),
(17, '15-16', 'SILVANI NURUL FAZRIAH', 'Sie. Evaluasi 2015', 'https://www.facebook.com/cnkariiezvynytyfriendsforever', 'https://www.instagram.com/vanisil01/', NULL, 'silvani.jpg'),
(18, '16-17', 'YOSEF DAMARA SUGIHARTO', 'Pradana Putra 2016', 'https://www.facebook.com/yosep.subangselatan', 'https://www.instagram.com/yosepds/', NULL, 'yosef.jpg'),
(19, '16-17', 'KURNIAWAN', 'Juru Adat Putra 2016', 'https://www.facebook.com/profile.php?id=100004445711369', 'https://www.instagram.com/kurniiawan29_/', NULL, 'maskur.jpg'),
(20, '16-17', 'AGUNG GINANJAR', 'Kerani Putra 2016', 'https://www.facebook.com/agung.ginanjar.7906', 'https://www.instagram.com/buleku01/', NULL, 'agung.jpg'),
(21, '16-17', 'CAHYANA', 'Juru Uang Putra 2016', 'https://www.facebook.com/ugang.saputra', 'https://www.instagram.com/ugang123/', NULL, 'ugang.jpg'),
(22, '16-17', 'LEONARDI SETIAWAN', 'Ket. Bidang Putra 2016', 'https://www.facebook.com/leonardi.setiawan.92', 'https://www.instagram.com/leonardistwn/', NULL, 'leo.jpg'),
(23, '16-17', 'ANA MANSYUR', 'Sie. Evaluasi Putra 2016', 'https://www.facebook.com/mansyur.drezpector.5', 'https://www.instagram.com/mansyur.id/', NULL, 'ana.jpg'),
(24, '16-17', 'SITI KHOLILAH', 'Pradana Putri 2016', 'https://www.facebook.com/profile.php?id=100008446958775', 'https://www.instagram.com/siti_kholilahh/', NULL, 'siti.jpg'),
(25, '16-17', 'DHEAN BURHAN A.P.', 'Juru Adat Putri 2016', 'https://www.facebook.com/dhe.d.burhan', 'https://www.instagram.com/dheanburhan2012/', NULL, 'dhean.jpg'),
(26, '16-17', 'ISTISARI', 'Kerani Putri 2016', 'https://www.facebook.com/isty.shari', 'https://www.instagram.com/istisari_/', NULL, 'isti.jpg'),
(27, '16-17', 'HANIFA SRI WAHYUNI', 'Juru Uang Putri 2016', 'https://www.facebook.com/hanifa.d.khalifa', 'https://www.instagram.com/hanifasriwahyuni/', NULL, 'hani.jpg'),
(28, '16-17', 'FAJRAH SUADA', 'Ket. Bidang  Putri 2016', 'https://www.facebook.com/fajrah.suada.3', 'https://www.instagram.com/fsuada_/', NULL, 'fajrah.jpg'),
(29, '16-17', 'DESTAMIA NURLAUZA', 'Kajian Kepramukaan  Putri 2016', 'https://www.facebook.com/dstamialauza9991', 'https://www.instagram.com/lauzaedgwa/', NULL, 'lauza.jpg'),
(30, '16-17', 'RENI AWALIYAH', 'Sie. Evaluasi Putri 2016', 'https://www.facebook.com/reni.awaliyah.7', 'https://www.instagram.com/reniaa53_/', NULL, 'reni.jpg'),
(31, '16-17', 'NOVITA TRI REZEKI', 'Sie. Evaluasi Putri 2016', 'https://www.facebook.com/profile.php?id=100007564846027', 'https://www.instagram.com/novitaaatr_/', NULL, 'novita.jpg'),
(32, '16-17', 'SELLY AMELIA', 'Sie. Kegiatan Putri 2016', 'https://www.facebook.com/selly.amelia.12720', 'https://www.instagram.com/sellyaml/', NULL, 'selly.jpg'),
(33, '17-18', 'TONI SUGIHANDANI', 'Pradana Putra 2017', 'https://www.facebook.com/profile.php?id=100007113547548', 'https://www.instagram.com/toni_sugihandani/', NULL, 'toni.jpg'),
(34, '17-18', 'MUGIA MIFTAHUL CHOIR', 'Juru Adat Putra 2017', 'https://www.facebook.com/mugia.choir', 'https://www.instagram.com/mugiachoir/', 'https://www.youtube.com/channel/UCOSRbGzBRg-4wH8i8qZbM4Q', 'mugia1.jpg'),
(35, '17-18', 'AGUNG MAULANA ROHMAWAN', 'Kerani Putra 2017', 'https://www.facebook.com/profile.php?id=100003385833568', 'https://www.instagram.com/agungmaulana94/', 'https://www.youtube.com/channel/UCS0wVXx0f7lC7ylMfNshNUw', 'ceria.jpg'),
(36, '17-18', 'RAMA PERMANA', 'Juru Uang Putra 2017', 'https://www.facebook.com/rama.permana.1675', 'https://www.instagram.com/ramapermana551/', NULL, 'ramper.jpg'),
(37, '17-18', 'RIJAL MAULANA', 'Sie. Logistik Putra 2017', 'https://www.facebook.com/profile.php?id=100025341971083', 'https://www.instagram.com/rijal.maulana.7370013/', NULL, 'rijal.jpg'),
(38, '17-18', 'MUHAMMAD RAMDANI', 'Humas Putra 2017', 'https://www.facebook.com/profile.php?id=100007326002397', NULL, NULL, 'toto.jpg'),
(39, '17-18', 'IRMA YULIANTI RAHAYU', 'Pradana Putri 2017', 'https://www.facebook.com/irmha.y.r', 'https://www.instagram.com/irma_yr/', NULL, 'irma.jpg'),
(40, '17-18', 'LISNA HAYATI', 'Juru Adat Putri 2017', 'https://www.facebook.com/profile.php?id=100006070037847', 'https://www.instagram.com/lisnaahayatii_/', NULL, 'lisna.jpg'),
(41, '17-18', 'DEVI PUSPITA', 'Kerani Putri 2017', 'https://www.facebook.com/profile.php?id=100003546654745', 'https://www.instagram.com/deviw_puspita/', NULL, 'devi.jpg'),
(42, '17-18', 'NENDEN RISTIANI', 'Juru Uang Putri 2017', 'https://www.facebook.com/profile.php?id=100025097900002', 'https://www.instagram.com/neristy28_/', NULL, 'nenden.jpg'),
(43, '17-18', 'NITA SARI', 'Kajian Kepramukaan  Putri 2017', 'https://www.facebook.com/irmha.y.r', 'https://www.instagram.com/nita_sari03/', NULL, 'nita.jpg'),
(44, '17-18', 'SITI KHOIRIYYAH', 'Sie. Kegiatan Putri 2017', 'https://www.facebook.com/profile.php?id=100006492363598', 'https://www.instagram.com/khoiriyyah__/', NULL, 'oi.jpg'),
(45, '17-18', 'PUTRI FAUZIAH RINJANI', 'Sie. Evaluasi Putri 2017', 'https://www.facebook.com/profile.php?id=100007564846027', 'https://www.instagram.com/putrifaurin/', NULL, 'mput.jpg'),
(46, '18-19', 'RAMA ADITIA', 'Pradana Putra 2018', 'https://www.facebook.com/Ramaciater', 'https://www.instagram.com/ramaadit15_/', NULL, 'rama.jpg'),
(47, '18-19', 'IQBAL MUSTOFA', 'Juru Adat Putra 2018', 'https://www.facebook.com/iqbal.mustofa.545', NULL, NULL, 'iqbal.jpg'),
(48, '18-19', 'GUNAR IBADIRAHMAN', 'Kerani Putra 2018', 'https://bit.ly/2WEg921', 'https://www.instagram.com/gunar_ibadirahman/', NULL, 'gunar.jpg'),
(49, '18-19', 'OKI NURCAHYA', 'Juru Uang Putra 2018', 'https://www.facebook.com/oky.nurcahya.94', 'https://www.instagram.com/pky_nurcahya/', NULL, 'oki.jpg'),
(50, '18-19', 'FADLI CAHYA ILHAMSYAH', 'Sie. Kedisiplinan Putra 2018', 'https://www.facebook.com/fadli.c.ilhamsyah', NULL, NULL, 'fadli.jpg'),
(51, '18-19', 'AGNY NURAFIFAH HIDAYAT', 'Pradana Putri 2018', 'https://www.facebook.com/agnynurafifahhidayat.hidayat', 'https://www.instagram.com/agnnyy.nh/', NULL, 'agny.jpg'),
(52, '18-19', 'ANDINI YULIANI', 'Juru Adat Putri 2018', 'https://www.facebook.com/anddini.yuliani', 'https://www.instagram.com/andiniya15_/', NULL, 'andini.jpg'),
(53, '18-19', 'SILVA SAMSIAH', 'Juru Uang Putri 2018', 'https://www.facebook.com/silva.samsiyah', 'https://www.instagram.com/silvasyamsiah/', NULL, 'silva.jpg'),
(54, '18-19', 'MERRY NOVIANTI HIDAYAT', 'Sie. Evaluasi Putri 2018', 'https://www.facebook.com/merry.novianti.12', 'https://www.instagram.com/merrynvnti/', NULL, 'merry.jpg'),
(55, '19-20', 'RIJAN LIBRIYAN', 'Pradana Putra 2019', NULL, 'https://www.instagram.com/rijanlibriyan_37/', NULL, 'rijan.jpg'),
(56, '19-20', 'TATANG SUHERMAN', 'Juru Adat Putra 2019', 'https://www.facebook.com/profile.php?id=100019291112919', 'https://www.instagram.com/tatang_438/', NULL, 'tatang.jpg'),
(57, '19-20', 'SANDI DHEA A.N.', 'Wakil Pradana Putra 2019', 'https://www.facebook.com/sandidhea.adinugraha.98', 'https://www.instagram.com/sndidheaadi/', NULL, 'sandi.jpg'),
(58, '19-20', 'MUHAMMAD THORIQ AZIZ', 'Kerani Putra 2019', NULL, 'https://instagram.com/muhammadthoriq782/', NULL, 'thoriq.jpg'),
(59, '19-20', 'ABDUL JABBAR', 'Kajian Kepramukaan Putra 2019', NULL, 'https://www.instagram.com/abdul_jabbar.24/', NULL, 'abdul.jpg'),
(60, '19-20', 'LUKMAN FATAH', 'Sie. Kegiatan Putra 2019', 'https://www.facebook.com/lukman.spenjha', 'https://www.instagram.com/lukmanfth_/', NULL, 'lukman.jpg'),
(61, '19-20', 'SATRIA PRAWIRA YUDANTA', 'Sie. Kedisiplinan Putra 2019', 'https://www.facebook.com/satria.yudanta.9', 'https://www.instagram.com/satriaprwra/', NULL, 'satria.jpg'),
(62, '19-20', 'LILIS SURYANINGSIH', 'Pradana Putri 2019', 'https://www.facebook.com/lilissuryaningsih.delis', 'https://www.instagram.com/lilissryningsh_/', NULL, 'lilis.jpg'),
(63, '19-20', 'INDAH WENING SARASWATI', 'Juru Adat Putri 2019', 'https://www.facebook.com/indah.wening.9', 'https://www.instagram.com/indahwngs_/', NULL, 'wening.jpg'),
(64, '19-20', 'ANANDA CANTIKA SEPTIANI', 'Wakil Pradana Putri 2019', NULL, 'https://www.instagram.com/naa.cantika/', NULL, 'ananda.jpg'),
(65, '19-20', 'UPI LUTPIANA', 'Kerani II Putri 2019', 'https://www.facebook.com/upi.lutpi.376', 'https://www.instagram.com/upilutpiana/', NULL, 'upi.jpg'),
(66, '19-20', 'YENI RAHMAWATI', 'Juru Uang Putri 2019', 'https://www.facebook.com/adil.ohex', 'https://www.instagram.com/auliaafbrnii_/', NULL, 'yeni.jpg'),
(67, '19-20', 'AULIA FEBRIANI', 'Juru Uang II Putri 2019', 'https://www.facebook.com/aulia.febriani.501', 'https://www.instagram.com/auliaafbrnii_/', NULL, 'aulia.jpg'),
(68, '19-20', 'CHINTYA SARI P.F.', 'Kajian Kepramukaan Putri 2019', 'https://www.facebook.com/chintya.sarip', 'https://www.instagram.com/chintyaasp74/', NULL, 'chintya.jpg'),
(69, '19-20', 'RISMA NURUL FATONAH', 'Kajian Kepramukaan Putri 2019', 'https://www.facebook.com/risma.fatonah.1', 'https://www.instagram.com/risma.nfff/', NULL, 'risma.jpg'),
(70, '19-20', 'CINDE MAHANI VIDIANTARI', 'Sie. Absensi Putri 2019', 'https://www.facebook.com/cinde.mahanividiantari.3', 'https://www.instagram.com/cindaaayyyy_/', NULL, 'cinde.jpg'),
(71, '19-20', 'SALWA NURUL FAJRIN', 'Sie. Evaluasi Putri 2019', 'https://www.facebook.com/jajanan.ngeunah.39', 'https://www.instagram.com/slwanrl/', NULL, 'salwa.jpg'),
(72, '19-20', 'TETI YULIANTI', 'Humas Putri 2019', 'https://www.facebook.com/tetiyulianti3', 'https://www.instagram.com/tety.yuliantii/', NULL, 'teti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `judul`, `author`, `file`, `created_at`, `updated_at`, `gambar`) VALUES
(6, 'Template Surat Pramuka', 'Mugia Miftahul Choir', 'CONTOH surat pramuka.doc', '2020-10-23 22:47:21', '2020-10-23 22:47:21', 'word.jpg'),
(7, 'Contoh Naskah Usulan Kegiatan', 'Mugia Miftahul Choir', 'NUK LGTM FIX.docx', '2020-10-23 23:12:52', '2020-10-23 23:12:52', 'word.jpg'),
(16, 'ADART DA Smanja 2019', 'Rama Aditya', 'ADART SMANJA 20192059592617.docx', '2020-10-24 16:26:20', '2020-10-24 16:26:20', 'word.jpg'),
(20, 'Fullmetal Alchemist', 'Mugia', 'Tugas 2 (Ms. Excel)337712500.pdf', '2020-10-24 16:35:02', '2020-10-24 16:39:35', 'pdf.jpg'),
(21, 'hashtag', 'asdfsadf', '# bursa pasar1085264825.docx', '2020-10-24 16:40:33', '2020-10-24 16:40:33', 'word.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `nama`, `link`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Raimuna Cabang 2019', 'https://drive.google.com/folderview?id=1tcuM_CC3MjwGq9OD14kcViILClwv_mK1', 'raicab.jpg', '2020-10-22 09:10:38', '2020-10-22 09:11:26'),
(2, 'Pengenalan Gerakan Pramuka 2019', 'https://drive.google.com/folderview?id=1J26AKTOHrsP4eHKdCEnKGHouLoskNJ8O', 'pgp1.jpg', '2020-10-22 09:10:42', '2020-10-22 09:11:29'),
(3, 'GSS 2017', 'https://drive.google.com/open?id=10_g-fpbWr4V_D7Jo_k6ljVlm6ul8mVjF', 'lomba.jpg', '2020-10-22 09:10:45', '2020-10-22 09:11:32'),
(4, 'Raimuna Ranting 2017', 'https://drive.google.com/open?id=1_MNBJ0_MUFWHbK4aH-qYYibqJDYTq0wK', 'garden.jpg', '2020-10-22 09:10:48', '2020-10-22 09:11:34'),
(5, 'Pengurus 2017-2018', 'https://drive.google.com/open?id=1OrW0QnAEaNgLgKwNSaGSxr3FeGEzw7Qh', 'angkatan.jpg', '2020-10-22 09:10:51', '2020-10-22 09:11:37'),
(6, 'Pelantikan Bantara-Laksana 2019', 'https://drive.google.com/open?id=1NgqEZGROWqHHUWoDT6m85tMLwknTpxbw', 'tingkat19.jpg', '2020-10-22 09:10:54', '2020-10-22 09:11:39'),
(7, 'Curug Sadim', 'https://drive.google.com/open?id=1btfWE4dAF9W1r1SCrRefshHGp7MonLp', 'holiday.jpg', '2020-10-22 09:10:57', '2020-10-22 09:11:42'),
(8, 'Raimuna Daerah 2017', 'https://drive.google.com/folderview?id=10Lgd-5jMtOx5fqeNm1hwUFYS9kw6F7Nu', 'raida.jpg', '2020-10-22 09:11:01', '2020-10-22 09:11:45'),
(9, 'Angkatan 2015-2016', 'https://drive.google.com/folderview?id=11WSXGT4o93At9XY1TnroUZXV8KP3gOlI', 'arifa.jpg', '2020-10-22 09:11:04', '2020-10-22 09:11:47'),
(10, 'Bersih-bersih', 'https://drive.google.com/folderview?id=10YnviZMEIdeDVk64YJvBgZwjgu7Zcsy_', 'beberes.jpg', '2020-10-22 09:11:07', '2020-10-22 09:11:50'),
(11, 'Curug Cileat', 'https://drive.google.com/folderview?id=1TIfvdtDKOS926CPtiW0AhY8_f7KlXuKe', 'cileat.jpg', '2020-10-22 09:11:10', '2020-10-22 09:11:52'),
(12, 'Demo Ekskul', 'https://drive.google.com/folderview?id=1O0oFdhcQ4mHZurbLpd-GFD5fvTE5zAhS', 'demo.jpg', '2020-10-22 09:11:13', '2020-10-22 09:11:55'),
(13, 'Ramadhan Ceria Smanja', 'https://drive.google.com/folderview?id=1Zi2EBKqbB3IKTMjudKqcVaLAQfjpi115', 'ramcer.jpg', '2020-10-22 09:11:16', '2020-10-22 09:11:57'),
(14, 'Renang dan Ngaliwet', 'https://drive.google.com/folderview?id=1x5LjXVtLuyYxkSKxtsHIavPsk-6MtiKY', 'renang.jpg', '2020-10-22 09:11:19', '2020-10-22 09:12:00'),
(15, 'Perkemahan Saka Wira Kartika', 'https://drive.google.com/folderview?id=15z5cP5jI9QhEA9lnveSPjchWUIVuhiKx', 'saka.jpg', '2020-10-22 09:11:22', '2020-10-22 09:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_kegiatan`
--

CREATE TABLE `kategori_kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_kegiatan`
--

INSERT INTO `kategori_kegiatan` (`id`, `nama`, `deskripsi`, `gambar`, `link`) VALUES
(1, 'Perkemahan', 'Kami mengikuti berbagai kegiatan perkemahan setiap tahunnya, baik itu bersifat perlombaan, pertemuan, ataupun hiburan.', 'kemah.jpg', 'perkemahan'),
(2, 'kegiatan Internal', 'Seperti halnya organisasi lain, kami memiliki banyak program kerja yang dilaksanakan di Pangkalan kami sendiri.', 'pgp.jpg', 'internal'),
(3, 'Mengikuti Perlombaan', 'Selain aktif melaksanakan kegiatan kepramukaan di Pangkalan, kami juga selalu aktif pada kegiatan di luar, seperti lomba-lomba yang diselenggarakan oleh Pangkalan atau Dewan Kerja lain.', 'lomba.jpg', 'perlombaan'),
(4, 'Hiburan', 'Karena kegiatan pramuka haruslah menarik, kami tidak hanya berfokus pada kegiatan-kegiatan formal, namun juga bermain dan liburan bersama seluruh pengurus Dewan Ambalan.', 'nyurug.jpg', 'hiburan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengurus`
--

CREATE TABLE `kategori_pengurus` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_pengurus`
--

INSERT INTO `kategori_pengurus` (`id`, `nama`, `gambar`, `link`) VALUES
(1, 'Pengurus 2015-2016', 'muncak.jpg', '15-16'),
(2, 'Pengurus 2016-2017', '1617.jpg', '16-17'),
(3, 'Pengurus 2017-2018', 'angkatan.jpg', '17-18'),
(4, 'Pengurus 2018-2019', '1819.jpg', '18-19'),
(5, 'Pengurus 2019-2020', '1920.jpg', '19-20');

-- --------------------------------------------------------

--
-- Table structure for table `materis`
--

CREATE TABLE `materis` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `quote` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materis`
--

INSERT INTO `materis` (`id`, `judul`, `deskripsi`, `gambar`, `quote`, `updated_at`, `created_at`) VALUES
(1, 'Sejarah Kepanduan Dunia', '<p align=”justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nHallo kakak-kakak pramuka, kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit materi tentang Sejarah Kepanduan Dunia. Apakah kakak-kakak sudah tahu tentang materi ini?  Tentunya materi ini sudah tidak asing lagi bukan? Nah, untuk lebih jelasnya, simak pembahasan di bawah ini. <br><br>\r\n\r\n<strong>KEPANDUAN BERMULA</strong><br>\r\nKepanduan dunia bermula ketika Baden-Powell mengadakan perkemahan eksperimental di Pulau Brownsea, Inggris. Ide untuk mengadakan perkemahan ini muncul ketika Baden-Powell mempertahankan kota Mafeking di Afrika Selatan pada perang Boer II. Pada saat itu Baden-Powell dibantu oleh para pemuda yang dilatih menjadi Tentara Sukarela untuk melawan Para Tentara Boer, tentara ini kini dikenal sebagai Kadet Mafeking. Keberhasilan para pemuda itu menumbuhkan ide dalam pikiran BP yang kelak akan berkembang menjadi Gerakan Kepanduan.<br><br>\r\n<strong>KEPANDUAN MULAI BERKEMBANG PESAT</strong><br>\r\nPada Tahun 1899 Baden-Powell membuat buku Aids To Scouting yang dijadikan buku panduan para Scout muda pada saat itu. Lalu untuk menguji ide-ide di buku tersebut, Baden-Powell mengadakan perkemahan selama 9 hari pertama bulan agustus pada 1907 di Pulau Brownsea dengan 20 pemuda (10 dari Boys Brigade, dan 10 dari sekolah umum), selain itu keponakan BP yang masih berumur 9 tahun bernama Donald Baden-Powell, dan putra dari Baron Rodney yaitu Simon Rodney juga ikut menghadiri perkemahaan di Pulau Brownsea itu.. Selama berkemah Baden-Powell mencatat pengalaman nya setiap hari, pada akhir perkemahan catatn nya itu dibukukan dalam sebuah buku yang berjudul Scouting For Boys. Buku itu dijadikan petunjuk ide baru untuk organisasi pemuda pada saat itu. Berkat kesuksesan buku Scouting For Boys Baden Powell mendirikan organisasi Boys Scout. Organisasi itu diperuntukan untuk anak laki laki usia penggalang. Namun karena besarnya pula minat para kaum perempuan dalam mengikuti organisasi tersebut. Akhirnya dengan bantuan Adik Baden-Powell yaitu Agnes, ia mendirikan organisasi kepanduan putri dengan nama Rosebuds pada 1910, tapi setelah itu berganti nama menjadi Girl Guides pada tahun 1914. Dan Agnes ditunjuk sebagai Presiden Organisasi Kepanduan Putri yang pertama. Tahun 1917 Agnes mundur dan digantikan oleh Olave Baden-Powell.<br><br>\r\n<strong>Beberapa organisasi yang didirikan Baden-Powell :</strong><br>\r\n<ol>\r\n<li>Tahun 1908 mendirikan organisasi Boy Scout, organisasi untuk para pandu putra usia penggalang.\r\n<li>Tahun 1912 dengan bantuan adiknya Agnes, mendirikan organisasi Girls Guides, organisasi untuk para pandu putri usia penggalang.\r\n<li>Tahun 1916 mendirikan organisasi CUB (anak serigala), organisasi ini untuk para pandu usia siaga. Dengan petunjuk buku The Jungle Book karya Rudyard Kiplling.\r\n<li>Tahun 1918 mendirikan organisasi Rover Scout, organisasi untuk para pandu usia Penegak. Yang kemudian pada tahun 1922 Baden-Powell menerbitkan buku yang berjudul Rover Scout. Buku itulah yang kemudian dijadikan sebagai petunjuk organisasi ini.\r\n</ol>\r\n<p align=”justify>\r\n\r\nTahun 1919 Baden-Powell membeli taman yang ia beri nama Gilwell Park, taman tersebut dijadikan sebagai tempat latihan. Pada tahun 1920 diadakan jabore dunia pertama di Olympia Hall, London. Jambore itu diikuti kurang lebih ada 27 negara. Dan pada hari terakhir jambore itu, tepatnya 6 agustus 1920 juga Baden-Powell di anugerahi sebagai Bapak Pandu Sedunia.<br><br>\r\nSejak tahun 1920 dibentuklah kantor Biro Kepanduan Dunia yang bertempat di London. Namun pada tahun 1958 dipindahkan ke Ottawa, Kanada. Lalu pada tahun 1968 dipindahkan lagi ke Jenewa, Swiss, dan sekarang kantor Biro Kepanduan Dunia sudah tetap berada disana. Lalu padatahun 1939 Baden-Powell dan istrinya memutuskan untuk pindah ke Nyeri, Kenya. Hingga pada tangga 8 Januari 1941 Baden-Powell mengembuskan nafas terakhirnya disana. Dan dimakankan di pemakaman St. Peter Nyeri.<br><br>\r\n\r\nItulah yang dapat kami sampaikan, mohon maaf jika terdapat banyak kekurangan dan kekeliruan.</p>\r\n', 'skd.jpg', '<i>\"The Spirit is there in every boy, it has to be discovered and brought to light.\"</i><br>-Robert Baden-Powell', '2020-10-16 02:57:14', '2020-10-16 02:56:25'),
(2, 'Sejarah Gerakan Pramuka', '<p align=”justify”>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak semua kali ini kami akan menjelaskan sedikit tentang Sejarah Gerakan Pramuka di Indonesia.<br><br>\r\n<strong>YUK MARI MENGULAS KEMBALI SEJARAH KEPANDUAN DI INDONESIA!!!</strong> <br>\r\n     Sejarah pramuka di Indonesia berawal dari Gagasan Baden PowelI yang merupakan Bapak Pandu sedunia. Lord Robert Baden-Powell Of Gilwell menuliskan pengalaman dalam pembinaan remaja di negara lnggris, yang kemudian tumbuh berkembang menjadi gerakan kepanduan (kepramukaan). <br><br>\r\n    Baden Powell menulis buku Scouting for Boys lalu menyebar ke berbagai negara, termasuk ke Netherland (Belanda) dengan nama “Padvinder“. Oleh orang Belanda, gagasan itu dibawa ke Indonesia yang merupakan wilayah jajahannya. Lalu didirikanlah organisasi dengan nama NIPV (Nederland Indische Padvinders Vereeniging atau Persatuan Pandu-Pandu Hindia Belanda). <br><br>\r\n   Melihat dan memperhatikan gerakan kepanduan tersebut, maka tokoh-tokoh gerakan nasional berniat mendirikan Padvinders (Pandu) untuk anak bangsa dan kemudian muncullah Padvinders Indonesia. Sejarah telah mencatat bahwa gerakan pramuka (kepanduaan) turut berperan aktif dalam kongres pemuda pada tanggal 28 Oktober 1928 yang mencetuskan sumpah pemuda sehingga kepanduan Indonesia semakin berkembang. K.H. Agus Salim mencetuskan untuk mengganti Padvenders dengan nama Pandu atau kepanduan setelah adanya larangan Pemerintah Hindia Belanda menggunakan istilah Padvinders. <br><br>\r\n   Pada tahun 1930 organisasi kepanduan seperti IPO, PK (Pandu Kesultanan), dan PPS (Pandu Pemuda Sumatra) bergabung menjadi KBI (Kepanduan Bangsa Indonesia]. Saat pada masa penjajahan Jepang, pergerakan Kepanduan sempat dilarang karena para pandu ikut terjun dan saling bahu-membahu untuk memperjuangkan kemerdekaan Indonesia. Namun, idealisme dan semangat tetap menjiwai para pandu. <br><br>\r\n   Pada awal tahun 1950, banyak bermunculan organisasi-organisasi kepanduan sehingga Menteri Pendidikan, Pengajaran, dan Kebudayaan, mengganti  keputusan Nomor 93/Bhg.A, Tanggal 1 Februari 1947 dengan Keputusan Nomor 23441/ Kab, Tanggal 6 September 1951. Hal ini memungkinkan organisasi kepanduan lain selain Pandu Rakyat Indonesia. <br><br>\r\n   Pada tanggal 16 September 1951, terbentuklah IPINDO (Ikatan Pandu Indonesia) yang diterima menjadi anggota Internasional Conference (Organisasi Kepanduan Sedunia) mewakili Indonesia masuk dalam Far East Regional Scout Ofﬁcer pada tahun 1953. <br><br>\r\n   Pada tahun 1954, terbentuklah organisasi POPPINDO (Persaudaraan Organisasi Pandu Puteri Indonesia) dan PKPI (Kepanduan Putri Indonesia) yang melebur menjadi PERKINDO (Persatuan Kepanduan Indonesia). <br><br>\r\n\r\n<strong>TERBENTUKNYA GERAKAN PRAMUKA</strong><br>\r\nDalam kurun waktu 1950-1960 banyak organisasi kepanduan tumbuh di Indonesia. 100 organisasi kepanduan yang terhimpun dalam tiga federasi organisasi, yaitu IPINDO, POPPINDO dan PKPI. Oleh sebab itu, Presiden Soekarno memberikan amanat pemimpin pandu di Istana Merdeka pada tanggal 9 Maret 1961. Presiden Soekarno menyatakan pembubaran semua organisasi kepanduan di Indonesia dan kemudian meleburnya menjadi organisasi baru yang bernama Gerakan Pramuka dengan lambang tunas kelapa, tanggal 9 Maret ini kini diperingati sebagai Hari Tunas Gerakan Pramuka. <br><br>\r\nLalu pada 20 Mei pada tahun yang sama diterbitkanlah keputusan presiden nomor 238 tahun 1961, yang menetapkan bahwa Gerakan Pramuka sebagai satu-satunya organisasi kepanduan di Indonesia, hari itu diperingati sebagai Hari Permulaan Tahun Kerja, setelah itu setiap perwakilan organisasi kepanduan di Indonesia dikumpulkan dan memberikan pernyataan bahwa seluruh organisasi tersebut dengan suka rela dilebur kedalam Gerakan Pramuka pada 30 Juli 1961 sehingga tanggal itu disebut sebagai Hari Ikrar Gerakan Pramuka.\r\nDan Sampailah puncaknya pada 14 Agustus 1961 dimana dilaksanakannya pelantikan Mapinas, Kwarnas, dan Kwarnari di Istana negara  dengan Sri Sultan Hamengkubuwona IX sebagai ketua Kwarnas, dan itulah yang kini kita kenal sebagai Hari Pramuka. </p>\r\n', 'sgp.jpg', '<i>\"Dalam negeri kita, janganlah kita yang menumpang.\"</i><br>-Agus Salim', '2020-10-16 02:57:23', '2020-10-16 02:56:28'),
(3, 'Biografi Baden-Powell', '<p align=justify>\r\n<table class=\"table table-responsive table-striped\">\r\n        <tr><td>Nama Lengkap		<td>: Robert Stephenson Smyth Baden-Powell\r\n          <tr><td>Nama Panggilan		<td>: Baden-Powell atau dipanggil “BP” (Dibaca : bipi)\r\n          <tr><td>Nama Kecil	<td>: Stephenson\r\n          <tr><td>TTL	<td>: London, Inggris, 22 Februari 1857\r\n          <tr><td>Wafat	<td>: Nyeri, Kenya, 8 Januari 1941\r\n          <tr><td>Nama Ayah	<td>: Prof. Domine Baden-Powell\r\n          <tr><td>Nama Ibu	<td>: Miss Henrietta Grace Smyth\r\n          <tr><td>Sembilan Saudara Baden-Powell <td>:<ol type=\"1\">\r\n          <li>Warrington (lahir awal 1847)\r\n          <li>George (lahir akhir 1847)\r\n          <li>Augustus (lahir 1849)\r\n          <li>Frank (lahir 1850)\r\n          <li>Penrose\r\n          <li>Agnes (lahir 1858)\r\n          <li>Henrietta\r\n          <li>Jessie\r\n          <li>Baden Flecter (lahir 1860)\r\n          </ol>\r\n\r\n          <tr><td>Nama Istri	<td>: Olave St. Clair Soames (Lady Baden-Powell)\r\n          <tr><td>Nama Anak 	<td>:<ol type=\"1\"><li>Arthur Robert Peter Baden-Powell (1913-1962)\r\n          	   <li>Heather Grace Baden-Powell (1915-1986)\r\n          	   <li>Betty Clay (1917-2004)</ol>\r\n          <tr><td>Cucu Baden-Powell	<td>:  <ol type=\"A\"><li>Anak dari pernikahan Peter dengan Carine<ol type=\"1\">\r\n          <li>Robert Clause\r\n          <li>David Michael\r\n          <li>Wendy</ol>\r\n          	  <li>Anak dari pernikahan Heather dengan John King<ol type=\"1\">\r\n          	       <li>Michael\r\n          	       <li>Timothy</ol>\r\n          	   <li>Anak dari pernikahan Betty dengan Charles<ol type=\"1\">\r\n          	       <li>Gillian\r\n          	       <li>Robin\r\n          	       <li>Nigel\r\n          	       <li>Crispin</ol></ol>\r\n          <tr><td>Sekolah Baden-Powell	<td>: Charter house (1870)\r\n          <tr><td>Kegiatan Extra BP di Charterhouse <td>:<ol type=\"a\"><li>Marching Band\r\n          	              <li>Klub Menembak (rifle corps)\r\n          	              <li>Kiper Kesebelasan Charter house\r\n          	              <li>Teater\r\n          	              <li>Melukis / Menggambar</ol>\r\n          <tr><td>Julukan Baden-Powell	<td>:<ol type=\"1\">\r\n          <li>BP (bee-pee / bipi) Oleh para pandu\r\n          <li>Ste, Stephe, Steevie atau Stephenson (nama kecil Baden-Powell)\r\n          <li>“impeesa” yang artinya “Serigala yang tidak pernah tidur” di Afrika Selatan.\r\n          <li>“Bathing-Towel” di Charter house School.\r\n          <li>Gelar Lord Baden-Powell of Gilwell, dengan julukan Baron oleh Raja George V.</ol>\r\n</p>\r\n\r\n          <tr><td>Beberapa karangan buku dan peristiwa penting Baden-Powell	<td>:<ol type=\"1\">\r\n          <li>Buku pertama berjudul “Aids To Scouting” (petunjuk para tentara muda Inggris) pada 1899.\r\n          <li>Scouting for Boys (Materi latihan kepanduan) tahun 1908\r\n          <li>Berdirinya Boys Scout (usia penggalang) pada 1908\r\n          <li>Tahun 1910 bersama adiknya (Maria Agnes) membentuk Pandu untuk Perempuan dengan sebutan “Girl Guides”\r\n          <li>Tahun 1916 berdiri CUB (anak serigala) / kelompok usia Siaga yang berpedoman pada buku The Jungle Book karangan Rudyard Kippling\r\n          <li>Tahun 1918 terbentuk Rover Scout (usia penegak / organisasi pemuda yang sudah berusia 17 tahun).\r\n          <li>Tahun 1920, jamboree pertama kali di Arena Olympia Hall, London. Baden-Powell mengundang Pandu dari 27 negara dan Baden Powell diangkat sebagai Bapak Pandu Sedunia (Chiefscout of the World)\r\n          <li>Tahun 1922, terbit buku Rovering to Success (menggambarkan seorang pemuda yang mengayun sampannya sampai menuju pantai yang bahagia)\r\n          </ol>\r\n          <tr><td>Pengalaman Baden-Powell yang berpengaruh pada kegiatan kepanduan<td>:<ol type=\"1\">\r\n          <li>Karena ditinggal bapak sejak kecil, maka mendapatkan pembinaan watak ibunya.\r\n          <li>Dari kakaknya mendapat latihan keterampilan berlayar, berenang, berkemah,\r\n                Olahraga dan lain-lainnya.\r\n          <li>Pengalaman di India sebagai pembantu Letnan pada Resimen 13 Kavaleri yang\r\n             berhasil mengikuti jejak kuda yang hilang di puncak gunung serta keberhasilan\r\n             melatih panca indera kepada Kimball O’Hara.\r\n          <li>Terkepung bangsa Boer di kota Mafeking, Afrika Selatan selama 127 hari dan\r\n                kekurangan makan.\r\n          <li>Pengalaman mengalahkan Kerajaan Zulu di Afrika dan mengambil kalung manik\r\n                kayu milik Raja Dinizulu.</ol>\r\n      </table>', 'bp.jpg', '<i>\"No one can pass through life, any more than he can pass through a bit of country,\r\n     without leaving tracks behind, and those tracks may often be helpful to those coming after him in finding their way.\"</i><br>-Robert Baden-Powell', '2020-10-16 02:57:34', '2020-10-16 02:56:32'),
(8, 'Pramuka dalam Pendidikan', '<p align=justify>\r\n<strong>Salam pramuka!</strong><br>\r\nHallo kakak-kakak Pramuka, kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit tentang kepramukaan di bidang pendidikan,  mungkin juga kakak-kakak sudah merasakan peran pramuka di sekolah seperti diadakannya kegiatan pramuka wajib. Untuk lebih jelasnya berikut penjelasannya. <br><br>\r\n<strong>KENAPA SIH HARUS ADA KEGIATAN PRAMUKA DI SEKOLAH?</strong><br>\r\n     Pramuka wajib adalah kegiatan kepramukaan yang bertujuan untuk membangun karakter siswa menjadi lebih baik dan mengembangkan fungsi kewarganegaraan. Selain itu diwajibkannya kegiatan pramuka di sekolah dapat memberikan keseimbangan skill yang diajarkan disekolah, dimana pendidikan akademik menyediakan ilmu-ilmu teoritis, dalam kegiatan pramuka siswa dituntuk agar belajar dengan melakukan atau praktek<br><br>\r\n<strong>APA MANFAATNYA TERHADAP SISWA? </strong><br>     \r\nPramuka di dalam pendidikan sangat bermanfaat bagi pertumbuhan karakter. Karakter sangatlah penting bagi semua orang karena karakter inilah yang akan selalu dinilai oleh masyarakat sekitar, bukan dari nilai-nilai pada pelajaran saja.<br><br>\r\n<strong>APA SAJA YANG DIAJARKAN PADA KEGIATAN INI?</strong><br>\r\nUntuk mengembangkan fungsi kewarganegaraan pramuka mengajarkan hal-hal berikut.</p>\r\n<ul>\r\n<li>Pramuka mengajarkan seseorang untuk memiliki karakter yang unggul dan kuat.\r\n<li>Pramuka mengajarkan seseorang untuk mandiri dan bisa beradaptasi dengan lingkungan sekitarnya, contohnya ketika semua orang harus menerima adanya teknologi yang sangat canggih dan harus beradaptasi dengan perubahan jaman.\r\n<li>Memiliki watak yang mulia dan saling menghargai, contohnya saling menghargai ketika bertemu atau bersama orang yang berbeda agama.\r\n<li>Bertanggung jawab, jujur, dan gotong royong, sebagai contoh ketika seseorang merusak sesuatu ia harus mengakui atau jujur bahwa dia yang melakukan dan bekerja sama untuk memperbaiki.\r\n<li>Menumbuhkan rasa nasionalisme dan patriotisme sebagai contoh rasa cinta tanah air yaitu dengan menjaga alam yang ada di sekitar.\r\n</ul>\r\n<p align=justify>Nah, sekarang kita sudah tahu apa saja manfaat pramuka dalam bidang pendidikan semoga dengan penjelasan ini kita dapat lebih memahami kepramukaan yah kakak-kakak, mohon maaf bila ada kesalahan, terimakasih.<br><br></p>\r\n', '5edd7645a2b55.jpg', '<i>\"Berikan aku sepuluh pemuda, niscaya akan kuguncang dunia.\"</i><br>-Ir. Soekarno', '2020-10-16 02:57:38', '2020-10-16 02:56:35'),
(10, 'Api Unggun', '<p align=justify>\r\n<strong>Salam Pramuka!</strong> <br>\r\nHalo kakak-kakak semua, kami dari Pramuka SMAN 1 Jalancagak, di kesempatan kali ini kami akan membahas tentang Api Unggun. Wah nama yang sudah tidak asing lagi bukan ? Pasti kakak-kakak sering mendengar tentang Api Unggun. Biasanya api unggun dipakai dikegiatan seperti berkemah, pelantikan dan lain-lain. Nah kali ini kami akan memberikan sedikit materi tentang Api Unggun.  Yuu simak pembahasannya !!!!! <br><br>\r\n<strong>Kakak-kakak, apa sih api unggun itu ?</strong> <br>\r\nApi Unggun adalah api yang dibuat atau dinyalakan pada unggun (timbunan kayu) agar nyalanya lebih terang dan hangatnya lebih meluas untuk suatu kepentingan. Makna yang terkandung dalam api unggun adalah api yang berkobar menyala yakni semangat yang membara. Juga panasnya api melambangkan kekuatan dan cahayanya melambangkan petunjuk persatuan dan persaudaraan.<br><br>\r\n<strong>Berbagai fungsi api unggun:</strong><br>\r\nNah ada 4  fungsi yaitu :\r\n<ol>\r\n<li> Alat pemanas dikala cuaca dingin.\r\n<li> Alat penerang dikala suasana gelap gulita.\r\n<li>Alat pengusir binatang buas dari hutan.\r\n<li>Alat ketenteraman dan kegembiraan.\r\n</ol>\r\n<p align=justify><strong>Ada macam-macam api unggun yaitu:</strong><br>\r\n<ol type=”1”>\r\n<li>Menurut keperluan dan sifatnya :<br>\r\n<ol type=”a”>\r\n<li>Api unggun resmi <br>\r\n    Api unggun yang dipergunakan untuk acara-acara resmi atau formal.\r\n       <li>Api unggun biasa<br>\r\n           Api unggun untuk keperluan rekreasi sehingga suasana lebih meriah dan  \r\n           gembira\r\n</ol>\r\n<li>Menurut bentuknya : <br>\r\n<ol type=”a”>\r\n        <li>Api unggun asli<br>\r\n            Api unggun yang benar-benar dibuat dengan unggu-kan kayu dan\r\n            diselenggarakan di tempat terbuka.\r\n        <li>Api unggun tiruan (imitasi)<br>\r\n            Api unggun yang tidak sebenarnya dibuat dengan unggukan kayu melainkan \r\n            hanya tiruan belaka. Hal ini dapat berupa lampu, lilin, atau Iistrik yang\r\n            dipergunakan dalam ruangan.\r\n</ol>\r\n</ol>\r\n<p align=justify><strong>Syarat-syarat tempat api Unggun:</strong><br>\r\nNah untuk menyalakan api unggun harus memperhatikan tempat dengan syarat-syarat sebagai berikut:<br>\r\n<ol>\r\n<li>Tempat yang terbuka cukup luas yang sesuai dengan peserta.\r\n<li>Tanah lapang yang cukup kering, sehat, dan permukaannya datar.\r\n<li>Suasana sekitar lapangan tidak rimbun.\r\n<li>Tempatnya jauh dari kediaman umum agar tidak mengganggu dan terganggu.\r\n<li>Terlindung dari angin keras yang akan mengacau asap dan abu api unggun.\r\n</ol>\r\n<p align=justify><strong>Upacara penyalaan api unggun </strong><br>\r\nAgar proses penyalaan api unggun terasa hikmat maka diperlukan upacara, dengan urutan sebagai berikut:<br>\r\n<ol>\r\n<li>Persiapan\r\n<li>Penyalaan obor Dasa Darma\r\n<li>Penyalaan Umum.\r\n<li>Amanat Pembina\r\n<li>Atraksi\r\n<li>Penutup.\r\n</ol>\r\n<p align=justify>Nah, itulah kakak-kakak sedikit materi tentang Api Unggun, semoga materinya bermanfaat. Mohon maaf jika ada kesalahan, terimakasih atas perhatiannya.<br><br></p>\r\n', '5edd7bdf81ab5.jpg', '<i>\"Seseorang hanya bisa menikmati api unggun jika ia menghangatkan pikirannya dengan api itu, sama dengan ia menghangatkan tangan dan kakinya\"</i><br>-Odell Shepherd', '2020-10-16 02:57:42', '2020-10-16 02:56:40'),
(11, 'Pertolongan Pertama Pada Kecelakaan (P3K)', '<p align=justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak sahabat pramuka sekalian Kami dari Pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang P3K. Berbicara tentang P3K mungkin kakak kakak sering mendengarnya. <br><br>\r\n<strong>Apa sih itu P3K?</strong><br>\r\nP3K (PPPK) adalah upaya pertolongan dan perawatan sementara terhadap korban kecelakaan sebelum mendapat pertolongan yang lebih sempurna dari dokter. Berarti pertolongan tersebut bukan sebagai pengobatan atau penanganan yang sempurna, tetapi hanyalah berupa pertolongan sementara yang dilakukan oleh orang yang pertama melihat korban.<br><br>\r\n<strong>Apa kakak-kakak tahu kenapa dilakukan P3K?</strong><br>\r\nTujun P3K yaitu:\r\n<ol>\r\n<li>Mencegah keadaan memburuk.\r\n<li>Mencegah cacat yang lebih berat\r\n<li>Mencegah infeksi\r\n<li>Mengurangi rasa sakit dan rasa takut\r\n</ol>\r\n<p align=justify>\r\n<strong>Apa saja prinsip yang diterapkan dalam P3K?</strong><br>\r\nBeberapa prinsip yang harus ditanamkan pada petugas P3K apabila menghadapi kecelakaan yaitu :\r\n<ol>\r\n<li>Bersikaplah tenang, jangan panik. Karena ketika kita tidak tenang bisa jadi akan menambah beban kepada korban kecelakaan.\r\n<li>Gunakan mata dengan jeli. Liat lah luka yang dapat diliat mata terlebih dahulu.\r\n<li>Perhatikan keadaan sekitar kecelakaan.\r\n<li>4.Perhatikan keadaan penderita apakah pingsan, ada perdarahan dan luka, patah tulang, merasa sangat kesakitan.\r\n<li>Periksa pernafasan korban. Kalau tidak bernafas, periksa dan bersihkan jalan nafas.</ol>\r\n<p align=justify>\r\nItulah beberapa prinsip yang harus dimiliki petugas P3K. Baik kakak kakak sekalian kali ini kami akan memberikan cara melakukan pertolongan pertama pada patah tulang. <br><br>\r\n<strong>Bagaimana sih caranya?</strong><br>\r\nTentunya kakak-kakak tahu patah tulang ini tidak mengancam nyawa tetapi kita sebagai pramuka ketika melakukan kegiatan terus ada teman kita yang terkena patah pulang kita harus tau apa yang harus kita lakukan. Baik teman-teman pramuka sekalian pada korban patah tulang ini memiliki beberapa ciri. Diantaranya:<ol>\r\n<li>Rasa sakit di area yang cedera.\r\n<li>Area yang cedera tampak kebiruan, bengkak, atau berubah bentuk.\r\n<li>Tulang tampak menembus kulit atau menonjol.\r\n<li>Pendarahan di lokasi cedera.</ol>\r\n<p align=justify>\r\n   Itulah yang sering terjadi pada korban patah tulang. Setelah tau ciri-cirinya kita lanjut cara pertolongan pertama pada kecelakaan patah tulang. Berikut penjelasannya. <br><ol>\r\n<li>Lepaskan pakaian yang menutupi area yang dicurigai mengalami patah tulang.\r\n<li>Jika tidak bisa dilepas, gunting pakaian tanpa memindahkan bagian tubuh yang patah.\r\n<li>3. Rekatkan area patah tulang dengan penggaris atau tongkat sebagai bidai.\r\n<li>4. Apabila tidak ada perban gulung, Anda bisa menggunakan sepotong pakaian.\r\n<li>Setelah pembidaian kompres dengan menggunakan es batu.\r\n<li>Bawa korban ketempat yang aman.</ol>\r\n<p align=justify>\r\n\r\n   Itulah sedikit yang dapat kami berikan tentang pertolongan pertama pada kecelakaan patah pulang. Sedangkan Untuk kecelakaan yang terjadi dan menyebabkan luka cukup parah, sebaiknya memang segera memanggil layanan ambulans dan staf kesehatan profesional. Demikian pula jika ada kejadian tersedak yang parah. <br><br>\r\nMeski demikian, sambil menunggu kedatangan bantuan medis, ada beberapa langkah pertolongan pertama yang bisa Anda lakukan untuk membantu orang yang terluka maupun tersedak.<br><br>\r\n<strong>Lalu untuk luka pendarahan, bagaimana pertolongan pertamanya?</strong><br>\r\nLangkah-langkah untuk luka berdarah diantaranya:<br><ol>\r\n<li> Menghentikan perdarahan.<br>\r\n   Langkah ini harus dilakukan sebelum membalut luka. Cara menghentikan darah dengan benar meliputi menekan area yang terluka menggunakan bahan yang bersih. Lakukan tekanan selama beberapa menit sampai darah berhenti keluar. <br><br>\r\n<li> Gunakan sarung tangan.<br>\r\n    Jika ada sarung tangan gunakanlah sarung tangan sekali pakai saat menangani luka berdarah. Langkah ini berguna untuk mengurangi risiko infeksi. <br><br>\r\n<li> Memeriksa luka.<br>\r\n    Periksalah apa ada benda yang tertinggal atau tertancap di dalam luka. Jika ada, jangan menekan atau mencabutnya.Untuk menghentikan perdarahan, beri tekanan di sekitar benda tersebut. Buatlah semacam penyangga atau ganjal di sekitar benda yang tertancap sebelum membalutnya dengan perban. Dengan ini, benda tersebut tidak terkena tekanan. <br><br>\r\n<li> Gunakan perban.<br>\r\n    Setalah dibersihkan dan darah nya udah reda maka gunakanlah perban untuk menghentikan darah. Kemudian bawa ke dokter untuk penanganan lebih lanjut. Itulah sedikit yang dapat kami berikan pertolongan pertama pada luka pendarahan. <br><br>\r\n<p align=justify>\r\n    Mohon maaf bila ada kata-kata yang kurang dimengerti atau pembahasan yang kurang lengkap karna kami masih dalam tahap belajar. <br><br></p>\r\n', 'p3k.png', '<i>\"The most worthwhile thing is to try to put happiness into the lives of others.\"</i><br>-Robert Baden-Powell', '2020-10-16 02:57:46', '2020-10-16 02:56:43'),
(12, 'World Organization of the Scout Movement (WOSM)', '<p align=justify>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak kakak sekalian Kami dari Pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang WOSM .<br><br>\r\n<strong>APA ITU WOSM?</strong><br>\r\nWOSM adalah Gerakan kepanduan seluruh dunia. WOSM adalah singkatan dari World Organization of the Scout Movement yang didirikan oleh Sir Robert Baden-Powell pada 1922, hingga saat ini WOSM memiliki keanggotaan sebanyak 171 organisasi kepanduan di seluruh dunia dan memiliki anggota lebih dari 54 juta pandu, markas utama WOSM berada di Jenewa, Swiss, namun untuk kantor operasionalnya ada di Kuala Lumpur, Malaysia. Misi dari WOSM adalah untuk  berkontribusi terhadap pendidikan dan pembinaan generasi muda melalui sistem nilai yang berdasarkan Janji dan aturan Pandu.<br><br>\r\n Logo WOSM diambil dari lencana yang diberikan pada para pemuda yang dilatih BP saat ia bertugas di India, lencana berbentuk fleur de lis juga diberikan pada para pemuda yang mengikuti perkemahan pertama di Brownsea Island. BP menjadikan fleur de lis sebagai lambang, karena fleur de lis sering digunakan pada jarum kompas yang menunjuk utara sehingga diharapkan setiap pandu dapat selalu menuju ke arah yang benar. Oh iya WOSM juga bekerja sama dengan oraganisasi serupa untuk kelompok wanita yaitu the World Association of Girl Guides and Girl Scouts (WAGGGS). <br><br>\r\n<strong>APA AJA SIH YANG ADA DALAM LOGO WOSM?</strong><br>\r\n<ol>\r\n<li> Kompas yang artinya adalah peringatan.\r\n<li> Treefoil yang artinya 3 janji.\r\n<li> Dua Bintang yang artinya sebagai penerang dan menolong kebenaran \r\n<li> Tali Melingkar aritinya persahahatan.\r\n<li> Warna Ungu artinya keterampilan.\r\n<li> Warna putih yang berarti suci dan bersih.\r\n</ol><p align=justify>\r\n\r\n<strong>BAGAIMANA LETAK DAN BENTUK LAMBANG WOSM DI SERAGAM PRAMUKA INDONESIA </strong><br>\r\nLetak lambang WOSM atau bunga lily untuk laki-laki terletak di bagian dada sebelah kanan. Lebih tepatnya diatas saku. Sedangkan untuk perempuan, terletak di bagian ujung kerah baju sebelah kanan.<br>\r\nUntuk bentuk lambang WOSM ini, untuk pramuka laki-laki berbentuk persegi. Sedangkan untuk perempuan, berbentuk lingkaran.<br><br>\r\n', '5edd90e377cad.png', 'Creating a Better World', '2020-10-16 02:57:50', '2020-10-16 02:56:46'),
(13, 'Lambang Gerakan Pramuka', '<p align=”justify”>\r\n<strong>Salam pramuka!</strong><br>\r\nBaik kakak kakak sekalian kami dari pramuka SMAN 1 Jalancagak kali ini akan membahas sedikit tentang Lambang Gerakan Pramuka. <br><br>\r\n<strong>APA SIH LAMBANG GERAKAN PRAMUKA ITU?</strong><br> \r\n       Lambang Gerakan Pramuka adalah Tanda Pengenal Gerakan Pramuka yang bersifat Tetap. Lambang Gerakan Pramuka diciptakan oleh R. Soenardjo Atmodipoerwo. Pertama kali dipergunakan pada tanggal 14 agustus 1961.<br><br>\r\n<strong>BAGAIMANA SIH BENTUK LAMBANG GERAKAN PRAMUKA?</strong><br>\r\n        Lambang Gerakan Pramuka berbentuk Silluet (bayangan) Tunas kelapa. Apakah Kakak tahu kenapa Lambang Gerakan Pramuka berbentuk Tunas kelapa?<br>\r\n<ol>\r\n<li>Pohon kelapa ini banyak memiliki manfaat bahkan disebut pohon seribu guna. Artinya Pramuka sangat berguna bagi Nusa, Bangsa dan Agama.\r\n<li>Pohon kelapa bisa tumbuh dimana saja dan dapat bertahan lama. Artinya Pramuka juga dapat bertahan hidup dalam keadaan apapun kuat jasmani dan rohani.\r\n<li>Tumbuh menujulan tinggi. Artinya setiap pramuka memiliki keinginan atau cita-cita yang sangat tinggi.\r\n<li>Akar kelapa yang kuat. Artinya berpegang pada dasar-dasar yang kuat.</ol>\r\n<p align=”justify”>\r\nItulah kenapa tunas kelapa dijadikan sebagai Lambang Gerakan Pramuka. <br><br>\r\n<strong>LAMBANG GERAKAN PRAMUKA BIASA DUGUNAKAN DIMANA SAJA?</strong><br>\r\nBiasanya Lambang Gerakan Pramuka digunakan:<br>\r\n<ol>\r\n<li> Panji.\r\n<li> Bendera.\r\n<li> Papan nama kwartir/satuan.\r\n<li> Tanda pengenal Satuan.\r\n<li> Administrasi Satuan.\r\n<li> Selain itu, lambang gerakan pramuka juga digunakan sebagai alat pendidikan menanamkan sifat yang terdapat dalam arti kiasan dari lambang tersebut kepada anggota gerakan pramuka. Sorang pramuka juga harus berperan aktif dalam masyarakat mereka harus mampu mengamalkan ilmu pengetahuan dan teknologi kepada masyarakat.\r\n<li> Pada seragam pramuka putra digunakan disaku sebelah kiri dan pada seragam pramuka putri digunakan dikerah sebelah kiri.\r\n<li> Pada kepala surat digunakan disamping kiri.\r\n</ol>\r\n<p align=”justify”>\r\n<strong>APAKAH KAKAK-KAKAK TAHU WARNA PADA LAMBANG GERAKAN PRAMUKA DAPAT DISESUAIKAN DENGAN PENGGUNAANNYA?</strong><br>\r\nMari kita pelajari seperti apa saja penggunaan warna lambang gerakan pramuka.<br>\r\n<ol>\r\n<li> Pada kepala surat menggunakan warna hitam.\r\n<li> Pada bendera Gerakan Pramuka menggunakan warna merah.\r\n<li> Pada tanda kecakapan umum (TKU) penegak dan pandega memakai warna kuning.\r\n<li> Pada cover buku terbitan kwarnas sering dibentuk berwarna putih.\r\n<li> 5. Pada beberapa logo kegiatan bisa menggunakan warna lain, bahkan kombinasi beberapa warna.</ol></p>\r\n', '5edd9392d97aa.png', 'Satyaku kudarmakan, Darmaku kubaktikan', '2020-10-16 02:57:54', '2020-10-16 02:56:50'),
(15, 'Kepemimpinan', '<p align=”justify”>\r\n<strong>Salam Pramuka!</strong><br>\r\nBaik kakak-kakak sahabat pramuka sekalian Kami dari Pramuka SMAN 1 Jalancagak, kali ini akan membahas sedikit tentang Kepemimpinan. Berbicara tentang kepemimpinan mungkin kakak kakak sering mendengarnya. Buat kakak apa kakak kakak tau.<br><br> \r\n<strong>APA ITU KEPEMIMPINAN?</strong><br>\r\n   kepemimpinan adalah cara pemimpin buat mempengaruhi, mendorong, membimbing seseorang atau golongan untuk mencapai sebuah tujuan.<br><br>\r\n<strong>TIPE-TIPE KEPEMIMPINAN</strong><br>\r\n<ul>\r\n<li>Kepemimpinan demokratis, tipe ini biasanya banyak melibatkan kontribusi bawahan dalam mengambil keputusan.\r\n<li>Kepemimpinan otokratis,  tipe yang dalam proses memimpinnya sangat bergantung pada dirinya sendiri selaku pemimpin.\r\n<li>Kepemimpinan strategis,  tipe  yang menjadikan seorang pemimpin layaknya sebuah kepala organisasi.\r\n<li>Kepemimpinan tim,biasanya dibentuk dari hasil rembuk bersama dalam sebuah tim.\r\n<li>kepemimpinan liberal,tipe yang memberikan kebebasan kepada anggotanya untuk melakukan tugasnya. \r\n<li>Kepemimpinan pembinaan,tipe yang selalu berusaha mengajari dan mengawasi anggotanya secara penuh. \r\n<li>Kepemimpinan visioner, tipe ini selalu berusaha mewujudkan visi yang telah disusun bersama. \r\n</ul>\r\n<p align=”justify”>\r\n<strong>ASAS KEPEMIMPINAN</strong><br>\r\nAsas kepemimpinan menurut Bapak Presiden Soeharto berdasar Pancasila terdiri dari :<br>\r\n<ol>\r\n<li>Ketuhanan Yang Maha Esa,\r\nBeriman kepada Tuhan Yang Maha Esa dan taat kepada-Nya. \r\n<li>Inga ngarso sun tulodho,\r\nMenjadi teladan  terhadap anak buah. \r\n<li>Ing madya mangun karso,\r\nIkut membangun semangat di tengah-tengah anak buah. \r\n<li>Tut wuri handayani,\r\nMempengaruhi dan memberi dukungan dari belakang kepada anak buah. \r\n<li>Waspada purba wasesa,\r\nSelalu waspada,  sanggup dan memberi koreksi kepada anak buah. \r\n<li>Prasaja,\r\nBerperilaku yang sederhana dan tidak berlebih-lebihan. \r\n<li>Satya,\r\nSikap loyal yang timbal balik.\r\n<li>Ambeg parama arta,\r\nDapat memilih dengan tepat mana yang harus didahulukan. \r\n<li>Gemi nastiti,\r\nKesadaran dan kebutuhan untuk penggunaan  yang benar-benar dibutuhkan. \r\n<li>Belaka, \r\nKemauan, kerelaan dan keberanian untuk mempertanggungjawabkan tindakan-tindakannya. \r\n<li>Legawa, \r\nKemauan, kerelaan, dan keikhlasan  saat menerima tanggung jawab dan kedudukan untuk generasi berikutnya.\r\n</ol>\r\n<p align=”justify”><br>\r\n<strong>PELAKSANAAN KEPEMIMPINAN</strong><br>\r\n   kepemimpinan dalam gerakan Pramuka menerapkan sistem kepemimpinan pamong,yaitu : ing ngarso sung tulodo,ing madya mangun Karso,Tut Wuri Handayani.\r\n<ul>\r\n<li>Pembinaan Pramuka siaga lebih mengutamakan pada ing ngarso sung tulodo.\r\n<li>Pembinaan Pramuka penggalang lebih mengutamakan pada ing madya mangun Karso.\r\n<li>Pembinaan Pramuka penegak dan pandega lebih mengutamakan pada Tut Wuri Handayani.\r\n</ul>\r\n<p align=”justify>\r\n\r\nMohon maaf apabila ada kata-kata yang kurang dimengerti atau pembahasan yang kurang lengkap karena kami masih dalam tahap belajar.</p>\r\n', '5ede31b52fbc1.jpg', '<i>\"The more responsibility the Scoutmaster gives his patrol leaders, the more they will respond.\"</i><br>-Robert Baden-Powell', '2020-10-16 02:57:57', '2020-10-16 02:56:53'),
(16, 'Menerapkan Disiplin', '<p align=”justify>\r\n<strong>Salam Pramuka</strong><br>\r\nHallo kakak-kakak pramuka, kali ini kami dari pramuka SMAN 1 Jalancagak akan membahas sedikit tentang Disiplin. Yu simak pembahasannya!<br><br>\r\n<strong>APA SIH ITU DISIPLIN?</strong> <br>\r\n   Kata ‘disiplin’ sendiri berasal dari bahas Latin yaitu ‘discipline’ yang artinya latihan akan kesopanan dan kerohanian juga sebagai pengembangan kepribadian. Sikap disiplin dapat muncul sebagai bentuk usaha kita dalam memperbaiki diri sebagai individu yang taat akan aturan yang sudah berlaku. <br>\r\n   Disiplin merupakan perasaan taat dan patuh terhadap nilai-nilai yang dipercaya merupakan tanggung jawabnya. Pendisiplinan adalah usaha usaha untuk menanamkan nilai ataupun pemaksaan agar subjek memiliki kemampuan untuk menaati sebuah peraturan. <br><br>\r\n<strong>BAGAIMANA CARA MENANAMKAN DISIPLIN?</strong> <br>\r\n<ol>\r\n<li>Jangan Tunggu Motivasi Datang <br>\r\nMelatih disiplin harus datang dari hati kakak-kakak sendiri. Jangan tunggu digerakkan atau mendapat motivasi dari orang lain. Menunggu motivasi tidak akan membuat diri kakak-kakak bisa lebih disiplin. Disiplin adalah tetap melakukan kegiatan meski kakak-kakak tidak menyukainya. kakak-kakak akan dilatih untuk mengubah sikap positif menjadi sebuah kebiasaan. <br>\r\n<li>Tahan Godaan <br>\r\nSaat kakak-kakak mulai melatih kedisiplinan, godaan pasti akan datang tak tertahan. Di sinilah akan terlihat sekuat apa niat kakak-kakak untuk bisa menjadi sosok yang disiplin. Sebagai awal, jauhkan semua hal yang bisa menjadi godaan saat melatih kedisiplinan. Sebagai contoh, jauhkan telepon seluler dari jangkauan dan pendengaran saat kakak-kakak bekerja. Matikan televisi atau apa pun yang bisa mengganggu fokus kakak-kakak terhadap pekerjaan. Jauhkan keinginan kakak-kakak untuk memainkan ponsel atau remote TV. <br><br>\r\n\r\n<li>Mulailah dari Hal Kecil <br>\r\nSesuatu yang besar pasti dimulai dari hal kecil. Kedisiplinan bukan sesuatu yang bisa didapat secara instan. Tidak bisa tercipta hanya dalam waktu satu malam, seperti permintaan Roro Jonggrang kepada Bandung Bondowoso untuk membangun seribu candi. Maka itu, untuk bisa meningkatkan disiplin diri harus dimulai dari hal sederhana. Seperti disiplin dalam membuang sampah atau datang tepat waktu ke tempat bekerja maupun ke sekolah. Kedisiplinan kakak-kakak pasti akan meningkat secara otomatis ketika kakak-kakak sering melatihnya. Lakukan dalam banyak aspek di kehidupan kakak-kakak sehingga bisa mendapatkan masa depan yang bahagia. <br><br>\r\n<li>Tetapkan Rutinitas Harian <br>\r\nCara melatih disiplin bisa dimulai dengan menetapkan rutinitas harian. Misalkan saja, kakak-kakak menargetkan setiap hari akan bangun setiap pukul 4 pagi. Setelah ditetapkan, lakukan upaya maksimal untuk bisa mewujudkannya. Jadikan target tersebut sebagai sebuah kebiasaan/ kunci. <bt><br>\r\n<li>Makan Teratur dan Bergizi <br>\r\nkakak-kakak tidak akan pernah bisa melatih disiplin jika kakak-kakak  sendiri tidak pernah berada dalam kondisi sehat. Melatih disiplin bisa juga dimulai dengan makan secara teratur. Usahakan asupan makanan kakak-kakak selalu terjaga kandungan nutrisinya. Makan makanan bergizi akan membantu kakak-kakak meningkatkan konsentrasi dan daya ingat yang berdampak pada pendisiplinan diri.<br><br>\r\n<li>Fokus pada Target Jangka Panjang <br>\r\nKakak-kakak harus punya target dalam hidup yang kakak-kakak jalani. Baik target jangka pendek maupun jangka panjang. Nah, salah satu cara dalam meningkatkan disiplin diri adalah dengan fokus kepada target jangka panjang. Kenapa target jangka panjang? Karena target jangka panjang adalah sasaran yang tidak akan bisa kakak-kakak raih dalam waktu dekat. Sehingga kakak-kakak pun terpacu menjaga motivasi untuk bisa mencapainya. Dan salah satu cara mencapainya adalah dengan melatih kedisiplinan. <br><br>\r\n<li>Segera Move On <br>\r\nSaat menjalankan upaya apa pun pasti akan mengalami masa naik dan turun. Termasuk ketika kakak-kakak tengah berupaya meningkatkan kedisiplinan diri. Saat itulah usahakan agar jangan mudah terlarut oleh godaan dan seribu alasan. Ketika kakak-kakak merasa tengah berada di bawah, jangan lantas terlena dan melemah. Jangan terbelenggu oleh rasa bersalah. Lupakan semuanya dan terus maju ke depan. Jadikan kondisi tersebut sebagai pelajaran untuk  menjadi pribadi yang lebih baik. Maafkan diri kakak-kakak dan segera move on. <br><br>\r\n<li>Buat Tenggat <br>\r\nHarapan dan tenggat yang dimunculkan pihak lain biasanya akan meningkatkan kinerja kakak-kakak. Jika tidak ada yang memberi tenggat, coba ciptakan sendiri tenggat pribadi. Caranya, jika kakak-kakak punya rencana untuk menyelesaikan satu proyek selama satu pekan, informasikan hal ini kepada teman terdekat kakak-kakak. <br><br>\r\n<li>Tepis Hal-hal Negatif <br>\r\nSaat kakak-kakak melakukan sebuah upaya dan rencana, akan ada orang atau pihak lain yang menganggap sepele. Mereka akan menyebut kakak-kakak tidak akan mampu mewujudkan rencana tersebut. Bahkan mengatakan semua upaya mereka itu salah. <br><br>\r\n<li>Berlatih untuk Berkata “Tidak”<br>\r\nGodaan dan rintangan pasti akan kakak-kakak temui dalam upaya meningkatkan kedisiplinan. Karena itu kakak-kakak harus bisa memilah, mana proses latihan yang harus dilakukan dan mana yang ingin kakak-kakak lakukan. Bedakan, antara “harus” dengan “ingin”. Mulailah belajar berkata tidak saat kakak-kakak melihat pakaian atau sepatu yang keren di supermarket. Lakukan hal ini dalam semua aspek kehidupan kakak-kakak. Saat kakak-kakak mulai bisa mengontrol mana yang harus dan mana yang bisa ditunda atau bahkan tidak dilakukan, secara perlahan kakak-kakak sudah menapaki tangga untuk lebih disiplin. <br><br>\r\n<li>Ambil Inspirasi dari Idola <br>\r\nkakak-kakak pasti punya satu sosok yang dipuja atau jadi idola. Cari sisi positif yang paling menonjol dari idola kakak-kakak tersebut. Lalu jadikan inspirasi yang bisa menambah motivasi kakak-kakak dalam meningkatkan kedisiplinan. Tokoh idola ini tidak mesti harus orang terkenal. Dia bisa saja senior kakak-kakak di kampus, atau bahkan atasan di tempat kerja. Inspirasi yang kakak-kakak dapatkan dari mereka bisa menjaga kakak-kakak berada di jalur yang tepat untuk mencapai target. <br><br>\r\n<li>Visualisasikan Target kakak-kakak <br>\r\n     Saat kakak-kakak sudah merencanakan sebuah target, berlatihlah untuk memvisualisasikannya. Bayangkan kakak-kakak berada dalam situasi saat kakak-kakak meraih target tersebut. Ini akan menstimulus motivasi di dalam diri untuk mencapai target tersebut. Rasakan bagaimana saat kakak-kakak meraih target tersebut. Terutama target jangka panjang. Dengan fokus untuk meraih target jangka panjang maka kakak-kakak akan lebih termotivasi dan menjadi lebih disiplin. \r\n</ol>\r\n<p align=”justify”>\r\n       Meningkatkan disiplin diri tidak akan bisa dijalankan tanpa hambatan. Jika ditambah dengan motivasi yang terjaga dengan baik, maka kakak-kakak akan lebih kuat dalam berjuang mencapai target. </p>\r\n', '5ede38af797d3.jpg', '<i>\"Correcting bad habits cannot be done by forbidding or punishment.\"</i><br>-Robert Baden-Powell', '2020-10-16 02:58:01', '2020-10-16 02:56:56');

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
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_10_053053_create_students_table', 2),
(9, '2020_10_15_021404_create_newses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newses`
--

CREATE TABLE `newses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newses`
--

INSERT INTO `newses` (`id`, `judul`, `gambar`, `preview`, `isi`, `created_at`, `updated_at`, `tanggal`) VALUES
(2, 'Fullmetal Alchemist', 'gracias96992754.jpg', 'omnibuslaw yang belakangan in meresahkan masyarakat, telah diresmikan oleh DPR.', 'laceat atque, sit ex repellendus, nostrum doloremque deleniti quasi explicabo, blanditiis aliquid debitis eaque architecto exercitationem. Repellat consectetur dignissimos culpa.laceat atque, sit ex repellendus, nostrum doloremque deleniti quasi explicabo, blanditiis aliquid debitis eaque architecto exercitationem. Repellat consectetur dignissimos culpa.laceat atque, sit ex repellendus, nostrum doloremque deleniti quasi explicabo, blanditiis aliquid debitis eaque architecto exercitationem. Repellat consectetur dignissimos culpa.laceat atque, sit ex repellendus, nostrum doloremque deleniti quasi explicabo, blanditiis aliquid debitis eaque architecto exercitationem. Repellat consectetur dignissimos culpa.laceat atque, sit ex repellendus, nostrum doloremque deleniti quasi explicabo, blanditiis aliquid debitis eaque architecto exercitationem. Repellat consectetur dignissimos culpa.', '2020-10-24 20:50:28', '2020-10-24 20:50:28', '2020-10-25'),
(12, 'Pertemuan di tengah pandemi', 'hari pramuka664407591.jpg', '<p>Pramuka SMAN 1 Jalancagak mengadakan pertemuan bersama alumni, dengan tetap mematuhi protokol kesehatan</p>', '<p>Pramuka SMAN 1 Jalancagak mengadakan pertemuan dengan anggotanya pada hari minggu tanggal 25 Oktober 2020. Pertemuan itu diadakan di salah satu rumah seorang anggota yang berlokasi di Kp. Ciseuti Jalancagak. Melihat situasi dimana pandemi COVID-19 belum berakhir, pertemuan ini hanya dihadiri oleh beberapa orang anggota aktif dan dua orang alumni yang telah diminta hadir sebelumnya, dalam pertemuan inipun protokol kesehatan dipatuhi dengan memakai masker, dan mengadakan pertemuan di tempat terbuka.</p>\r\n<p>&nbsp;</p>\r\n<p>Pertemuan tersebut dilakukan untuk membahas beberapa program kerja yang sebelumnya terhambat karena pandemi, seperti regenerasi kepengurusan, kenaikan tingkat bantara-laksana dan beberapa permasalah internal lainnya</p>', '2020-10-27 22:18:40', '2020-10-27 22:24:24', '2020-10-25'),
(13, 'Dirgahayu Brajasakti', 'gracias1840418783.jpg', '<p>26 Oktober 2020 adalah hari ulang tahun Paskibra SMAN 1 Jalancagak yang ke 6</p>', '<p>Pramuka SMAN 1 Jalancagak mengucapkan selamat kepada Brajasakti yang pada tanggal 26 Oktober 2020 ini merayakan ulang tahunnya yang ke 6.</p>\r\n<p>&nbsp;</p>\r\n<p>Kami doakan agar Brajasakti dapat terus mencetak para anggota Paskibra yang disiplin, berkualitas, dan berprestasi, serta dapat terus menjadi ekstrakulikuler yang menjadi panutan di SMAN 1 Jalancagak. <strong>Dirgahayu Brajasakti!!!</strong></p>', '2020-10-27 22:22:48', '2020-10-27 22:24:12', '2020-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftars`
--

CREATE TABLE `pendaftars` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `sekolah_asal` varchar(50) DEFAULT NULL,
  `alasan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelamin` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftars`
--

INSERT INTO `pendaftars` (`id`, `nama`, `tanggal_lahir`, `sekolah_asal`, `alasan`, `gambar`, `whatsapp`, `created_at`, `updated_at`, `alamat`, `kelamin`) VALUES
(1, 'Federico Falverde', '2020-10-27', 'Mts Alda', 'adsfasdfsadfsadf', 'yukino1276173899.jpg', '623816355113', '2020-10-27 07:18:56', '2020-10-27 07:18:56', 'Cicadas RT 09/02 Sagalaherang', 'laki-laki'),
(2, 'Mugia Miftahul Choir', '2020-10-27', 'Mts Alda', 'asfadsf asdfasdfasd asdfsadfsadfdas', 'profil2143825276.jpg', '623816355113', '2020-10-27 07:29:10', '2020-10-27 07:29:10', 'Cicadas RT 09/02 Sagalaherang', 'laki-laki'),
(3, 'Mugia Miftahul Choir', '2020-10-27', 'Mts Alda', 'asfadsf asdfasdfasd asdfsadfsadfdas', 'profil1193835827.jpg', '623816355113', '2020-10-27 07:30:11', '2020-10-27 07:30:11', 'Cicadas RT 09/02 Sagalaherang', 'perempuan'),
(8, 'Toni Kroos', '2020-10-27', 'Mts Alda', 'fasdfasfdasdfasdf', 'yukino1925037927.jpg', '623816355113', '2020-10-27 10:16:20', '2020-10-27 10:16:20', 'Cicadas RT 09/02 Sagalaherang', 'perempuan'),
(9, 'Federico Falverde', '2020-10-27', 'Mts Alda', 'asgasdfgsdfg', 'gracias360268308.jpg', '623816355113', '2020-10-27 10:36:29', '2020-10-27 10:36:29', 'Cicadas RT 09/02 Sagalaherang', 'laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrp` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `nama`, `nrp`, `email`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Mugia miftahul Choir', '10519035', 'mugia@gmail.com', 'Sistem Informasi', '2020-10-10 05:39:11', '2020-10-10 05:39:18'),
(2, 'Tya Sulitsiani', '10519036', 'tya@outlook.com', 'Hafidz', '2020-10-10 05:39:49', '2020-10-10 05:39:54'),
(17, 'Federoco Santiago Falverde', '10519015', 'fede.10519035@mahasiswa.unikom.ac.id', 'la fabrica', '2020-10-12 19:12:23', '2020-10-12 19:26:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_kegiatan`
--
ALTER TABLE `daftar_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_materi`
--
ALTER TABLE `daftar_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_pengurus`
--
ALTER TABLE `daftar_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_kegiatan`
--
ALTER TABLE `kategori_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pengurus`
--
ALTER TABLE `kategori_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newses`
--
ALTER TABLE `newses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftars`
--
ALTER TABLE `pendaftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `students_nrp_unique` (`nrp`),
  ADD KEY `students_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `daftar_kegiatan`
--
ALTER TABLE `daftar_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `daftar_materi`
--
ALTER TABLE `daftar_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `daftar_pengurus`
--
ALTER TABLE `daftar_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori_kegiatan`
--
ALTER TABLE `kategori_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_pengurus`
--
ALTER TABLE `kategori_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `materis`
--
ALTER TABLE `materis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newses`
--
ALTER TABLE `newses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pendaftars`
--
ALTER TABLE `pendaftars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
