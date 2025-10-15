# Proyek Belajar Widget Flutter

Proyek ini adalah perjalanan langkah demi langkah dalam mempelajari widget-widget fundamental di Flutter. Proyek ini dimulai sebagai aplikasi statis dan secara bertahap dikembangkan menjadi aplikasi interaktif.

## Evolusi Proyek

### Tahap 1: Kartu Nama Digital (Aplikasi Statis)

Aplikasi pertama adalah kartu nama digital sederhana. Fokus utamanya adalah pada layout dan menampilkan informasi statis.

### Tahap 2: Aplikasi Dadu (Aplikasi Interaktif)

Kartu nama kemudian diganti dengan aplikasi pengocok dadu. Aplikasi ini memperkenalkan konsep state management sederhana, interaksi pengguna, dan pembaruan UI secara dinamis.

### Tahap 3: Penambahan Fitur

- **SnackBar**: Menampilkan notifikasi sementara di bagian bawah layar yang menunjukkan total nilai dari kedua dadu setiap kali dikocok.
- **AlertDialog**: Menampilkan dialog pop-up "JACKPOT!" ketika pengguna berhasil mendapatkan angka 6 kembar.

---

## Widget yang Dipelajari

- **Struktur & Layout:**
  - `Scaffold`: Kerangka dasar halaman.
  - `AppBar`: Bilah judul aplikasi.
  - `Column`: Menyusun widget secara vertikal.
  - `Row`: Menyusun widget secara horizontal.
  - `Expanded`: Mengisi ruang yang tersedia di dalam `Row` atau `Column`.
  - `SafeArea`: Menghindari elemen UI dari halangan layar (seperti notch).
  - `SizedBox`: Membuat kotak dengan ukuran tertentu, biasanya untuk memberi jarak.

- **Tampilan Informasi:**
  - `Text`: Menampilkan teks.
  - `TextStyle`: Memberi gaya pada teks (font, warna, ukuran).
  - `Icon`: Menampilkan ikon dari library Material Design.
  - `Image.asset`: Menampilkan gambar dari folder lokal proyek.
  - `CircleAvatar`: Menampilkan avatar/gambar dalam bentuk lingkaran.

- **Kontainer & Grup:**
  - `Card`: Kartu dengan sedikit bayangan.
  - `ListTile`: Baris standar yang biasanya berisi ikon dan teks.

- **Interaktif & Notifikasi:**
  - `TextButton`: Tombol sederhana dengan teks atau widget lain di dalamnya.
  - `SnackBar`: Notifikasi sementara di bagian bawah layar.
  - `AlertDialog`: Kotak dialog pop-up untuk pesan penting.

---

## Konsep yang Dipelajari

- **`StatelessWidget` vs `StatefulWidget`**: Perbedaan antara widget statis dan dinamis.
- **`setState()`**: Metode krusial untuk memberi tahu Flutter agar membangun ulang UI saat data berubah.
- **Aset & `pubspec.yaml`**: Cara menambahkan gambar dan font kustom ke dalam proyek.
- **Event Handling**: Menggunakan `onPressed` untuk merespons input pengguna.
- **Refactoring**: Mengubah struktur kode (misalnya memindahkan `Scaffold`) untuk menambahkan fitur baru tanpa merusak fungsionalitas yang ada.
- **`ScaffoldMessenger`**: Cara modern untuk menampilkan `SnackBar`.
- **`Navigator`**: Mengelola tumpukan layar/dialog, khususnya menggunakan `Navigator.of(context).pop()` untuk menutup dialog.
- **Widget Testing**: Menulis dan menjalankan tes otomatis untuk memverifikasi fungsionalitas UI menggunakan `flutter_test`.

## Cara Menjalankan Aplikasi

1. Pastikan Anda sudah menginstal Flutter SDK.
2. Clone atau unduh proyek ini.
3. Buka terminal di direktori proyek dan jalankan:
   ```sh
   flutter pub get
   flutter run
   ```

## Cara Menjalankan Tes

Buka terminal di direktori proyek dan jalankan:
```sh
flutter test
```
