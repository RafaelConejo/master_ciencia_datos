#1
def contar_letras(palabra, letra):
    cont = 0
    for i in palabra:
        if(i == letra):
            cont = cont +1
    return cont


def eliminar_letras(palabra, letra):
    new_palabra = ""
    for i in palabra:
        if(i != letra):
            new_palabra = new_palabra + i
    return new_palabra


def buscar(palabra, sub):
    position = -1
    for i in range(len(palabra)):
        #encuentro la primera coincidencia
        if palabra[i] == sub[0]:
            position = i

            #si sub tiene un tamaño mayor que 1, sigo recorriendo
            if len(sub) > 1:
                for j in range(1, len(sub)):
                    if palabra[i+j] != sub[j]:
                        position = -1
                    elif i+j >= len(palabra):
                        position = -1
            #este else me permite devolver la primera aparicion si len(sub) == 1
            else:
                return position
                    
    return position

print(buscar("casa", "sa"))
print(buscar("casa", "a"))
print(buscar("casa", "se"))