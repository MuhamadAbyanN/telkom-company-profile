CREATE DATABASE IF NOT EXISTS telkom_profile
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE telkom_profile;

CREATE TABLE IF NOT EXISTS program_studi (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(120) NOT NULL,
  jenjang VARCHAR(20) NOT NULL,
  deskripsi TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS berita (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  judul VARCHAR(180) NOT NULL,
  ringkasan VARCHAR(300) NOT NULL,
  isi TEXT NOT NULL,
  tanggal_publish DATE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pesan (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL,
  subjek VARCHAR(150) NOT NULL,
  pesan TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO program_studi (nama, jenjang, deskripsi) VALUES
('Sistem Informasi', 'S1', 'Mempelajari integrasi proses bisnis, data, manusia, dan teknologi informasi.'),
('Informatika', 'S1', 'Mempelajari pengembangan perangkat lunak, komputasi, dan kecerdasan buatan.'),
('Teknik Telekomunikasi', 'S1', 'Mempelajari jaringan, komunikasi digital, dan teknologi telekomunikasi.'),
('Bisnis Digital', 'S1', 'Mempelajari strategi bisnis yang memanfaatkan teknologi dan data digital.');

INSERT INTO berita (judul, ringkasan, isi, tanggal_publish) VALUES
('Workshop Git untuk Mahasiswa', 'Mahasiswa mempraktikkan version control melalui proyek web terpadu.', 'Kegiatan workshop membahas repository lokal, staging, commit, branch, merge, remote, push, pull, dan kolaborasi dasar melalui GitHub.', '2026-09-20'),
('Praktikum Web Dinamis', 'Pembelajaran mengintegrasikan PHP native dan basis data.', 'Mahasiswa membangun halaman program studi, berita, dan kontak berbasis PHP native serta MySQL/MariaDB.', '2026-09-18'),
('Simulasi Kolaborasi Developer', 'Mahasiswa mempraktikkan branch dan penyelesaian conflict.', 'Simulasi dilakukan dengan dua folder kerja yang mewakili dua perangkat agar alur push dan pull lebih mudah dipahami.', '2026-09-15');