Pain <- c(0,3,2,2,1)

#Asigno una etiqueta a cada posible valor
SevPain <- factor(c(0,3,2,2,1),
              levels=c(0,1,2,3),labels=c("none","mild","medium","severe"))


head(state.region)
table(state.region)


status <- c("Lo", "Hi", "Med", "Med", "Hi")
ordered.status <- factor(status, levels=c("Lo", "Med",
                                           "Hi"),ordered=TRUE)
ordered.status



# Transformo una matriz en un dataframe
m<-matrix(1:12, ncol=4, byrow=TRUE)
m.df<-as.data.frame(m) 
m


#Para no convertir las cadenas en factores activo stringsAsFactors=FALSE
  #se hará cuando no quiera factorizar por ejemplo apellidos

#Se puede acceder al dataframe con $(nombrecol)
S<-as.factor(c("F","M","M","F"))
Patients <- data.frame(age=c(31,32,40,50),sex=S)
str(Patients)

Patients$age






#Listas 
#Se pueden crear con todo tipo de dato
list_data <- list("Red", "Green", c(21,32,11), 51.23, 119.1)
print(list_data)

#se accede a la lista con [[]] o darle nombres y accedo por nombres
names (list_data)<-c("Colors", "Age", "Time")

print(list_data[1])
print(list_data$Colors)

