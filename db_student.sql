-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2025 pada 11.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_student`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_mahasiswas`
--

CREATE TABLE `calon_mahasiswas` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `calon_mahasiswas`
--

INSERT INTO `calon_mahasiswas` (`id`, `nama`, `jk`, `nomor`, `nisn`, `email`, `tgl_lahir`, `alamat`, `status`, `agama`, `jurusan`, `created_at`, `updated_at`, `user_id`) VALUES
('019aeded-ae8a-73c8-ba45-045b632af889', 'Dewa', 'L', '081215166914', '2226250101', 'dewa@gmail.com', '2003-11-30', 'Tepi Sungai Ogan', 'Pendaftaran Diterima', 'Buddha', 'Teknik Informatika', '2025-12-05 02:52:48', '2025-12-05 02:59:19', 10),
('019aedef-464e-72dc-a93d-714b1b791b25', 'Sinta', 'P', '082372224563', '222112318', 'sinta@gmail.com', '2004-01-01', 'Jl. Rajawali Palembang', 'pending', 'Buddha', 'Manajemen', '2025-12-05 02:54:32', '2025-12-05 02:54:32', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_02_043802_create_alter_role_to_users', 1),
(5, '2025_12_02_043844_create_pengumumans_table', 1),
(6, '2025_12_02_082529_create_calon_mahasiswas_table', 1),
(7, '2025_12_02_082545_create_pembayarans_table', 1),
(8, '2025_12_04_142046_add_status_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `tgl_tempo` date NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `calon_mahasiswa_id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `tgl_pembayaran`, `tgl_tempo`, `total_pembayaran`, `bukti`, `status`, `created_at`, `updated_at`, `calon_mahasiswa_id`, `user_id`) VALUES
(6, '2025-12-05', '2025-12-12', 500000, '1764928394_mceclip0.png', 'Pembayaran Diterima', '2025-12-05 02:52:48', '2025-12-05 02:59:24', '019aeded-ae8a-73c8-ba45-045b632af889', NULL),
(7, NULL, '2025-12-12', 500000, NULL, 'pending', '2025-12-05 02:54:32', '2025-12-05 02:54:32', '019aedef-464e-72dc-a93d-714b1b791b25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumumans`
--

CREATE TABLE `pengumumans` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tgl_pengumuman` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumumans`
--

INSERT INTO `pengumumans` (`id`, `judul`, `isi`, `gambar`, `tgl_pengumuman`, `created_at`, `updated_at`) VALUES
('0fe6d959-a859-460a-bc1e-566aeec7d1f9', 'Pengumuman Ujian Susulan UAS Genap 2024/2025', 'Diberitahukan kepada mahasiswa yang ingin mengikuti Ujian Susulan harap segera melapor ke bagian Administrasi, ditunggu paling lambat hari Senin, 23 Juni 2025. \r\n\r\n \r\n\r\nMahasiswa yang diperbolehkan untuk mengikuti Ujian Susulan hanya mahasiswa yang memiliki alasan seperti, Sakit, Tugas Kerja, atau Keluarga Inti yang Meninggal/Menikah dengan membawa bukti saat melapor.\r\n\r\nUjian Susulan akan berlangsung pada tanggal 23 – 26 Juni 2025.', '1764926378.jpg', '2025-12-05', '2025-12-05 02:19:38', '2025-12-05 02:19:38'),
('85cf1496-df3c-434b-8d48-fb528577b501', 'Pengambilan KTM Mahasiswa/i Angkatan 2024', 'Diinformasikan kepada seluruh mhs/i Universitas Multi Data Palembang angkatan 2024 bahwa KTM sudah bisa diambil di Bagian Adm mulai dari hari Senin, tgl 8 September 2025 hingga hari Sabtu, tgl 13 September 2025 mulai pukul 10.00 - 16.00 WIB', '1764926600.jpg', '2025-12-05', '2025-12-05 02:23:20', '2025-12-05 02:23:20'),
('9e9d1fc0-58e0-49c0-be54-bdd5cd2b600c', 'PENETAPAN PENERIMA BEASISWA & KERINGANAN BIAYA DPP SERTA BIAYA PENDAFTARAN MAHASISWA BARU 2026/2027', 'Institut Teknologi Nasional Malang (ITN Malang) telah menetapkan skema beasiswa, keringanan biaya Dana Pengembangan Pendidikan (DPP), dan biaya pendaftaran bagi mahasiswa baru Program Diploma dan Sarjana Tahun Akademik 2026/2027. Kebijakan ini diatur untuk memberikan kesempatan seluas-luasnya bagi calon mahasiswa berprestasi maupun yang membutuhkan bantuan finansial.\r\n\r\nJenis Beasiswa dan Keringanan Biaya Calon mahasiswa dapat memperoleh beasiswa dan keringanan biaya berdasarkan jalur penerimaan, prestasi akademik maupun non-akademik, kondisi ekonomi, serta kategori tertentu. Jenis dan besaran keringanan yang tersedia antara lain:\r\n\r\nBeasiswa KIP: Bebas UKT 100% selama 4 tahun & bebas DPP, khusus peserta dengan Kartu Indonesia Pintar (KIP).\r\nPrestasi Akademik & Non-Akademik: Potongan DPP 50% hingga 100%, dengan syarat rapor ≥ 85 atau masuk 10 besar kelas.\r\nKegiatan Khusus ITN Malang: Keringanan 100% DPP bagi peserta program khusus atau yang gagal SNBP.\r\nGagal UTBK: Potongan DPP 50% bagi peserta yang mengikuti UTBK.\r\nTrial Class & Siswa Mitra: Potongan DPP 50% + 20% bagi peserta trial class/mitra ITN dan pemegang sertifikat.\r\nKeluarga Alumni, Guru/TNI/POLRI: Potongan DPP 30%-50% dengan syarat administrasi yang berlaku.\r\nKeagamaan: Potongan DPP 50% bagi Hafiz Qur’an atau mahasiswa aktif di lembaga keagamaan.\r\nSMA/SMK Nasional Malang: Keringanan 100% DPP dengan rekomendasi sekolah.\r\nBeasiswa ITN Malang: Potongan DPP 100% dan potongan UKT sebesar 50% dengan syarat khusus.\r\nSyarat & Ketentuan\r\n\r\nSetiap mahasiswa hanya dapat memperoleh satu jenis potongan biaya.\r\nPotongan berlaku jika pembayaran DPP dan UKT dilakukan sekaligus/lunas.\r\nBiaya pendaftaran program D3/S1 sebesar Rp300.000,- dan untuk S2/S3 sebesar Rp500.000,-.', '1764926640.jpg', '2025-12-05', '2025-12-05 02:24:00', '2025-12-05 02:24:00'),
('9f803dbb-842b-4fb1-a5ab-f88cf15a1591', 'Pengumuman Konfirmasi Nilai UTS Gasal 2025/2026', 'Diinformasikan kepada mahasiswa/i Universitas MDP, bahwa nilai sudah diumumkan di Simponi, bagi mahasiswa yang komponen nilai nya tidak terinput atau yang diinputkan salah, dapat mengajukan konfirmasi nilai di Simponi pada menu \"Nilai -> Konfirmasi Nilai\". Serta melampirkan Bukti Berkas Ujian Mahasiswa (nilai yang seharusnya didapatkan) dalam bentuk file PDF, jika komponen nilai yg diajukan lebih dari satu, maka bukti berkasnya dijadikan 1 (satu) file PDF.\r\n\r\nBatas konfirmasi nilai ditunggu paling lambat sampai tanggal 20 November 2025.\r\nTerima Kasih.', '1764926273.jpg', '2025-12-05', '2025-12-05 02:17:53', '2025-12-05 02:17:53'),
('e888cf26-7b87-46f8-b178-bfe486e52510', 'Edaran Libur Idul Fitri 1446 H', 'Dalam rangka menyambut Hari Raya Idul Fitri, 1 Syawal 1446 H, maka dengan ini\r\nmenginformasikan bahwa aktivitas perkuliahan serta layanan akademik diliburkan\r\nmulai hari Senin, 31 Maret 2025 hingga hari Sabtu, 5 April 2025. Aktivitas\r\nperkuliahan serta layanan akademik aktif kembali hari Senin, 7 April 2025.\r\n\r\nDemikian, atas perhatiannya saya ucapkan terima kasih.', '1764926449.jpg', '2025-12-05', '2025-12-05 02:20:49', '2025-12-05 02:20:49'),
('f62bb13f-bb0c-403a-b247-57733c9da6a8', 'Informasi Perpindahan Ruangan Perkuliahan 1-13 Desember 2025', 'Informasi Perpindahan Ruangan Perkuliahan 1-13 Desember 2025 \r\nBerkenaan dengan berlangsungnya ujian sertifikasi LSP Batch 6 yang akan dilaksanakan pada tanggal 1-13 Desember 2025 maka berikut diinformasikan perpindahan ruangan perkuliahan teori dari Kampus B ke Kampus A Rajawali. Namun informasi ruangan ini sewaktu-waktu dapat berubah atau perkuliahan dapat diubah menjadi blended tergantung dari dosen pengampu mata kuliah. \r\n\r\nAtas perhatiannya saya ucapkan terima kasih.', '1764926205.jpg', '2025-12-05', '2025-12-05 02:16:45', '2025-12-05 02:16:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('x1TnYW61IK9ftGyQEo6JTkHlvaOCOjtLQtctCu8H', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWRHdEwwSkJkUzVRR0VmU095SFFGTlZuUjcwU3ZFdDZxb1pjeGpyMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1764928813);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('A','U') NOT NULL DEFAULT 'U',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Admin', 'itnmalang@itn.ac.id', NULL, '$2y$12$/WGTWNK4gLV7w4li7ArRxuHkwfvl5sg4EwaBEC8OLxo6f3NuIwSm6', 'A', NULL, '2025-12-04 08:43:40', '2025-12-04 08:43:40', 'approved'),
(10, 'Dewa', 'dewa@gmail.com', NULL, '$2y$12$6S3jwI2CD6eD0pHzDAM3H.wAVKqjiL2qxbo6979lKGaeVD9IYroda', 'U', NULL, '2025-12-05 02:25:14', '2025-12-05 02:50:56', 'approved'),
(12, 'Asep', 'asep@gmail.com', NULL, '$2y$12$nEYsBewmhRHBbgZta/QszuhqCOsVd7G4uq6c.k94ytEe6kBJgzhkS', 'U', NULL, '2025-12-05 02:27:06', '2025-12-05 02:27:06', 'pending'),
(13, 'Sinta', 'sinta@gmail.com', NULL, '$2y$12$9LNHHUmFlvVVR/TlSW9aM.SL/zWNb3zbNxDRC.w3KZogYe.p2jYPm', 'U', NULL, '2025-12-05 02:27:59', '2025-12-05 02:51:02', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `calon_mahasiswas`
--
ALTER TABLE `calon_mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calon_mahasiswas_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_calon_mahasiswa_id_foreign` (`calon_mahasiswa_id`),
  ADD KEY `pembayarans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `pengumumans`
--
ALTER TABLE `pengumumans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `calon_mahasiswas`
--
ALTER TABLE `calon_mahasiswas`
  ADD CONSTRAINT `calon_mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_calon_mahasiswa_id_foreign` FOREIGN KEY (`calon_mahasiswa_id`) REFERENCES `calon_mahasiswas` (`id`),
  ADD CONSTRAINT `pembayarans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
