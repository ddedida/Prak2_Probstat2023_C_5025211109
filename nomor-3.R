# Nama  : Dewangga Dika Darmawan
# NRP   : 5025211109
# Kelas : Probabilitas dan Statistika (C)

# Nomor 3

n_bandung <- 20
n_bali <- 27
mean_bandung <- 3.64
mean_bali <- 2.79
sd_bandung <- 1.67
sd_bali <- 1.5

# Poin A
# Jawaban terlampir di README

# Poin B
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

# Poin C
library(mosaic)
plotDist(dist = 't', df = 2, col = "blue")

# Poin D
left_crit <- qt(p = 0.025, df = 2, lower.tail = TRUE)
right_crit <- qt(p = 0.025, df = 2, lower.tail = FALSE)
cat("Kritikal kiri: ", left_crit, "\n")
cat("Kritikal kanan: ", right_crit, "\n")

# Poin E
# Jawaban terlampir di README

# Poin F
# Jawaban terlampir di README