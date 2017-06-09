//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Os on 08/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblTpHamburguesa: UILabel!
    
    //Instanciamos
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = ColeccionDeColores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblPais.text = ""
        lblTpHamburguesa.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func quieroUnaHamburgesa(_ sender: Any) {
        lblPais.text = paises.obtentPais()
        lblTpHamburguesa.text = hamburguesas.obtentHamburguesa()
        
        //Opcional cambio de color
        let color = colores.regresaColorAleatorio()
        view.backgroundColor = color
        view.tintColor = color
    }
}

