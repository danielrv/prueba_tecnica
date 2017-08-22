
//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let puntoUno = CGPoint(x:3,y:0)
let puntoDos = CGPoint(x:-7,y:4)

func calcularDistancia(p1:CGPoint, p2:CGPoint) -> Float {
    
    return sqrt(pow((Float(p2.x-p1.x)), 2) + pow((Float(p2.y-p1.y)), 2))
}

calcularDistancia(p1: puntoUno, p2: puntoDos)



let misNumeros:Array<Int> = [8,6,4,5,3,2,13]


/*
 En Funciones
 Ya que los numeros del arreglo son declarados explicitamente como Enteros Int, no usamos prototipos ni protocolos <Comparable>
 */

func getMin(lista:Array<Int>) -> Int {

    var minimo = Int.max //numero máximo para Enteros del sistema 64
    for numero in lista {
        minimo = numero < minimo ? numero : minimo
    }
    return minimo

}

func getMax(lista:Array<Int>) -> Int {
    
    var maximo = Int.min // numero minimo para Enteros del sistema 64
    for numero in lista {
        maximo = numero > maximo ? numero : maximo
    }
    return maximo
    
}
/*
 En Closures
 */
var minimoEnLista:(Array<Int>) -> (Int) = { lista in
    var minimo = Int.max
    for numero in lista {
        
        if numero < minimo {
            minimo = numero
        }
    }
    return minimo
}



var maximoEnLista:(Array<Int>) -> (Int) = { lista in
    var maximo = Int.min
    for numero in lista {
        if numero > maximo {
            maximo = numero
        }
    }
    return maximo
}

var minimo = minimoEnLista(misNumeros)
var maximo = maximoEnLista(misNumeros)
getMin(lista: misNumeros)
getMax(lista: misNumeros)

