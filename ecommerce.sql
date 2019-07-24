-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Jul 2019 pada 19.38
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Microtron', '12345678', 'bni.png'),
(2, 'BRI', 'Microtron', '87873412323', 'bri.png'),
(3, 'Mandiri', 'Microtron', '778734098', 'mandiri.png'),
(4, 'BCA', 'Microtron', '998980342487', 'bca.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul_blog` varchar(100) NOT NULL,
  `slug_blog` varchar(100) NOT NULL DEFAULT '0',
  `isi_blog` text,
  `foto` text,
  `foto_type` char(10) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` char(20) DEFAULT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id_blog`, `judul_blog`, `slug_blog`, `isi_blog`, `foto`, `foto_type`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, '4 Tips Memakai Lipstik untuk Bibir Tebal, Yuk Coba Praktekin!', '4-tips-memakai-lipstik-untuk-bibir-tebal-yuk-coba-praktekin', '<p>Bagi kalian yang memiliki bibir tebal, cobain dulu deh <em>Teens </em>tips memakai lipstik untuk bibir tebal berikut ini. Menggunakan cara yang tepat saat memakai lipstik bisa menyamarkan bibir kalian yang tebal lho.</p>\r\n<p>Memiliki bibir yang tebal memang tak selamanya membuat para pemiliknya bangga. Ada juga yang merasa tak percaya diri sehingga takut memakai lipstik karena bibirnya bisa terlihat sangat menonjol.</p>\r\n<p>Nah, daripada kalian takut menggunakan lipstik, lebih baik ketahui dulu tips memakai lipstik untuk bibir tebal berikut ini agar bibir kalian terlihat tipis dan cantik ya.</p>\r\n<p><strong>Gunakan foundation</strong></p>\r\n<p>Sebelum mengaplikasikan lipstik ke bibir, kalian harus memakai foundation terlebih dahulu nih <em>Teens</em>. Berikan foundation secara tipis-tipis ke bibir dan ratakan. Foundation bisa membuat lipstik tahan lama dan menyamarkan garis bibir.</p>\r\n<p><strong>Gunakan lipstik yang bertekstur matte</strong></p>\r\n<div id=\"outstream_article\" data-id=\"297\" data-m=\"{\"> </div>\r\n<p>Bibir yang tebal sebaiknya menggunakan lipstik yang bertekstur matte lho <em>Teens</em>. Lebih baik kalian menghindari penggunaan lipstik bertekstur <em>glossy</em> karena bisa membuat bibir terlihat lebih bervolume. Selain itu, jangan aplikasikan <em>lip gloss</em> setelah menggunakan lipstik ya.</p>\r\n<p><strong>Gunakan lip liner</strong></p>\r\n<p>Lip liner juga menjadi hal yang perlu kalian miliki nih <em>Teens</em>. Jadi dengan lip liner kalian bisa membuat garis di bagian dalam garis bibir sehingga akan membentuk bibir yang terlihat lebih tipis.</p>\r\n<p><strong>Gunakan lipstik berwarna natural dan agak gelap</strong></p>\r\n<p>Warna lipstik yang cocok digunakan oleh pemilik bibir tebal adalah warna-warna yang agak gelap dan natural <em>Teens</em>. Misalnya saja warna nude, marun, cokelat, baby pink dan peach adalah warna-warna yang tepat untuk pemilik bibir tebal lho.</p>\r\n<p>Tips memakai lipstik untuk bibir tebal di atas cukup mudah untuk dilakukan kan <em>Teens</em>, jadi selamat mencoba ya!</p>', '4-tips-memakai-lipstik-untuk-bibir-tebal-yuk-coba-praktekin20171124234128', '.jpg', '2019-06-09 16:32:25', 'Admin', '2019-06-09 12:23:37', 'Admin'),
(2, '8 Cara Jenius Untuk Memakai Eyeliner Bagi Pemula', '8-cara-jenius-untuk-memakai-eyeliner-bagi-pemula', '<p>Eyeliner merupakan salah satu bagian make up yang sangat penting! Dengan memakai eyeliner, kamu bisa membuat penampilanmu semakin segar dan tegas. Sayangnya, banyak wanita yang masih kesulitan dalam memakai eyeliner, terutama bagi para pemula dan mereka yang sedang belajar membuat <em>cat-eye</em> yang dramatis.</p>\r\n<p>Nah, berikut ini ada 8 cara jenius untuk memakai eyeliner. Apakah kalian sudah mengetahuinya?</p>\r\n<h3>1. Ketahui posisi memakai eyeliner yang benar</h3>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3546.jpg\" alt=\"Cara memakai eyeliner dengan posisi yang benar\" width=\"637\" height=\"346\"></p>\r\n<p>Sumber: <a href=\"https://www.buzzfeed.com/nataliebrown/because-cat-eyes-are-hard?utm_term=.hdD4PQ0Xe#.oxBM6Djz0\" target=\"_blank\" rel=\"noopener noreferrer\">buzzfeed</a></p>\r\n<p>Posisi memakai eyeliner yang salah akan menyulitkanmu memakai eyeliner. Daripada memakainya sambil berdiri, lebih baik kamu duduk dan letakkan tangan kananmu di meja yang stabil, lalu letakan jari kelingkingmu di pipi untuk menghindari kesalahan yang tidak diinginkan.</p>\r\n<h3>2. Jangan tarik ujung matamu!</h3>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3548.jpg\" alt=\"Jangan menarik ujung mata saat memakai eyeliner\" width=\"637\" height=\"318\"></p>\r\n<p>Sumber: <a href=\"http://www.cosmopolitan.com/style-beauty/beauty/news/a33923/hacks-for-fixing-makeup-mistakes/\" target=\"_blank\" rel=\"noopener noreferrer\">cosmopolitan</a></p>\r\n<p>Kulit di area mata merupakan kulit yang tipis. Menarik ujung matamu seperti ini dapat membuat kulit matamu lebih cepat kendur. Tidak apa-apa melakukan kesalahan saat memakai eyeliner, kamu bisa menghapusnya menggunakan <em>cotton bud</em>.</p>\r\n<h3>3. Buat titik-titik atau garis-garis</h3>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3547.jpg\" alt=\"Cara memakai eyeliner dengan membuat garis petunjuk\" width=\"637\" height=\"637\"></p>\r\n<p>Sumber: <a href=\"http://theglossy.sephora.com/articles/1053/the-tip-off-daytime-drama?om_mmc=aff-linkshare-redirect-TnL5HPStwNw&c3ch=Linkshare&c3nid=TnL5HPStwNw&affid=TnL5HPStwNw-_aB6_3fIjCurTZZgLD0Hng&ranEAID=TnL5HPStwNw&ranMID=2417&ranSiteID=TnL5HPStwNw-_aB6_3fIjCurTZZgLD0Hng&ranLinkID=10-1&browserdefault=true\" target=\"_blank\" rel=\"noopener noreferrer\">theglossy.sephora</a></p>\r\n<p>Kamu bisa membuat titik-titik atau garis-garis pada kelopak matamu terlebih dahulu. Setelah itu, pakailah eyelinermu seperti biasa. Fungsi titik-titik atau garis-garis ini adalah untuk menjadi panduanmu memakai eyeliner.</p>\r\n<h3>4. Gunakan Sendok</h3>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3549.jpg\" alt=\"Cara memakai eyeliner dengan sendok\" width=\"637\" height=\"370\"></p>\r\n<p>Untuk membuat bentuk<em> cat-eye</em> yang sempurna, kamu bisa menggunakan bantuan peralatan rumah, seperti sendok. Kamu hanya perlu meletakkan di ujung mata dna menjadikannya panduan untuk memakai eyeliner.</p>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3550.jpg\" alt=\"Cara memakai eyeliner dengan kartu nama\" width=\"637\" height=\"838\"></p>\r\n<p>Sumber: <a href=\"http://www.cosmopolitan.com/style-beauty/beauty/how-to/a31500/eyeliner-hacks-every-woman-must-know/\" target=\"_blank\" rel=\"noopener noreferrer\">cosmopolitan</a></p>\r\n<p>Tidak hanya sendok, kamu juga bisa gunakan kartu nama sebagai panduan membuat cat-eye.</p>\r\n<h3>5. Gambar <em>cat-eye</em> dari bagian luar mata</h3>\r\n<p>Membuat <em>cat-eye</em> dari luar mata akan jauh lebih mudah, lho! Pastikan kamu menggunakan eyeliner terbaik untuk mendapatkan hasil maksimal seperti <a href=\"https://nadeko.co.id/heroine-make-smooth-liquid-eyeliner-super.html?utm_source=kawaiibeautyjapan&utm_medium=advertorial&utm_campaign=2016614-Kiss Me By Isehan 20% all product\" target=\"_blank\" rel=\"noopener noreferrer\">Kiss Me By Isehan Heroine Make Smooth Liquid Eyeliner Super</a>.</p>\r\n<h3>6. Buat tanda pagar</h3>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3551.jpg\" alt=\"Cara memakai eyeliner dan membuat smoky eyes\" width=\"637\" height=\"427\"></p>\r\n<p>Sumber: <a href=\"http://www.cosmopolitan.com/style-beauty/beauty/how-to/a31500/eyeliner-hacks-every-woman-must-know/\" target=\"_blank\" rel=\"noopener noreferrer\">cosmopolitan</a></p>\r\n<p>Eyeliner pensil bisa kamu gunakan untuk membuat smoky eyes, lho! Caranya mudah, kamu hanya perlu membuat tanda pagar di bagian ujung luar kelopak matamu, lalu baurkan dengan spons.</p>\r\n<h3>7. Diawali dengan berantakan</h3>\r\n<p>Wajar bagi pemula jika masih membuat eyeliner dan mendapatkan hasil yang agak berantakan. Kamu bisa gunakan concealer untuk menghapus bagian yang berantakan tersebut.</p>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3553.jpg\" alt=\"Cara memakai eyeliner\" width=\"637\" height=\"958\"></p>\r\n<p>Sumber: <a href=\"https://www.buzzfeed.com/nataliebrown/because-cat-eyes-are-hard?utm_term=.hdD4PQ0Xe#.oxBM6Djz0\" target=\"_blank\" rel=\"noopener noreferrer\">buzzfeed</a></p>\r\n<p>Tidak hanya dengan concealer, kamu bahkan bisa menggunakan sedikit petroleum jelly atau bahkan lip gloss untuk merapikan eyelinermu, lho!</p>\r\n<h3>8. Sambil menjepit bulu mata</h3>\r\n<p>Untuk kamu yang terburu-buru, kamu bisa menjepit bulu mata sambil mengaplikasikan eyeliner seperti cara unik yang satu ini, lho!</p>\r\n<p><img src=\"https://kawaiibeautyjapan.com/upload/gallery/3554.jpg\" alt=\"Cara memakai eyeliner\" width=\"637\" height=\"825\"></p>\r\n<p>Sumber: <a href=\"https://www.buzzfeed.com/nataliebrown/because-cat-eyes-are-hard?utm_term=.hdD4PQ0Xe#.oxBM6Djz0\" target=\"_blank\" rel=\"noopener noreferrer\">buzzfeed</a></p>', '8-cara-jenius-untuk-memakai-eyeliner-bagi-pemula20171124234850', '.jpg', '2019-06-09 05:48:50', 'Admin', '2019-06-09 12:23:40', 'Admin'),
(3, 'Tips dan Cara Merawat Batik di Rumah', 'tips-dan-cara-merawat-batik-di-rumah', '<p>Tips dan Cara Merawat Batik di Rumah – Kita sebagai orang Indonesia, wajib memilki pakaian batik di lemari pakaian kita. Apalagi setelah UNESCO menegaskan bahwa batik Indonesia adalah salah satu warisan budaya yang diakui dunia, desainer-desainer batik berlomba untuk membuat batik yang “kekinian”. Hal tersebut pasti membuat kita sebagai masyarakat Indonesia bangga, terutama bagi yang menyukai batik sebagai salah satu gaya berbusana. Tapi, hal tersebut juga harus diimbangi dengan cara merawat batik kesayangan agar kain batik tidak cepat rusak dan warna tidak mudah kusam.</p>\r\n<p>Nah, mau tahu beberapa tips dan cara ampuh merawat batik di rumah agar tetap awet dan terlihat baru setiap hari? Yuk, simak caranya di daftar berikut ini!</p>\r\n<p> </p>\r\n<p><strong>Hindari Mesin Cuci</strong><br>Memang mesin cuci bisa membantu dan mempercepat kamu untuk mencuci pakaian, tapi apa yang terjadi kalau batik kamu sering dicuci dengan mesin cuci? Serat-serat kain batik akan lebih mudah rusak. Pada umumnya membuat batik menggunakan tenaga dan metode manual, tapi enggak ada salahnya kalau sesekali mencuci batik kesayangan dengan menggunakan sentuhan tangan. Beberapa serat dari kain batik sangat tipis ataupun mudah rusak kalau kita salah dicuci, begitu juga dengan pola warnanya. Mencuci dengan tangan pastinya bisa menurunkan resiko rusaknya warna dan serat kain batik.</p>\r\n<p><strong>Pisahkan Batik dengan Bahan Lain</strong><br>Batik terbuat dari berbagai bahan dan warna yang mudah luntur dari pakaian lain tentu menjadi salah satu kendala kita dalam menjaga warna asli batik. Sebaiknya, sebelum mencuci baju batik, pisahkan dulu baju-baju kita yang mudah luntur dengan batik. Hal tersebut demi menjaga warna asli khas batik agar tetap cemerlang dan tidak terkontaminasi dengan warna lain.</p>\r\n<p><strong>Cuci Menggunakan Shampoo</strong><br>Bukan cuma rambut lho yang bisa dibersihkan dengan shampoo, baju batik juga bisa dicuci dengan shampoo. Shampoo pada dasarnya terbuat dari bahan aditif yang lembut banget dan untuk mencuci rambut. Tapi, hal tersebut juga bisa kita diaplikasikan ke batik. Kamu bisa mencoba mencuci batik kesayangan dengan menggunakan shampoo. Zat aditif yang terkandung dalam shampoo tidak sekeras yang ada di dalam detergen yang bisa untuk mencuci pakaian. Sehingga hal ini diyakini mampu menjaga batik agar tetap indah dalam waktu yang relatif lama.</p>\r\n<p><strong>Hindari Menggunakan Pelembut</strong><br>Softener atau pelembut pakaian seringkali kita gunakan untuk membuat kain lebih wangi dan harum saat dipakai, sehingga saat disimpan di dalam lemari, pakaian bisa langsung dikenakan ketika kita mau mengenakannya sehari-hari. Tapi, sisi lain negatif dari pelembut pakaian ini yaitu bisa membuat serat kain mudah rusak. Seringkali baju yang kita cuci dengan pelembut akan mudah robek dikemudian hari. Nah, maka itu dianjurkan untuk tidak menggunakan bahan ini ketika sedang mencuci batik.</p>\r\n<p><strong>Rendam dengan Air Hangat</strong><br>Toppers, kamu pasti familiar atau sering mendengar kalau mencuci batik harus dengan air dingin? Tapi, kalau kamu mau mencoba cara baru dan terbukti ampuh mencuci batik dengan bersih yaitu dengan menggunakan air hangat. Yup, air hangat dapat mempermudah melepaskan kotoran dari serat kain. Kalau batik tidak terlalu dalam keadaan kotor, daripada mengucek batik dengan tangan, lebih baik direndam dengan air hangat sekitar 20-30 menit agar kotoran lepas dan tinggal dibilas. Praktis, kan?</p>\r\n<p><strong>Hindari Menjemur di Bawah Sinar Matahari Langsung</strong><br>Menjemur pakaian langsung dibawah terik matahari di siang hari bisa membuat pakaian lebih cepat kering, tapi lain halnya dengan pakaian batik. Warna dan tekstur kain batik akan rusak bila dijemur di bawah sinar matahari langsung. Karena itu, mengeringkan kain batik cukup dengan menjemur di tempat yang teduh atau diangin-anginkan saja. Lebih lama memang, tapi cara ini membuat warna pada kain batik anda lebih awet.</p>\r\n<p>Kain batik yang merupakan kebanggaan Indonesia ini memang harus kita jaga dan rawat pemakaiannya. Dengan menghindari panas terik dan pelembut serta menggunakan air hangat, dijamin baju batik kamu bisa lebih bersih dan awet warnanya. Toppers, yuk memakai batik sebagai warisan budaya dari generasi ke generasi!</p>', 'tips-dan-cara-merawat-batik-di-rumah20171204042150', '.jpg', '2019-06-09 00:00:00', 'Admin', '2019-06-09 00:00:00', ''),
(4, 'Tips Memilih Topi Sesuai dengan Bentuk Wajah', 'tips-memilih-topi-sesuai-dengan-bentuk-wajah', '<p>Aksesoris merupakan salah satu hal yang penting dan dibutuhkan agar penampilanmu terlihat lebih keren, menarik, dan bisa terlihat maksimal setiap harinya. Apakah Toppers suka memakai topi sebagai salah satu aksesoris agar terkesan stylish dan keren? Topi yang dipakai juga harus sesuai dengan bentuk wajah kita lho, karena bisa membuat wajah lebih proporsional dan cocok dipakai sehari-hari.</p>\r\n<p>Mau tahu beberapa tips untuk memilih topi sesuai dengan bentuk wajahmu supaya lebih cocok untuk dipakai? Yuk, cari tahu infonya berikut ini.</p>\r\n<h2>Tips Memilih Topi Sesuai dengan Bentuk Wajah</h2>\r\n<h3>Wajah Panjang</h3>\r\n<p>Kalau kamu memiliki bentuk wajah panjang, lebih baik memilih topi dengan pinggiran berbentuk bulat dan datar seperti topi jenis boater atau panama. Topi-topi dengan bentuk tersebut bisa menyamarkan dagu yang panjang sehingga wajah terlihat pas dan proporsional. Hindari menggunakan topi <a href=\"https://www.tokopedia.com/hot/topi-fedora\" target=\"_blank\" rel=\"noopener noreferrer\">fedora</a> karena bisa membuat wajah kamu terkesan lebih panjang dan lebar.</p>\r\n<h3>Wajah Oval</h3>\r\n<p>Kamu bisa dibilang beruntung jika memiliki wajah berbentuk oval karena semua jenis topi akan terlihat cocok dan tinggal memilih ukuran dan bentuk sesuai dengan seleramu. Tapi, bentuk topi yang disarankan untuk kamu yang memiliki wajah oval yaitu topi dengan model bulat bak bowler hat. Selain itu, topi model kupluk dengan bahan rajut atau topi beanie juga bisa dijadikan salah satu referensi untuk pria yang berwajah oval. Jangan menggunakan topi yang memiliki ukuran besar karena akan membuat wajahmu terlihat tertutup atau tenggelam.</p>\r\n<h3>Wajah Persegi</h3>\r\n<p>Banyak yang bilang kalau seseorang yang memiliki wajah persegi biasanya terkenal dengan sifatnya yang galak, sehingga banyak yang memiliki wajah persegi menggunakan topi untuk menutupinya. Nah, topi yang sesuai untuk Toppers yang berwajah persegi yaitu topi yang memiliki pinggiran berbentuk bulat misalnya floppy, bowler dan boaterhat. Model topi ini akan membuat wajah terlihat lebih lembut karena sudut tegas di wajah akan tertutupi dan lebih bulat. Topi berbentuk<a href=\"https://www.tokopedia.com/hot/baseball-cap\" target=\"_blank\" rel=\"noopener noreferrer\"> baseball cap</a> juga cocok karena bisa membuat kesan sporty dan dinamis.</p>\r\n<h3>Wajah Bulat</h3>\r\n<p>Toppers yang memiliki wajah bulat akan cocok menggunakan topi model fedora atau fedora hat. Karena, kalau kamu mengenakan topi ini maka wajahmu bisa terlihat lebih panjang dan ramping. Sebaiknya kamu menghindari menggunakan topi dengan model beanie dan bowler karena bisa membuat wajah kamu terlihat semakin bulat.</p>\r\n<h3>Wajah Hati</h3>\r\n<p>Wajah yang berbentuk hati sebenarnya nggak jauh berbeda dengan wajah berbentuk oval. Perbedaan dari kedua bentuk wajah ini sebenarnuya hanya bentuk wajah hati yang lebih meruncing di dagu dan lebar pada bagian dahi. Kalau kamu memiliki wajah dengan bentuk hati sebaiknya jangan menggunakan topi yang bisa membuat dagu terlihat makin tajam dan panjang. Topi dengan model cloche hat akan lebih cocok karena bisa membantu menyamarkan dahi yang lebar dan dagu yang agak panjang dan lancip tersebut.</p>\r\n<p>Sebelum membeli atau menggunakan topi, lebih baik kamu mengenali bentuk wajahmu dengan topi tersebut terlebih dahulu supaya lebih pas dan proporsional. Kamu bisa mencocokkan berbagai topi dengan bentuk wajah diatas sehingga saat menggunakannya, akan lebih menarik dan nyaman saat beraktivitas. Di Tokopedia kamu juga bisa menemukan berbagai jenis topi terlengkap dan terbaru, lho. Topi mana yang pas untukmu?</p>', 'tips-memilih-topi-sesuai-dengan-bentuk-wajah20171204042308', '.jpg', '2019-06-09 10:23:09', 'Admin', '2019-06-14 10:17:58', 'Admin'),
(5, 'Ketahui Berbagai Penyebab Diare dan Cara Mengatasi Diare', 'ketahui-berbagai-penyebab-diare-dan-cara-mengatasi-diare', '<p>Meskipun tak tergolong serius, diare bukanlah penyakit yang boleh Toppers sepelekan, lho! Diare sendiri merupakan kondisi yang ditandai dengan encernya tinja yang dikeluarkan dengan frekuensi buang air besar (BAB) yang lebih sering dibandingkan dengan biasanya. Biasanya diare hanya berlangsung beberapa hari, namun pada sebagian kasus memanjang hingga berminggu-minggu.</p>\r\n<p>Gejala diare sendiri bisa dimulai dengan munculnya rasa sakit perut dan diikuti dengan frekuensi buang air besar yang jadi lebih sering dibandingkan biasanya. Tekstur tinja juga lebih encer. Pada kasus yang parah, Toppers bahkan bisa deman dan juga mengalami kram perut parah, lho!</p>\r\n<p>Nggak cuma bisa mengganggu aktivitas sehari-hari, diare bisa berakibat pada dehidrasi hingga malnutrisi karena asupan nutrisi yang jadinya tak terserap sempurna oleh tubuh. Tapi, Toppers nggak perlu khawatir karena diare bisa diatasi dengan mudah, kok. Sebelum mengetahui cara mengatasi diare, mari kita simak kebiasaan-kebiasaan dan berbagai hal yang bisa jadi penyebab Diare yang harus Toppers hindari.</p>\r\n<ol>\r\n<li><strong>Oralit sebagai pertolongan pertama mengobati diare</strong><br>Larutan oralit bisa dengan mudah Toppers temukan di apotik, toko obat-obatan, dan juga Tokopedia. Namun, oralit juga bisa dengan mudah dibuat sendiri dirumah, lho! Cukup larutkan satu sendok teh garam dan delapan sendok gula dengan satu liter air hangat. Minum larutan ini tiga hingga empat kali dalam sehari.</li>\r\n<li><strong>Perbanyak minum air putih</strong><br>Hindari mengonsumsi minuman yang memiliki rasa. Utamakan konsumsi air putih. Pada saat diare, tubuh membutuhkan cairan lebih karena tubuh rentan terkena dehidrasi. Minum air putih dengan frekuensi lebih namun dengan volum yang sedikit-sedikit.</li>\r\n<li><strong>Mengobati diare dengan Probiotik</strong><br>Bakteri jahat bisa dilawan menggunakan bakteri baik. Bakteri baik ini berupa probiotik yang banyak bisa ditemukan dari yoghurt dan juga keju.</li>\r\n<li><strong>Manfaatkan air rebusan daun jambu<br></strong>Kandungan flavanoid yang dimiliki daun jambu bermanfaat mengurangi cairang yang ada dalam feses secara progresif sehingga baik untuk mengurangi dampak dari diare. Cara menggunakan daun jambu untuk obat diare-pun sangat mudah. Cukup rebus 15 lembar daun jambu dengan 1 liter air. Tambahkan satu sedok teh garam hingga air berkurang kurang lebih setengahnya. Minum air rebusan daun jambu ini tiga kali sehari.</li>\r\n<li><strong>Teh Chamomile</strong><br>Sama halnya seperti daun jambu, teh Chamomile mengandung zar flavanoid yang bisa membantu mengobati diare. Namun, konsumsi teh ini secukupnya saja mengingat kandungan kafein yang terdapat pada teh juga tak baik untuk penderita diare.</li>\r\n<li><strong>Hindari makanan-makanan tertentu</strong><br>Saat terkena diare, perhatikan asupan makanan  yang masuk ke dalam tubuh. Berikut makanan-makanan yang perlu Toppers hindari saat menderita diare:\r\n<ul>\r\n<li>Makanan olahan susu, kecuali yoghurt</li>\r\n<li>Minuman-minuman berkafein dan beralkohol</li>\r\n<li>Makanan dengan kandungan asam tinggi</li>\r\n<li>Makanan dengan kandungan gula tinggi</li>\r\n<li>Makanan-makanan berminyak</li>\r\n</ul>\r\n</li>\r\n</ol>', 'ketahui-berbagai-penyebab-diare-dan-cara-mengatasi-diare20171204054411', '.jpg', '2019-06-09 11:34:03', 'Admin', '2019-06-09 12:23:45', 'Admin'),
(6, 'Sering Melamun Pertanda Cerdas?', 'sering-melamun-pertanda-cerdas', '<p>Orang dengan pikiran kerap mengembara kemungkinan mempunyai otak lebih tajam. Sebuah studi menunjukkan bahwa orang yang terus menerus \"terganggu\" ternyata mempunyai \"memori kerja\" lebih banyak. Hal tersebut membuat mereka bisa melakukan dua hal bersamaan dalam satu waktu.Partisipan dalam penelitian ini harus menekan tombol sebagai respons terhadap munculnya huruf tertentu di layar atau menekan pada waktu yang tepat. Para peneliti mengecek secara rutin untuk mengetahui apakah pikiran mereka mengembara. Pada akhir penelitian, para ilmuwan mengukur kapasitas memori kerja partisipan, memberi mereka skor untuk kemampuan dalam mengingat sekumpulan huruf diselingi dengan pertanyaan matematika yang mudah.<br><br>Psikolog dari University of Wisconsin-Madison, Daniel Levinson, mengatakan mereka yang mempunyai kapasitas memori kerja lebih tinggi dilaporkan lebih sering melamun selama mengerjakan tugas-tugas sederhana meskipun prestasi mereka tidak meragukan. Hasil dari penelitian Levinson itu dipublikasikan secara online di Psychological Science. Ini pertama kalinya sebuah penelitian menunjukkan hubungan antara pikiran yang sering mengembara alias melamun dengan kecerdasan.<br><br>Levinson mengatakan dibutuhkan lebih banyak ruang kerja mental, misalnya, untuk menambahkan dua angka yang diucapkan tanpa menuliskannya. Kapasitas tersebut dihubungkan dengan pengukuran umum kecerdasan seperti membaca secara menyeluruh dan skor IQ.<br><br>Studi terbaru ini menggarisbawahi betapa pentingnya memori kerja untuk membantu otak fokus dalam masalah-masalah yang paling sulit.</p>', 'sering-melamun-pertanda-cerdas20180211095422', '.jpg', '2019-06-09 11:35:55', 'Admin', '2019-06-09 12:23:48', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'FASHION STORE BETA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel nibh ac nisl porttitor tempus sit amet et diam. Etiam sed leo eu elit varius venenatis sed ac arcu. Praesent malesuada gravida diam et tincidunt. Mauris quis metus eget magna efficitur scelerisque. Sed mollis porttitor erat ullamcorper sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse congue, dolor ultricies mollis molestie, libero diam auctor mauris, ultrices euismod leo justo vel enim. Etiam non rutrum arcu. Maecenas at dictum dui, sit amet gravida mauris. Vivamus sagittis neque in purus dapibus, ut pellentesque purus pulvinar. Nunc pretium porta ipsum, at iaculis felis elementum in. Duis cursus ex vitae nunc hendrerit blandit.\r\n\r\nMorbi vel est sed dui tristique elementum sed sed purus. Ut interdum nisi et felis vulputate, quis tempus diam blandit. Mauris tincidunt tellus faucibus, posuere turpis a, consectetur lacus. Nullam quis ipsum neque. Praesent sapien tellus, molestie et diam vel, cursus tristique neque. Nullam sit amet ornare odio. Ut vehicula risus id lacus blandit rutrum. Duis non molestie purus. Etiam turpis ligula, tincidunt sit amet dolor at, rutrum viverra orci. Etiam egestas urna id velit bibendum mollis.\r\n\r\nSed eu sem cursus, congue massa at, bibendum leo. Praesent cursus in nulla a egestas. Fusce aliquam leo eu enim feugiat ullamcorper. Nullam pulvinar dolor eu lacinia bibendum. Integer id ipsum cursus, luctus enim nec, fringilla dolor. Sed sit amet ipsum sit amet quam suscipit gravida vitae ut elit. Donec pellentesque non tortor vitae euismod. Praesent suscipit tempor ex ac viverra. Nunc ut sapien eu velit tempor hendrerit. Vestibulum posuere nisl massa, ornare commodo lorem sagittis ultrices. Sed eget rutrum neque, sed ullamcorper dui. Sed ultricies purus vitae lectus cursus, vestibulum faucibus quam posuere. Donec cursus vitae ipsum nec ullamcorper. Donec maximus orci finibus ante hendrerit, vitae maximus quam facilisis. Cras commodo fringilla porttitor.\r\n\r\nNam pharetra a tortor quis venenatis. Nunc lectus nibh, auctor id ante vel, interdum maximus felis. Cras libero est, mattis a sollicitudin sit amet, ultricies sed tellus. Ut augue lacus, luctus convallis enim quis, ultricies aliquet sem. Sed venenatis eros sit amet velit varius, ac rhoncus nibh sodales. Etiam sit amet efficitur est, vel pretium arcu. Morbi diam nulla, dictum quis ornare ultrices, pharetra quis mi. Nam sollicitudin pharetra congue. Praesent sed mauris at ante tincidunt blandit. Aliquam cursus ante efficitur, iaculis turpis eget, ornare quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla quis lobortis leo. Cras ut risus orci. Sed mattis purus ac libero suscipit, nec venenatis tortor semper. Aliquam sodales massa eget dignissim pharetra.\r\n\r\nNam sed enim vitae erat vulputate feugiat in tempus metus. In maximus erat risus. Donec et viverra nibh. Maecenas hendrerit, sapien id suscipit fermentum, tellus nisl sollicitudin erat, non laoreet dui ex sit amet odio. Nullam sit amet arcu sed felis tempor dapibus. Aliquam erat volutpat. Aenean malesuada a eros sed aliquet. Phasellus condimentum lobortis sapien, sit amet viverra sem iaculis venenatis. Morbi interdum nulla ut nulla fringilla commodo. In eu magna ornare libero pellentesque congue. Vestibulum ultrices congue feugiat.', 'Jl. Merdeka Utama Kec. Sukasaja Kel. Maju Mundur, Dunia Lain', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081361557026', '6284646', '24141', 'toko@gmail.com', 'e-commerce-beta20190720020504', '.jpg', '2019-06-11 06:45:34', NULL, '', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `judul_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `judul_kategori`, `slug_kat`) VALUES
(1, 'Fashion Pria', 'pakaian-pria'),
(2, 'Fashion Wanita', 'fashion-wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` char(50) NOT NULL,
  `nohp` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `nohp`) VALUES
(1, 'Davrin', '6281361557026'),
(2, 'Genji', '6282184082336');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `card_number`, `card_exp_month`, `card_exp_year`, `item_name`, `item_number`, `item_price`, `item_price_currency`, `paid_amount`, `paid_amount_currency`, `txn_id`, `payment_status`, `created`, `modified`) VALUES
(1, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 11800000.00, 'IDR', '11800000', 'idr', 'txn_1EvnvwFUXHYtiNiitbzKAjEq', 'succeeded', '2019-07-13 23:18:46', '2019-07-13 23:18:46'),
(2, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 61000000.00, 'IDR', '61000000', 'idr', 'txn_1EvpWyFUXHYtiNiiL5mF47dz', 'succeeded', '2019-07-14 01:01:06', '2019-07-14 01:01:06'),
(3, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 13300000.00, 'IDR', '13300000', 'idr', 'txn_1Evr3EFUXHYtiNiib0fLm9cf', 'succeeded', '2019-07-14 02:38:30', '2019-07-14 02:38:30'),
(4, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 19100000.00, 'IDR', '19100000', 'idr', 'txn_1Ew4nqFUXHYtiNii5Aa9AXKW', 'succeeded', '2019-07-14 17:19:33', '2019-07-14 17:19:33'),
(5, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 9200000.00, 'IDR', '9200000', 'idr', 'txn_1Ew50kFUXHYtiNiiiAwlKECE', 'succeeded', '2019-07-14 17:32:53', '2019-07-14 17:32:53'),
(6, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 37000000.00, 'IDR', '37000000', 'idr', 'txn_1EwnSTFUXHYtiNiicfzlNwa2', 'succeeded', '2019-07-16 17:00:28', '2019-07-16 17:00:28'),
(7, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 78600000.00, 'IDR', '78600000', 'idr', 'txn_1EwnkiFUXHYtiNii9H8NqYXw', 'succeeded', '2019-07-16 17:19:19', '2019-07-16 17:19:19'),
(8, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 31500000.00, 'IDR', '31500000', 'idr', 'txn_1ExAEsFUXHYtiNiifuH6hC3r', 'succeeded', '2019-07-17 17:19:58', '2019-07-17 17:19:58'),
(9, 'Davrin', 'daadd@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyCz6FUXHYtiNiibbkPsiC2', 'succeeded', '2019-07-20 14:28:00', '2019-07-20 14:28:00'),
(10, 'davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 8400000.00, 'IDR', '8400000', 'idr', 'txn_1EyDTEFUXHYtiNii2ZisDNJr', 'succeeded', '2019-07-20 14:59:08', '2019-07-20 14:59:08'),
(11, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7900000.00, 'IDR', '7900000', 'idr', 'txn_1EyDemFUXHYtiNiiDsF0CZC0', 'succeeded', '2019-07-20 15:11:04', '2019-07-20 15:11:04'),
(12, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2039', '', 'PN12345', 7000000.00, 'IDR', '7000000', 'idr', 'txn_1EyDgTFUXHYtiNiiHzR9sryP', 'succeeded', '2019-07-20 15:12:49', '2019-07-20 15:12:49'),
(13, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 10500000.00, 'IDR', '10500000', 'idr', 'txn_1EyDiFFUXHYtiNiiZIppPKmH', 'succeeded', '2019-07-20 15:14:38', '2019-07-20 15:14:38'),
(14, 'Davrin', 'roni@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 10500000.00, 'IDR', '10500000', 'idr', 'txn_1EyDx3FUXHYtiNiiKFMymplE', 'succeeded', '2019-07-20 15:29:56', '2019-07-20 15:29:56'),
(15, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 10500000.00, 'IDR', '10500000', 'idr', 'txn_1EyDxeFUXHYtiNiisvDJ2iPo', 'succeeded', '2019-07-20 15:30:33', '2019-07-20 15:30:33'),
(16, 'davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 10500000.00, 'IDR', '10500000', 'idr', 'txn_1EyDyMFUXHYtiNiiMxs1YF7D', 'succeeded', '2019-07-20 15:31:18', '2019-07-20 15:31:18'),
(17, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7000000.00, 'IDR', '7000000', 'idr', 'txn_1EyE0WFUXHYtiNii7BkFhh1i', 'succeeded', '2019-07-20 15:33:32', '2019-07-20 15:33:32'),
(18, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7000000.00, 'IDR', '7000000', 'idr', 'txn_1EyE6hFUXHYtiNii4cV6ubvd', 'succeeded', '2019-07-20 15:39:55', '2019-07-20 15:39:55'),
(19, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7000000.00, 'IDR', '7000000', 'idr', 'txn_1EyEUbFUXHYtiNiidqN4FZQm', 'succeeded', '2019-07-20 16:04:37', '2019-07-20 16:04:37'),
(20, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 8200000.00, 'IDR', '8200000', 'idr', 'txn_1EyEXZFUXHYtiNiiJPR4mI27', 'succeeded', '2019-07-20 16:07:41', '2019-07-20 16:07:41'),
(21, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyEhhFUXHYtiNii8neIsx4Z', 'succeeded', '2019-07-20 16:18:09', '2019-07-20 16:18:09'),
(22, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyEiqFUXHYtiNiirunsYpce', 'succeeded', '2019-07-20 16:19:20', '2019-07-20 16:19:20'),
(23, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyElzFUXHYtiNiiyzEQM1R2', 'succeeded', '2019-07-20 16:22:34', '2019-07-20 16:22:34'),
(24, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyEpBFUXHYtiNiiJiZaE84B', 'succeeded', '2019-07-20 16:25:53', '2019-07-20 16:25:53'),
(25, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EyEpiFUXHYtiNii5bgQG0Fp', 'succeeded', '2019-07-20 16:26:26', '2019-07-20 16:26:26'),
(26, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 6400000.00, 'IDR', '6400000', 'idr', 'txn_1EyK0HFUXHYtiNiiFo0hbHAg', 'succeeded', '2019-07-20 21:57:40', '2019-07-20 21:57:40'),
(27, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 6400000.00, 'IDR', '6400000', 'idr', 'txn_1EyK3ZFUXHYtiNiiQs7cOSML', 'succeeded', '2019-07-20 22:01:04', '2019-07-20 22:01:04'),
(28, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 6400000.00, 'IDR', '6400000', 'idr', 'txn_1EyLXTFUXHYtiNiiWULRntBV', 'succeeded', '2019-07-20 23:36:02', '2019-07-20 23:36:02'),
(29, 'a', 'adasdasdadsa@gmail.com', 5200828282828210, '12', '2019', '', 'PN12345', 6400000.00, 'IDR', '6400000', 'idr', 'txn_1EyMTLFUXHYtiNiimyl3YRL2', 'succeeded', '2019-07-21 00:35:51', '2019-07-21 00:35:51'),
(30, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 8250000.00, 'IDR', '8250000', 'idr', 'txn_1EyqQqFUXHYtiNiivv4mc1Dw', 'succeeded', '2019-07-22 08:35:16', '2019-07-22 08:35:16'),
(31, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 42400000.00, 'IDR', '42400000', 'idr', 'txn_1EyqUTFUXHYtiNiilh4hSfax', 'succeeded', '2019-07-22 08:39:01', '2019-07-22 08:39:01'),
(32, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 12100000.00, 'IDR', '12100000', 'idr', 'txn_1EyqdXFUXHYtiNiiu5mwURvn', 'succeeded', '2019-07-22 08:48:22', '2019-07-22 08:48:22'),
(33, 'asdasd', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 43800000.00, 'IDR', '43800000', 'idr', 'txn_1EyqzEFUXHYtiNiiGQUtizSD', 'succeeded', '2019-07-22 09:10:48', '2019-07-22 09:10:48'),
(34, 'asdasd', 'asdadasdasdas@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 5100000.00, 'IDR', '5100000', 'idr', 'txn_1Eyr16FUXHYtiNiiL3ks28im', 'succeeded', '2019-07-22 09:12:43', '2019-07-22 09:12:43'),
(35, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 67550000.00, 'IDR', '67550000', 'idr', 'txn_1Eyr3TFUXHYtiNiivgwwafKv', 'succeeded', '2019-07-22 09:15:11', '2019-07-22 09:15:11'),
(36, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 42300000.00, 'IDR', '42300000', 'idr', 'txn_1EyrZBFUXHYtiNiieN3Uw89W', 'succeeded', '2019-07-22 09:47:56', '2019-07-22 09:47:56'),
(37, 'asdasd', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 24950000.00, 'IDR', '24950000', 'idr', 'txn_1EyrgUFUXHYtiNiiLOU6MxyK', 'succeeded', '2019-07-22 09:55:30', '2019-07-22 09:55:30'),
(38, 'asdasd', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 45300000.00, 'IDR', '45300000', 'idr', 'txn_1EyrmUFUXHYtiNiiPEuvO4uR', 'succeeded', '2019-07-22 10:01:42', '2019-07-22 10:01:42'),
(39, 'asdasd', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 65300000.00, 'IDR', '65300000', 'idr', 'txn_1EytGyFUXHYtiNiiQfiPqNbK', 'succeeded', '2019-07-22 11:37:15', '2019-07-22 11:37:15'),
(40, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 36700000.00, 'IDR', '36700000', 'idr', 'txn_1EytijFUXHYtiNii2lpXL8os', 'succeeded', '2019-07-22 12:05:57', '2019-07-22 12:05:57'),
(41, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 7300000.00, 'IDR', '7300000', 'idr', 'txn_1EytvYFUXHYtiNiiGP5J5TKh', 'succeeded', '2019-07-22 12:19:12', '2019-07-22 12:19:12'),
(42, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 6800000.00, 'IDR', '6800000', 'idr', 'txn_1EytySFUXHYtiNiirinDEDt1', 'succeeded', '2019-07-22 12:22:11', '2019-07-22 12:22:11'),
(43, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 6300000.00, 'IDR', '6300000', 'idr', 'txn_1Eyu46FUXHYtiNii2NMinEro', 'succeeded', '2019-07-22 12:28:01', '2019-07-22 12:28:01'),
(44, 'Davrin', 'davrinsyn@gmail.com', 5200828282828210, '03', '2030', '', 'PN12345', 5200000.00, 'IDR', '5200000', 'idr', 'txn_1Eyu6oFUXHYtiNiiivgr4oC5', 'succeeded', '2019-07-22 12:30:49', '2019-07-22 12:30:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `judul_produk` varchar(100) NOT NULL,
  `slug_produk` varchar(50) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `berat` int(11) NOT NULL,
  `kat_id` int(11) NOT NULL,
  `subkat_id` int(11) NOT NULL,
  `harga_normal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_diskon` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `uploader` char(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` char(20) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `judul_produk`, `slug_produk`, `keywords`, `deskripsi`, `berat`, `kat_id`, `subkat_id`, `harga_normal`, `diskon`, `harga_diskon`, `stok`, `foto`, `foto_type`, `uploader`, `created`, `updater`, `modified`) VALUES
(1, 'Anting Swarovski Petite Irish Aurore Earring', 'anting-swarovski-petite-irish-aurore-earring', 'anting swarovski petite irish aurore earring', '<p>Ukuran Hati : 10 mm<br>Warna Hati : Aurore Boreale*<br>Ear Post : Jewelry Grade Stainless Steel<br>Komponen Lain : Double Coated Silver Plated Wire<br>Kelengkapan : Belakangan Anting, Sertifikat, Tempat Penyimpanan<br><br>Irish Collection adalah perhiasan menggunakan Swarovski Kristal berbentuk hati dari AR Hestia. Petite Irish Collection merupaka pilihan tepat untuk Anda yang suka penampilan simpel tapi tetap elegant.<br><br>Irish Collection merupakan line product favorit konsumen AR Hestia. Bentuk hati merupakan lambang Kasih Sayang. Berbagai macam koleksi warna kami hadirkan melalui Irish Collection. Irish Collection merupakan pilihan tepat jika anda menginginkan penampilan sehari-hari sederhana, manis, dan elegant.</p>', 2, 2, 5, 590000, 30, 413000, 5, 'perhiasan-anting-swarovski-petite-irish-aurore-earring20171206143431', '.jpg', '', '2017-11-09 07:59:57', 'azmicolejr', '2019-07-24 09:54:51'),
(2, 'Anting Swarovski Petite Irish Vitrail Earring', 'anting-swarovski-petite-irish-vitrail-earring', 'anting swarovski petite irish vitrail earring', '<p>Ukuran Hati : 10 mm<br>Warna Hati : Vitrail Light (Ungu ke Biru Muda)<br>Ear Post : Jewelry Grade Stainless Steel<br>Komponen Lain : Double Coated Silver Plated Wire<br>Kelengkapan : Anting, Belakangan Anting, Sertifikat, Tempat Penyimpanan<br><br>Irish Collection adalah perhiasan menggunakan Swarovski Kristal berbentuk hati dari AR Hestia. Petite Irish Collection merupaka pilihan tepat untuk Anda yang suka penampilan simpel tapi tetap elegant.<br><br>Irish Collection merupakan line product favorit konsumen AR Hestia. Bentuk hati merupakan lambang Kasih Sayang. Berbagai macam koleksi warna kami hadirkan melalui Irish Collection. Irish Collection merupakan pilihan tepat jika anda menginginkan penampilan sehari-hari sederhana, manis, dan elegant.</p>', 1, 2, 5, 40000, 25, 30000, 4, 'perhiasan-anting-swarovski-petite-irish-vitrail-earring20171206143332', '.jpg', 'azmicolejr', '2017-11-25 06:03:21', 'azmicolejr', '2019-07-24 01:10:03'),
(3, 'Sepatu Boots Pria NJ George Coffee A02', 'sepatu-boots-pria-nj-george-coffee-a02', 'sepatu boots pria nj george coffee a02', '<p>ahan synth leather<br>Pilihan ukuran 40 sampai dengan 43<br>40: 25,5 Cm<br>41: 26 Cm<br>42: 26,5 Cm<br>43: 27 Cm<br><br>Mohon perhatikan ukuran dalam cm<br>Karena jika kebesaran atau kekecilan<br>Tidak bisa proses retur<br><br>STOK TERBATAS<br>Mohon tanyakan ketersediaan<br>Sebelum melakukan pemesanan<br><br>NOTE<br>Kami tidak melayani permintaan foto ulang produk <br>Dengan alasan apapun.</p>', 100, 1, 1, 250000, 45, 137500, 4, 'sepatu-boots-pria-nj-george-coffee-a0220171125024800', '.jpg', 'azmicolejr', '2017-11-25 08:48:00', 'azmicolejr', '2019-07-24 10:01:52'),
(4, 'Liontin  Swarovski - Petite Edelweiss Aurore', 'liontin-swarovski-petite-edelweiss-aurore', 'liontin swarovski - petite edelweiss aurore', '<p>Crystal Size : 1.8cm<br>Colour : Aurore Boreale**<br>Material : Solid Argentium Silver*<br>Kelengkapan Pembelian : Kalung Titanium, Box dan Sertifikat Keaslian<br><br>Edelweiss Pendant is a tribute to 120 Years Anniversary of Swarovski and become one of the most precision Edelweiss Crystal so far. Carefully hand-crafted by AR Signature using Solid Argentium Silver, give you a playful and youthful looks.</p>', 2, 2, 7, 650000, 20, 520000, 8, 'liontin-kalung-swarovski-petite-edelweiss-aurore20171206143733', '.jpg', 'azmicolejr', '2017-12-06 20:37:33', 'azmicolejr', '2019-07-23 02:49:27'),
(5, 'Liontin Swarovski - Allure Rose Necklace', 'liontin-swarovski-allure-rose-necklace', 'liontin swarovski - allure rose necklace', '<p>Crystal Size : 2.2 cm<br>Colour : Light Rose<br>Other Crystal Colour : Aurore Boreale***<br>Crytal Cutting Type : Pear Shape Cut Pendant<br>Material : Solid Argentium Silver*<br>Chain Necklace : Jewelry Grade Stainless Steel** ( 42 cm )<br><br>Allure Pendant is made of Pear shape cut Swarovski Crystal and Solid Argentium Silver. This classic sophisticated necklace shows beauty and tenderness. Fits perfectly for daily use.</p>', 2, 2, 7, 450000, 30, 315000, 5, 'liontin-kalung-swarovski-allure-rose-necklace20171206143816', '.jpg', 'azmicolejr', '2017-12-06 20:38:16', 'azmicolejr', '2019-07-23 01:54:17'),
(6, 'Gelang Kesehatan Kaukah/ Kokka Kotak Hitam', 'gelang-kesehatan-kaukah-kokka-kotak-hitam', 'gelang kesehatan kaukah/ kokka kotak hitam ', '<p>Ukuran lingkar gelang 15-16 cm<br>Warna Hitam Original<br>Model Kotak Mardjan<br><br>Kelengkapan :<br>v Gelang Kaukah Kokka Asli<br>v Brosur Informasi<br>v Dus/Box + Kaleng Plastik esklusif<br>v Sertifikat + Hologram Keaslian<br>v Bonus Sticker</p>', 3, 2, 6, 120000, 15, 102000, 4, 'gelang-kesehatan-kaukahkokka-kotak-hitam-bersertifikat-asli-istanbul20171206143933', '.jpg', 'azmicolejr', '2017-12-06 20:39:33', 'azmicolejr', '2019-07-22 06:38:54'),
(7, 'Gelang Korea Multi Charm Music Brown KB35416', 'gelang-korea-multi-charm-music-brown-kb35416', 'gelang korea multi charm music brown kb35416', '<p>Bahan: Handmade Rope + Alloy(Campuran timah+tembaga)<br>Ukuran: 18 cm</p>', 4, 2, 6, 70000, 70, 21000, 4, 'gelang-korea-multi-charm-music-brown-kb3541620171206144017', '.jpg', 'azmicolejr', '2017-12-06 20:40:17', 'azmicolejr', '2019-07-24 15:41:06'),
(8, 'BATIK GW : KEMEJA LENGAN PANJANG BATIK SOLO', 'batik-gw-kemeja-lengan-panjang-batik-solo', 'batik gw : kemeja lengan panjang batik solo', '<p>emeja batik pria, lengan panjang maupun pendek, dengan cutting regular Indonesia. Batik GW menggunakan bahan 100% katun halus yang adem dan berkualitas tinggi. Dengan mengutamakan kenyamanan bagi para penggunanya, BATIK GW sangat cocok digunakan di acara formal seperti pernikahan dan rapat penting maupun casual seperti harian kantor atau jalan-jalan karena motifnya yang unik dan khas.<br><br>MATERIAL:100% Katun Halus (Katun terbuat dari kapas, jadi dijamin dari bahan-bahan organic gan!)<br>CUTTING: REGULER<br><br>KODE PRODUK: LS-05B<br>WARNA DASAR: HITAM<br>WARNA MOTIF: MERAH-COKELAT<br>SIZE: S-M-L-XL-XXL-XXXL (Tanyakan terlebih dahulu ketersediaan stok yaa, bisa dikolom diskusi, inbox pesan atau via Whatsapp)<br><br>DETAIL UKURAN:<br>S : Pundak 45 cm, Panjang 72 cm, Lebar 52 cm, Lingkar dada 104 cm<br>M : Pundak 47 cm, Panjang 74 cm, Lebar 54 cm, Lingkar dada 108 cm<br>L : Pundak 49 cm, Panjang 76 cm, Lebar 56 cm, Lingkar dada 112 cm<br>XL : Pundak 51 cm, Panjang 78 cm, Lebar 57 cm, Lingkar dada 114 cm<br>XXL: Pundak 53 cm, Panjang 80 cm, Lebar 58 cm, Lingkar dada 116 cm<br>XXL: Pundak 54 cm, Panjang 81 cm, Lebar 59 cm, Lingkar dada 118 cm<br><br>TIPS PERAWATAN:<br>- SANGAT MUDAH! BATIK GW tidak luntur saat pencucian pertama dan seterusnya. <br>- Disarankan menggunakan detergen yang lembut (detergen cair) atau shampoo<br>- Sebaiknya tidak mengeringkan di mesin cuci, cukup diangin-anginkan aja<br><br>Untuk info pemesanan, mohon tanyakan ketersediaan stok ukuran terlebih dahulu yaa..</p>', 400, 1, 4, 150000, 40, 90000, 0, 'batik-gw-kemeja-lengan-panjang-batik-solo20171206145657', '.jpg', 'azmicolejr', '2017-12-06 20:56:57', 'azmicolejr', '2019-07-23 21:19:12'),
(9, 'Kemeja Batik Songket Black Panjang kerja Kantor Slimfit Batik Cowok', 'kemeja-batik-songket-black-panjang-kerja-kantor-sl', 'kemeja batik songket black panjang kerja kantor slimfit batik cowok', '<p>Detail Ukuran<br>Lebar Dada X Panjang <br>Ada di Gambar<br>M (50x70)<br>L (52x72)<br><br>Bahan : Katun Stretch</p>', 400, 1, 4, 90000, 50, 45000, 4, 'kemeja-batik-songket-black-panjang-kerja-kantor-slimfit-batik-cowok20171206145817', '.jpg', 'azmicolejr', '2017-12-06 20:58:17', 'azmicolejr', '2019-07-22 06:38:54'),
(10, 'Kemeja Batik Songket Pria Black Panjang Kantor Slimfit Baju Batik', 'kemeja-batik-songket-pria-black-panjang-kantor-sli', 'kemeja batik songket pria black panjang kantor slimfit baju batik', '<p>TULIS SIZE DI KOLOM KETERANGAN SAAT ORDER<br><br>Detail Ukuran<br>Lebar Dada X Panjang <br>Ada di Gambar<br>M (50x70)<br>L (52x72)<br><br><br>BAHAN ; KATUN STRETCH <br>SIZE : M DAN L</p>', 200, 1, 4, 90000, 30, 63000, 3, 'kemeja-batik-songket-pria-black-panjang-kantor-slimfit-baju-batik20171206145917', '.jpg', 'azmicolejr', '2017-12-06 20:59:17', 'azmicolejr', '2018-02-28 06:17:44'),
(11, 'Kemeja Batik Songket Pria Purple Panjang Slimfit Kerja Kantor Murah', 'kemeja-batik-songket-pria-purple-panjang-slimfit-k', 'kemeja batik songket pria purple panjang slimfit kerja kantor murah', '<p>TULIS SIZE DI KOLOM KETERANGAN SAAT ORDER<br><br>Detail Ukuran<br>Lebar Dada X Panjang <br>Ada di Gambar<br>M (50x70)<br>L (52x72)<br><br>BAHAN ; KATUN STRETCH <br>SIZE : M DAN L</p>', 200, 1, 4, 90000, 20, 72000, 5, 'kemeja-batik-songket-pria-purple-panjang-slimfit-kerja-kantor-murah20171206150038', '.jpg', 'azmicolejr', '2017-12-06 21:00:38', 'azmicolejr', '2018-02-28 06:17:40'),
(12, 'Celana Panjang Batik Kencana Ungu', 'celana-panjang-batik-kencana-ungu', 'celana panjang batik kencana ungu', '<p>Celana panjang Batik Kencana Ungu<br>Bahan Katun adem , halus , nyaman dipakai<br>LP 60cm melar hingga 90cm<br>Panjang 105cm</p>', 300, 1, 4, 60000, 10, 54000, 4, 'celana-panjang-batik-kencana-ungu20171206150208', '.jpg', 'azmicolejr', '2017-12-06 21:02:08', 'azmicolejr', '2018-02-28 06:17:36'),
(13, 'Celana Batik Panjang Jumbo Unisex Katun Halus', 'celana-batik-panjang-jumbo-unisex-katun-halus', 'celana batik panjang jumbo unisex katun halus ', '<p>- Allsize JUMBO<br>- Unisex (bisa dipakai pria maupun wanita)<br>- Lingkar pinggang maksimal 112 cm<br>- Panjang celana 98 cm<br>- Bahan katun halus<br>- Adem<br>- Pinggang karet<br>- Ada tali pinggang untuk menyesuaikan lingkar pinggang<br>- Warna dan motif seperti foto<br>- Batik printing<br>- Asli Pekalongan</p>', 300, 1, 4, 500000, 40, 300000, 10, 'celana-batik-panjang-jumbo-unisex-katun-halus20180226073344', '.jpg', 'azmicolejr', '2017-12-06 21:04:06', 'azmicolejr', '2018-02-28 06:17:31'),
(14, 'Sarung Tangan Thanos', 'sarung-tangan-thanos', 'sarung tangan thanos', '<p>Sarung tangan thanos dong</p>', 1000, 2, 5, 200000, 0, 200000, 6, 'sarung-tangan-thanos20190722104544', '.jpg', 'superadmin', '2019-07-03 13:27:55', 'superadmin', '2019-07-22 10:45:44'),
(126335, 'H&M Black Midi Dress', 'dress', 'dress', '<p>5</p>', 1, 2, 2, 100000, 5, 95000, 2, 'dress20190714171650', '.jpg', '', '0000-00-00 00:00:00', 'superadmin', '2019-07-18 04:52:48'),
(152836, 'Mini dress', 'mini-dress', 'mini', '<p>Flat shoes</p>', 500, 2, 11, 70000, 20, 56000, 2, 'flat-shoes20190722082025', '.jpg', '', '0000-00-00 00:00:00', 'superadmin', '2019-07-22 08:20:53'),
(153475, 'Gown', 'gown', 'gown', 'kosong', 1, 2, 6, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(276056, 'Dress 18', 'dress 18', 'dress 18', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(298830, 'Shift', 'shift', 'shift', 'kosong', 1, 2, 2, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(321674, 'Shirtdress', 'shirtdress', 'shirtdress', 'kosong', 1, 2, 3, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(333479, 'Dress 10', 'dress 9', 'dress 9', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(348662, 'Dress 3', 'dress tiga', 'dress tiga', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(361530, 'Dress 9', 'dress 9', 'dress 9', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(466944, 'Gown 3', 'gown 3', 'gown 3', 'kosong', 1, 2, 6, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(499380, 'Gown 5 ', 'gown 5', 'gown 5', 'kosong', 1, 2, 6, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(524341, 'Gown 4', 'gown 4', 'gown 4', 'kosong', 1, 2, 6, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(568429, 'Dress 7', 'dress 7', 'dress 7', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(616682, 'Gown 2', 'gown 2', 'gown 2', 'kosong', 1, 2, 6, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(664127, 'Dress 14', 'dress 14', 'dress 14', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(843274, 'Shirtdress 2', 'shirtdress 2', 'shirtdress 2', 'kosong', 1, 2, 3, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1063761, 'Sheath', 'sheath', 'sheath', 'kosong', 1, 2, 5, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1083818, 'Dress 2', 'dress dua', 'dress dua', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1187427, 'Dress 5', 'dress 5', 'dress 5', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1263144, 'Dress 12', 'dress 12', 'dress 12', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1296975, 'Dress 17', 'dress 17', 'dress 17', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1384766, 'Sheath 2', 'sheath 2', 'sheath 2', 'kosong', 1, 1, 5, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1427750, 'Dress 4', 'dress 4', 'dress 4', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1540425, 'Dress 16', 'dress 16', 'dress 16', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1573992, 'Dress 15', 'dress 15', 'dress 15', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1592991, 'Dress 8', 'dress 8 ', 'dress 8 ', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1650899, 'Dress 13', 'dress 13', 'dress 13', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1746190, 'Dress 6', 'dress 6', 'dress 6', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1795313, 'Maxi', 'maxi', 'maxi', 'kosong', 1, 2, 7, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(1808106, 'Dress 11', 'dress 9', 'dress 9', 'kosong', 1, 2, 4, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2001228, 'Top 4', 'top 4', 'top 4', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2039249, 'Sweater 4', 'sweater 4', 'sweater 4', 'kosong', 1, 1, 12, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2047735, 'Top 6', 'top 6', 'top 6', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2104233, 'Jumpsuit 5', 'jumpsuit 5', 'jumpsuit 5', 'kosong', 1, 1, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2155094, 'Jumpsuit', 'jumpsuit', 'jumpsuit', 'kosong', 1, 2, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2162634, 'Top 3', 'top 3', 'top 3', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2209432, 'Culottes', 'culottes', 'culottes', 'kosong', 1, 2, 23, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2214689, 'Top 5', 'top 5', 'top 5', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2251739, 'Sweater', 'sweater', 'sweater', 'kosong', 1, 1, 12, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2260466, 'Romper', 'romper', 'romper', 'kosong', 1, 2, 14, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2268666, 'Kaftan', 'kaftan', 'kaftan', 'kosong', 1, 2, 24, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2333654, 'Down', 'down', 'down', 'kosong', 1, 2, 8, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2340996, 'Jumpsuit 2', 'jumpsuit dua', 'jumpsuit dua', 'kosong', 1, 2, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2363191, 'Jumpsuit 3', 'jumpsuit tiga', 'jumpsuit tiga', 'kosong', 1, 2, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2376757, 'Sweater 2', 'sweater 2', 'sweater 2', 'kosong', 1, 1, 12, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2431951, 'Jumpsuit 4', 'jumpsuit empat', 'jumpsuit empat', 'kosong', 1, 2, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2481749, 'Sweater 3', 'sweater 3 ', 'sweater 3 ', 'kosong', 1, 1, 12, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2595752, 'Leggings', 'leggings', 'leggings', 'kosong', 1, 2, 16, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2599988, 'Skirt 3', 'skirt 3', 'skirt 3', 'kosong', 1, 2, 19, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2635020, 'Top 2', 'top 2', 'top 2', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2650253, 'Jumpsuit 6', 'jumpsuit 6', 'jumpsuit 6', 'kosong', 1, 2, 9, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2658329, 'Bomber', 'bomber', 'bomber', 'kosong', 1, 1, 10, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2660685, 'Blazer', 'blazer', 'blazer', 'kosong', 1, 2, 17, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2672907, 'Jacket 2', 'jacket 2', 'jacket 2', 'kosong', 1, 1, 15, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2706963, 'Jacket 3', 'jacket 3', 'jacket 3', 'kosong', 1, 1, 15, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2712258, 'Pants', 'pants', 'pants', 'kosong', 1, 1, 18, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2736018, 'Top', 'top', 'top', 'kosong', 1, 2, 13, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2746761, 'Coat', 'coat', 'coat', 'kosong', 1, 2, 11, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2758287, 'Blouse', 'blouse', 'blouse', 'kosong', 1, 2, 21, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2809120, 'Skirt', 'skirt', 'skirt', 'kosong', 1, 2, 19, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2872079, 'Jacket', 'jacket', 'jacket', 'kosong', 1, 1, 15, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2893615, 'Skirt 2', 'skirt 2', 'skirt 2', 'kosong', 1, 2, 19, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2904350, 'Shirt', 'shirt', 'shirt', 'kosong', 1, 1, 20, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2954118, 'Trench', 'trench', 'trench', 'kosong', 1, 2, 22, 0, 0, 0, 4, '', '', '', '0000-00-00 00:00:00', '', '2019-07-22 06:38:54'),
(2954119, 'Testing produk', 'testing-produk', 'testing', '<p><span xss=removed>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam posuere eu felis ac laoreet. Nullam fringilla nunc in arcu tincidunt, ac ultricies lectus consequat. Ut sodales consequat ante a dictum. Donec vel est blandit, dictum augue a, suscipit orci. Morbi non placerat orci. Ut dictum vel nisi bibendum bibendum. Nam eu nisl et lectus finibus consequat. Aenean convallis, quam id ornare interdum, ante libero interdum lectus, vitae euismod nisi felis maximus arcu. Quisque elementum massa urna, in congue arcu molestie eu.</span></p>', 5, 1, 22, 100000, 50, 50000, 5, 'testing-produk20190714172216', '.jpg', 'superadmin', '2019-07-14 17:22:16', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL,
  `kode_promo` varchar(8) NOT NULL,
  `ket_promo` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `max_pembelian` int(11) NOT NULL,
  `max_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id_promo`, `kode_promo`, `ket_promo`, `discount`, `max_pembelian`, `max_users`) VALUES
(2, 'OKEOCE', 'OKEEEE', 10, 100000, 6),
(3, 'SIP', 'siplah', 20, 100000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_detail`
--

CREATE TABLE `promo_detail` (
  `promo_detail_id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `trans` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo_detail`
--

INSERT INTO `promo_detail` (`promo_detail_id`, `promo`, `trans`, `user`) VALUES
(15, 2, 139, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id_rating` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `testi` varchar(500) NOT NULL,
  `date_crate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id_rating`, `item_id`, `id_users`, `rating`, `testi`, `date_crate`) VALUES
(7, 14, 32, 3, '0', '2019-07-03 00:01:23'),
(8, 14, 41, 2, 'xkgzkgzgxkhxo', '2019-07-03 00:03:47'),
(9, 8, 35, 3, '0', '2019-07-03 00:03:47'),
(14, 8, 41, 2, '0', '2019-07-03 00:11:19'),
(18, 3, 35, 5, '0', '2019-07-03 00:17:04'),
(20, 7, 30, 1, '0', '2019-07-03 00:21:21'),
(21, 7, 35, 5, '0', '2019-07-03 00:21:21'),
(22, 7, 41, 1, 'gxhxkgzjgzjgzj', '2019-07-03 00:21:21'),
(24, 1, 41, 5, '0', '2019-07-03 00:21:21'),
(26, 1, 32, 2, '01sdasfasfz', '2019-07-03 01:04:52'),
(27, 2, 53, 5, '0', '2019-07-06 01:22:12'),
(28, 6, 47, 2, '0asdasdas', '2019-07-06 01:22:12'),
(29, 7, 5, 3, '0', '2019-07-06 01:22:12'),
(30, 7, 32, 5, '0', '2019-07-06 01:22:12'),
(31, 10, 47, 2, '0', '2019-07-06 01:22:12'),
(32, 2, 41, 5, 'hdkgzkgsgjsjgsodudohxkgxbcbcjcxnvznczjgzjgzj', '2019-07-06 01:23:00'),
(34, 9, 42, 2, '0', '2019-07-06 01:23:16'),
(36, 6, 53, 1, '0', '2019-07-06 04:57:01'),
(37, 1, 42, 5, '0', '2019-07-06 04:57:01'),
(38, 1, 47, 1, '0', '2019-07-06 04:58:18'),
(39, 1, 52, 5, '0', '2019-07-06 04:58:18'),
(51, 13, 35, 5, 'jjjasjjkhasjhkasjhksa', '2019-07-20 21:03:52'),
(52, 4, 61, 1, '0', '2019-07-20 21:13:17'),
(53, 2, 61, 4, 'mantapppps', '2019-07-20 21:13:17'),
(57, 8, 62, 3, '', '2019-07-21 19:14:23'),
(60, 6, 62, 2, 'gsgsgdg', '2019-07-21 19:14:24'),
(61, 2, 62, 2, 'gdhsgdhd', '2019-07-21 19:14:24'),
(62, 4, 62, 5, 'hddhdhd', '2019-07-21 19:14:24'),
(63, 7, 62, 2, 'hdhdhddhdd', '2019-07-21 19:14:24'),
(64, 13, 41, 5, 'kgzmvzmvzjvzjxkg', '2019-07-21 20:09:17'),
(65, 3, 41, 3, 'jfzjgzjgzjgzjgxcjxdvxxbxkbxkxkbxh', '2019-07-21 20:09:17'),
(66, 10, 41, 3, 'kgzzkggk', '2019-07-21 20:09:17'),
(70, 1, 35, 1, 'jelek x barang nya lek', '2019-07-23 06:16:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recommendation`
--

CREATE TABLE `recommendation` (
  `id_recommendation` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` char(10) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `recommendation`
--

INSERT INTO `recommendation` (`id_recommendation`, `no_urut`, `produk_id`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 3, '2019-06-11 09:15:46', 'admin', '2019-06-29 18:30:32', 'superadmin'),
(2, 2, 1, '2019-06-11 09:46:00', 'admin', '2019-06-14 07:19:34', ''),
(3, 3, 2, '2019-06-11 09:46:11', 'admin', '2019-06-14 07:19:44', ''),
(4, 4, 9, '2019-07-01 09:48:10', 'superadmin', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `judul_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` char(50) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `judul_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 3, 'Eye Liner', 'asda', '120171204051126', '.jpg', 203, '2019-06-09 08:05:03', '', '2019-06-14 07:13:16', 'admin'),
(2, 2, 'Hat for Men', 'asdasd', '220180208025208', '.jpg', 833, '2019-06-09 08:05:03', '', '2019-06-14 07:13:19', 'admin'),
(3, 1, 'Make-up', 'asd', '4564564564654', '.jpg', 167, '2019-06-09 08:05:03', '', '2019-06-14 07:17:34', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(11) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `judul_subkategori` char(50) NOT NULL,
  `slug_subkat` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kat`, `judul_subkategori`, `slug_subkat`) VALUES
(1, 1, 'Sepatu', 'sepatu'),
(2, 2, 'Tas', 'tas'),
(3, 1, 'Jam Tangan', 'jam-tangan'),
(4, 1, 'Batik Pria', 'batik-pria'),
(5, 2, 'Perhiasan', 'perhiasan'),
(6, 2, 'Gelang', 'gelang'),
(7, 2, 'Kalung', 'kalung'),
(8, 2, 'Mini', 'mini'),
(9, 2, 'Shift', 'shift'),
(10, 2, 'Shirtdress', 'shirtdress'),
(11, 2, 'Dress', 'dress'),
(12, 2, 'Sheath', 'sheath'),
(13, 2, 'Gown', 'gown'),
(14, 2, 'Maxi', 'maxi'),
(15, 2, 'Down', 'down'),
(16, 2, 'Jumpsuit', 'jumpsuit'),
(17, 1, 'Bomber', 'bomber'),
(18, 2, 'Coat', 'coat'),
(19, 1, 'Sweater', 'sweater'),
(20, 2, 'Top', 'top'),
(21, 2, 'Romper', 'romper'),
(22, 1, 'Jakcet', 'jakcet'),
(23, 2, 'Leggings', 'leggings'),
(24, 1, 'Blazer', 'blazer'),
(25, 2, 'Pants', 'pants'),
(26, 2, 'Skirt', 'skirt'),
(27, 1, 'Shirt', 'shirt'),
(28, 2, 'Blouse', 'blouse'),
(29, 2, 'Trench', 'trench'),
(30, 2, 'Culottes', 'culottes'),
(31, 2, 'Kaftan', 'kaftan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ongkir` int(11) NOT NULL,
  `kurir` char(20) NOT NULL,
  `service` char(50) NOT NULL,
  `status` int(11) NOT NULL,
  `resi` char(50) DEFAULT NULL,
  `promo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `user_id`, `created`, `ongkir`, `kurir`, `service`, `status`, `resi`, `promo_id`) VALUES
(139, 2, '2019-07-23 21:06:40', 10000, 'jne', 'CTCYES', 1, NULL, 0),
(140, 2, '2019-07-23 21:07:33', 7000, 'jne', 'CTC', 1, NULL, 0),
(141, 2, '2019-07-23 21:08:01', 10000, 'jne', 'CTCYES', 1, NULL, 0),
(142, 2, '2019-07-23 21:09:55', 10000, 'jne', 'CTCYES', 1, NULL, 0),
(143, 2, '2019-07-23 21:17:01', 20000, 'jne', 'CTCYES', 1, NULL, 0),
(144, 2, '2019-07-23 21:22:16', 18000, 'pos', 'Express Sameday Barang', 1, NULL, 0),
(145, 2, '2019-07-23 21:34:37', 10000, 'jne', 'CTCYES', 1, NULL, 0),
(146, 2, '2019-07-23 22:20:15', 10000, 'jne', 'CTCYES', 1, NULL, 0),
(147, 2, '2019-07-23 23:49:42', 7000, 'jne', 'CTC', 1, NULL, 0),
(150, 2, '2019-07-24 01:26:32', 0, '', '', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_berat` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `catatan` text,
  `rating_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `user`, `produk_id`, `harga`, `berat`, `total_qty`, `total_berat`, `subtotal`, `catatan`, `rating_status`) VALUES
(321, 139, 2, 3, 137500, 100, 2, 200, 275000, 'catatan', 0),
(322, 140, 2, 1, 413000, 2, 1, 2, 413000, '', 0),
(323, 141, 2, 1, 413000, 2, 1, 2, 413000, '', 0),
(324, 142, 2, 2, 30000, 1, 2, 2, 54000, 'catatan', 0),
(325, 143, 2, 8, 90000, 400, 5, 2000, 405000, '', 0),
(326, 144, 2, 3, 137500, 100, 2, 200, 247500, 'catatan', 0),
(328, 145, 2, 2, 30000, 1, 1, 1, 27000, NULL, 0),
(330, 146, 2, 3, 137500, 100, 1, 100, 123750, '', 0),
(332, 147, 2, 1, 413000, 2, 1, 2, 413000, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `photo` text,
  `photo_type` varchar(10) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lahir` date DEFAULT NULL,
  `umur` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`, `lahir`, `umur`) VALUES
(1, 'Super Admin', 'superadmin', '$2y$08$D8i7zeJSUQulCZKsx/FKGul8ZwWcBxcCGL34/J6Ipzs228xyS9TSG', 'admin@gmail.com', '081228289766', 6, 151, 'asdasdasdsa', 1, 1, 'super-admin20190627142247', '.png', '::1', NULL, NULL, NULL, NULL, NULL, 1563831640, 2147483647, '2019-07-23 04:40:40', '0000-00-00', 0),
(2, 'Davrin', 'davrinsyn', '$2y$08$jw4MKvIqyzRfEfif2XxbleOzxOmABseq05UB/wSn96EetXDcyoZIm', 'davrinsyna@gmail.com', '081361557026', 34, 278, 'Jl.Jamin Ginting', 2, 1, 'davrin20190722054341', '.png', '::1', NULL, NULL, 'a3NZBOU5-LWM7GbvDXHY.O0eceb447acdad9e0b2', 1561617252, '1WonbvYw2P2leMBhaiazge', 1563982015, 1560470637, '2019-07-24 22:26:55', '1997-04-03', 22),
(3, 'usertest', 'usertest', '$2y$08$Ii6u22NsT3AVwSoNNRYOD.Hkos5rchsITPO04RRdHwRM5EOnpQFgG', 'user@gmail.com', '08121212', 34, 15, 'Jl. Jamin ginting No.409', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1563358469, 1561943514, '2019-07-17 17:14:29', '1997-03-04', 22),
(6, 'roni', 'roni', '$2y$08$5plmibllxBEqir42/cZ2gOfqmE53T1WGOAwbuwD8TxVaMuR45jbuy', 'roni@gmail.com', '454554', 3, 106, 'asdas', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1561953444, 1561948553, '2019-07-04 14:39:59', '1998-03-04', 21),
(7, 'Davrin', 'ruru', '$2y$08$aOqwudRTYcwov9D0weE9W.aHYVmhn5/xljGqEx.hXx1DC7eA9Bgp.', 'dasda@gmail.com', '', 19, 14, '', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1562728713, 1562728535, '2019-07-10 10:18:33', '2013-03-01', 6),
(27, 'lala', 'lala', '$2y$08$JX12abWbnfOd.JzJNHQVSu0J/y3Ms3HMS.94BRgF5NgvTjnO1nU7m', 'lala@gmail.com', '2342523', 15, 214, 'dfasj;fasl', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1559625144, '2019-07-15 14:30:29', '0000-00-00', 0),
(30, 'aaa', 'aaa', '$2y$11$lXznFB4GYzZdQLSszGFzIuvXtdrc43Bj6mP38uQ8LkL/teAwBoG4i', 'aaa@gmail.com', '088182381', 27, 2, 'pakam', 2, 1, 'aaa1563105367', '.jpg', '', NULL, NULL, NULL, NULL, NULL, 1563762740, 1559627466, '2019-07-22 09:32:20', '0000-00-00', 27),
(32, 'hahaha', 'hahaha', '$2y$11$9XVoXhszUNZlbeTWkOBqoe9bT6rg62TP0d4rukNBY38OzTcT2zr3G', 'hahaha@gmail.com', '088182381', 27, 2, 'pakam', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1559627942, 1559627892, '2019-07-15 14:30:36', '0000-00-00', 18),
(35, 'telor mi', 'telor', '$2y$10$yJtfGT2BQKlLMMHLier3T.BYZ4XlonTaRrL2wyQF3JD9UeWW86uQS', 'telor@gmail.com', '79327327', 6, 152, 'Jakpus', 2, 1, 'telor1563018023', '.png', '192.168.43.180', NULL, NULL, NULL, NULL, NULL, 1563773384, 1562084640, '2019-07-22 12:29:44', '1953-06-30', 66),
(41, 'bapak ku', 'bapak', '$2y$10$2VCXIaOdBQa8KGPNo.OBbeb15WsJzr/JQJsRQbuuWrXq.LFyAhLm.', 'bapak@gmail.com', '08182727', 34, 112, 'pantai labu', 2, 1, 'bapak1563105714', '.jpg', '192.168.43.180', NULL, NULL, NULL, NULL, NULL, 1561907810, 1561795393, '2019-07-15 14:30:49', '1955-06-10', 24),
(42, 'hendri', 'hendri', '$2y$10$UHTuMyqvrf4mm7Orkeqg3OCeorDilUWk/RtNRKcnxI1TCly.VgGRG', 'hendri@gmail.com', '088182381', 27, 2, 'pakam', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1562914466, 1559913572, '2019-07-15 14:30:54', '0000-00-00', 30),
(47, 'hihihi', 'hihihi', '$2y$10$iG4gcilA2ZjNxy64PCHPQ.pQ/lrwMni2Z84nuzBDoOYPn4wqhGVDq', 'hihihi@gmail.com', '088182381', 27, 2, 'pakam', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1560946092, '2019-07-15 14:30:56', '0000-00-00', 20),
(52, 'asdqwe', 'asdqwe', '$2y$10$BhQSoL/cYo8oTyaBTixHVuoSIequIDcVHiXRPO8PJkFXrWvQpoHha', 'asdqwe@gmail.com', '08812818', 22, 2, 'asdasdasd', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1561438246, '2019-07-15 14:30:58', '1996-04-17', 23),
(53, 'kentang', 'kentang', '$2y$10$9mEkYVLSgaeqp1ROsqsPCOPlBbRcf7fGprDvfSnfOXGPjgTpqur4u', 'kentang@gmail.com', '090998908', 2, 28, 'mana aja', 2, 1, NULL, NULL, '100.77.125.38', NULL, NULL, NULL, NULL, NULL, NULL, 1561440451, '2019-07-15 14:31:16', '1996-06-10', 23),
(59, 'telor gulung', 'telor1', '$2y$10$EAergOxR7jskNQIOfScxV.7vbbrV8CTJ4btcVCfp3q/.LTda7WfIG', 'ararar@gmail.com', '2737373', 1, 113, 'Medan', 2, 1, NULL, NULL, '192.168.43.180', NULL, NULL, NULL, NULL, NULL, NULL, 1561643962, '2019-07-15 14:31:09', '0000-00-00', 0),
(3696, 'pengguna satu tiga sembilan empat puluh', 'penggunasatutigasembilanempatpuluh', 'penggunasatutigasembilanempatpuluh', 'penggunasatutigasembilanempatpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:27', '1987-01-01', 32),
(4472, 'pengguna satu empat tujuh empat', 'penggunasatuempattujuhempat', 'penggunasatuempattujuhempat', 'penggunasatuempattujuhempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:58', '1990-01-01', 29),
(6319, 'pengguna enam tiga satu sembilan', 'penggunaenamtigasatusembilan', 'penggunaenamtigasatusembilan', 'penggunaenamtigasatusembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:25', '1984-01-01', 35),
(6422, 'pengguna dua empat sembilan puluh', 'penggunaduaempatsembilanpuluh', 'penggunaduaempatsembilanpuluh', 'penggunaduaempatsembilanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:02', '1978-01-01', 41),
(6895, 'pengguna empat sembilan sembilan puluh', 'penggunaempatsembilansembilanpuluh', 'penggunaempatsembilansembilanpuluh', 'penggunaempatsembilansembilanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:42', '1984-01-01', 35),
(16800, 'pengguna dua puluh', 'penggunaduapuluh', 'penggunaduapuluh', 'penggunaduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:56', '1986-01-01', 33),
(24792, 'pengguna enam lima', 'penggunaenamlima', 'penggunaenamlima', 'penggunaenamlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:33', '1990-01-01', 29),
(32612, 'pengguna tiga dua enam satu dua', 'penggunatigaduaenamsatudua', 'penggunatigaduaenamsatudua', 'penggunatigaduaenamsatudua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:38', '1988-01-01', 31),
(35367, 'pengguna tujuh enam puluh ', 'penggunatujuhenampuluh', 'penggunatujuhenampuluh', 'penggunatujuhenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:27', '1985-01-01', 34),
(39245, 'pengguna satu delapan lima puluh', 'penggunasatudelapanlimapuluh', 'penggunasatudelapanlimapuluh', 'penggunasatudelapanlimapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:27', '1986-01-01', 33),
(41643, 'pengguna tiga delapan tujuh delapan enam', 'penggunatigadelapantujuhdelapanenam', 'penggunatigadelapantujuhdelapanenam', 'penggunatigadelapantujuhdelapanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:29', '1992-01-01', 27),
(45159, 'pengguna lima delapan delapan empat tiga', 'penggunalimadelapandelapanempattiga', 'penggunalimadelapandelapanempattiga', 'penggunalimadelapandelapanempattiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:06', '1973-01-01', 46),
(47899, 'pengguna empat tujuh delapan sembilan sembilan', 'penggunaempattujuhdelapansembilansembilan', 'penggunaempattujuhdelapansembilansembilan', 'penggunaempattujuhdelapansembilansembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:23', '1989-01-01', 30),
(48163, 'pengguna dua dua delapan tiga puluh', 'penggunaduaduadelapantigapuluh', 'penggunaduaduadelapantigapuluh', 'penggunaduaduadelapantigapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:20', '1965-01-01', 54),
(48274, 'pengguna enam tiga sembilan', 'penggunaenamtigasembilan', 'penggunaenamtigasembilan', 'penggunaenamtigasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:55', '1989-01-01', 30),
(48628, 'pengguna enam nol tiga', 'penggunaenamnoltiga', 'penggunaenamnoltiga', 'penggunaenamnoltiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:24', '1989-01-01', 30),
(53744, 'pengguna sembilan puluh', 'penggunasembilanpuluh', 'penggunasembilanpuluh', 'penggunasembilanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:17', '1986-01-01', 33),
(54067, 'pengguna lima empat nol enam tujuh', 'penggunalimaempatnolenamtujuh', 'penggunalimaempatnolenamtujuh', 'penggunalimaempatnolenamtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:18', '1979-01-01', 40),
(58080, 'pengguna satu lima dua sembilan tujuh', 'penggunasatulimaduasembilantujuh', 'penggunasatulimaduasembilantujuh', 'penggunasatulimaduasembilantujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:19', '1989-01-01', 30),
(61342, 'pengguna satu enam tujuh enam dua', 'penggunasatuenamtujuhenamdua', 'penggunasatuenamtujuhenamdua', 'penggunasatuenamtujuhenamdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:10', '1962-01-01', 57),
(70708, 'pengguna empat tiga delapan dua', 'penggunaempattigadelapandua', 'penggunaempattigadelapandua', 'penggunaempattigadelapandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:18', '1986-01-01', 33),
(78420, 'pengguna tujuh delapan empat dua puluh', 'penggunatujuhdelapanempatduapuluh', 'penggunatujuhdelapanempatduapuluh', 'penggunatujuhdelapanempatduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:49', '1990-01-01', 29),
(79149, 'pengguna satu lima nol tujuh puluh', 'penggunasatulimanoltujuhpuluh', 'penggunasatulimanoltujuhpuluh', 'penggunasatulimanoltujuhpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:15', '1974-01-01', 45),
(83027, 'pengguna tiga sembilan delapan dua puluh', 'penggunatigasembilandelapanduapuluh', 'penggunatigasembilandelapanduapuluh', 'penggunatigasembilandelapanduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:29', '1986-01-01', 33),
(84155, 'pengguna satu sembilan dua delapan', 'penggunasatusembilanduadelapan', 'penggunasatusembilanduadelapan', 'penggunasatusembilanduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:14', '1990-01-01', 29),
(85200, 'pengguna dua enam', 'penggunaduaenam', 'penggunaduaenam', 'penggunaduaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:12', '1989-01-01', 30),
(85681, 'pengguna tujuh puluh', 'penggunatujuhpuluh', 'penggunatujuhpuluh', 'penggunatujuhpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:50', '1987-01-01', 32),
(86661, 'pengguna delapan', 'penggunadelapan', 'penggunadelapan', 'penggunadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:41:57', '1954-01-01', 45),
(86847, 'pengguna satu empat empat dua', 'penggunasatuempatempatdua', 'penggunasatuempatempatdua', 'penggunasatuempatempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:21', '1979-01-01', 40),
(87660, 'pengguna tiga belas', 'penggunatigabelas', 'penggunatigabelas', 'penggunatigabelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:59', '1993-01-01', 26),
(94753, 'pengguna sembilan empat tujuh lima tiga', 'penggunasembilanempattujuhlimatiga', 'penggunasembilanempattujuhlimatiga', 'penggunasembilanempattujuhlimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:21', '1988-01-01', 31),
(96749, 'pengguna tujuh empat empat dua dua', 'penggunatujuhempatempatduadua', 'penggunatujuhempatempatduadua', 'penggunatujuhempatempatduadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:59', '1991-01-01', 28),
(100157, 'pengguna empat dua empat tiga', 'penggunaempatduaempattiga', 'penggunaempatduaempattiga', 'penggunaempatduaempattiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:45', '1991-01-01', 28),
(103013, 'pengguna tujuh lima lima', 'penggunatujuhlimalima', 'penggunatujuhlimalima', 'penggunatujuhlimalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', '192.168.100.16', NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:39', '1986-01-01', 33),
(103573, 'pengguna enam empat tujuh', 'penggunaenamempattujuh', 'penggunaenamempattujuh', 'penggunaenamempattujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:47', '1974-01-01', 45),
(104178, 'pengguna satu dua empat nol tiga ', 'penggunasatuduaempatnoltiga ', 'penggunasatuduaempatnoltiga ', 'penggunasatuduaempatnoltiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:17', '1988-01-01', 31),
(106748, 'pengguna satu nol enam tujuh empat delapan', 'penggunasatunolenamtujuhempatdelapan', 'penggunasatunolenamtujuhempatdelapan', 'penggunasatunolenamtujuhempatdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:42', '1992-01-01', 27),
(109759, 'pengguna satu nol sembilan tujuh lima sembilan', 'penggunasatunolsembilantujuhlimasembilan', 'penggunasatunolsembilantujuhlimasembilan', 'penggunasatunolsembilantujuhlimasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:52', '1985-01-01', 34),
(110746, 'pengguna tiga satu', 'penggunatigasatu', 'penggunatigasatu', 'penggunatigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:49', '1982-01-01', 37),
(111815, 'pengguna empat empat enam', 'penggunaempatempatenam', 'penggunaempatempatenam', 'penggunaempatempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:30', '1984-01-01', 35),
(112436, 'pengguna lima enam', 'penggunalimaenam', 'penggunalimaenam', 'penggunalimaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:43', '1989-01-01', 30),
(117830, 'pengguna tujuh tiga empat enam delapan', 'penggunatujuhtigaempatenamdelapan', 'penggunatujuhtigaempatenamdelapan', 'penggunatujuhtigaempatenamdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:24', '1986-01-01', 33),
(124088, 'pengguna satu satu sembilan tujuh sembilan dua', 'penggunasatusatusembilantujuhsembilandua', 'penggunasatusatusembilantujuhsembilandua', 'penggunasatusatusembilantujuhsembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:11', '1990-01-01', 29),
(126879, 'pengguna empat tiga', 'penggunaempattiga', 'penggunaempattiga', 'penggunaempattiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:12', '1981-01-01', 38),
(128264, 'pengguna delapan tiga delapan delapan lima', 'penggunadelapantigadelapandelapanlima', 'penggunadelapantigadelapandelapanlima', 'penggunadelapantigadelapandelapanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:03', '1973-01-01', 46),
(130401, 'pengguna empat dua nol tujuh dua', 'penggunaempatduanoltujuhdua', 'penggunaempatduanoltujuhdua', 'penggunaempatduanoltujuhdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:09', '1984-01-01', 35),
(134055, 'pengguna tujuh satu dua delapan', 'penggunatujuhsatuduadelapan', 'penggunatujuhsatuduadelapan', 'penggunatujuhsatuduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:17', '1964-01-01', 55),
(136859, 'pengguna satu tiga enam delapan lima sembilan', 'penggunasatutigaenamdelapanlimasembilan', 'penggunasatutigaenamdelapanlimasembilan', 'penggunasatutigaenamdelapanlimasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:36', '1991-01-01', 28),
(139567, 'pengguna satu tiga sembilan lima enam tujuh', 'penggunasatutigasembilanlimaenamtujuh', 'penggunasatutigasembilanlimaenamtujuh', 'penggunasatutigasembilanlimaenamtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:29', '1988-01-01', 31),
(140422, 'pengguna dua tiga sembilan', 'penggunaduatigasembilan', 'penggunaduatigasembilan', 'penggunaduatigasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:50', '1977-01-01', 42),
(144861, 'pengguna satu empat empat delapan enam satu', 'penggunasatuempatempatdelapanenamsatu', 'penggunasatuempatempatdelapanenamsatu', 'penggunasatuempatempatdelapanenamsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:34', '1984-01-01', 35),
(145029, 'penggunasatuempatlimanolduasembilan', 'penggunasatuempatlimanolduasembilan', 'penggunasatuempatlimanolduasembilan', 'penggunasatuempatlimanolduasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:36', '1976-01-01', 43),
(150470, 'pengguna satu dua sembilan nol dua', 'penggunasatuduasembilannoldua', 'penggunasatuduasembilannoldua', 'penggunasatuduasembilannoldua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:41', '1983-01-01', 36),
(151944, 'pengguna lima', 'penggunalima', 'penggunalima', 'penggunalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:21', '1992-01-01', 27),
(154309, 'pengguna sepuluh', 'penggunasepuluh', 'penggunasepuluh', 'penggunasepuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:13', '1986-01-01', 33),
(163559, 'pengguna tiga tujuh empat', 'penggunatigatujuhempat', 'penggunatigatujuhempat', 'penggunatigatujuhempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:12', '1988-01-01', 31),
(166228, 'pengguna sembilan', 'penggunasembilan', 'penggunasembilan', 'penggunasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:06', '1992-01-01', 27),
(169669, 'pengguna delapan lima', 'penggunadelapanlima\r\n', 'penggunadelapanlima\r\n', 'penggunadelapanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:08', '1989-01-01', 30),
(171714, 'pengguna satu tujuh satu tujuh satu empat', 'penggunasatutujuhsatutujuhsatuempat', 'penggunasatutujuhsatutujuhsatuempat', 'penggunasatutujuhsatutujuhsatuempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:49', '1991-01-01', 28),
(175352, 'pengguna satu tujuh lima tiga lima dua', 'penggunasatutujuhlimatigalimadua', 'penggunasatutujuhlimatigalimadua', 'penggunasatutujuhlimatigalimadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:25', '1975-01-01', 44),
(178320, 'pengguna dua dua puluh', 'penggunaduaduapuluh', 'penggunaduaduapuluh', 'penggunaduaduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:32', '1991-01-01', 28),
(181972, 'pengguna enam satu lima delapan satu', 'penggunaenamsatulimadelapansatu', 'penggunaenamsatulimadelapansatu', 'penggunaenamsatulimadelapansatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:07', '1988-01-01', 31),
(184044, 'pengguna sembilan tujuh empat', 'penggunasembilantujuhempat', 'penggunasembilantujuhempat', 'penggunasembilantujuhempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:43', '1983-01-01', 36),
(185966, 'pengguna sebelas', 'penggunasebelas', 'penggunasebelas', 'penggunasebelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:41', '1986-01-01', 33),
(190790, 'pengguna sembilan empat sembilan empat puluh', 'penggunasembilanempatsembilanempatpuluh', 'penggunasembilanempatsembilanempatpuluh', 'penggunasembilanempatsembilanempatpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:32', '1985-01-01', 34),
(202266, 'pengguna empat lima lima dua tujuh', 'penggunaempatlimalimaduatujuh', 'penggunaempatlimalimaduatujuh', 'penggunaempatlimalimaduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:20', '1989-01-01', 30),
(203660, 'pengguna sembilan satu', 'penggunasembilansatu', 'penggunasembilansatu', 'penggunasembilansatu@gmail.com', NULL, NULL, NULL, '2012', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:24', '1991-01-01', 28),
(205922, 'pengguna dua sembilan', 'penggunaduasembilan', 'penggunaduasembilan', 'penggunaduasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:37', '1985-01-01', 34),
(208980, 'pengguna enam empat', 'penggunaenamempat', 'penggunaenamempat', 'penggunaenamempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:34', '1985-01-01', 34),
(214108, 'pengguna empat lima', 'penggunaempatlima', 'penggunaempatlima', 'penggunaempatlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:28', '1976-01-01', 43),
(215334, 'pengguna dua satu lima tiga tiga empat', 'penggunaduasatulimatigatigaempat', 'penggunaduasatulimatigatigaempat', 'penggunaduasatulimatigatigaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:05', '1994-01-01', 25),
(215971, 'pengguna satu delapan dua tujuh tiga', 'penggunasatudelapanduatujuhtiga', 'penggunasatudelapanduatujuhtiga', 'penggunasatudelapanduatujuhtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:49', '1974-01-01', 45),
(216072, 'pengguna delapan tujuh tujuh satu sembilan', 'penggunadelapantujuhtujuhsatusembilan', 'penggunadelapantujuhtujuhsatusembilan', 'penggunadelapantujuhtujuhsatusembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:12', '1986-01-01', 33),
(220285, 'pengguna dua dua nol dua delapan lima', 'penggunaduaduanolduadelapanlima', 'penggunaduaduanolduadelapanlima', 'penggunaduaduanolduadelapanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:30', '1982-01-01', 37),
(223897, 'pengguna lima tujuh dua enam', 'penggunalimatujuhduaenam', 'penggunalimatujuhduaenam', 'penggunalimatujuhduaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:23', '1984-01-01', 35),
(234006, 'pengguna enam puluh', 'penggunaenampuluh', 'penggunaenampuluh', 'penggunaenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:50', '1985-01-01', 34),
(235111, 'pengguna satu tiga tujuh tiga', 'penggunasatutigatujuhtiga', 'penggunasatutigatujuhtiga', 'penggunasatutigatujuhtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:23', '1995-01-01', 24),
(240422, 'pengguna satu nol empat tujuh lima tiga', 'penggunasatunolempattujuhlimatiga', 'penggunasatunolempattujuhlimatiga', 'penggunasatunolempattujuhlimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:25', '1982-01-01', 37),
(240577, 'pengguna delapan satu nol lima tiga', 'penggunadelapansatunollimatiga', 'penggunadelapansatunollimatiga', 'penggunadelapansatunollimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:16', '1990-01-01', 29),
(243703, 'pengguna dua empat tiga tujuh nol tiga', 'penggunaduaempattigatujuhnoltiga', 'penggunaduaempattigatujuhnoltiga', 'penggunaduaempattigatujuhnoltiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:44', '1984-01-01', 35),
(245758, 'pengguna enam sembilan', 'penggunaenamsembilan', 'penggunaenamsembilan', 'penggunaenamsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:45', '1992-01-01', 27),
(249024, 'pengguna dua empat sembilan nol dua empat', 'penggunaduaempatsembilannolduaempat', 'penggunaduaempatsembilannolduaempat', 'penggunaduaempatsembilannolduaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:00', '1988-01-01', 31),
(250765, 'pengguna satu enam dua', 'penggunasatuenamdua', 'penggunasatuenamdua', 'penggunasatuenamdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:38', '1982-01-01', 37),
(251554, 'pengguna delapan satu delapan', 'penggunadelapansatudelapan', 'penggunadelapansatudelapan', 'penggunadelapansatudelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:41', '1991-01-01', 28),
(256199, 'pengguna sembilan satu delapan tiga', 'penggunasembilansatudelapantiga', 'penggunasembilansatudelapantiga', 'penggunasembilansatudelapantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:43:00', '1970-01-01', 49),
(259136, 'pengguna dua delapan tujuh dua', 'penggunaduadelapantujuhdua', 'penggunaduadelapantujuhdua', 'penggunaduadelapantujuhdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:54', '1984-01-01', 35),
(259243, 'pengguna satu satu satu delapan dua', 'penggunasatusatusatudelapandua', 'penggunasatusatusatudelapandua', 'penggunasatusatusatudelapandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:58', '1980-01-01', 39),
(263602, 'pengguna satu delapan satu satu', 'penggunasatudelapansatusatu', 'penggunasatudelapansatusatu', 'penggunasatudelapansatusatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:56', '1988-01-01', 31),
(268035, 'pengguna enam empat enam', 'penggunaenamempatenam', 'penggunaenamempatenam', 'penggunaenamempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:55', '1978-01-01', 41),
(268165, 'pengguna tujuh satu enam nol empat', 'penggunatujuhsatuenamnolempat', 'penggunatujuhsatuenamnolempat', 'penggunatujuhsatuenamnolempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1971-01-01', 48),
(268942, 'pengguna lima puluh', 'penggunalimapuluh', 'penggunalimapuluh', 'penggunalimapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:24', '1983-01-01', 36),
(269712, 'pengguna enam tujuh', 'penggunaenamtujuh', 'penggunaenamtujuh', 'penggunaenamtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:43', '1987-01-01', 32),
(271168, 'pengguna dua tujuh satu satu enam delapan', 'penggunaduatujuhsatusatuenamdelapan', 'penggunaduatujuhsatusatuenamdelapan', 'penggunaduatujuhsatusatuenamdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:41', '1990-01-01', 29),
(273551, 'pengguna dua', 'penggunadua', 'penggunadua', 'penggunadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:26', '1983-01-01', 36),
(276186, 'pengguna tiga sembilan', 'penggunatigasembilan', 'penggunatigasembilan', 'penggunatigasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:50', '1972-01-01', 47),
(277037, 'pengguna tiga nol dua lima puluh', 'penggunatiganoldualimapuluh', 'penggunatiganoldualimapuluh', 'penggunatiganoldualimapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:11', '1987-01-01', 32),
(277946, 'pengguna dua tujuh tujuh sembilan empat enam', 'penggunaduatujuhtujuhsembilanempatenam', 'penggunaduatujuhtujuhsembilanempatenam', 'penggunaduatujuhtujuhsembilanempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:54', '1988-01-01', 31),
(282303, 'pengguna dua delapan dua tiga nol tiga', 'penggunaduadelapanduatiganoltiga', 'penggunaduadelapanduatiganoltiga', 'penggunaduadelapanduatiganoltiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:35', '1983-01-01', 36),
(284442, 'pengguna lima enam tiga delapan', 'penggunalimaenamtigadelapan', 'penggunalimaenamtigadelapan', 'penggunalimaenamtigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:30', '1990-01-01', 29),
(285356, 'pengguna tiga dua delapan empat', 'penggunatigaduadelapanempat', 'penggunatigaduadelapanempat', 'penggunatigaduadelapanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:37', '1996-01-01', 23),
(285666, 'pengguna lima tujuh empat dua', 'penggunalimatujuhempatdua', 'penggunalimatujuhempatdua', 'penggunalimatujuhempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:37', '1992-01-01', 27),
(289165, 'pengguna dua tujuh', 'penggunaduatujuh', 'penggunaduatujuh', 'penggunaduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:05:00', '1999-01-01', 20),
(297874, 'pengguna delapan sembilan', 'penggunadelapansembilan', 'penggunadelapansembilan', 'penggunadelapansembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:06', '1990-01-01', 29),
(298184, 'pengguna dua tujuh tiga satu', 'penggunaduatujuhtigasatu', 'penggunaduatujuhtigasatu', 'penggunaduatujuhtigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:10', '1989-01-01', 30),
(298799, 'pengguna tiga tiga empat tujuh lima', 'penggunatigatigaempattujuhlima', 'penggunatigatigaempattujuhlima', 'penggunatigatigaempattujuhlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:41', '1989-01-01', 30),
(301433, 'pengguna satu tiga satu enam tujuh', 'penggunasatutigasatuenamtujuh', 'penggunasatutigasatuenamtujuh', 'penggunasatutigasatuenamtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:44', '1988-01-01', 31),
(308420, 'pengguna tiga nol delapan empat dua puluh', 'penggunatiganoldelapanempatduapuluh', 'penggunatiganoldelapanempatduapuluh', 'penggunatiganoldelapanempatduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:57', '1987-01-01', 32),
(309480, 'pengguna tujuh satu empat', 'penggunatujuhsatuempat', 'penggunatujuhsatuempat', 'penggunatujuhsatuempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:20', '1981-01-01', 38),
(314709, 'pengguna tiga satu empat tujuh nol sembilan', 'penggunatigasatuempattujuhnolsembilan', 'penggunatigasatuempattujuhnolsembilan', 'penggunatigasatuempattujuhnolsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:41', '1969-01-01', 50),
(320760, 'pengguna satu tujuh tiga dua delapan', 'penggunasatutujuhtigaduadelapan', 'penggunasatutujuhtigaduadelapan', 'penggunasatutujuhtigaduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:45', '1979-01-01', 40),
(321791, 'pengguna delapan puluh', 'penggunadelapanpuluh', 'penggunadelapanpuluh', 'penggunadelapanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:47', '1992-01-01', 27),
(327957, 'pengguna sembilan lima empat tujuh', 'penggunasembilanlimaempattujuh', 'penggunasembilanlimaempattujuh', 'penggunasembilanlimaempattujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:59', '1978-01-01', 41),
(330024, 'pengguna empat puluh', 'penggunaempatpuluh', 'penggunaempatpuluh', 'penggunaempatpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:25', '1966-01-01', 53),
(330374, 'pengguna sembilan sembilan sembilan delapan', 'penggunasembilansembilansembilandelapan', 'penggunasembilansembilansembilandelapan', 'penggunasembilansembilansembilandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:51', '1986-01-01', 33),
(333358, 'pengguna satu tiga lima enam', 'penggunasatutigalimaenam', 'penggunasatutigalimaenam', 'penggunasatutigalimaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:07', '1994-01-01', 25),
(335330, 'pengguna enam tiga', 'penggunaenamtiga', 'penggunaenamtiga', 'penggunaenamtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:57', '1991-01-01', 28),
(335467, 'pengguna tiga tiga', 'penggunatigatiga', 'penggunatigatiga', 'penggunatigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:56', '1990-01-01', 29),
(335791, 'pengguna tiga dua satu empat', 'penggunatigaduasatuempat', 'penggunatigaduasatuempat', 'penggunatigaduasatuempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:59', '1986-01-01', 33),
(335862, 'pengguna lima tujuh', 'penggunalimatujuh', 'penggunalimatujuh', 'penggunalimatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:31', '1967-01-01', 52),
(336066, 'pengguna tujuh', 'penggunatujuh', 'penggunatujuh', 'penggunatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:33', '1992-01-01', 27),
(339899, 'pengguna delapan belas', 'penggunadelapanbelas', 'penggunadelapanbelas', 'penggunadelapanbelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:05:04', '2001-01-01', 18),
(342682, 'pengguna enam delapan', 'penggunaenamdelapan', 'penggunaenamdelapan', 'penggunaenamdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:30', '1992-01-01', 27),
(343315, 'pengguna delapan dua delapan', 'penggunadelapanduadelapan', 'penggunadelapanduadelapan', 'penggunadelapanduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:03', '1994-01-01', 25),
(344988, 'pengguna sembilan delapan enak nol', 'penggunasembilandelapanenaknol', 'penggunasembilandelapanenaknol', 'penggunasembilandelapanenaknol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:37', '1979-01-01', 40),
(345053, 'pengguna empat enam', 'penggunaempatenam', 'penggunaempatenam', 'penggunaempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:35', '1992-01-01', 27),
(347450, 'pengguna dua sembilan dua tujuh nol', 'penggunaduasembilanduatujuhnol', 'penggunaduasembilanduatujuhnol', 'penggunaduasembilanduatujuhnol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1972-01-01', 47),
(349908, 'pengguna empat dua sembilan dua', 'penggunaempatduasembilandua', 'penggunaempatduasembilandua', 'penggunaempatduasembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:04', '1988-01-01', 31),
(350207, 'pengguna empat empat delapan', 'penggunaempatempatdelapan', 'penggunaempatempatdelapan', 'penggunaempatempatdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:50', '1997-01-01', 22),
(351728, 'pengguna empat satu', 'penggunaempatsatu', 'penggunaempatsatu', 'penggunaempatsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:15', '1988-01-01', 31),
(352821, 'pengguna tujuh lima enam tujuh delapan', 'penggunatujuhlimaenamtujuhdelapan', 'penggunatujuhlimaenamtujuhdelapan', 'penggunatujuhlimaenamtujuhdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:27', '1982-01-01', 37),
(354525, 'pengguna delapan tiga dua empat empat', 'penggunadelapantigaduaempatempat', 'penggunadelapantigaduaempatempat', 'penggunadelapantigaduaempatempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:02', '1982-01-01', 37),
(354617, 'pengguna enam nol nol ', 'penggunaenamnolnol ', 'penggunaenamnolnol ', 'penggunaenamnolnol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:54', '1993-01-01', 26),
(355308, 'pengguna lima empat', 'penggunalimaempat', 'penggunalimaempat', 'penggunalimaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:39', '1979-01-01', 40),
(359898, 'pengguna tiga lima sembilan delapan sembilan delap', 'penggunatigalimasembilandelapansembilandelapan', 'penggunatigalimasembilandelapansembilandelapan', 'penggunatigalimasembilandelapansembilandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:42', '1976-01-01', 43),
(360448, 'pengguna tiga', 'penggunatiga', 'penggunatiga', 'penggunatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:41:28', '1903-01-01', 116),
(367158, 'pengguna delapan enam', 'penggunadelapanenam', 'penggunadelapanenam', 'penggunadelapanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:17', '1987-01-01', 32),
(375026, 'pengguna satu empat delapan enam puluh', 'penggunasatuempatdelapanenampuluh', 'penggunasatuempatdelapanenampuluh', 'penggunasatuempatdelapanenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:47', '1983-01-01', 36),
(375120, 'pengguna lima dua', 'penggunalimadua', 'penggunalimadua', 'penggunalimadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:01', '1984-01-01', 35),
(382831, 'pengguna dua empat delapan sembilan lima ', 'penggunaduaempatdelapansembilanlima ', 'penggunaduaempatdelapansembilanlima ', 'penggunaduaempatdelapansembilanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:11', '1984-01-01', 35),
(383116, 'pengguna tujuh tiga', 'penggunatujuhtiga', 'penggunatujuhtiga', 'penggunatujuhtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1971-01-01', 48),
(388319, 'pengguna dua tiga enam lima', 'penggunaduatigaenamlima', 'penggunaduatigaenamlima', 'penggunaduatigaenamlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:54', '1991-01-01', 28),
(390300, 'pengguna lima satu', 'penggunalimasatu', 'penggunalimasatu', 'penggunalimasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:34', '1992-01-01', 27),
(391778, 'pengguna empat belas', 'penggunaempatbelas', 'penggunaempatbelas', 'penggunaempatbelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:54', '1990-01-01', 29),
(391793, 'pengguna tiga enam tujuh delapan empat', 'penggunatigaenamtujuhdelapanempat', 'penggunatigaenamtujuhdelapanempat', 'penggunatigaenamtujuhdelapanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:02', '1961-01-01', 58),
(393306, 'pengguna tiga sembilan tiga tiga nol enam', 'penggunatigasembilantigatiganolenam', 'penggunatigasembilantigatiganolenam', 'penggunatigasembilantigatiganolenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:56', '1970-01-01', 49),
(394092, 'pengguna tiga sembilan empat nol sembilan dua', 'penggunatigasembilanempatnolsembilandua', 'penggunatigasembilanempatnolsembilandua', 'penggunatigasembilanempatnolsembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:53', '1991-01-01', 28),
(394552, 'pengguna dua tiga sembilan empat sembilan', 'penggunaduatigasembilanempatsembilan', 'penggunaduatigasembilanempatsembilan', 'penggunaduatigasembilanempatsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:04', '1978-01-01', 41),
(395896, 'pengguna enam delapan dua puluh', 'penggunaenamdelapanduapuluh', 'penggunaenamdelapanduapuluh', 'penggunaenamdelapanduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:41', '1985-01-01', 34),
(397123, 'pengguna tujuh lima', 'penggunatujuhlima', 'penggunatujuhlima', 'penggunatujuhlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:24', '1987-01-01', 32),
(402033, 'pengguna tiga satu nol', 'penggunatigasatunol', 'penggunatigasatunol', 'penggunatigasatunol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:47', '1972-01-01', 47),
(407375, 'pengguna empat tujuh', 'penggunaempattujuh', 'penggunaempattujuh', 'penggunaempattujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:43', '1990-01-01', 29),
(415871, 'pengguna satu empat tiga satu', 'penggunasatuempattigasatu', 'penggunasatuempattigasatu', 'penggunasatuempattigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:43', '1986-01-01', 33),
(416078, 'pengguna empat satu enam nol tujuh delapan', 'penggunaempatsatuenamnoltujuhdelapan', 'penggunaempatsatuenamnoltujuhdelapan', 'penggunaempatsatuenamnoltujuhdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:56', '1993-01-01', 26),
(418316, 'pengguna tiga tiga satu sembilan lima', 'penggunatigatigasatusembilanlima', 'penggunatigatigasatusembilanlima', 'penggunatigatigasatusembilanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:58', '1984-01-01', 35),
(420272, 'pengguna satu', 'penggunasatu', 'penggunasatu', 'penggunasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:46', '1991-01-01', 28),
(428803, 'pengguna dua delapan enam empat', 'penggunaduadelapanenamempat', 'penggunaduadelapanenamempat', 'penggunaduadelapanenamempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:46', '1985-01-01', 34),
(428934, 'pengguna sembilan sembilan', 'penggunasembilansembilan', 'penggunasembilansembilan', 'penggunasembilansembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:22', '1983-01-01', 36),
(429626, 'pengguna dua enam tujuh nol empat ', 'penggunaduaenamtujuhnolempat ', 'penggunaduaenamtujuhnolempat ', 'penggunaduaenamtujuhnolempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:50', '1980-01-01', 39);
INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`, `lahir`, `umur`) VALUES
(434928, 'pengguna tujuh sembilan', 'penggunatujuhsembilan', 'penggunatujuhsembilan', 'penggunatujuhsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:45', '1983-01-01', 36),
(441521, 'pengguna empat empat satu lima dua satu', 'penggunaempatempatsatulimaduasatu', 'penggunaempatempatsatulimaduasatu', 'penggunaempatempatsatulimaduasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:27', '1984-01-01', 35),
(441595, 'pengguna satu empat tiga delapan lima ', 'penggunasatuempattigadelapanlima ', 'penggunasatuempattigadelapanlima ', 'penggunasatuempattigadelapanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:07', '1982-01-01', 37),
(441632, 'pengguna satu dua enam satu sembilan', 'penggunasatuduaenamsatusembilan', 'penggunasatuduaenamsatusembilan', 'penggunasatuduaenamsatusembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:35', '1987-01-01', 32),
(449296, 'pengguna empat empat sembilan dua sembilan enam', 'penggunaempatempatsembilanduasembilanenam', 'penggunaempatempatsembilanduasembilanenam', 'penggunaempatempatsembilanduasembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:29', '1987-01-01', 32),
(452273, 'pengguna empat lima satu', 'penggunaempatlimasatu', 'penggunaempatlimasatu', 'penggunaempatlimasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:01', '1993-01-01', 26),
(462827, 'pengguna empat enam dua delapan dua tujuh', 'penggunaempatenamduadelapanduatujuh', 'penggunaempatenamduadelapanduatujuh', 'penggunaempatenamduadelapanduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:47', '1976-01-01', 43),
(468958, 'pengguna tujuh dua', 'penggunatujuhdua', 'penggunatujuhdua', 'penggunatujuhdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:15', '1989-01-01', 30),
(479124, 'pengguna empat tujuh sembilan satu dua empat', 'penggunaempattujuhsembilansatuduaempat', 'penggunaempattujuhsembilansatuduaempat', 'penggunaempattujuhsembilansatuduaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:00', '1959-01-01', 60),
(484300, 'pengguna enam tiga tiga empat', 'penggunaenamtigatigaempat', 'penggunaenamtigatigaempat', 'penggunaenamtigatigaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:29', '1990-01-01', 29),
(486976, 'pengguna sembilan tujuh', 'penggunasembilantujuh', 'penggunasembilantujuh', 'penggunasembilantujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:19', '1987-01-01', 32),
(492628, 'pengguna sembilan dua sembilan tujuh', 'penggunasembilanduasembilantujuh', 'penggunasembilanduasembilantujuh', 'penggunasembilanduasembilantujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:35', '1996-01-01', 23),
(496321, 'pengguna satu nol delapan', 'penggunasatunoldelapan', 'penggunasatunoldelapan', 'penggunasatunoldelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:55', '1987-01-01', 32),
(497541, 'pengguna dua empat', 'penggunaduaempat', 'penggunaduaempat', 'penggunaduaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:53', '1998-01-01', 21),
(498645, 'pengguna empat sembilan delapan enam empat lima', 'penggunaempatsembilandelapanenamempatlima', 'penggunaempatsembilandelapanenamempatlima', 'penggunaempatsembilandelapanenamempatlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:10', '1988-01-01', 31),
(499943, 'pengguna tujuh belas', 'penggunatujuhbelas', 'penggunatujuhbelas', 'penggunatujuhbelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:40', '1984-01-01', 35),
(500260, 'pengguna dua tujuh empat sembilan', 'penggunaduatujuhempatsembilan', 'penggunaduatujuhempatsembilan', 'penggunaduatujuhempatsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1972-01-01', 47),
(502927, 'pengguna enam enam empat', 'penggunaenamenamempat', 'penggunaenamenamempat', 'penggunaenamenamempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:29', '1991-01-01', 28),
(503940, 'pengguna lima empat nol nol ', 'penggunalimaempatnolnol ', 'penggunalimaempatnolnol', 'penggunalimaempatnolnol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:10', '1981-01-01', 38),
(508011, 'pengguna tiga tujuh dua tiga', 'penggunatigatujuhduatiga', 'penggunatigatujuhduatiga', 'penggunatigatujuhduatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:39', '1986-01-01', 33),
(513479, 'pengguna tiga puluh', 'penggunatigapuluh', 'penggunatigapuluh', 'penggunatigapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:00', '1987-01-01', 32),
(515457, 'pengguna empat lima tujuh enam sembilan ', 'penggunaempatlimatujuhenamsembilan ', 'penggunaempatlimatujuhenamsembilan ', 'penggunaempatlimatujuhenamsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:18', '1992-01-01', 27),
(515493, 'pengguna dua lima nol lima enam', 'penggunadualimanollimaenam', 'penggunadualimanollimaenam', 'penggunadualimanollimaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:07', '1961-01-01', 58),
(517643, 'pengguna satu lima tujuh sembilan puluh', 'penggunasatulimatujuhsembilanpuluh', 'penggunasatulimatujuhsembilanpuluh', 'penggunasatulimatujuhsembilanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:14', '1986-01-01', 33),
(519898, 'pengguna empat sembilan tujuh sembilan tiga', 'penggunaempatsembilantujuhsembilantiga', 'penggunaempatsembilantujuhsembilantiga', 'penggunaempatsembilantujuhsembilantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:51', '1991-01-01', 28),
(523949, 'pengguna dua enam empat dua tujuh', 'penggunaduaenamempatduatujuh', 'penggunaduaenamempatduatujuh', 'penggunaduaenamempatduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:43', '1991-01-01', 28),
(525031, 'pengguna lima dua lima nol tiga satu', 'penggunalimadualimanoltigasatu', 'penggunalimadualimanoltigasatu', 'penggunalimadualimanoltigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:07', '1987-01-01', 32),
(528251, 'pengguna enam tiga dua tujuh', 'penggunaenamtigaduatujuh', 'penggunaenamtigaduatujuh', 'penggunaenamtigaduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:46', '1988-01-01', 31),
(529453, 'pengguna dua sembilan empat lima tiga', 'penggunalimaduasembilanempatlimatiga', 'penggunalimaduasembilanempatlimatiga', 'penggunalimaduasembilanempatlimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:39', '1990-01-01', 29),
(532825, 'pengguna satu dua lima empat enam', 'penggunasatudualimaempatenam', 'penggunasatudualimaempatenam', 'penggunasatudualimaempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:52', '1980-01-01', 39),
(533900, 'pengguna dua belas', 'penggunaduabelas', 'penggunaduabelas', 'penggunaduabelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:53', '1989-01-01', 30),
(538528, 'pengguna sembilan delapan', 'penggunasembilandelapan', 'penggunasembilandelapan', 'penggunasembilandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:29', '1983-01-01', 36),
(542977, 'pengguna tiga sembilan satu enam', 'penggunatigasembilansatuenam', 'penggunatigasembilansatuenam', 'penggunatigasembilansatuenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:11', '1986-01-01', 33),
(545501, 'pengguna sembilan empat', 'penggunasembilanempat', 'penggunasembilanempat', 'penggunasembilanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:35', '1990-01-01', 29),
(557181, 'pengguna tiga delapan dua satu sembilan', 'penggunatigadelapanduasatusembilan', 'penggunatigadelapanduasatusembilan', 'penggunatigadelapanduasatusembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:32', '1987-01-01', 32),
(563439, 'pengguna lima enam tiga empat tiga sembilan', 'penggunalimaenamtigaempattigasembilan', 'penggunalimaenamtigaempattigasembilan', 'penggunalimaenamtigaempattigasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:06', '1985-01-01', 34),
(566309, 'pengguna tiga tujuh tujuh', 'penggunatigatujuhtujuh', 'penggunatigatujuhtujuh', 'penggunatigatujuhtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:23', '1985-01-01', 34),
(567434, 'pengguna sembilan lima empat dua lima', '', 'penggunasembilanlimaempatdualima', 'penggunasembilanlimaempatdualima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:27', '1992-01-01', 27),
(569796, 'pengguna lima enam sembilan tujuh sembilan enam', 'penggunalimaenamsembilantujuhsembilanenam', 'penggunalimaenamsembilantujuhsembilanenam', 'penggunalimaenamsembilantujuhsembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:59', '1982-01-01', 37),
(575346, 'pengguna lima tujuh lima tiga empat enam', 'penggunalimatujuhlimatigaempatenam', 'penggunalimatujuhlimatigaempatenam', 'penggunalimatujuhlimatigaempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:35', '1979-01-01', 40),
(576569, 'pengguna tujuh tujuh', 'penggunatujuhtujuh', 'penggunatujuhtujuh', 'penggunatujuhtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:20', '1986-01-01', 33),
(577009, 'pengguna enam delapan enam puluh', 'penggunaenamdelapanenampuluh', 'penggunaenamdelapanenampuluh', 'penggunaenamdelapanenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:44', '1979-01-01', 40),
(584747, 'pengguna lima lima enam puluh', 'penggunalimalimaenampuluh', 'penggunalimalimaenampuluh', 'penggunalimalimaenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:42', '1991-01-01', 28),
(584827, 'pengguna lima delapan empat delapan dua tujuh', 'penggunalimadelapanempatdelapanduatujuh', 'penggunalimadelapanempatdelapanduatujuh', 'penggunalimadelapanempatdelapanduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:10', '1973-01-01', 46),
(585640, 'pengguna empat empat tiga empat dua', 'penggunaempatempattigaempatdua', 'penggunaempatempattigaempatdua', 'penggunaempatempattigaempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:07', '1975-01-01', 44),
(586735, 'pengguna lima delapan enam tujuh tiga lima', 'penggunalimadelapanenamtujuhtigalima', 'penggunalimadelapanenamtujuhtigalima', 'penggunalimadelapanenamtujuhtigalima@gmail.com', NULL, NULL, NULL, 'medan', 5, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, NULL, '1997-01-01', 22),
(587533, 'pengguna lima delapan tujuh lima tiga tiga', 'penggunalimadelapantujuhlimatigatiga', 'penggunalimadelapantujuhlimatigatiga', 'penggunalimadelapantujuhlimatigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:15', '1988-01-01', 31),
(592041, 'pengguna lima tujuh tiga dua', 'penggunalimatujuhtigadua', 'penggunalimatujuhtigadua', 'penggunalimatujuhtigadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:06', '1978-01-01', 41),
(592318, 'pengguna tiga enam empat tiga delapan', 'penggunatigaenamempattigadelapan', 'penggunatigaenamempattigadelapan', 'penggunatigaenamempattigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:52', '1974-01-01', 45),
(594317, 'pengguna lima sembilan empat tiga satu tujuh', 'penggunalimasembilanempattigasatutujuh', 'penggunalimasembilanempattigasatutujuh', 'penggunalimasembilanempattigasatutujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:43', '1974-01-01', 45),
(594966, 'pengguna lima delapan satu lima', 'penggunalimadelapansatulima', 'penggunalimadelapansatulima', 'penggunalimadelapansatulima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:02', '1992-01-01', 27),
(597998, 'pengguna lima tiga', 'penggunalimatiga', 'penggunalimatiga', 'penggunalimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:04', '1985-01-01', 34),
(598173, 'pengguna lima sembilan delapan satu tujuh tiga', 'penggunalimasembilandelapansatutujuhtiga', 'penggunalimasembilandelapansatutujuhtiga', 'penggunalimasembilandelapansatutujuhtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:54', '1982-01-01', 37),
(602505, 'pengguna delapan dua', 'penggunadelapandua', 'penggunadelapandua', 'penggunadelapandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:24', '1992-01-01', 27),
(604252, 'pengguna satu dua enam tiga puluh', 'penggunasatuduaenamtigapuluh', 'penggunasatuduaenamtigapuluh', 'penggunasatuduaenamtigapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:14', '1983-01-01', 36),
(606693, 'pengguna empat dua', 'penggunaempatdua', 'penggunaempatdua', 'penggunaempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:40', '1992-01-01', 27),
(609990, 'pengguna satu lima lima delapan empat', 'penggunasatulimalimadelapanempat', 'penggunasatulimalimadelapanempat', 'penggunasatulimalimadelapanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:23', '1990-01-01', 29),
(610269, 'pengguna satu satu satu dua tujuh', 'penggunasatusatusatuduatujuh', 'penggunasatusatusatuduatujuh', 'penggunasatusatusatuduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:38', '1984-01-01', 35),
(610914, 'pengguna dua delapan', 'penggunaduadelapan', 'penggunaduadelapan', 'penggunaduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:12', '1992-01-01', 32),
(614811, 'pengguna empat satu tiga dua delapan', 'penggunaempatsatutigaduadelapan', 'penggunaempatsatutigaduadelapan', 'penggunaempatsatutigaduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:51', '1982-01-01', 37),
(617304, 'pengguna empat sembilan sembilan sembilan dua', 'penggunaempatsembilansembilansembilandua', 'penggunaempatsembilansembilansembilandua', 'penggunaempatsembilansembilansembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, 'medan', NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:36', '1988-01-01', 31),
(623308, 'pengguna tujuh enam', 'penggunatujuhenam', 'penggunatujuhenam', 'penggunatujuhenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:09', '1975-01-01', 44),
(624315, 'pengguna dua sembilan lima empat delapan', 'penggunaduasembilanlimaempatdelapan', 'penggunaduasembilanlimaempatdelapan', 'penggunaduasembilanlimaempatdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:15', '1994-01-01', 25),
(643128, 'pengguna dua enam lima empat tiga', 'penggunaduaenamlimaempattiga', 'penggunaduaenamlimaempattiga', 'penggunaduaenamlimaempattiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1971-01-01', 48),
(645410, 'pengguna delapan empat sembilan', 'penggunadelapanempatsembilan', 'penggunadelapanempatsembilan', 'penggunadelapanempatsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:26', '1989-01-01', 30),
(646680, 'pengguna enam tiga tiga puluh', 'penggunaenamtigatigapuluh', 'penggunaenamtigatigapuluh', 'penggunaenamtigatigapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:48', '1997-01-01', 22),
(649288, 'pengguna sembilan belas', 'penggunasembilanbelas', 'penggunasembilanbelas', 'penggunasembilanbelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:46', '1987-01-01', 28),
(650436, 'pengguna sembilan tiga', 'penggunasembilantiga', 'penggunasembilantiga', 'penggunasembilantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:10', '1986-01-01', 33),
(652163, 'pengguna enam lima dua satu enam tiga', 'penggunaenamlimaduasatuenamtiga', 'penggunaenamlimaduasatuenamtiga', 'penggunaenamlimaduasatuenamtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:56', '1991-01-01', 28),
(661150, 'pengguna dua satu', 'penggunaduasatu', 'penggunaduasatu', 'penggunaduasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:39', '1991-01-01', 33),
(661215, 'pengguna dua empat enam empat enam', 'penggunaduaempatenamempatenam', 'penggunaduaempatenamempatenam', 'penggunaduaempatenamempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:04', '1987-01-01', 32),
(663252, 'pengguna empat lima dua sembilan', 'penggunaempatlimaduasembilan', 'penggunaempatlimaduasembilan', 'penggunaempatlimaduasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:33', '1984-01-01', 35),
(663594, 'pengguna enam enam tiga lima sembilan empat', 'penggunaenamenamtigalimasembilanempat', 'penggunaenamenamtigalimasembilanempat', 'penggunaenamenamtigalimasembilanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:16', '1979-01-01', 40),
(667630, 'pengguna satu empat tiga delapan empat', 'penggunasatuempattigadelapanempat', 'penggunasatuempattigadelapanempat', 'penggunasatuempattigadelapanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:53', '1977-01-01', 42),
(669880, 'pengguna sembilan lima', 'penggunasembilanlima', 'penggunasembilanlima', 'penggunasembilanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:31', '1992-01-01', 27),
(670193, 'pengguna enam tujuh nol satu sembilan tiga', 'penggunaenamtujuhnolsatusembilantiga', 'penggunaenamtujuhnolsatusembilantiga', 'penggunaenamtujuhnolsatusembilantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:41', '1979-01-01', 40),
(671344, 'pengguna delapan delapan', 'penggunadelapandelapan', 'penggunadelapandelapan', 'penggunadelapandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:50', '1989-01-01', 30),
(671701, 'pengguna tujuh satu lima', 'penggunatujuhsatulima', 'penggunatujuhsatulima', 'penggunatujuhsatulima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:59', '1985-01-01', 34),
(676338, 'pengguna enam tujuh enam tiga tiga delapan', 'penggunaenamtujuhenamtigatigadelapan', 'penggunaenamtujuhenamtigatigadelapan', 'penggunaenamtujuhenamtigatigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:20', '1986-01-01', 33),
(679155, 'pengguna lima tujuh lima tujuh', 'penggunalimatujuhlimatujuh', 'penggunalimatujuhlimatujuh', 'penggunalimatujuhlimatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:52', '1972-01-01', 47),
(681609, 'pengguna tiga lima', 'penggunatigalima', 'penggunatigalima', 'penggunatigalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:48', '1986-01-01', 29),
(689789, 'pengguna dua nol dua enam', 'penggunaduanolduaenam', 'penggunaduanolduaenam', 'penggunaduanolduaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:48', '1969-01-01', 50),
(691468, 'pengguna satu satu empat lima tiga', 'penggunasatusatuempatlimatiga', 'penggunasatusatuempatlimatiga', 'penggunasatusatuempatlimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:12', '1988-01-01', 31),
(692983, 'pengguna satu tiga lima dua tiga delapan', 'penggunasatutigalimaduatigadelapan', 'penggunasatutigalimaduatigadelapan', 'penggunasatutigalimaduatigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:00', '1972-01-01', 47),
(693094, 'pengguna tujuh delapan', 'penggunatujuhdelapan', 'penggunatujuhdelapan', 'penggunatujuhdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:37', '1986-01-01', 33),
(693936, 'pengguna empat lima delapan', 'penggunaempatlimadelapan', 'penggunaempatlimadelapan', 'penggunaempatlimadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:46', '1985-01-01', 34),
(704778, 'pengguna sembilan dua', 'penggunasembilandua', 'penggunasembilandua', 'penggunasembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:40', '1991-01-01', 28),
(705926, 'pengguna tujuh nol lima sembilan dua enam', 'penggunatujuhnollimasembilanduaenam', 'penggunatujuhnollimasembilanduaenam', 'penggunatujuhnollimasembilanduaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:35', '1987-01-01', 32),
(707949, 'pengguna satu satu nol lima lima', 'penggunasatusatunollimalima', 'penggunasatusatunollimalima', 'penggunasatusatunollimalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:41', '1988-01-01', 31),
(713380, 'pengguna seratus', 'penggunaseratus', 'penggunaseratus', 'penggunaseratus@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:58', '1970-01-01', 49),
(715311, 'pengguna satu satu lima dua tiga satu', 'penggunasatusatulimaduatigasatu', 'penggunasatusatulimaduatigasatu', 'penggunasatusatulimaduatigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:33', '1968-01-01', 51),
(717683, 'pengguna tujuh satu tujuh enam delapan tiga', 'penggunatujuhsatutujuhenamdelapantiga', 'penggunatujuhsatutujuhenamdelapantiga', 'penggunatujuhsatutujuhenamdelapantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:36', '1968-01-01', 51),
(718770, 'pengguna tujuh satu delapan tujuh nol nol', 'penggunatujuhsatudelapantujuhnolnol', 'penggunatujuhsatudelapantujuhnolnol', 'penggunatujuhsatudelapantujuhnolnol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:12', '1994-01-01', 25),
(721308, 'pengguna lima belas', 'penggunalimabelas', 'penggunalimabelas', 'penggunalimabelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:53', '1986-01-01', 32),
(725949, 'pengguna tujuh tiga empat dua', 'penggunatujuhtigaempatdua', 'penggunatujuhtigaempatdua', 'penggunatujuhtigaempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:03', '1980-01-01', 39),
(727958, 'pengguna tujuh dua tujuh sembilan lima delapan', 'penggunatujuhduatujuhsembilanlimadelapan', 'penggunatujuhduatujuhsembilanlimadelapan', 'penggunatujuhduatujuhsembilanlimadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:52', '1988-01-01', 31),
(728946, 'pengguna delapan tiga sembilan lima', 'penggunadelapantigasembilanlima', 'penggunadelapantigasembilanlima', 'penggunadelapantigasembilanlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:30', '1976-01-01', 43),
(729616, 'pengguna tiga tujuh', 'penggunatigatujuh', 'penggunatigatujuh', 'penggunatigatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:26', '1987-01-01', 32),
(734848, 'pengguna enam', 'penggunaenam', 'penggunaenam', 'penggunaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:40', '1974-01-01', 45),
(738130, 'pengguna tujuh tiga delapan satu tiga puluh', 'penggunatujuhtigadelapansatutigapuluh', 'penggunatujuhtigadelapansatutigapuluh', 'penggunatujuhtigadelapansatutigapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:03', '1984-01-01', 35),
(739557, 'pengguna satu satu tujuh satu', 'penggunasatusatutujuhsatu', 'penggunasatusatutujuhsatu', 'penggunasatusatutujuhsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:16', '1981-01-01', 38),
(739866, 'pengguna sembilan tiga dua', 'penggunasembilantigadua', 'penggunasembilantigadua', 'penggunasembilantigadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:33', '1987-01-01', 32),
(741032, 'pengguna tujuh empat satu nol tiga dua', 'penggunatujuhempatsatunoltigadua', 'penggunatujuhempatsatunoltigadua', 'penggunatujuhempatsatunoltigadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:23', '1965-01-01', 54),
(742630, 'pengguna enam dua', 'penggunaenamdua', 'penggunaenamdua', 'penggunaenamdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:25', '1995-01-01', 24),
(742836, 'pengguna delapan nol empat dua satu', 'penggunadelapannolempatduasatu', 'penggunadelapannolempatduasatu', 'penggunadelapannolempatduasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:00', '1989-01-01', 30),
(747891, 'pengguna dua lima tiga tujuh tujuh', 'penggunadualimatigatujuhtujuh', 'penggunadualimatigatujuhtujuh', 'penggunadualimatigatujuhtujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:13', '1984-01-01', 35),
(748397, 'pengguna delapan dua sembilan satu satu', 'penggunadelapanduasembilansatusatu', 'penggunadelapanduasembilansatusatu', 'penggunadelapanduasembilansatusatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:17', '1983-01-01', 36),
(751032, 'pengguna empat sembilan tujuh lima', 'penggunaempatsembilantujuhlima', 'penggunaempatsembilantujuhlima', 'penggunaempatsembilantujuhlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:08', '1978-01-01', 41),
(751911, 'pengguna empat lima delapan sembilan', 'penggunaempatlimadelapansembilan', 'penggunaempatlimadelapansembilan', 'penggunaempatlimadelapansembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:01', '1987-01-01', 32),
(759495, 'pengguna satu tiga satu nol delapan', 'penggunasatutigasatunoldelapan', 'penggunasatutigasatunoldelapan', 'penggunasatutigasatunoldelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:14', '1981-01-01', 38),
(765263, 'pengguna tujuh enam lima dua enam tiga', 'tujuhenamlimaduaenamtiga', 'tujuhenamlimaduaenamtiga', 'tujuhenamlimaduaenamtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:46', '1990-01-01', 29),
(766938, 'pengguna tujuh enam enam sembilan tiga delapan', 'penggunatujuhenamenamsembilantigadelapan', 'penggunatujuhenamenamsembilantigadelapan', 'penggunatujuhenamenamsembilantigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:57', '1982-01-01', 37),
(767667, 'pengguna delapan tujuh', 'penggunadelapantujuh', 'penggunadelapantujuh', 'penggunadelapantujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:33', '1983-01-01', 36),
(769732, 'pengguna tujuh satu', 'penggunatujuhsatu', 'penggunatujuhsatu', 'penggunatujuhsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:04', '1986-01-01', 33),
(771467, 'pengguna satu dua nol delapan', 'penggunasatuduanoldelapan', 'penggunasatuduanoldelapan', 'penggunasatuduanoldelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:20', '1984-01-01', 35),
(771780, 'pengguna tujuh empat', 'penggunatujuhempat', 'penggunatujuhempat', 'penggunatujuhempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:26', '1990-01-01', 29),
(771971, 'pengguna dua delapan delapan dua delapan', 'penggunaduadelapandelapanduadelapan', 'penggunaduadelapandelapanduadelapan', 'penggunaduadelapandelapanduadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:49', '1988-01-01', 31),
(773463, 'pengguna tujuh tujuh tiga empat enam tiga', 'penggunatujuhtujuhtigaempatenamtiga', 'penggunatujuhtujuhtigaempatenamtiga', 'penggunatujuhtujuhtigaempatenamtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:52', '1990-01-01', 29),
(776484, 'pengguna tujuh dua lima delapan', 'penggunatujuhdualimadelapan', 'penggunatujuhdualimadelapan', 'penggunatujuhdualimadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:13', '1979-01-01', 40),
(779203, 'pengguna sembilan tujuh satu tiga', 'penggunasembilantujuhsatutiga', 'penggunasembilantujuhsatutiga', 'penggunasembilantujuhsatutiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:21', '1990-01-01', 29),
(780004, 'pengguna dua satu delapan puluh', 'penggunaduasatudelapanpuluh', 'penggunaduasatudelapanpuluh', 'penggunaduasatudelapanpuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:03', '1982-01-01', 37),
(781133, 'pengguna tujuh delapan satu satu tiga tiga', 'penggunatujuhdelapansatusatutigatiga', 'penggunatujuhdelapansatusatutigatiga', 'penggunatujuhdelapansatusatutigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:45', '1989-01-01', 30),
(784760, 'pengguna tujuh delapan empat tujuh enam puluh', 'penggunatujuhdelapanempattujuhenampuluh', 'penggunatujuhdelapanempattujuhenampuluh', 'penggunatujuhdelapanempattujuhenampuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:01', '1990-01-01', 29),
(784912, 'pengguna tiga dua empat satu', 'penggunatiaduaempatsatu', 'penggunatigaduaempatsatu', 'penggunatigaduaempatsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:18', '1988-01-01', 31),
(785680, 'pengguna lima tujuh enam delapan', 'penggunalimatujuhenamdelapan', 'penggunalimatujuhenamdelapan', 'penggunalimatujuhenamdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:10', '1983-01-01', 36),
(788756, 'pengguna tujuh tiga lima', 'penggunatujuhtigalima', 'penggunatujuhtigalima', 'penggunatujuhtigalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:54', '1970-01-01', 49),
(790955, 'pengguna tujuh nol dua delapan enam', 'penggunatujuhnolduadelapanenam', 'penggunatujuhnolduadelapanenam', 'penggunatujuhnolduadelapanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:57', '1989-01-01', 30),
(792495, 'pengguna dua satu delapan delapan', 'penggunaduasatudelapandelapan', 'penggunaduasatudelapandelapan', 'penggunaduasatudelapandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:31', '1983-01-01', 36),
(793026, 'pengguna dua sembilan satu satu', 'penggunaduasembilansatusatu', 'penggunaduasembilansatusatu', 'penggunaduasembilansatusatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:02', '1988-01-01', 31),
(793027, 'pengguna tiga sembilan dua delapan tiga', 'penggunatigasembilanduadelapantiga', 'penggunatigasembilanduadelapantiga', 'penggunatigasembilanduadelapantiga@gmail.com', NULL, NULL, NULL, 'medan', 5, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, NULL, '1983-01-01', 36),
(803121, 'pengguna tiga tiga dua dua puluh', 'penggunatigatigaduaduapuluh', 'penggunatigatigaduaduapuluh', 'penggunatigatigaduaduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:32', '1988-01-01', 31),
(803973, 'pengguna dua satu delapan sembilan', 'penggunaduasatudelapansembilan', 'penggunaduasatudelapansembilan', 'penggunaduasatudelapansembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:54:45', '1986-01-01', 33),
(804645, 'pengguna empat delapan', 'penggunaempatdelapan', 'penggunaempatdelapan', 'penggunaempatdelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:43:03', '1971-01-01', 48),
(806191, 'pengguna dua delapan enam lima', 'penggunaduadelapanenamlima', 'penggunaduadelapanenamlima', 'penggunaduadelapanenamlima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:28', '1989-01-01', 30),
(812825, 'pengguna enam nol tiga tiga', 'penggunaenamnoltigatiga', 'penggunaenamnoltigatiga', 'penggunaenamnoltigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:49', '1993-01-01', 26),
(814766, 'pengguna dua satu enam sembilan delapan', 'penggunaduasatuenamsembilandelapan', 'penggunaduasatuenamsembilandelapan', 'penggunaduasatuenamsembilandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:00', '1980-01-01', 39),
(815707, 'pengguna tiga empat dua', 'penggunatigaempatdua', 'penggunatigaempatdua', 'penggunatigaempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:06', '1984-01-01', 35),
(818865, 'pengguna satu tiga satu lima dua enam', 'penggunasatutigasatulimaduaenam', 'penggunasatutigasatulimaduaenam', 'penggunasatutigasatulimaduaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:52', '1987-01-01', 32),
(821863, 'pengguna delapan empat', 'penggunadelapanempat', 'penggunadelapanempat', 'penggunadelapanempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:20', '1995-01-01', 24),
(825241, 'pengguna dua empat lima tiga dua', 'penggunaduaempatlimatigadua', 'penggunaduaempatlimatigadua', 'penggunaduaempatlimatigadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:39', '1987-01-01', 32),
(829124, 'pengguna enam belas', 'penggunaenambelas', 'penggunaenambelas', 'penggunaenambelas@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:05', '1989-01-01', 30),
(829667, 'pengguna satu empat lima tiga sembilan ', 'penggunasatuempatlimatigasembilan', 'penggunasatuempatlimatigasembilan', 'penggunasatuempatlimatigasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:45', '1976-01-01', 43),
(829679, 'pengguna dua empat satu nol tiga', 'penggunaduaempatsatunoltiga', 'penggunaduaempatsatunoltiga', 'penggunaduaempatsatunoltiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:23', '1981-01-01', 38),
(833675, 'pengguna dua dua enam tujuh dua', 'penggunaduaduaenamtujuhdua', 'penggunaduaduaenamtujuhdua', 'penggunaduaduaenamtujuhdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:43', '1985-01-01', 34),
(840997, 'pengguna delapan empat nol sembilan sembilan tujuh', 'penggunadelapanempatnolsembilansembilantujuh', 'penggunadelapanempatnolsembilansembilantujuh', 'penggunadelapanempatnolsembilansembilantujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:16', '1986-01-01', 33),
(845476, 'pengguna satu empat nol tiga tiga', 'penggunasatuempatnoltigatiga', 'penggunasatuempatnoltigatiga', 'penggunasatuempatnoltigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:44', '1985-01-01', 34),
(845755, 'pengguna tiga empat', 'penggunatigaempat', 'penggunatigaempat', 'penggunatigaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:39', '1976-01-01', 43),
(850660, 'pengguna satu lima tiga sembilan tiga', 'penggunasatulimatigasembilantiga', 'penggunasatulimatigasembilantiga', 'penggunasatulimatigasembilantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:22', '1989-01-01', 30),
(853596, 'pengguna delapan lima tiga lima sembilan enam', 'penggunadelapanlimatigalimasembilanenam', 'penggunadelapanlimatigalimasembilanenam', 'penggunadelapanlimatigalimasembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:09', '1992-01-01', 27),
(854094, 'pengguna tiga dua', 'penggunatigadua', 'penggunatigadua', 'penggunatigadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:39', '1969-01-01', 50),
(858777, 'pengguna tiga enam', 'penggunatigaenam', 'penggunatigaenam', 'penggunatigaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:17', '1984-01-01', 35),
(860308, 'pengguna satu lima empat dua', 'penggunasatulimaempatdua', 'penggunasatulimaempatdua', 'penggunasatulimaempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:27', '1983-01-01', 36),
(862005, 'pengguna dua lima', 'penggunadualima', 'penggunadualima', 'penggunadualima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:04', '1992-01-01', 27),
(870233, 'pengguna enam satu', 'penggunaenamsatu', 'penggunaenamsatu', 'penggunaenamsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:55', '1998-01-01', 21),
(871659, 'pengguna dua tiga', 'penggunaduatiga', 'penggunaduatiga', 'penggunaduatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:10', '1987-01-01', 32),
(871986, 'pengguna lima sembilan', 'penggunalimasembilan', 'penggunalimasembilan', 'penggunalimasembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:14', '1987-01-01', 32),
(873152, 'pengguna tujuh tujuh satu sembilan enam', 'penggunatujuhtujuhsatusembilanenam', 'penggunatujuhtujuhsatusembilanenam', 'penggunatujuhtujuhsatusembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:38', '1983-01-01', 36),
(875122, 'pengguna satu lima satu empat dua', 'penggunasatulimasatuempatdua', 'penggunasatulimasatuempatdua', 'penggunasatulimasatuempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:02:15', '1992-01-01', 27),
(877347, 'pengguna delapan tiga', 'penggunadelapantiga', 'penggunadelapantiga', 'penggunadelapantiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:47', '1980-01-01', 39),
(880778, 'pengguna lima delapan', 'penggunalimadelapan', 'penggunalimadelapan', 'penggunalimadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:37', '1982-01-01', 37),
(881446, 'pengguna lima empat empat dua', 'penggunalimaempatempatdua', 'penggunalimaempatempatdua', 'penggunalimaempatempatdua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:24', '1988-01-01', 31),
(887647, 'pengguna tiga satu sembilan', 'penggunatigasatusembilan', 'penggunatigasatusembilan', 'penggunatigasatusembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:47', '1991-01-01', 28),
(888564, 'pengguna tiga satu tiga satu', 'penggunatigasatutigasatu', 'penggunatigasatutigasatu', 'penggunatigasatutigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:49', '1983-01-01', 36),
(897363, 'pengguna dua lima dua tiga', 'penggunadualimaduatiga', 'penggunadualimaduatiga', 'penggunadualimaduatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:08', '1981-01-01', 38),
(898006, 'pengguna satu lima tiga', 'penggunasatulimatiga', 'penggunasatulimatiga', 'penggunasatulimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:02', '1987-01-01', 32),
(900890, 'pengguna sembilan nol nol delapan sembilan nol', 'penggunasembilannolnoldelapansembilannol', 'penggunasembilannolnoldelapansembilannol', 'penggunasembilannolnoldelapansembilannol@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:58', '1999-01-01', 20),
(901840, 'pengguna empat delapan satu', 'penggunaempatdelapansatu', 'penggunaempatdelapansatu', 'penggunaempatdelapansatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:54', '1985-01-01', 34),
(908171, 'pengguna tiga delapan', 'penggunatigadelapan', 'penggunatigadelapan', 'penggunatigadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:04', '1990-01-01', 29),
(909180, 'pengguna dua tiga nol dua', 'penggunaduatiganoldua', 'penggunaduatiganoldua', 'penggunaduatiganoldua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:28', '1966-01-01', 53),
(909926, 'pengguna empat', 'penggunaempat', 'penggunaempat', 'penggunaempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:39', '1985-01-01', 34);
INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`, `lahir`, `umur`) VALUES
(911953, 'pengguna satu enam lima satu empat enam', 'penggunasatuenamlimasatuempatenam', 'penggunasatuenamlimasatuempatenam', 'penggunasatuenamlimasatuempatenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:56', '1975-01-01', 44),
(914744, 'pengguna delapan tujuh enam sembilan', 'penggunadelapantujuhenamsembilan', 'penggunadelapantujuhenamsembilan', 'penggunadelapantujuhenamsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:52:30', '1985-01-01', 34),
(914826, 'pengguna lima sembilan sembilan delapan dua', 'penggunalimasembilansembilandelapandua', 'penggunalimasembilansembilandelapandua', 'penggunalimasembilansembilandelapandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:56', '1980-01-01', 39),
(915931, 'pengguna sembilan satu lima sembilan tiga satu', 'penggunasembilansatulimasembilantigasatu', 'penggunasembilansatulimasembilantigasatu', 'penggunasembilansatulimasembilantigasatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:43', '1996-01-01', 23),
(917754, 'pengguna empat nol tiga nol dua', 'penggunaempatnoltiganoldua', 'penggunaempatnoltiganoldua', 'penggunaempatnoltiganoldua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:50:05', '1982-01-01', 37),
(924801, 'pengguna dua delapan enam delapan satu', 'penggunaduadelapanenamdelapansatu', 'penggunaduadelapanenamdelapansatu', 'penggunaduadelapanenamdelapansatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:34', '1982-01-01', 37),
(925239, 'pengguna delapan satu', 'penggunadelapansatu', 'penggunadelapansatu', 'penggunadelapansatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:06', '1981-01-01', 38),
(929878, 'pengguna tujuh satu empat sembilan delapan', 'penggunatujuhsatuempatsembilandelapan', 'penggunatujuhsatuempatsembilandelapan', 'penggunatujuhsatuempatsembilandelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:53:31', '1986-01-01', 33),
(935045, 'pengguna tiga tujuh dua dua tujuh', 'penggunatigatujuhduaduatujuh', 'penggunatigatujuhduaduatujuh', 'penggunatigatujuhduaduatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:13', '1964-01-01', 55),
(939622, 'pengguna satu tujuh sembilan enam', 'penggunasatutujuhsembilanenam', 'penggunasatutujuhsembilanenam', 'penggunasatutujuhsembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:50', '1991-01-01', 28),
(942449, 'pengguna tujuh tujuh lima delapan', 'pengguna tujuh tujuh lima delapan', 'penggunatujuhtujuhlimadelapan', 'penggunatujuhtujuhlimadelapan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:56:29', '1987-01-01', 32),
(942707, 'pengguna tiga lima lima tiga', 'penggunatigalimalimatiga', 'penggunatigalimalimatiga', 'penggunatigalimalimatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:54', '1980-01-01', 39),
(945528, 'pengguna delapan satu dua puluh', 'penggunadelapansatuduapuluh', 'penggunadelapansatuduapuluh', 'penggunadelapansatuduapuluh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:37', '1990-01-10', 29),
(948424, 'pengguna enam enam', 'penggunaenamenam', 'penggunaenamenam', 'penggunaenamenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:04:18', '1994-01-01', 25),
(951795, 'pengguna lima dua empat satu tujuh', 'penggunalimaduaempatsatutujuh', 'penggunalimaduaempatsatutujuh', 'penggunalimaduaempatsatutujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:55', '1972-01-01', 47),
(953576, 'pengguna tiga empat sembilan satu empat', 'penggunatigaempatsembilansatuempat', 'penggunatigaempatsembilansatuempat', 'penggunatigaempatsembilansatuempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:49:04', '1980-01-01', 39),
(956351, 'pengguna empat empat', 'penggunaempatempat', 'penggunaempatempat', 'penggunaempatempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:02', '1986-01-01', 33),
(956455, 'pengguna sembilan lima enam empat lima lima', 'penggunasembilanlimaenamempatlimalima', 'penggunasembilanlimaenamempatlimalima', 'penggunasembilanlimaenamempatlimalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:36', '1990-01-01', 29),
(958473, 'pengguna sembilan lima delapan empat tujuh tiga', 'penggunasembilanlimadelapanempattujuhtiga', 'penggunasembilanlimadelapanempattujuhtiga', 'penggunasembilanlimadelapanempattujuhtiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:42:51', '1970-01-01', 49),
(958910, 'pengguna dua satu tiga tujuh', 'penggunaduasatutigatujuh', 'penggunaduasatutigatujuh', 'penggunaduasatutigatujuh@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:01', '1986-01-01', 33),
(964661, 'pengguna sembilan enam empat enam enam satu', 'penggunasembilanenamempatenamenamsatu', 'penggunasembilanenamempatenamenamsatu', 'penggunasembilanenamempatenamenamsatu@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:03:51', '1993-01-01', 26),
(966764, 'pengguna satu enam dua sembilan dua', 'penggunasatuenamduasembilandua', 'penggunasatuenamduasembilandua', 'penggunasatuenamduasembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:48:32', '1979-01-01', 40),
(968233, 'pengguna sembilan enam delapan dua tiga tiga', 'penggunasembilanenamdelapanduatigatiga', 'penggunasembilanenamdelapanduatigatiga', 'penggunasembilanenamdelapanduatigatiga@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:57:27', '1988-01-01', 31),
(968848, 'pengguna sembilan enam', 'penggunasembilanenam', 'penggunasembilanenam', 'penggunasembilanenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:01:34', '1991-01-01', 28),
(970594, 'pengguna lima lima', 'penggunalimalima', 'penggunalimalima', 'penggunalimalima@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:46:37', '1974-01-01', 45),
(975196, 'pengguna lima tiga satu tiga enam', 'penggunalimatigasatutigaenam', 'penggunalimatigasatutigaenam', 'penggunalimatigasatutigaenam@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:58:48', '1989-01-01', 30),
(979081, 'pengguna satu delapan dua', 'penggunasatudelapandua', 'penggunasatudelapandua', 'penggunasatudelapandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 16:00:59', '1991-01-01', 28),
(979773, 'pengguna empat sembilan', 'penggunaempatsembilan', 'penggunaempatsembilan', 'penggunaempatsembilan@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:45:24', '1971-01-01', 31),
(979979, 'pengguna tiga nol dua', 'penggunatiganoldua', 'penggunatiganoldua', 'penggunatiganoldua@gmail.com', NULL, NULL, NULL, '', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:51:48', '1985-01-01', 34),
(983550, 'pengguna dua dua', 'penggunaduadua', 'penggunaduadua', 'penggunaduadua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:59:28', '1989-01-01', 30),
(991553, 'pengguna tujuh dua enam empat', 'penggunatujuhduaenamempat', 'penggunatujuhduaenamempat', 'penggunatujuhduaenamempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:41:54', '1954-01-01', 65),
(992404, 'pengguna sembilan sembilan dua empat nol empat', 'penggunasembilansembilanduaempatnolempat', 'penggunasembilansembilanduaempatnolempat', 'penggunasembilansembilanduaempatnolempat@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:47:04', '1975-01-01', 44),
(995287, 'pengguna empat nol sembilan dua', 'penggunaempatnolsembilandua', 'penggunaempatnolsembilandua', 'penggunaempatnolsembilandua@gmail.com', NULL, NULL, NULL, 'medan', 2, NULL, NULL, NULL, '192.168.100.16', NULL, NULL, NULL, NULL, NULL, NULL, 2012, '2019-07-14 15:55:15', '1986-01-01', 33),
(995288, 'blabla', 'blabla', '$2y$08$ghkQQm3qDy9atOR2nc9Uze28b5Eb4Yh8yrz8toFXByGcu1f/NU7x6', 'asdadasdasdas@gmail.com', '455454546', 17, 48, 'asda', 2, 0, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, NULL, 1563121515, NULL, '1997-03-04', 22),
(995289, 'heybro', 'hey', '$2y$08$rT6bvVt58YBllEkab9LPuOAx7f03uxh4e3h9KJoqr/v/vnrD2z9di', 'wwkwkwk@gmail.com', '12312123', 9, 22, 'adas', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1563606989, 1563606831, '2019-07-20 14:20:56', '1997-03-04', 22),
(995290, 'Davrin', 'bahagia', '$2y$08$9ORceKy7a2YvQ6qIpWqNBuRU8esxAY4W.fwm.AyOLqjXGRwpI77VG', 'bahagia@mail.com', '08181848', 15, 19, 'adasda', 2, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1563758658, 1563758581, '2019-07-22 08:24:18', '0000-00-00', 49);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'superadmin'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`),
  ADD KEY `FK_kota_provinsi` (`provinsi_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `FK_produk_kategori` (`kat_id`),
  ADD KEY `FK_produk_subkategori` (`subkat_id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `promo_detail`
--
ALTER TABLE `promo_detail`
  ADD PRIMARY KEY (`promo_detail_id`),
  ADD KEY `fk_promo` (`promo`),
  ADD KEY `fk_trans` (`trans`),
  ADD KEY `fk_user` (`user`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id_rating`),
  ADD KEY `FK_rating_produk` (`item_id`),
  ADD KEY `FK_rating_user` (`id_users`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id_recommendation`),
  ADD KEY `FK_featured_produk` (`produk_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`),
  ADD KEY `subkategori_ibfk_1` (`id_kat`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `FK_transaksi_users` (`user_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `FK_transaksi_detail_transaksi` (`trans_id`),
  ADD KEY `FK_transaksi_detail_produk` (`produk_id`),
  ADD KEY `FK_transaksi_detail_users` (`user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_users_group` (`usertype`),
  ADD KEY `kota` (`kota`),
  ADD KEY `provinsi` (`provinsi`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2954120;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promo_detail`
--
ALTER TABLE `promo_detail`
  MODIFY `promo_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id_recommendation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995291;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `FK_kota_provinsi` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id_provinsi`);

--
-- Ketidakleluasaan untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD CONSTRAINT `FK_login_attempts_users` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `FK_produk_kategori` FOREIGN KEY (`kat_id`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `FK_produk_subkategori` FOREIGN KEY (`subkat_id`) REFERENCES `subkategori` (`id_subkategori`);

--
-- Ketidakleluasaan untuk tabel `promo_detail`
--
ALTER TABLE `promo_detail`
  ADD CONSTRAINT `fk_promo` FOREIGN KEY (`promo`) REFERENCES `promo` (`id_promo`),
  ADD CONSTRAINT `fk_trans` FOREIGN KEY (`trans`) REFERENCES `transaksi` (`id_trans`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `recommendation`
--
ALTER TABLE `recommendation`
  ADD CONSTRAINT `FK_featured_produk` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  ADD CONSTRAINT `subkategori_ibfk_1` FOREIGN KEY (`id_kat`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `FK_transaksi_detail_produk` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `FK_transaksi_detail_transaksi` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`),
  ADD CONSTRAINT `FK_transaksi_detail_users` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_users_group` FOREIGN KEY (`usertype`) REFERENCES `users_group` (`id_group`),
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`provinsi`) REFERENCES `provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `status_update` ON SCHEDULE EVERY 10 MINUTE STARTS '2019-07-22 06:43:21' ON COMPLETION NOT PRESERVE ENABLE DO update transaksi set status=6 where status=1$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
