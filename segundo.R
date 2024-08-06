#vector
manzana = c('rojo', 'azul')
print(manzana)

#lista
list1 = list(c(2,5,6),21,3,sin)
print(list1)

#matriz
m = matrix(c('a','a1','a2'), nrow = 4, ncol = 3, byrow = FALSE)
print(m)

#arreglo
a = array(c('green', 'blue', 'red', 'orange'),dim = c(3,3,2))
print(a)

#factores
apple_colors = c('green', 'green', 'yellow', 'red', 'red', 'green')
factor_apple = factor(apple_colors)
print(factor_apple)
print(apple_colors)

#Data-frame
BMI <- data.frame(
  genero = c("male", "male", "female"),
  altura = c(125,171.5,165),
  peso = c(81,93,78),
  edad = c(42,38,26)
)
print(BMI)