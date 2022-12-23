#1
L = [[0,0]] * 5
L[2][0] = 7
print(L) 


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

def num_vocales(palabra):
    cont = 0
    vocales = {'a', 'e', 'i', 'o', 'u'}
    for i in palabra:
        if i in vocales:
            cont = cont+1
    
    return cont


def vocales(palabra):
    my_vocal = []
    vocales = {'a', 'e', 'i', 'o', 'u'}
    for i in palabra:
        if i in vocales:
            my_vocal.append(i)
    
    return my_vocal


def es_inversa(palabra1, palabra2):
    inversa = True
    ini = 0
    fin = len(palabra2) -1

    if len(palabra1) == len(palabra2):
        while(inversa and ini < len(palabra1)):
            if palabra1[ini] != palabra2[fin]:
                inversa = False
            ini = ini +1
            fin = fin -1
    else:
        inversa = False
    return inversa


def comunes(palabra1, palabra2):
    comun = ''
    for i in palabra1:
        if i in palabra2 and i not in comun:
            comun = comun + i
    
    return comun
    

def eco_palabra(palabra):
    new_eco = ''
    for i in range(len(palabra)):
        new_eco = new_eco + palabra
    
    return new_eco

def orden_alfabetico(palabra):
    aux = ''.join(sorted(palabra))
    if palabra == aux:
        return True
    else:
        return False

def anagrama(palabra1, palabra2):
    palabra1 = ''.join(sorted(palabra1))
    palabra2 = ''.join(sorted(palabra2))
    if palabra1 == palabra2:
        return True
    else:
        return False
    

print(anagrama("marta", "trama"))
print(anagrama("marta", "tramas"))
