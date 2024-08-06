#seleccion de la base de datos
p05 = read.table(file.choose(),header = T,sep = ";")

#nueva tabla subconjunto vocal a de mujeres habla español
spa_mujer_a = subset(p05, l1 == "español" & sexo == "mujer" & vocal == "a")

#calculo de error estandar
se = function(variable){
  st.error = st(na.omit(variable))/sqrt(length(na.omit(variable)))
  return(st.error)
}

with(spa_mujer_a, se(f1))
with(spa_mujer_a, se(f2))

library(ggplot2)

with(spa_mujer_a, mean_se(f1.mult = 2))
with(spa_mujer_a, mean_se(f2.mult = 2))

#slk a f1 = 978
#slk a f2 = 1759
