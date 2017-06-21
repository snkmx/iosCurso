//
//  ViewController.swift
//  Pizza
//
//  Created by Os on 20/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var btnChica: UIButton!
  @IBOutlet weak var btnMediana: UIButton!
  @IBOutlet weak var btnGrande: UIButton!
  @IBOutlet weak var lblPizzaTamanio: UILabel!
  var pizzaDatos = ["tamanio":""]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func seleccionaChica(_ sender: Any) {
    pizzaDatos["tamanio"]="CHICA"
    lblPizzaTamanio.text = pizzaDatos["tamanio"]
    showPaso2()
  }

  @IBAction func seleccionaMediana(_ sender: Any) {
    pizzaDatos["tamanio"]="MEDIANA"
    lblPizzaTamanio.text = pizzaDatos["tamanio"]
    showPaso2()
  }

  @IBAction func seleccionaGrande(_ sender: Any) {
    pizzaDatos["tamanio"]="GRANDE"
    lblPizzaTamanio.text = pizzaDatos["tamanio"]
    showPaso2()
  }
  
  func showPaso2(){
    DispatchQueue.main.async {
      self.performSegue(withIdentifier: "segue_paso2", sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextVC = segue.destination as! Paso2ViewController
    nextVC.pizzaDatos["tamanio"]=pizzaDatos["tamanio"]
  }

}

