//
//  AutumovilElectrico.swift
//  fabricaAuto
//
//  Created by Aranza Manriquez Alonso on 25/04/23.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
