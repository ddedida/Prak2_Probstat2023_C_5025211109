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
    t.test(x, y, paired=TRUE)
    ```

- #### Poin C

    Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.

    #### Penyelesaian:

    Diketahui dari poin B, nilai dari `p_value` adalah `0.0001373`. Dikarenakan nilainya lebih kecil dari `𝛼 = 0.05`, maka H0 dapat ditolak. Oleh karena itu, ada pengaruh secara statistika dalam kadar saturasi oksigen sebelum dan sesusdah melakukan aktivitas 𝐴.

#### Output:

![no1](https://cdn.discordapp.com/attachments/702797283795927123/1114013077969580052/no1.png)



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

![no2](https://cdn.discordapp.com/attachments/702797283795927123/1114013078292549692/no2.png)



### Nomor 3

Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

| Nama Kota/Atribut      | Bandung   | Bali      |
| ---------------------- | --------- | --------- |
| Jumlah Saham           | 20        | 27        |
| Sampel Mean            | 3.64      | 2.79      |
| Sampel Standar Deviasi | 1.67      | 1.5       |

```r
n_bandung <- 20
n_bali <- 27
mean_bandung <- 3.64
mean_bali <- 2.79
sd_bandung <- 1.67
sd_bali <- 1.5
```

Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α = 0.05)? Buatlah:

- #### Poin A

    H0 dan H1!

    #### Penyelesaian:

    ```
    H0 : μ1 = μ2
    H1 : μ1 ≠ μ2
    ```

- #### Poin B

    Hitung sampel statistik!

    #### Penyelesaian:

    Untuk mendapatkan sampel statistik, dapat menggunakan fungsi `tsum.test()` dengan parameter mean, s, dan jumlah sample dari kedua kota tersebut.
    </br>
    ```r
    library(BSDA)

    tsum.test(
    mean.x = mean_bandung,
    s.x = sd_bandung,
    n.x = n_bandung,
    mean.y = mean_bali,
    s.y = sd_bali,
    n.y = n_bali,
    alternative = "two.side",
    var.equal = TRUE
    )
    ```

    #### Output:

    ![no3b](https://cdn.discordapp.com/attachments/702797283795927123/1114013343599050812/no3b.png)

- #### Poin C

    Lakukan uji statistik (df = 2)!

    #### Penyelesaian:

    Untuk melakukan uji statistik dapat menggunakan library `mosaic` dan fungsi `plotDist()` dengan parameter distribusi dan df.
    </br>
    ```r
    library(mosaic)
    plotDist(dist = 't', df = 2, col = "blue")
    ```

    #### Output:

    ![no3c](https://cdn.discordapp.com/attachments/702797283795927123/1114013343859081276/no3c.png)

- #### Poin D

    Nilai Kritikal!

    #### Penyelesaian:

    Untuk mendapatkan nilai kritikal, dapat menggunakan fungsi `qt()` dengan parameter p dan pf.
    </br>
    ```r
    left_crit <- qt(p = 0.025, df = 2, lower.tail = TRUE)
    right_crit <- qt(p = 0.025, df = 2, lower.tail = FALSE)
    cat("Kritikal kiri: ", left_crit, "\n")
    cat("Kritikal kanan: ", right_crit, "\n")
    ```

    #### Output:

    ![no3d](https://cdn.discordapp.com/attachments/702797283795927123/1114013344085581915/no3d.png)

- #### Poin E

    Keputusan!

    #### Penyelesaian:

    Nilai t berada pada interval nilai kritikal dengan `p-value` lebih dari `p-value > α`. Sehingga gagal menolak H0.

- #### Poin F

    Kesimpulan!

    #### Penyelesaian:

    Dilihat dari uji statistik, terlihat tidak ditemukan perbedaan rata-rata, maka dari itu tidak terdapat bukti statistik yang cukup untuk mendukung adanya perbedaan yang signifikan antara rata-rata jumlah saham di Bandung dan Bali.



### Nomor 4

Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view

- #### Poin A

    Buatlah plot sederhana untuk visualisasi data!

    #### Penyelesaian:

    Untuk melakukan visualisasi data dapat digunakan fungsi `qplot()`
    </br>
    ```r
    data <- read.csv("D:\\1. Kuliah\\Semester 4\\1. Matkul\\Probabilitas dan Statistika\\Praktikum\\Prak2_Probstat2023_C_5025211109\\GTL.csv")
    qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)
    ```

    #### Output:

    ![no4a](https://cdn.discordapp.com/attachments/702797283795927123/1114013344341442660/no4a.png)

- #### Poin B

    Lakukan uji ANOVA dua arah!

    #### Penyelesaian:

    Untuk melakukan uji ANOVA dua arah, dapat menggunakan fungsi aov().
    </br>
    ```r
    data$Glass <- as.factor(data$Glass)
    data$Temp_Factor <- as.factor(data$Temp)

    result <- aov(Light ~ Glass*Temp_Factor, data = data)
    summary(result)
    ```

    #### Output:

    ![no4b](https://cdn.discordapp.com/attachments/702797283795927123/1114013344622444665/no4b.png)

- #### Poin C

    Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)!

    #### Penyelesaian:

    Menggunakan fungsi `group_by()` kemudian menggunakan fungsi `summarise()`.
    </br>
    ```r
    summary <- group_by(data, Glass, Temp) %>%
        summarise(mean = mean(Light), sd = sd(Light)) %>%
        arrange(desc(mean))
    summary
    ```

    #### Output:

    ![no4c](https://cdn.discordapp.com/attachments/702797283795927123/1114013344899276820/no4c.png)