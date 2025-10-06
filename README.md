Berikut contoh **README.md** yang bisa kamu pakai untuk tugas *Database Sekolah* kamu di GitHub 👇

---

## 🏫 Database Sekolah

### 📌 Deskripsi

Project ini merupakan tugas pembuatan **Database Sekolah** menggunakan **MySQL** yang mencakup pembuatan tabel, relasi, pengisian data, query, serta penggunaan **Git** untuk version control dan upload ke GitHub.

---

### 🧱 1. Membuat Database

```sql
CREATE DATABASE sekolah;
USE sekolah;
```

---

### 🧾 2. Membuat Tabel & Relasi

#### Tabel `siswa`

```sql
CREATE TABLE siswa (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  umur INT,
  jurusan VARCHAR(50)
);
```

#### Tabel `nilai`

```sql
CREATE TABLE nilai (
  id INT AUTO_INCREMENT PRIMARY KEY,
  siswa_id INT,
  mata_pelajaran VARCHAR(100),
  nilai INT,
  FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);
```

---

### ✏️ 3. Mengisi Data (INSERT)

```sql
INSERT INTO siswa (nama, umur, jurusan)
VALUES
("Andi", 16, "IPA"),
("Budi", 17, "IPS"),
("Citra", 16, "IPA"),
("Dewi", 17, "IPS"),
("Eka", 16, "IPA");

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES
(1, "Matematika", 85),
(1, "Bahasa Inggris", 90),
(2, "Matematika", 78),
(3, "Fisika", 88),
(4, "Ekonomi", 92),
(5, "Biologi", 81);
```

---

### 🔍 4. Query Data (SELECT)

#### Menampilkan semua siswa

```sql
SELECT * FROM siswa;
```

#### Menampilkan nama siswa dengan jurusan IPA

```sql
SELECT nama FROM siswa WHERE jurusan = 'IPA';
```

#### Menampilkan nilai rata-rata tiap siswa

```sql
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;
```

---

### 🔄 5. Update & Delete

#### Update jurusan salah satu siswa

```sql
UPDATE siswa SET jurusan = 'Bahasa' WHERE id = 2;
```

#### Hapus satu data nilai siswa

```sql
DELETE FROM nilai WHERE id = 1;
```

---

### 🗃️ 6. Version Control dengan Git

```bash
git init
git add sekolah.sql
git commit -m "Membuat database sekolah dan tabel siswa"
git commit -m "Menambahkan data siswa dan nilai"
git commit -m "Menambahkan query SELECT, UPDATE, dan DELETE"
```

---

### ☁️ 7. Upload ke GitHub

```bash
git remote add origin https://github.com/<username>/sekolah-database.git
git branch -M main
git push -u origin main
```

---

### ✅ 8. Kriteria Penilaian

* [x] Database dan tabel berhasil dibuat
* [x] Relasi Primary Key dan Foreign Key diterapkan
* [x] Data siswa dan nilai minimal 5 record
* [x] Query `SELECT`, `JOIN`, `GROUP BY` berjalan
* [x] Operasi `UPDATE` dan `DELETE` berhasil
* [x] Repository berisi minimal 3 commit
* [x] Project berhasil dipush ke GitHub

---

### 👨‍💻 Pembuat

Nama: **Aditya Arief Darmawan**
NIM: **2213010450**
Kelas: **UI/UX DESAIN**
Mata Kuliah: **Back-End Development / Basis Data**

---

Apakah kamu mau saya tambahkan *markdown table* di bagian hasil query (biar lebih menarik di GitHub)?
