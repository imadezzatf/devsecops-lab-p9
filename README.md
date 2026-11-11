# DevSecOps Lab: Container Integration dengan Docker dan Container Security Scan dengan Trivy

Repository ini berisi hasil Praktikum Pertemuan 9 mata kuliah DevSecOps: membangun container yang aman dengan Docker, memindai kerentanannya dengan Trivy, dan menjalankan pemindaian otomatis lewat GitHub Actions.

## Informasi

| | |
|---|---|
| Mata kuliah | DevSecOps |
| Pertemuan | 9: Container Security dengan Docker dan Trivy |
| Program studi | S1 Teknik Informatika, STT Nurul Fikri |
| Dosen | April Rustianto, S.Komp., M.T., CCIE |
| Kelompok | 2 |


## Anggota Kelompok

| No | Nama | NIM | Peran |
|---|---|---|---|
| 1 | Dhiauddin Arfa | 0110225146 | Tugas 2 |
| 2 | Imad Ezzat Fanany | 0110225137 | Tugas 3 |
| 3 | Muhammad Farras Mufid | 0110225018 | Penyusunan Laporan |
| 4 | Muhammad Hafiz Hibatullah | 0110225157 | Tugas 5 |
| 5 | Muhammad Ulwan Luthfi Jawad | 0110225097 | Tugas 4 |
| 6 | Zufar Muzaffar Aflah Nugroho | 0110225029 | Tugas 1 |

## Isi Repository

```
.
├── .github/workflows/
│   ├── security-scan.yml        # Build image dan pindai dengan Trivy
│   └── dependency-scan.yml      # Pindai dependency (filesystem), harian 
├── app.js
├── package.json
├── package-lock.json
├── Dockerfile
├── .dockerignore
├── .gitignore
└── README.md
```

## Prasyarat

- Docker (Engine atau Desktop)
- Trivy
- Node.js dan npm