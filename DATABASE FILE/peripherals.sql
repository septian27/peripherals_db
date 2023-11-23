-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2023 pada 09.58
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peripherals`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` text NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_product`
--

CREATE TABLE `category_product` (
  `id_category` int(11) NOT NULL,
  `category` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category_product`
--

INSERT INTO `category_product` (`id_category`, `category`, `image`, `status`) VALUES
(1, 'Handphone', 'assets/img_handphone.png', 'on'),
(2, 'Pc', 'assets/img_pc.png', 'on'),
(3, 'Mouse', 'assets/img_mouse.png', 'on'),
(4, 'Keyboard', 'assets/img_keyboard.png', 'on'),
(5, 'Monitor', 'assets/img_monitor.png', 'on'),
(6, 'Webcam', 'assets/img_webcam.png', 'on'),
(7, 'Speaker', 'assets/img_speaker.png', 'on'),
(8, 'Proyektor', 'assets/img_proyektor.png', 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `order_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `invoice`, `id_user`, `order_at`, `status`) VALUES
(11, '20221203123814', 11, '2022-12-03 18:38:14', 1),
(12, '20231118132216', 12, '2023-11-18 19:22:16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id_orders`, `invoice`, `id_product`, `quantity`, `price`) VALUES
(16, '20221203123814', 6, 1, 9165000),
(17, '20221203123814', 11, 1, 229000),
(18, '20231118132216', 1, 1, 958000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `name`, `description`, `image`, `price`, `status`, `created_at`) VALUES
(1, 1, 'OPPO A15S 6/128GB FULLSET GARANSI 1 TAHUN - 6/128GB, BLUE', 'KELENGKAPAN:\n›› Handphone, Dus Box Handphone, Charger.\n›› Free Headset, Anti Gores & Jelly Case (Tidak Semua Customer Dapat)\n›› Tidak Ada Kartu Garansi ( Garansi Toko 1Tahun(12Bln)\n\nOPPO A15S SPECIFICATIONS :\n\nBody Dimensi 164 x 75.4 x 7.9 mm\nBobot 175 g\nLayar 6,52 inci\n1600 720 HD+\nChipset & OS Chipset Mediatek Helio P35\nGPU PowerVR GE8320\nAndroid 10,\nMemori 6GB + 128 GB ROM\nmicroSD sampai 256 GB\nKamera utama Triple camera 13MP, f/2.2, (wide); 2MP, f/2.4, (macro); 2MP, f/2.4, (depth)\nResolusi video 1080p@30fps\nKamera depan 8MP, f/2.0\nResolusi video HDR\nBaterai 4.230 mAh\nPengisian daya 5V/2A\nFitur microUSB 2.0\nDual SIM\nSensor sidik jari\nAudio jack 3,5mm\nPILIHAN WARNA : BLUE', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 958000, 1, '2021-04-02 09:49:21'),
(2, 1, 'FS Infinix Hot 12 Play 4/128 GB - Garansi Resmi - RANDOM FS', ' Spesification : \n\n• Dimension : 171x78x8.9mm\n• Weight : 209g\n• Processor : Powerful Octa-Core Processor\n• Operating System : Android 11\n• Ram : 4+3GB\n• Rom : 128GB\n• External Memory : Up to 256GB\n• Display : 6.82” Rapid Refresh Rate Display\n• Battery : 6000 mAh\n• Network : 4G/3G/2G\n• Camera : Front 8MP, Rear 13MP + AI Lens\n• Video : 1080P@30FPS', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 1899000, 1, '2021-04-02 09:50:38'),
(3, 1, 'Apple iPhone 14 Garansi Resmi - 128GB, Starlight White', 'Spesifikasi:\n\n• Layar Super Retina XDR 6,1 inci\n• Sistem kamera canggih untuk foto yang lebih baik dalam berbagai kondisi pencahayaan\n• Mode Sinematik kini dalam Dolby Vision 4K pada kecepatan hingga 30 fps\n• Mode Aksi untuk video handheld yang stabil\n• Fitur keselamatan penting, —Deteksi Tabrakan1 memanggil bantuan saat Anda tak bisa\n• Kekuatan baterai sepanjang hari dan pemutaran video hingga 20 jam\n• Chip A15 Bionic dengan GPU 5-core untuk performa secepat kilat. Seluler 5G super cepat\n• Fitur ketahanan terdepan di industri dengan Ceramic Shield dan tahan air\n• iOS 16 menawarkan semakin banyak cara untuk personalisasi, komunikasi, dan berbagi\n\n\nLegal :\n\n1. Darurat SOS menggunakan Panggilan Wi-Fi atau koneksi seluler.\n2. Layar memiliki sudut melengkung. Jika diukur sebagai bentuk persegi standar, layarnya memiliki ukuran diagonal 6,06 inci. Area bidang layar berukuran lebih kecil.\n3. Kekuatan baterai bervariasi tergantung penggunaan dan konfigurasi; lihat apple.com/batteries untuk informasi selengkapnya.\n4. Memerlukan paket data. 5G tersedia di pasar tertentu dan melalui operator tertentu. Kecepatan bervariasi menurut kondisi lokasi dan operator. Untuk detail tentang dukungan 5G, hubungi operator Anda dan lihat apple.com/iphone/cellular.\n5. iPhone 14 tahan cipratan, air, dan debu dan diuji dalam kondisi laboratorium terkontrol dengan level IP68 menurut standar IEC 60529 (kedalaman maksimum 6 meter hingga selama 30 menit). Ketahanan terhadap cipratan, air, dan debu tidak berlaku secara permanen. Daya tahan mungkin berkurang akibat penggunaan sehari-hari. Jangan coba mengisi daya iPhone yang basah; lihat panduan pengguna untuk instruksi pembersihan dan pengeringan. Kerusakan akibat cairan tidak ditanggung dalam garansi.\n6. Beberapa fitur mungkin tidak tersedia untuk semua negara atau semua wilayah.', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 15999000, 1, '2021-04-02 09:51:29'),
(4, 1, 'Asus ROG Phone 6 Pro Snapdragon 8+ Gen 1 - 8GB 256GB', ' Spesification : \n\n• Dimension : 173x77x10,3mm\n• Weight : 239g\n• Chipset : Qualcomm Snapdragon 8+ Gen 1\n• CPU : Octa-core (1x3.19 GHz Cortex-X2 & 3x2.75 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510)\n• Gpu : Andreno 730\n• Operating System : Android 12\n• Ram : 18GB\n• Rom : 512GB\n• Display : 6.78 inci\n• Refresh Rate	165 Hz\n• Battery : 6000 mAh\n• Network : 5G/4G/3G/2G\n• Camera : Front 12MP, 50 MP (wide), f/1.9, 13 MP (ultrawide), f/2.2, 5 MP (macro)\n• Video : 1080P@30FPS', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 10880000, 1, '2021-04-02 09:53:21'),
(5, 1, 'Samsung Galaxy Z Fold 4 5G - Beige, 12/256GB', 'Samsung Galaxy Z Fold4 5G\n\nSpesifikasi:\n- Processor : Snapdragon 8+ Gen 1 (4nm)\n- Main : 7.6 QXVGA+ Dynamic AMOLED 2X\nInfinity Flex Display with 1-120Hz adaptive refresh rate, S Pen support\n- Cover : 6.2 HD+ Dynamic AMOLED 2X\nInfinity O Display with 120Hz adaptive refresh rate\n- Protection : Gorilla Glass Victus+ ( Front/Back )\nArmor Alumnium (Frame/Hinge)\n- Rear Camera Resolution :\n12 MP Ultra Wide Camera\n50 MP Wide Camera with OIS\n10 MP Telephoto Camera with OIS, 3x optical zoom\"\n- Front Camera Resolution : (UDC) 4.0 MP\n- Cover Camera Resolution : 10.0 MP\n- Video Resolution : UHD 4K (3840 x 2160) @60fps\n- Audio : Stereo by Dolby Atmos\n- RAM : 12GB\n- ROM : 512GB/256GB/1TB\n- Network Type : 5G\n- Unfolded : 155.1x 130.1 x 6.3 mm\n- Folded : 155.1 x 67.1 x 15.8~14.2 mm\n- Battery Capacity : 4400 mAh\nSuper Fast Charging/Fast Wireless Charging 2.0\nReverse Wireless Charging\n- Water Resistance : IPX8 Water Resistance', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 22370000, 1, '2021-04-02 09:54:38'),
(6, 2, 'Set Komputer | Intel Core i5 10400F/GTX 1650/8GB DDR4 /SSD/Editing/', 'Spesifikasi Lengkap :\nProcessor : Intel Core i5-10400F 2.9Ghz Up To 4.3Ghz - Cache 12MB [Box] Socket LGA 1200\nMotherboard : Gigabyte B460M DS3H V2\nRAM : HyperX DDR4 8 GB PC2666 Mhz\nVGA: ASUS Geforce GTX 1650 4GB\nSSD: Klevv Neo N400 240 GB / setara\nPSU : Aerocool 550W 80+\nCASE: AeroCool Casing RIFT Black Casing Gaming RGB\nFAN : NYK Nemesis Fan Aura RGB Static\nHSF : Alseye TBF100 RGB CPU Cooler\nHSF Heatsink Fan\nMonitor: SAMSUNG S24F350\nKeyboard + Mouse Logitech Bundle B100\nHDD Seagate 500GB\n\nBonus :\n- Windows 10 Pro 64Bit\n- Office 2019\n- Instalasi 5 Game Bebas (list game dikirim setelah pembelian)\n- Adobe Master Collection (17 Software termasuk Photoshop, Illustrator, After Effects, Premiere Pro) - Mousepad Original\n\nGaransi: - Semua RESMI dan BARU 1000%, BOX KOMPONEN DIKIRIMKAN GAME BERAT BISA SETTING ULTRA', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 9165000, 1, '2021-04-02 09:56:53'),
(7, 2, 'PC Gaming Gen 12 | i5 12400F | RTX 3060 8GB | 16GB DDR4 |', 'Spesifikasi Lengkap :\nPROCESSOR: Intel i5-12400F [6C/12T, 2.50-4.40Ghz]\nMOTHERBOARD: Gigabyte H610M S2 LGA 1700 / Asrock / Colorful\nRAM: Samsung 16GB (2x8GB) 3200 Mhz DDR4\nGPU: RTX 3060 12 GB GDDR6 (maaf di judulnya 8GB salah ketik, gabisa diganti gan)\nSSD: SSD 512GB NVME\nPSU: Aerocool 550W 80+ Bronze RGB\nCasing: Gamemax Aero Mini + 3 Fan FRGB\nHSF : Intel Stock Cooler Gen 12\n', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 12795000, 1, '2021-04-02 09:57:57'),
(8, 2, 'Gaming PC | i5-12400F | RTX 3050 | 8GB | SSD | Early 2022 - 12400F', 'Rangkaian ini memiliki spesifikasi:\n\nPROCESSOR: Intel i5-12400f [6C/12T, 2.50-4.40Ghz] (3 Years Warranty)\n\nMOTHERBOARD: MSI H610M-G PRO - mATX (3 Years Warranty)\n\nCOOLER: Intel Stock Cooler\n\nRAM: Kingston FURY Beast 8GB (8X1) DDR4 3200Mhz (Limited Lifetime Warranty)\n\nGPU: INNO3D GeForce RTX 3050 Twin X2 8GB GDDR6 (3 Years Warranty)\n\nSSD: Kingston NV1 250GB NVMe M.2 [PCIe 3.0] (3 Years Warranty)\n\nPSU: AEROCOOL LUX 550W 80+ Bronze [ATX] (3 Years Warranty)\n\nCHASSIS: Thermaltake Versa T35 [ATX] (2 Year Warranty)\n\nFan: Thermaltake ARGB 14cm Fans (2 unit) + Thermaltake stock fan (1 unit)', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 12617000, 1, '2021-04-02 09:57:57'),
(9, 2, 'Gaming PC | i5-11400F | GTX 1650 | 8GB | SSD | 2021 - Intel i5-10400F', 'Spesifikasi : \n\nGPU: MSI GTX 1650 4GB GDDR5 / Palit GTX 1650 GDDR6(3 Years Warranty)\nPROCESSOR: Intel i5-11400F [6C/12T, 2.60-4.40Ghz] (3 Years Warranty)\nMOTHERBOARD: MSI H510M-A PRO / setara\nCOOLER: Intel Stock Cooler\nRAM: Kingston HyperX Fury 8GB (8X1) DDR4 3200Mhz (Limited Lifetime Warranty)\nSSD: SSD Adata 120GB 3D-NAND / setara (3 Years Warranty)\nPSU: Aerocool LUX 550W 80+ Bronze (2 Years Warranty)\nCASING PC: Pilih salah satu atau bisa request (Gamemax Aero Mini, Cube Gaming Frins, Imperion Kinetic 352, Aerocool Bionic, Nimitz Aurora N5 )\nFAN : 3 Unit Setting On Case\n\n\nBonus :\n- Windows 10 Pro 64Bit\n- Adobe\n- Mousepad Original ASUS senilai 150k\n\nGaransi:\n- Semua RESMI dan BARU 1000%\n\nGAME INI BISA SETTING ULTRA / RATA KANAN\n- Red Dead Redemption 2\n- COD Modern Warfare\n- Rainbow Six Siege\n- Grand Theft Auto 5\n- The Witcher 3\n- Far Cry 5\n- Dota 2\n- Black Desert Online\n- Shadow of the Tomb Raider\n- NFS: Payback\n- Devil May Cry 5\n- Metro Exodus\n- AC III Remastered\n- Ghost Recon: Wildlands\n- Battlefield V\n- Assassin\'s Creed Odyssey\n- Monster Hunter World\n- League of Legends\n- Final Fantasy XV\n- Apex Legends Overwatch\n- Fortnite Battle Royale\n- Counter Strike: Global Offensive\n- Player Unknown\'s Battlegrounds\n- Overwatch', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 7975000, 1, '2021-04-02 10:00:05'),
(10, 2, 'PC Gaming Gen 12 | i5 12600K | RTX 3050 8GB | 16GB DDR4 | SSD | Render', 'Spesifikasi Lengkap :\nPROCESSOR: Intel i5-12600K [6C/12T, 2.80-4.90Ghz]\nMOTHERBOARD: ASRock H610M D4 LGA 1700\nRAM: HyperX 32GB (2x16GB) 3200 Mhz DDR4 Heatsink / setara (pilih varian)\nGPU: RTX 3050 8GB GDDR6\nSSD: SSD 512GB\nPSU: Aerocool 550W 80+ Bronze RGB\nCasing: Gamemax Aero Mini + 3 Fan FRGB\nHSF : jonsbo CR1200\nMonitor LED Samsung S24R350 24 inch IPS 75hz\n\nBonus : - Windows 10 Pro 64Bit\n- Instalasi 5 Game Bebas (list game dikirim setelah pembelian)\n- Adobe Master Collection (17 Software termasuk Photoshop, Illustrator, After Effects, Premiere Pro)\n- Mousepad Original ASUS senilai 150k', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 16715000, 1, '2021-04-02 10:00:05'),
(11, 3, 'Mouse Gaming Logitech G102 Prodigy - Hitam Versi 2', 'Fitur: G102\n- LIGHTSYNC RGB COLOR WAVE\n- SENSOR KELAS GAMING\n- DESAIN SEJATI YANG SUDAH TERUJI\n- PENGENCANGAN TOMBOL YANG DIOPTIMALKAN\n- SOFTWARE GAMING LOGITECH G HUB GAMING\n\nSpesifikasi Teknis\nPencahayaan RGB LIGHTSYNC\n6 tombol yang dapat diprogram\nResolusi: 200 – 8.000 DPI\n\nSpesifikasi Fisik\nTinggi: 116,6 mm\nLebar: 62,15 mm\nTebal: 38,2 mm\nBerat: 85 g (hanya mouse)\nPanjang Kabel: 2,1 m\n\nKetanggapan\nFormat data USB: 16 bit/axis\nReport rate USB: 1.000 Hz (1 md)\nMikroprosesor: 32-bit ARM', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 229000, 1, '2021-04-02 10:04:20'),
(12, 3, 'Rexus Mouse Wireless Gaming Arka II RX-107 Dual Connection - Putih', 'Mouse Gaming Rexus ARKA II RX-107\n- Menggunakan teknologi dual connection.\n- Dilengkapi dengan teknologi kabel paracord yang fleksibel dan anti-kusut.\n- Dengan bentuk yang ambidextrous yang nyaman digunakan pada tangan kiri maupun kanan\n- 8D Dual Side Button\n- Pengaturan DPI yang mudah dan nyaman melalui tombol di belakang mouse.\n- Didukung software untuk fitur Macro.\n- Berat mouse lebih ringan, hanya 87gram.\n- Dilengkapi Power Saving Mode\n\nKeunggulan Produk :\nTeknologi Dual Connection yang Praktis\nDesain Ambidextrous Terbaik\nTombol Huano 20M Lifespan\nDPI Lengkap, dengan Pengaturan Mudah\nBaterai Tanam Kapasitas Besar\nDidukung On Board Memory untuk Pengaturan Perangkat Lunak\nKabel Paracord yang Fleksibel\n\nSpesifikasi\nIC Sensor : PMW3325\nSwitch : Huano, 20 juta klik\nResolusi : 10000DPI (800-1200-1600-2400-5000-10000)\nTingkat Polling : 1000 Hz\nTombol : 8 Tombol\nKonektivitas : Dual Connection (Kabel + Nirkabel 2.4GHz)\nLED : RGB\nPanjang Kabel : Paracord 1.8m\nDimensi : 124 x 67.5 x 39.5mm\nBerat : 87 +- 2gr\nInterface : USB\nBaterai : Lithium 650 Mah\nKompatibilitas : Windows OS & MAC OS', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 299000, 1, '2021-04-02 10:04:20'),
(13, 3, 'Redragon Gaming Mouse CENTROPHORUS - M601-3 - RGB', 'Deskripsi Redragon Gaming Mouse CENTROPHORUS - M601-3 - RGB\nModel : Redragon Centrophorus - M601-3\nFeatures and Specification :\n1). 800/1600/2400/3200 DPI （P3317 sensor)\n2). 4000 FPS, 10G ACC, 1000 polling rate\n3). Trendy backlight\n4). 6 function buttons\n5). 8 built-in weights\n6). 2 side buttons\n7). with software\n8). 8mm width antiskid roller\n9). 180cm high-speed USB wire\n10). 3mm diameter high strength fiber wire\n11). Button durability : 5 million clicks\n12). Durable TEFLON feet pads for fast and fine sliding\n13). Comfortable ergonomic design\n', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 182450, 1, '2021-04-02 10:04:20'),
(14, 4, 'Rexus DAIVA RX-D68 RGB 68% Hotswappable - Hitam', ' Spesifikasi :\n❇️ Available Outemu : Blue/Red/Brown\n❇️ Equipped with dampener plate eva foam\n❇️ Outemu Socket Hotswap/Removable\n❇️ 68 Keys keyboard layout\n❇️ 50m key life cycle\n❇️ Anti-ghosting yes\n❇️ 4,5V-5,5V , 300mA Work Voltage\n❇️ Dimension 312x105x30,5mm\n❇️ Compatible Windows OS / Mac OS', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 479000, 1, '2021-04-02 10:09:16'),
(15, 4, 'Vortexseries-GT6 Mechanical Gaming Keyboard Key - BLACK ', 'Spec :\n- Hotswappable Universal 5 Pin Switch South Facing PCB (Only Top Row North Facing)\n- Outemu Switch 50 Million Clicks Lifetime\n- OEM Profile, Abs Keycaps With Elegant Font\n- Rotary Aluminium Knob (Programmable)\n- 3 Mode Of Connection (Bluetooth 5.0 Up To 3 Device, 2.4 GHz Wireless Dongle, Wired)\n- Battery 2200mAh (1 Month Warranty)\n- Mac OS Mode ( HOLD FN+L_alt+L)\n- RGB Programable Lightning, and Music Rhythm\n- Full Keys Anti Ghosting\n- Upgraded Stabilizer\n- Include Eva Plate Foam & Case Foam\n- Braided Cable Type C Connector\n- Solid Body Build\n- Free Keycaps Puller & Switch Puller\n- Software available in our website\n- 1 Year Warranty VortexSeries\n\n~ SMD Led pada 1/F1 berada diatas PCB itu bukan defect melainkan memang designnya, karena bentrok dengan Port Type C yang ada dibelakang PCB', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 745000, 1, '2021-04-02 10:09:16'),
(16, 5, 'Monitor Gaming LED Aeriz Series Ukuran 22 inch/Wide Angle 1080 FHD', 'Spesifikasi :\n-LED Aeriz 22 INCH Monitor Gaming Series\n\n>Resolusi 1920X1080\n>Wide Angle 178 Derajat\n>Super Slim Monitor Model\n>Frequenzy 75 Hz\n>Cable Input HDMI & VGA\n>Dual Built Speaker With High Quality Sound\n>Blued Light Mode\n>Tiga Sisi Ultra Micro Frame, dengan High Quality IPS\n>Closs Panel degan 16.8 Juta Jenis Warna dan 72% DTSC Color Gomurt\n\nGARANSI 1 TAHUN\n*GARANSI DI LUAR KESALAHAN PEMAKAIAN & KERUSAKAN DALAM PENGIRIMAN*', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 1049999, 1, '2021-04-02 10:11:34'),
(17, 5, 'LED Monitor LENOVO L24i-30 66BDKAC2WW 23.8\" IPS 75Hz ', 'LED Monitor LENOVO L24i-30 66BDKAC2WW 23.8\" IPS 75Hz FHD HDMI VGA\n\nTech Specs\nResolution : 1920 x 1080\nGeneral : L24i-30 - 23.8inch Monitor\nSupported Operating Systems : OS Independent\nThin Client Support (Tiny) : Yes\nSoftware/Driver : Yes (Lenovo Artery)\nPower Consumption : 17.5W Typ, 23.5W Max, <0.5W Sleep, <0.3W Power Off\nOptional Soundbar Support : Yes\nNear Edgeless : 3-side NearEdgeless\nKensington Lock : Yes\nEye Caring : Yes\nColor Support : 16.7 Million\nColor Depth : 8-bit\nColor Coverage : 72% NTSC\nConnection Type :\n1 x HDMI 1.4\n1 x VGA\n1 x Audio Out (3.5mm)\nRefresh Rate : 75 Hz\nPower Requirement : 100 - 240 VAC，50 - 60 Hz\nStand : Tilt2.98 kg / 6.57 lbs.\nPanel Type : In-Plane Switching\nBacklight : WLED\nContrast Ratio : 1000:1\nBrightness : 250 cd/㎡\n\nport vga = 60hz\nport hdmi = 75hz', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 1795000, 1, '2021-04-02 10:12:21'),
(18, 5, 'Monitor Gaming ViewSonic Elite XG251G |360Hz|G-Sync|1ms|IPS', 'XG251G\n25” 360Hz IPS Gaming Monitor\n* Sleek 25-inch Full HD Display\n* Pro-level 360Hz Refresh Rate\n* Tear-free gameplay with Nvidia G-Sync\n* Extreme Low Latency with Nvidia Reflex\n* 1ms GTG Response Time\n* VESA DisplayHDR™ 400\n\nSPEC:\nDisplay Size (in.): 25\nViewable Area (in.): 24.5\nPanel Type: IPS Technology\nResolution: 1920 x 1080 (Full HD)\nStatic Contrast Ratio: 1,000:1 (typ)\nDynamic Contrast Ratio: 120M:1\nLight Source: LED\nBrightness: 400 cd/m² (typ)\nColors: 16.7M\nColor Space Support: 8 bit true\nAspect Ratio: 16:9\nResponse Time (Typical GTG): 1ms\nViewing Angles: 178º horizontal, 178º vertical\nBacklight Life (Hours): 30000 Hrs (Min)\nCurvature: Flat\nRefresh Rate (Hz): 360\nAdaptive Sync: G-Sync\nBlue Light Filter: Yes\nFlicker-Free: Yes\nSurface Treatment: Anti-Glare, Hard Coating (3H)\nInternal Speakers: 2Watts x2\nVESA Compatible: 100 x 100 mm\n\nCOLOR GAMUT:\nNTSC: 78% size\nsRGB: 110% size\n\nCONNECTOR:\nUSB 3.2 Type A Down Stream: 3\nUSB 3.2 Type B Up Stream: 1\n3.5mm Audio Out: 1\nHDMI 2.0 (with HDCP 2.2): 2\nDisplayPort: 1\nPower in: DC Socket (Center Positive)\n\nERGONOMICS:\nHeight Adjust (mm): 120\nSwivel: 60º\nTilt (Forward/Back): -5º / 20º\nPivot (Right/Left): 90º / 90º\n\nCONTENTS:\nXG251G x1\n3-pin Mickey Mouse Plug (IEC C5) x1\nDisplayPort Cable (v1.2; Male-Male) x1\nUSB A/B Cable (v3.2; Male-Male) x1\nAC/DC Adapter x1\nQuick Start Guide x1', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 12900000, 1, '2021-04-02 10:12:21'),
(19, 6, 'Xiaovv Webcam 1080P Full HD USB Camera Webcam Vlogging Ip Cam With Mic', 'Main Features\nFeatures\n1. 1080P super clear\n2. 150° wide-angle view\n3. AI motion detection\n4. Sound detection\n5. High quality with exquisite appearance.\n6. Imported optical lens, high precision and no distorted pictures.\n7. The built-in noise reduction microphone makes your voice calls clearer.\n8. Auto white balance, auto color correction.\n9. Support Windows 2000 / XP / win7 / win8 /win10 Vista 32bit.\n10. Support various video meeting software, ie, Netmeeting and works great with MSN, Yahoo and Skype, etc.\n\nBrand Xiaovv\nModel XVV-6320S-USB\nColor Black\nCamera Weight About 105g\nSize 100 x 25 x 50 mm\nPower Input 5V\nPixel 200W\nWorking Temperature -10℃ - 50℃\nViewing Angle 150°\nVideo Format H.264 / H.265 / MJPG / NV12 / YUY2\nSystem Support MacOS10.5 and above\nSupport Windows7/8/10, Linux2.4.6 and above', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 152000, 1, '2021-04-02 10:14:23'),
(20, 6, 'Logitech Brio 500 Webcam Full HD HDR dan Noise Cancelling - Graphite', 'Logitech Brio 500 Webcam Full HD 1080p dengan Auto Light Correction, Auto Framing dan Mikrofon Noise-canceling\n\nTampil di setiap panggilan video dengan percaya diri, tampilan yang lebih jernih dan suara yang terdengar jelas, Logitech Brio 500 Webcam memiliki fitur canggih seperti Auto Light Correction untuk kondisi cahaya redup, Auto Framing agar Anda bisa bergerak lebih leluasa tanpa rasa khawatir tidak terlihat dalam layar selama panggilan, dan Show Mode untuk menampilkan objek di meja Anda dengan lebih baik. Logitech Brio 500 Webcam juga menghadirkan pengalaman online via Google, Teams, atau Zoom yang lebih autentik terhubung dengan orang terdekat.\n\nLogi Tune memudahkan Anda untuk menggunakan Logitech Brio 500 Webcam dari komputer atau laptop. Update firmware terbaru terpasang untuk menjaga perangkatmu tetap berjalan dengan mulus. Download aplikasinya dan pilih fitur unggulan yang tersedia seperti, pengaturan zoom digital webcam, bidang pandang (90°/78°/65°), Auto Focus, Auto Framing dan gambar HDR. Logi Tune juga memungkinkan Anda untuk bergabung ke dalam meeting tertentu dengan sekali klik.\n\nSyarat Sistem\nMemerlukan: Port USB-C yang kosong\nKompatibel dengan Windows, macOS, atau Chrome OS* dan hampir semua platform panggilan video populer.\n*Logi Tune tidak tersedia untuk Chrome OS.\n*RightSight saat ini hanya tersedia untuk Windows\n\nBersertifikasi untuk Microsoft Teams, Zoom, Google Meet, Works With Chromebook.\nRAM 2GB atau lebih besar diperlukan untuk streaming video 1080p, sedangkan RAM 1GB biasanya diperlukan untuk streaming 720p\n\nPlatform Kompatibel\nWindows 8 atau versi terbaru - memerlukan Windows 8.1 atau versi terbaru untuk resolusi yang lebih besar dari 1080p\nmacOS 10.10 atau versi terbaru\nChrome OS\n\nResolusi Webcam\n1080p/30fps (1920x1080 piksel)\n720p/60fps (1280x720 piksel)\nMegapiksel kamera: 4MP\nAuto Focus\nLensa kaca\nJenis Mikrofon Internal\nMikrofon stereo', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 1639000, 1, '2021-04-02 10:14:23'),
(21, 6, 'Logitech C920 PRO Full HD 1080p Autofocus,Noise-Cancelling', 'C920 HD PRO WEBCAM\n\nPanggilan video full HD 1080p dengan stereo audio\n\nPANGGILAN VIDEO DALAM FULL HD YANG JELAS\nC920 menghadirkan video Full HD (1080p pada 30fps) yang sangat jelas dan detail dengan lensa kaca Full HD, bidang pandang 78°, dan HD auto light correction, plus dual mic untuk stereo sound yang jelas. Semua yang Anda butuhkan untuk tampil hebat dalam panggilan konferensi dan merekam demo yang mulus.\n\nPANGGILAN VIDEO YANG CANGGIH. BAHKAN DI RUMAH.\nBuatlah kesan pertama yang hebat dalam panggilan video konferensi Anda dengan bidang pandang diagonal 78° untuk menyorot Anda dan ruangan Anda dengan sempurna, plus Full HD pada 1080p/30fps atau 720p/30fps. Lensa kaca dengan lima elemennya menangkap gambar yang sangat tajam dan warna yang jelas, sementara autofocus menyesuaikan secara mulus dan akurat untuk video yang lancar dan definisi yang konsisten.\n\nDUAL-MIC\nSTEREO AUDIO\nDilengkapi dua mikrofon, masing-masing di samping kamera, menangkap audio yang lebih realistis dari beraneka ragam sudut sehingga suara Anda terdengar alami dan jelas dalam panggilan konferensi.\n\nDIMENSI\nDimensi termasuk fixed mounting clip\nTinggi: 43,3 mm\nLebar: 94 mm\nTebal: 71 mm\nPanjang kabel: 1,5 m\nBerat: 162 g\n\nPERSYARATAN SISTEM\nKompatibilitas\nWindows® 7 or later\nmacOS 10.10 or later\nChrome OS™\nPort USB-A\nKompatibel dengan platform panggilan yang populer.\n\nSPESIFIKASI TEKNIS\nResolusi Maks.: 1080 p/30 fps - 720p/ 30 fps\nKamera mega pixel: 3\nJenis fokus: Autofocus\nJenis lensa: Kaca\nMikrofon internal: Stereo\nJangkauan mikrofon: Maksimal 1 m\nBidang pandang diagonal (dFoV):: 78°\nUniversal clip yang kompatibel dengan tripod ini cocok dengan berbagai laptop, LCD, atau monitor 1Tripod tidak disertakan\n', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 945000, 1, '2021-04-02 10:15:54'),
(22, 7, 'NYK Nemesis X60 Quantum Soundbar Gaming Speaker', 'Speaker Gaming Stereo Sounbard Gaming RGB NYK X60 Quantum\n\n- Stereo Soundbar\n- 6 Mode RGB Illumination\n- 12 Watt Power Output\n- Large Illuminated Volume Control\n- High Quality Sound\n\n\nGAMING RGB SOUND BAR WITH 3D GAMES STEREO AUDIO AND CLEAN ANTI NOISE TECHNOLOG.\n\nGaming RGB Speaker X60 Quantum already equipped with 6 Mode RGB Illumination (Spectrum, Rainbow, Drop Breathing, Static (Red,Green,Blue) and High Quality Sound that produce clear, powerful sound that makes you more immerse in game. This speaker also have Large Illuminated Volume Control and Compact Size design that makes this speaker more cool and beautiful. Also this speaker use 12 Watt Power Output and USB And Aux Cable Output.\n\n\n6 MODE RGB ILLUMINATION.\n\nGaming RGB Speaker X60 Quantum already equipped with 6 Mode RGB Illumination (Spectrum, Rainbow, Drop Breathing, Static (Red,Green,Blue).\n\n\nTECHNICAL SPECIFICATION\n\n- Frequency Range : 20-20.000Hz\n- Driver Size : 2x50mm\n- Peak Power Output : 12W\n- RMS Power Output : 6 W\n- Controls : Volume, Power, LED On/Off\n- Dimensions : 70x400x75mm\n- Weight : 700g\n- LED RGB Modes : Spectrum, Rainbow, Drop Breathing, Static (Red, Green, Blue)', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 217000, 1, '2021-04-02 10:17:36'),
(23, 7, 'Xiaomi Redmi TV Soundbar Wireless Bluetooth Audio', 'Package Included:\n1* Redmi TV Bar Speaker 30W Home Theater\n1* Kabel SPDIF (tidak ada kabel lain)\n2* Screw (untuk mount wall)\n2* Expansion rubber plug (untuk mount wall)\n2* EVA foam pads\n\nGeneral Specification:\nBrand : Redmi\nModel : MDZ-34-DA\nColor : Black\nWearing Type : In-ear\nMaterial : ABS, Metal\nNet Weight (g) : 1.5kg\nDimensions : 780*64*63mm\n\nTechnical Parameters:\nBluetooth Version : V5.0\nSpeaker unit : 2* 45x80mm racetrack type full Frequency speakers\nPower : 30W\nConnectivity : bluetooth 5.0 / SPDIF / AUX\nFrequency response : 80Hz-20kHz\nImpedance : 4Ω\n\nFitur utama:\nSpeaker soundbar yang kuat:\nIni memberi Anda suara stereo yang sangat jernih dan bass yang kuat, memberi Anda kenikmatan audio yang belum pernah terjadi sebelumnya.\n\nBeberapa metode untuk menghubungkan:\nIni mendukung koneksi nirkabel Bluetooth 5.0, input AUX, dan koneksi kabel S / PDIF, yang berarti ia bekerja dengan banyak perangkat, seperti TV, PC, dan DVD, dll.\n\nTeknologi Bluetooth:\nIni dapat dihubungkan ke sebagian besar perangkat yang mendukung Bluetooth dengan teknologi Bluetooth canggih, tidak memerlukan driver atau kabel lain, lebih nyaman.', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 429000, 1, '2021-04-02 10:17:36'),
(24, 7, 'Redragon Gaming Speaker Sound Bar Orpheus - GS550', 'Rock it up in either way!\nUnique and ingenious maneuvering design with compact size offers two enjoy ways for the same high.\n\nStereo Core For Extreme Media\nFull range 2.0 channel stereo core with upgraded sound driver will get you fully covered and move the media scene to your room.\n\nClassic Volume Knob\nPlug it, play it, whirl it, easily get hyped with three simple steps.\n\nFeatures:\n2 in 1 speakers/sound bar desgin\n2.0 stereo speakers\nMaximum power: 3W x 2\nOutstanding bass quality\nConvenient 3.5mm audio interface for headset/mic\nRed backlight\n\nPackage List:\n2 x Stereo Speakers\n1 x User Manual', 'https://i.ibb.co/10f4HxN/oppo-a15s.webp', 204000, 1, '2021-04-02 10:19:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `phone`, `address`, `password`, `created_at`, `status`) VALUES
(16, 'user', 'user@gmai.com', '089773287823', 'mars', '654e6e59bd7ee960e0a8440c1a3fe8df', '2023-11-21 06:27:35', 1),
(17, 'usera', 'usera@gmai.com', '08977328782312', 'marsea', 'c39cebc8ee77c73ccc4fa69fcea20837', '2023-11-21 06:35:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category_product` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
