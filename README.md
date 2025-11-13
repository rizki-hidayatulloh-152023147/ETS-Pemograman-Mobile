# UTS Mobile App - Pemrograman Mobile

## 📱 Informasi Mahasiswa

- **Nama**: Rizki Hidayatulloh
- **NIM**: 152023147
- **Kelas**: AA
- **Dosen**: Galih Ashari R., S.Si., MT
- **Semester**: Ganjil 2025/2026

## 📋 Deskripsi Aplikasi

Aplikasi ini merupakan aplikasi mobile berbasis Flutter yang terdiri dari 5 menu utama yang dapat diakses melalui Bottom Navigation Bar. Aplikasi ini dirancang dengan UI/UX yang modern dan responsif.

## ✨ Fitur Aplikasi

### 1. Splash Screen
- Durasi tampil: 5 detik
- Menampilkan:
    - Judul aplikasi
    - Foto mahasiswa
    - NIM
    - Nama mahasiswa
- Dilengkapi dengan animasi fade-in

![Splash Screen](assets/screenshots/splash.png)

### 2. Dashboard dengan Bottom Navigation
Menu utama aplikasi yang terdiri dari 5 navigasi:
- Biodata
- Kontak
- Kalkulator
- Cuaca
- Berita

![Dashboard](assets/screenshots/dashboard.png)

### 3. Halaman Biodata
Fitur:
- Menampilkan foto profil dengan desain menarik
- Form input data dengan berbagai widget:
    - TextField untuk nama, NIM, email, dan alamat
    - DatePicker untuk tanggal lahir (Calendar)
    - RadioButton untuk jenis kelamin
    - Dropdown untuk agama
- Tombol simpan (data tidak disimpan ke database)
- UI/UX yang responsive dan modern

![Biodata](assets/screenshots/biodata.png)

### 4. Halaman Kontak
Fitur:
- Daftar 15 kontak telepon statis
- Setiap kontak menampilkan:
    - Circle avatar dengan inisial
    - Nama kontak
    - Nomor telepon
    - Tombol call dan message
- Data bersifat statis dari variabel
- Tampilan card yang modern

![Kontak](assets/screenshots/kontak.png)

### 5. Halaman Kalkulator
Fitur operasi matematika:
- Penjumlahan (+)
- Pengurangan (-)
- Perkalian (×)
- Pembagian (÷)
- Pangkat dua (x²)
- Akar kuadrat (√)
- Tombol Clear (C)
- Display hasil yang besar dan jelas
- UI dengan warna yang intuitif

![Kalkulator](assets/screenshots/kalkulator.png)

### 6. Halaman Cuaca
Fitur:
- Informasi cuaca statis untuk kota Bandung
- Menampilkan:
    - Suhu saat ini
    - Kondisi cuaca dengan icon
    - Kelembapan
    - Kecepatan angin
    - Jarak pandang
    - Tekanan udara
    - Prakiraan 5 hari ke depan
- Desain dengan gradient background yang menarik

![Cuaca](assets/screenshots/cuaca.png)

### 7. Halaman Berita
Fitur:
- Daftar 15 berita statis
- Setiap berita menampilkan:
    - Icon kategori dengan warna berbeda
    - Judul berita
    - Ringkasan berita
    - Tanggal publikasi
    - Kategori berita
- Tampilan card dengan layout yang responsive
- Detail berita muncul saat card diklik

![Berita](assets/screenshots/berita.png)

## 🛠️ Teknologi yang Digunakan

- **Framework**: Flutter 3.35.1
- **Language**: Dart
- **SDK**: Dart SDK >=3.0.0 <4.0.0
- **State Management**: StatefulWidget
- **Navigation**: Bottom Navigation Bar
- **Architecture Pattern**: Fragment-based architecture

## 📂 Struktur Folder

```
lib/
├── main.dart
├── screens/
│   ├── splash_screen.dart
│   └── dashboard_screen.dart
├── fragments/
│   ├── biodata_fragment.dart
│   ├── kontak_fragment.dart
│   ├── kalkulator_fragment.dart
│   ├── cuaca_fragment.dart
│   └── berita_fragment.dart

aset/
└── image/
    └── kasep.jpg
└── screensshots
    └──berita.png
    └──biodata.png
    └──cuaca.png
    └──kalkulator.png
    └──kontak.png
    └──spalsh.png

## 🚀 Cara Menjalankan Aplikasi

### Prasyarat
- Flutter SDK 3.35.1 atau lebih tinggi
- Dart SDK
- Android Studio / VS Code
- Emulator Android atau perangkat fisik

### Langkah-langkah

1. Clone repository ini
```bash
git clone https://github.com/rizki-hidayatulloh-152023147/ETS-Pemograman-Mobile.git
cd uts_mobile_app
```

2. Install dependencies
```bash
flutter pub get
```

3. Jalankan aplikasi
```bash
flutter run
```

## 📸 Screenshot Aplikasi

### Splash Screen
![Splash Screen](assets/screenshots/splash.jpg)

### Dashboard
![Dashboard](assets/screenshots/dashboard.jpg)

### Halaman Biodata
![Biodata](assets/screenshots/biodata.png)

### Halaman Kontak
![Kontak](assets/screenshots/kontak.png)

### Halaman Kalkulator
![Kalkulator](assets/screenshots/kalkulator.png)

### Halaman Cuaca
![Cuaca](assets/screenshots/cuaca.png)

### Halaman Berita
![Berita](assets/screenshots/berita.png)

## 📝 Catatan Pengembangan

### SubCPMK 2
Aplikasi ini memenuhi SubCPMK 2 dengan menerapkan berbagai jenis layout dan widget:
- **Layout**: Column, Row, ListView, Container, Card, Stack
- **Widget Input**: TextField, RadioButton, DropdownButton, DatePicker
- **Widget Display**: Text, Image, Icon, CircleAvatar
- **Navigation**: BottomNavigationBar, Fragment
- **Styling**: Gradient, BoxDecoration, Border, Shadow
- **Interaction**: Button, InkWell, GestureDetector

## 🔧 Pengembangan Selanjutnya

Fitur yang dapat dikembangkan:
- [ ] Integrasi dengan API cuaca real-time
- [ ] Integrasi dengan API berita
- [ ] Database lokal untuk menyimpan data biodata
- [ ] Import kontak dari sistem
- [ ] History perhitungan kalkulator
- [ ] Dark mode
- [ ] Localization (multi-bahasa)

## 👨‍💻 Developer

Dikembangkan oleh **Arvin Kurniawan** untuk memenuhi tugas UTS Pemrograman Mobile.

## 📄 Lisensi

Aplikasi ini dikembangkan untuk keperluan akademik di Institut Teknologi Nasional Bandung.

---

**Institut Teknologi Nasional Bandung**  
Jl. Khp Hasan Mustopa No.23, Bandung - 40124  
© 2025