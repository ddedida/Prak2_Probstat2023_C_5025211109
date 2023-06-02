# Nama  : Dewangga Dika Darmawan
# NRP   : 5025211109
# Kelas : Probabilitas dan Statistika (C)

# Nomor 4

# Poin A

data <- read.csv("D:\\1. Kuliah\\Semester 4\\1. Matkul\\Probabilitas dan Statistika\\Praktikum\\Prak2_Probstat2023_C_5025211109\\GTL.csv")
qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)

# Poin B

data$Glass <- as.factor(data$Glass)
data$Temp_Factor <- as.factor(data$Temp)

result <- aov(Light ~ Glass*Temp_Factor, data = data)
summary(result)

# Poin C

summary <- group_by(data, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
summary