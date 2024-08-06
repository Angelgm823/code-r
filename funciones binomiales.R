#funcion binomial
# X - B(n, p)

p = exito
#1-p = fracaso

dbinomial(x, size, prob) #funcion masa binomial
pbinomial(q, size, prob) #funcion de distribucion binomial
qbinomial(p, size, prob) #cuartiles
rbinomial(n, size, prob) #numeros aleatorios


#n = 10
#p = .7

#cual es la probabilidad de que gane 1 vez
dbinom(1, 10, .7)

# de que gane dos veces seguidas
dbinom(5, 10, .7)

#de que gane entre 1 y 3 veces incluidos los dos
p_1 = dbinom(1, 10, .7)
p_2 = dbinom(2, 10, .7)
p_3 = dbinom(3, 10, .7)

p_1 + p_2 + p_3

x = 3 

pbinom(3, 10, .7)

#Cual es la probabilidad de que barca gane al menos 4 veces
#p(x) < 6

pbinom(5, 10, .7)


#ejemplo 2

# Se a comprobado que la probabilidad de 
#que se funda la lampara de un televisor en un mes es de .02
#si el televisor tiene 5 años

#60 meses = 5 años

dbinom(0, 60, .02)

#exactamente haya 5 roturas
#P[X=5]

dbinom(5, 60, .02)

#al menos haya 5 roturas
#P[X >= 5]
#P[X >= 5] = 1 - P[X <= 4]

1 - pbinom(4, 60, .02)

#haya entre 5 y 25 roturas (ambas inclusive)
#P[5 <= X <= 25]
#P[5 <= X <= 25] = P[X <= 25] - P[X <= 5] = F(25) - F(4)


pbinom(c(4,25), 60, .02)

1.0000000 - 0.99297547
