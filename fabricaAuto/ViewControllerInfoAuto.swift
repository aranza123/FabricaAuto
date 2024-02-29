//
//  ViewControllerInfoAuto.swift
//  fabricaAuto
//
//  Created by Aranza Manriquez Alonso on 25/04/23.
//

import UIKit

class ViewControllerInfoAuto: UIViewController {

    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    

    var tipoAuto:Int?
    var autoNormal = Automovil()
    var autoElectrico = AutomovilElectrico()
    
    var estadoAuto = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAuto {
            case 0:
                autoNormal = Automovil()
                imageView.image = UIImage(named: "auto Normal")
                labelInfo.text = "Se creo el auto sencillo"
                autoNormal.color = "Rojo"
                
            case 1:
                autoElectrico = AutomovilElectrico()
                imageView.image = UIImage(named: "auto Electrico")
                labelInfo.text = "Se creo el auto Electrico"
                autoElectrico.color = "Azul"
                autoElectrico.precio = 8000
                
            default:
                print("Error")
        }
    }
    
    @IBAction func mostrarInfo(_ sender: Any) {
        
        switch tipoAuto {
            case 0:
                labelInfo.numberOfLines = 0
                labelInfo.text = """
                El color del auto es \(autoNormal.color)
                El precio es: \(String(autoNormal.precio))
                El número de llantas es: \(String(autoNormal.numeroLlantas))
                """
            
            case 1:
                labelInfo.numberOfLines = 0
                labelInfo.text = """
                El color del auto es \(autoElectrico.color)
                El precio es: \(String(autoElectrico.precio))
                El número de llantas es: \(String(autoElectrico.numeroLlantas))
                El porcentaje de la bateria es: \(String(autoElectrico.porcentajeBateria))
                """
            default:
                labelInfo.text = "Error"
        }
    }
    
    @IBAction func encender(_ sender: Any) {
        
        switch tipoAuto{
           
           case 0:
             if(!estadoAuto){
             estadoAuto = autoNormal.encender()
               labelInfo.text = "El automovil encendio correctamente"
             }else{
                 labelInfo.text = "El automovil ya esta encendido"
             }
           case 1:
             if(!estadoAuto){
             estadoAuto = autoElectrico.encender()
              labelInfo.text = "El automovil encendio correctamente"
              autoElectrico.porcentajeBateria = 75
             }else{
                 labelInfo.text = "El automovil ya esta encendido"
             }
           default:
               print("Error")

           }
    }
    
    @IBAction func apagar(_ sender: Any) {
    
        switch tipoAuto {
            case 0:
                if (estadoAuto) {
                    estadoAuto = autoNormal.apagar()
                    labelInfo.text = "El auto se apago correctamente"
                } else {
                    labelInfo.text = "El auto ya esta apagado"
                }
            case 1:
                if (estadoAuto) {
                    estadoAuto = autoElectrico.apagar()
                    labelInfo.text = "El auto se apago correctamente"
                } else {
                    labelInfo.text = "El auto ya esta apagado"
                }
            default:
                labelInfo.text = "Error"
        }
    }
    
    @IBAction func acelerar(_ sender: Any) {
        switch tipoAuto {
            case 0:
                if (estadoAuto) {
                    labelInfo.text = autoNormal.acelerar()
                } else {
                    labelInfo.text = "El auto tiene que encenderse para poder acelerar"
                }
            case 1:
                if (estadoAuto) {
                    labelInfo.text = autoElectrico.acelerar()
                } else {
                    labelInfo.text = "El auto tiene que encenderse para poder acelerar"
                }
            default:
                labelInfo.text = "Error"
        }
    }
}
