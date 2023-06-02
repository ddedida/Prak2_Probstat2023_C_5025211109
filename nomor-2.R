# Nama  : Dewangga Dika Darmawan
# NRP   : 5025211109
# Kelas : Probabilitas dan Statistika (C)

# Nomor 2
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