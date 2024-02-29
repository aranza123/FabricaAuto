//
//  ViewController.swift
//  fabricaAuto
//
//  Created by Aranza Manriquez Alonso on 25/04/23.
//

import UIKit

class ViewController: UIViewController {

    var tipoAuto:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func botonSimple(_ sender: Any) {
        tipoAuto = 0
        performSegue(withIdentifier: "segueInfoAuto", sender: self)
            
    }
    
    @IBAction func botonFiat(_ sender: Any) {
        tipoAuto = 1
        performSegue(withIdentifier: "segueInfoAuto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewControllerInfoAuto {
            destino.tipoAuto = self.tipoAuto
        }
    }
}

