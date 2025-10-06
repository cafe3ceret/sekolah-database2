-- 1. Membuat Database
CREATE DATABASE sekolah;
USE sekolah;

-- 2. Membuat Tabel & Relasi
CREATE TABLE siswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

CREATE TABLE nilai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);

-- 3. Isi Data (INSERT)
-- Tambah 10 siswa
INSERT INTO siswa (nama, umur, jurusan)
VALUES 
("Andi", 16, "IPA"),
("Budi", 17, "IPS"),
("Citra", 16, "IPA"),
("Dewi", 17, "Bahasa"),
("Eka", 16, "IPS"),
("Fajar", 17, "IPA"),
("Gina", 16, "IPS"),
("Hendra", 17, "IPA"),
("Indah", 16, "Bahasa"),
("Joko", 17, "IPS");

-- Tambah nilai untuk masing-masing siswa (2-3 mata pelajaran per siswa)
INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, "Matematika", 85),
(1, "Fisika", 88),
(1, "Kimia", 80),

(2, "Ekonomi", 90),
(2, "Sosiologi", 85),

(3, "Matematika", 92),
(3, "Biologi", 87),

(4, "Bahasa Indonesia", 91),
(4, "Bahasa Inggris", 89),

(5, "Geografi", 80),
(5, "Ekonomi", 83),

(6, "Matematika", 88),
(6, "Fisika", 84),
(6, "Kimia", 90),

(7, "Ekonomi", 86),
(7, "Sosiologi", 82),

(8, "Matematika", 78),
(8, "Fisika", 80),
(8, "Kimia", 82),

(9, "Bahasa Indonesia", 93),
(9, "Bahasa Inggris", 91),

(10, "Ekonomi", 85),
(10, "Sosiologi", 88);

-- 4. Query Data (SELECT)
-- a. Tampilkan semua siswa
SELECT * FROM siswa;

-- b. Tampilkan nama siswa dengan jurusan IPA
SELECT nama, jurusan FROM siswa WHERE jurusan = 'IPA';

-- c. Tampilkan nilai rata-rata tiap siswa (JOIN dan GROUP BY)
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

-- 5. Update & Delete
-- Update jurusan salah satu siswa (misal ubah jurusan Budi menjadi Bahasa)
UPDATE siswa
SET jurusan = 'Bahasa'
WHERE nama = 'Budi';

-- Hapus satu data nilai siswa (misal hapus nilai pertama Andi di Matematika)
DELETE FROM nilai
WHERE siswa_id = 1 AND mata_pelajaran = 'Matematika';

-- 6. (Langkah berikut dilakukan di Git)
-- git init
-- git add sekolah.sql
-- git commit -m "Membuat database sekolah dan tabel siswa"
-- git commit -m "Menambahkan data siswa dan nilai"
-- git commit -m "Menambahkan query SELECT, UPDATE, DELETE"
-- git remote add origin https://github.com/username/sekolah-database.git
-- git branch -M main
-- git push -u origin main
