# Nama  : Dewangga Dika Darmawan
# NRP   : 5025211109
# Kelas : Probabilitas dan Statistika (C)

# Nomor 1
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

# Poin A
standar_deviasi <- sd(y - x)
cat("Standar Deviasi:", standar_deviasi, "\n")

# Poin B
t.test(x, y, paired=TRUE)

# Poin C
# Jawaban terlampir di README