setwd ("C:\Users\gomez\Documents\r-code")
set.seed(2018)
x1 = rnorm(100, 10,2)
y1 = rnorm(100, 5.5)*x
x2 = rnorm(100, 10,1)
y2 = rnorm(100, 3.5)*x1



#histogramas
hist(x1)
hist(x1, main = "Histograma de prueba x", ylab = "Frecuencia")
hist(rnorm(100))
hist(rpois(100, 2.5))
hist(rbinom(100, 20, .25))
hist(rgamma(100, 2))
hist(rbeta(100, 3, 1))
hist(rweibull(100, 1))
? Distributions


#stem and Leaf
stem(x1)
summary(x1)

stem(x2)
summary(x2)


#boxplot
boxplot(x1, main = "Boxplot de x1", ylab = "x1")
boxplot(x1, x2)
boxplot(x1, x2, names = c("x1", "x2"),
        ylab = "Puntos", xlab = "Grupos",
        main = "figura10 graficas de caja para variable x")
? boxplot


#barplot

z = rpois(10, 3)
barplot(z)

? barplot
data()



VADeaths
mp <- barplot(VADeaths) # default
tot <- colMeans(VADeaths)
text(mp, tot + 3, format(tot), xpd = TRUE, col = "blue")
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        legend.text = rownames(VADeaths), ylim = c(0, 100))
title(main = "Death Rates in Virginia", font.main = 4)
