//
//  Automovil.swift
//  fabricaAuto
//
//  Created by Aranza Manriquez Alonso on 25/04/23.
//

import Foundation

class Automovil {
    var color = "neutro"
    let numeroLlantas = 4
    var precio = 5000
    
    func encender() -> Bool {
       return true
    }
    
    func apagar() -> Bool {
        return false
    }
    func acelerar() -> String {
        return "Aceleración exitosa"
    }
}
