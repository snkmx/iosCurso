//
//  Datos.swift
//  Hamburguesas
//
//  Created by Os on 08/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises : [String]
    
    init() {
       self.paises = ["Argentina", "Bolivia", "Brasil", "Chile", "Colombia", "Costa Rica", "Cuba", "Ecuador", "El Salvador", "Guayana Francesa", "Granada", "Guatemala", "Guayana", "Haití", "Honduras", "Jamaica", "México", "Nicaragua", "Paraguay", "Panamá"]
    }

    func obtentPais() -> String {
        let index = Int(arc4random()) % paises.count
        return paises[index]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas : [String]
    
    init() {
        self.hamburguesas = ["Burger Joint","La Xarcutería","Butcher & Sons","Cafe Clock","Umami Burger","Kiosco","Flippin' Burgers", "New York Burger","Barracuda Diner","La Burguesía","Burger 54","Red Burger Society","Slater's 50/50","Ferburger","Avila Burger","La Vaca Picada","Meat Liquor","Minetta Tavern","Heart Attack Grill","Mexicana"]
    }

    func obtentHamburguesa() -> String {
        let index = Int(arc4random()) % hamburguesas.count
        return hamburguesas[index]
    }
}

struct ColeccionDeColores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}
