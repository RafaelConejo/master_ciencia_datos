texto <- "Ciencia de datos"
class(texto)

length(texto)

nchar("Ciencia de Datos")

textos <- c("hola", 'mundo')
length(textos)

class(textos)

print(textos)

# String construction

empty_str <- character(10)
empty_str

paste("Ciencia", "de", "Datos")

paste("Ciencia", "de", "Datos", sep="_") 


# Me prermite crear dos vectores "Ciencia hola cierta"  "Ciencia mundo cierta"
paste("Ciencia", c("hola", "mundo"), "cierta")

#En este caso al no ser del mismo tamaño tiene lugar el reciclaje de R
paste(1:3, 1:5, sep="_") 

#collapse permite establecer como se separan los diferentes strings   "1_1|2_2|3_3|1_4|2_5"
paste(1:3, 1:5, sep="_", collapse="|") 

help(paste)




data <- data.frame(name = c("Susan", "Greg", "Amy", "Laura", "David"), lastname = c("Wilson", "Gray", "Sanders", "Xeon", "Rogers"), gender = c("F", "M", "F", "F", "M"), age = c(23, 46, 32, 90, 53))
data

colnames(data)

#De esta forma puedo ocultar o cambiar el nombre de las columnas 
colnames(data) <- paste("var", 1:dim(data)[2], sep="_")
data

#Puedo establecer que string deseo desde una posicion ini a otra final
# EN R SE EMPIEZA DESDE EL 1
substr("Ciencia de Datos", 1, 7)

#se deben poner ini y fin siempre, esto da error
substr("Ciencia de Datos", 12)

date()

#Dividi un string en trozos en base a algo dado y me crea una lista
strsplit(date(), split=" ")

#de esta forma me crea una lista de dos componentes
strsplit(c(date(), "hola mundo"), split=" ")

#si lo quiero todo junto en un vector puedo hacer un 'unlist'
unlist(strsplit(c(date(), "hola mundo"), split=" "))

#puedo dividir usando split más complejos que un solo caracter
strsplit(c("Esta es una frase", "Esta es otra linda frase"), split="a ")

#de esta forma la primera frase se divide por el primer split " " y lo segundo por el segundo "e"
strsplit(c("Esta es una frase", "Esta es otra frase"), split=c(" ", "e"))



files <- list.files()
files

#Este punto . significa 'cualquier caracter'
strsplit(files, split=".")

#si pongo \\. si que todo el punto como caracter de separacion
strsplit(files, split="\\.")

#de esta forma se crea una matriz 
tipos<-matrix(unlist(strsplit(files, split="\\.")), ncol=2, byrow=TRUE)

#de esta forma puedo ver las diferentes extensiones de mis archivos
factor(tipos[,2])



# EXPRESIONES REGULARES
date()

#con esto indico cualquier número entre el 0 y 9 
#con el + consigo la union de digitos, es decir si es día 28, no divide 2 y 8, sino 28 al completo
strsplit(date(), split="[0-9]+")


# For example, the expression “[ia]” refers to any string that contains either 
# of the letters i or a

#grep permite buscar un string en otro
#en esta caso se devuelve lo elementos donde haya una i o una a
donde <- grep("[ia]", c("Ciencia","de","Datos"))
donde

#de esta forma me devuelve directamente el valor
c("Ciencia","de","Datos")[donde]

# A period (.) represents any single character

#en este caso se busca la e seguida de cualquier caracter
donde_2<-grep("e.", c("Ciencia","de","Datos"))

c("Ciencia","de","Datos")[donde_2]


# Another example using strsplit()

#divide por cualquier cosa
strsplit("a.b.c", ".")

#divide en cada .
strsplit("a.b.c", "\\.")

#
strsplit("a.b.c", "[.]")



data

#estoy pidiendo la primera letra en minusculas de columna 1 y se una con la inicial de la segunda col y en minuscula
ncolumn <- paste(tolower(substr(data$var_1, 1, 1)), tolower(substr(data$var_2, 1, 1)), sep = "")
ncolumn

#Uno el nombre col 1 y col2
paste(colnames(data)[1:2], collapse="_and_")

#Junto lo anterior y se eliminan las dos columnas anteriores y se añade la nueva col creada
data$var_1 <- ncolumn
colnames(data)[1] <- paste(colnames(data)[1:2], collapse="_and_")
data <- data[,-2]
data





# Write code here

# Write code here

# Write code here

# Write code here
#busco lo que es esto y lo que no es otro

# Write code here
#trabajo con sp y collapse








#install.packages(tidyverse)
#install.packages(stringr)

library(tidyverse)
library(stringr)
print(texto)

data <- data.frame(name = c("Susan", "Greg", "Amy", "Laura", "David"), lastname = c("Wilson", "Gray", "Sanders", "Xeon", "Rogers"), gender = c("F", "M", "F", "F", "M"), age = c(23, 46, 32, 90, 53))
data
print(data)

str_length(texto)

print(data$name)

#me devuelve la longitud de cada valor
data$name %>% str_length()

#en lugar de paste se llama str_c
data$name %>% str_c(collapse = ", ")

str_c(data$name, data$lastname, sep = " - ")

#para tomar subcadenas con str_sub, equivale substr
data$name %>% str_sub(2, 3)

#devulve si tiene alguna de las vocales
str_detect(data[1,], "[aeiou]")

data$name %>% str_detect("[aeiou]")

#con str_subset muestra los componentes que cumplan la condición
data$name %>% str_subset("[aeiou]")
data$name %>% str_subset("[aio]")


#muestra justo donde se engancha    VAYA COSA GUAPA
data$name %>% str_view("[aeiou]", match = TRUE)

#muestra todo lo que engancha
data$name %>% str_view_all("[aeiou]", match = TRUE)

#cuenta el número de patrones
data$name %>% str_count("[aeiou]")

#esta funcion te extrae los enganches
data$name %>% str_extract("[aeiou]")

data$name %>% str_extract_all("[aeiou]")




print(data$name)

#los parentesis es para que recuerde un valor antes(.) y dos valores despues (..)
data$name %>% str_match("(.)[aeiou](..)")

#reemplaza
data$name %>% str_replace("[aeiou]", "*")

data$name %>% str_replace_all("[aeiou]", "*")

data$name %>% str_split("[aeiou]")





#install.packages("ISLR")

library("ISLR")
College

college.names <- rownames(College)
college.names

college.names %>% str_detect('Texas')

#me suma los casos de True
college.names %>% str_detect('Texas') %>% sum()

#para verlas
college.names %>% str_view("Texas", match = TRUE)

#de esta forma tengo la lista completa
college.names %>% str_subset("Texas")

#vector con la posicion donde aparece la palabra University
college.names %>% str_which("University")

college.names[1:3]

#cuantos son uni y cuantos coles
college.names %>% str_detect("University") %>% sum()
college.names %>% str_detect("College") %>% sum()

#Al sumarlos no son el mismo faltan 17
345+406
length(college.names)

universities <- college.names %>% str_detect("University")
colleges <- college.names %>% str_detect("College")
other <- college.names[!(universities | colleges)]

print(other)

777-751

#casos en los que son las dos 
both <- college.names[(universities & colleges)]
both

#casos en los que viene escrito Univ. y Coll.
college.names %>% str_detect("Univ\\.") %>% sum()
college.names %>% str_detect("Coll\\.") %>% sum()

#Casos en los que tengan un . o una e despues, Univ. y Unive
college.names %>% str_detect("Univ[.e]") %>% sum()
college.names %>% str_detect("Coll[.e]") %>% sum()

351+409
# Write code here

# Write code here

# Write code here

# Write code here

# Write code here


