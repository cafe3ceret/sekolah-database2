# 🏫 Database Sekolah

Proyek ini merupakan latihan pembuatan database sederhana untuk manajemen data **siswa** dan **nilai** menggunakan **MySQL**.  
Tugas ini mencakup pembuatan tabel, relasi, query dasar (SELECT, JOIN, GROUP BY), serta operasi **UPDATE** dan **DELETE**, kemudian dikelola menggunakan **Git** dan **GitHub** sebagai version control.

### 👨‍💻 Identitas
**Nama:** Aditya Arief Darmawan  
**NIM:** 2213010450  
**Kelas:** UI/UX DESAIN  
**Mata Kuliah:** Back-End Development / Basis Data
---

## 📘 Struktur Database

### 1. Database
- **Nama:** `sekolah`

### 2. Tabel
#### 🧑‍🎓 `siswa`
| Kolom | Tipe Data | Keterangan |
|-------|------------|-------------|
| id | INT (PK, AUTO_INCREMENT) | Primary key |
| nama | VARCHAR(100) | Nama siswa |
| umur | INT | Umur siswa |
| jurusan | VARCHAR(50) | Jurusan siswa (IPA/IPS/Bahasa) |

#### 📊 `nilai`
| Kolom | Tipe Data | Keterangan |
|-------|------------|-------------|
| id | INT (PK, AUTO_INCREMENT) | Primary key |
| siswa_id | INT (FK → siswa.id) | Relasi ke tabel siswa |
| mata_pelajaran | VARCHAR(100) | Nama mata pelajaran |
| nilai | INT | Nilai siswa |

---

## 🧱 Relasi
- **One to Many:**  
  Satu `siswa` dapat memiliki banyak `nilai`.  
  Relasi diatur melalui `FOREIGN KEY (siswa_id) REFERENCES siswa(id)`.

---

## 🧩 Contoh Data

### Tabel `siswa`
| id | nama | umur | jurusan |
|----|------|------|---------|
| 1 | Andi | 16 | IPA |
| 2 | Budi | 17 | IPS |
| 3 | Citra | 16 | IPA |
| 4 | Dewi | 17 | Bahasa |
| 5 | Eka | 16 | IPS |
| 6 | Fajar | 17 | IPA |
| 7 | Gina | 16 | IPS |
| 8 | Hendra | 17 | IPA |
| 9 | Indah | 16 | Bahasa |
| 10 | Joko | 17 | IPS |

---

## 💾 Query Utama

### 1. Menampilkan semua siswa
```sql
SELECT * FROM siswa;
