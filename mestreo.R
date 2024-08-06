library(dplyr)
library(sampling)




set.seed(2)
#base
muestra_aleatoria = slice_sample(.data = base, n = 8, replace = F)
muestra_aleatoria


# muestreo aleatorio estratificado no proporcional
set.seed(10)
muestra_no_pro = strata (data = base, stratanames = c("nivel_estudios"), size = c(3,5,4), method = "srswor")
muestra_no_pro
data.frame(table(base$nivel_estudios))


#muestreo aleatorio estratificado proporcional

nrow(base)
data.frame(table(base$nivel_estudios))



n_superior = sum(with(base, nivel_estudios == "Superior"))/nrow(base)
n_basico = sum(with(base, nivel_estudios == "Básico"))/nrow(base)
n_mediosuperior = sum(with(base, nivel_estudios == "Medio Superior"))/nrow(base)

muestra_est_pro = strata(data = base, stratanames = c("nivel_estudios"), size = c(round(19*n_superior), round(19*n_basico), round(19*n_mediosuperior)), method = c("srswor"))
muestra_est_pro

data.frame(table(muestra_est_pro$nivel_estudios))


#muestreo  de conglomerado
data.frame(table(base_trabajadores$sucursal))
set.seed(10)
cluster(data = base_trabajadores, clustername =  c("sucursal"), size = 3, method = "srswor", description = T )


