# Website Penerimaan Mahasiswa Baru
**Website  Penerimaan Mahasiswa Baru - Institut Teknologi Nasional Malang**

[![PHP](https://img.shields.io/badge/PHP-8.2-blue.svg)](https://www.php.net/) 
[![CodeIgniter](https://img.shields.io/badge/CodeIgniter-4.3.0-red.svg)](https://codeigniter.com/) 
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Authors
- **[@Dewa](https://github.com/dewa0089)**

## Features

### Admin dapat:
- Mengunjungi halaman utama website (Dashboard)
- Melakukan login
- Memverifikasi pendaftaran akun baru
- Memverifikasi pendaftaran mahasiswa baru
- Memverifikasi pembayaran
- Mengelola pengumuman

### User (Calon Mahasiswa) dapat:
- Mengunjungi halaman utama website (Dashboard)
- Melakukan pendaftaran akun
- Melakukan login
- Melihat status pendaftaran akun
- Melakukan pendaftaran mahasiswa baru
- Melihat status pendaftaran mahasiswa baru
- Melakukan konfirmasi pembayaran
- Melihat Pengumuman

## Default Login
| Email                        | Password   | Role                |
|-------------------------------|-----------|-------------------|
| itnmalang@itn.ac.id           | admin123  | Admin                    |
| dewa@gmail.com                | user123   | User (Calon Mahasiswa)   |
| asep@gmail.com                | user123   | User (Calon Mahasiswa)   |
| sinta@gmail.com               | user123   | User (Calon Mahasiswa)   |

## Installation
1. Clone repository ini:
   ```bash
   git clone https://github.com/LSP-P1-UMDP-Skema-Pengembang-Web/batch-6-asesor-faris-dewa0089.git
2. Menginstal semua dependensi/paket/library dengan :
    ```bash
    composer install
3. Import file sql yang sudah tersedia di github ini atau bisa membuat ulang
4. Konfigurasi file .env sesuai dengan pengaturan server/database lokal Anda.
5. Jalankan website dengan :
    ```bash
    php artisan serve
6. Akses website melalui browser dengan port default.
   ```bash
    http://localhost:8000

