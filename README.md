
# POKEDEX - ABYASA 9E

POKEDEX UJIKOM FLUTTER - ABYASA BAZLA WISMAYA 9E

Sebuah aplikasi bernama Pokedex yang dapat membantu User mengenal berbagai jenis Pokémon.

Bisa diakses di https://abyasabazla.github.io/ujikompokemonabyasa/


## Evaluasi Produk
**Kelebihan:**
1. UX Premium: navigasi mudah dan langsung on point, fitur pencarian bekerja dengan baik untuk memudahkan user mencari pokemon yang dicari.

2. Informasi Terpusat: user tidak perlu lagi mencari satu satu dari data/file yang terpencar, semua informasi penting seperti tipe, role, stat dasar, dan evolusi, tertata rapi di dalam satu layar detail yang mudah dibaca oleh pengguna.

3. Desain yang Atraktif: warna kartu menyesuaikan dengan elemen tipe Pokemon tersebut, sehingga secara psikologis user akan langsung paham tanpa perlu membaca penuh.

**Kekurangan:**
1. Data yang Tidak Efektif: saat ini data masih di hardcode di dalam sistem (pokemon_data.dart) dan gambarnya juga masih ada di local asset, jika kedepannya ingin menambah contoh 1000+ pokemon, ukuran aplikasi akan membengkak. Solusinya adalah mengambil data dari internet (API eksternal seperti PokeAPI).

2. Fitur Filter: saat ini belum ada fitur "Filter" untuk mengurutkan pokemon spesifik berdasarkan tipenya saja (misal: hanya tampilkan tipe 
"water")

## Refleksi Developer:
Dari proses pengerjaan ujian ini, saya belajar banyak tentang proses problem solving dalam membangun sebuah aplikasi. Saya menyadari bahwa kode programming bukanlah hal pertama yang harus dipikirkan, melainkan Analisis Kebutuhan User lah yang utama. Setelah saya memetakan masalah *User* Silph Co. yang kesulitan membaca data yang berantakan, saya jadi tahu elemen UI apa saja yang wajib dibuat. 

Secara teknis, saya juga mengasah kemampuan *layouting* di Flutter, menyambungkan model data *list*, dan logika perpindahan halaman agar *flow* aplikasinya semulus mungkin dan sesuai dengan ekspektasi desain awal.

## Screenshots
<p align="center">
  <img width="30%" alt="Screen Shot 2026-05-04 at 13 40 23" src="https://github.com/user-attachments/assets/c66ef499-d3de-466a-9ffd-1d5e3e54aa59" />
  <img width="30%" alt="Screen Shot 2026-05-04 at 13 40 40" src="https://github.com/user-attachments/assets/bf17ec31-3b53-4f1b-9976-7123dc6b9241" />
  <img width="30%" alt="Screen Shot 2026-05-04 at 13 40 49" src="https://github.com/user-attachments/assets/d7c03670-108a-4753-b7da-f9db3501a262" />
</p>
