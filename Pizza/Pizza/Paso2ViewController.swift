//
//  Paso2ViewController.swift
//  Pizza
//
//  Created by Os on 20/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class Paso2ViewController: UIViewController {
  
  @IBOutlet weak var btnDelgada: UIButton!
  @IBOutlet weak var btnCrujiente: UIButton!
  @IBOutlet weak var btnGruesa: UIButton!
  @IBOutlet weak var lblSelTipoMasa: UILabel!
  var pizzaDatos = ["tamanio":"", "masa":""]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func seleccionaDelgada(_ sender: Any) {
    pizzaDatos["masa"] = "DELGADA"
    lblSelTipoMasa.text = pizzaDatos["masa"]
    showPaso3()
  }
  
  @IBAction func seleccionaCrujiente(_ sender: Any) {
    pizzaDatos["masa"] = "CRUJIENTE"
    lblSelTipoMasa.text = pizzaDatos["masa"]
    showPaso3()
  }
  
  @IBAction func seleccionaGruesa(_ sender: Any) {
    pizzaDatos["masa"] = "GRUESA"
    lblSelTipoMasa.text = pizzaDatos["masa"]
    showPaso3()
  }
  
  func showPaso3(){
    DispatchQueue.main.async {
      self.performSegue(withIdentifier: "segue_paso3", sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextVC = segue.destination as! Paso3ViewController
    nextVC.pizzaDatos["tamanio"]=pizzaDatos["tamanio"]
    nextVC.pizzaDatos["masa"]=pizzaDatos["masa"]
  }

}
