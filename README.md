# Prak2_Probstat2023_C_5025211109

## Identitas

    Nama    : Dewangga Dika Darmawan
    NRP     : 5025211109
    Kelas   : Probabilitas dan Statistika (C)

### Nomor 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas.

| Responden | X   | Y   |
| --------- | --- | --- |
| 1         | 78  | 100 |
| 2         | 75  | 95  |
| 3         | 67  | 70  |
| 4         | 77  | 90  |
| 5         | 70  | 90  |
| 6         | 72  | 90  |
| 7         | 78  | 89  |
| 8         | 70  | 100 |
| 9         | 77  | 100 |

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70. Data dari tabel diatas kemudian dimasukkan ke dalam variabel `x` dan `y`.
```r
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)
```

- #### Poin A
    
    Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas!

    #### Penyelesaian:

    Untuk mendapatkan nilai standar deviasi, dapat menggunakan fungsi `sd()` dengan parameter selisih antara setiap data.
    </br>
    ```r
    standar_deviasi <- sd(y - x)
    cat("Standar Deviasi:", standar_deviasi, "\n")
    ```

- #### Poin B

    Carilah nilai t (p-value)!

    #### Penyelesaian:

    Untuk mendapatkan nilai p-value, dapat menggunakan fungsi `t.test()` dengan parameter `x` dan `y`.
    </br>
    ```r
    p_value <- t.test(x, y, paired=TRUE)
    cat("Nilai t:", p_value, "\n")
    ```

- #### Poin C

    Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.

    #### Penyelesaian:

    Diketahui dari poin B, nilai dari `p_value` adalah `0.0001373`. Dikarenakan nilainya lebih kecil dari `𝛼 = 0.05`, maka H0 dapat ditolak. Oleh karena itu, ada pengaruh secara statistika dalam kadar saturasi oksigen sebelum dan sesusdah melakukan aktivitas 𝐴.

#### Output:

![no1](https://github.com/ddedida/Prak2_Probstat2023_C_5025211109/assets/108203648/799192fb-98e1-492e-a83c-3fd3ead5f4ed)



### Nomor 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).

```r
library(BSDA)

mean_populasi <- 25000
n_sample <- 100
mean_sample <- 23500
sd <- 3000

zsum.test(
  mean.x = mean_sample,
  sigma.x = sd,
  n.x = n_sample,
  alternative = "greater",
  mu = mean_populasi,
  conf.level = 0.95
)
```

- #### Poin A

    Apakah anda setuju dengan klaim tersebut? Jelaskan.

    #### Penyelesaian:

    Tidak setuju. Dengan data tersebut, grafik persebaran data dengan distribusi normal akan lebih banyak berada di daerah kurang dari 25.000 km.

- #### Poin B

    Buatlah kesimpulan berdasarkan p-value yang dihasilkan!

    #### Penyelesaian:

    Nilai probabilitas lebih tinggi dibanding `𝛼 = 0.05` maka H0 diterima, sehingga dapat disimpulkan bahwa mobil dikemudikan rata-rata tidak lebih dari 25.000 km per tahun.

#### Output:

![no2](https://github.com/ddedida/Prak2_Probstat2023_C_5025211109/assets/108203648/71886934-227a-4f1d-948b-67f014e7c1f1)



### Nomor 3

### Nomor 4