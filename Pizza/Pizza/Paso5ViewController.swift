//
//  Paso5ViewController.swift
//  Pizza
//
//  Created by Os on 20/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class Paso5ViewController: UIViewController {
  
  @IBOutlet weak var lblTamanio: UILabel!
  @IBOutlet weak var lblMasa: UILabel!
  @IBOutlet weak var lblQueso: UILabel!
  @IBOutlet weak var lblIngredientes: UILabel!
  @IBOutlet weak var btnTerminar: UIButton!
  var pizzaDatos = ["tamanio":"", "masa":"", "queso":"", "ingredientes":""]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      lblTamanio.text = "Tamaño: " + pizzaDatos["tamanio"]!
      lblMasa.text = "Masa: " + pizzaDatos["masa"]!
      lblQueso.text = "Queso: " + pizzaDatos["queso"]!
      lblIngredientes.text = "Ingredientes: " + pizzaDatos["ingredientes"]!
    }

  @IBAction func terminarPizza(_ sender: Any) {
    let alert = UIAlertController(title: "Pizza - Mex", message: "Gracias tu Pizza ya se esta cocinando!", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Aceptar", style: .default) { action in
      // perhaps use action.title here
    })
    self.present(alert, animated: true)
  }

}
