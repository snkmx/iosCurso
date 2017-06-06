//: Playground - noun: a place where people can play
/*
 * Por favor considera que este playground esta escrito en Xcode Version 8.3.2 (8E2002)
 * Esto es por que el swift 2.0 ya no esta disponible para su descarga
 * Gracias y Saludos
 */

import UIKit

enum Velocidades :Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {

    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        var tmp : (actual: Int, velocidadEnCadena: String) = (velocidad.rawValue, "")
        
        switch velocidad.hashValue {
        case 1:
            tmp.velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case 2:
            tmp.velocidadEnCadena = "Velocidad Media"
            velocidad = .VelocidadAlta
        case 3:
            tmp.velocidadEnCadena = "Velocidad Alta"
            velocidad = .VelocidadMedia
        default:
            tmp.velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        }
        
        return tmp
    }
}

let miAuto = Auto()
for i in 0...19 {
    let tmp = miAuto.cambioDeVelocidad()
    print("\(tmp.actual), \(tmp.velocidadEnCadena)")
}

