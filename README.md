# 🛠️ Tukang.com App

Tukang.com adalah aplikasi layanan digital berbasis **Flutter** yang menghubungkan pengguna dengan berbagai **jasa tukang** seperti perawatan rumah, renovasi, dan inspirasi desain.  
Aplikasi ini dikembangkan dengan tampilan modern, integrasi API, serta sistem pemesanan dengan progres pekerjaan real-time.

---

## 🚀 Fitur Utama
- 🎨 **UI Modern dan Responsif**
  - Desain mirip aplikasi Tukang.com asli.
  - Warna utama kuning dan putih dengan tampilan clean.
- 🧰 **Kategori Layanan**
  - Home Maintenance, Build & Renovate, dan Design Inspiration.
- 🏪 **Official Partner dan Financial Partner**
  - Ditampilkan dalam kartu logo dinamis dari NetworkImage.
- 💬 **Promo & Tips**
  - Menampilkan data berita dan artikel tips dengan gambar dari API Dummy.
- 📦 **Order System**
  - Tambah pesanan baru.
  - Update status pengerjaan (dengan indikator progress).
- 🗺️ **Halaman Maps**
  - Menampilkan lokasi tukang terdekat.
- 👤 **Halaman Profile**
  - Data pengguna, riwayat pesanan, dan pengaturan akun.

---

## 🧩 Struktur Folder
lib/
├── app.dart
├── main.dart
├── core/
│ ├── constants/
│ ├── models/
│ ├── services/
│ └── utils/
├── data/
│ ├── repositories/
│ └── datasources/
├── features/
│ ├── home/
│ ├── order/
│ ├── profile/
│ └── maps/
├── routes/
└── widgets/



---

## 🧠 Teknologi yang Digunakan
| Komponen | Teknologi |
|-----------|------------|
| Frontend | Flutter (Dart) |
| Backend | Laravel |
| Database | MySQL (XAMPP) |
| API Dummy | Ktor / PokeAPI |
| State Management | GetX / Provider (bisa disesuaikan) |

---

## ⚙️ Instalasi & Jalankan Proyek
1. Clone repositori:
   ```bash
   git clone https://github.com/NauvalFaiz/Tukang.com.git

---

## 💡 Tips Tambahan
- Tambahkan **screenshots** hasil run di folder `/assets/screenshots/`.
- Jika sudah ada backend Laravel, kamu bisa buat folder `/backend/` di repo untuk menyimpan kodenya.
- Tambahkan badge di atas README seperti:
  ```markdown
  ![Flutter](https://img.shields.io/badge/Flutter-3.24-blue)
  ![License](https://img.shields.io/badge/license-MIT-green)


