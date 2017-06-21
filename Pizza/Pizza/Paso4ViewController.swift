//
//  Paso4ViewController.swift
//  Pizza
//
//  Created by Os on 20/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class Paso4ViewController: UIViewController {

  @IBOutlet weak var btnConfirmar: UIButton!
  @IBOutlet weak var uiSwitchJamon: UISwitch!
  @IBOutlet weak var uiSwitchPeperoni: UISwitch!
  @IBOutlet weak var uiSwitchPavo: UISwitch!
  @IBOutlet weak var uiSwitchSalchicha: UISwitch!
  @IBOutlet weak var uiSwitchAceituna: UISwitch!
  @IBOutlet weak var uiSwitchPimiento: UISwitch!
  var pizzaDatos = ["tamanio":"", "masa":"", "queso":"", "ingredientes":""]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func confirmaOrden(_ sender: Any) {
    pizzaDatos["ingredientes"] = ingedientesSeleccionados()
    if pizzaDatos["ingredientes"] != "" {
      showPaso5()
    } else {
      let alert = UIAlertController(title: "Pizza - Mex", message: "Selecciona un ingrediente al menos", preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "Cerrar", style: .default) { action in
        // perhaps use action.title here
      })
      self.present(alert, animated: true)
    }
  }
  
  func ingedientesSeleccionados() -> String {
    var tmp : String = ""
    if uiSwitchJamon.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Jámon"
    }
    
    if uiSwitchPeperoni.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Peperoni"
    }
    
    if uiSwitchPavo.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Pavo"
    }
    
    if uiSwitchSalchicha.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Salchica"
    }
    
    if uiSwitchAceituna.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Aceituna"
    }
    
    if uiSwitchPimiento.isOn {
      if tmp != "" {
        tmp = tmp + ", "
      }
      tmp = tmp + "Pimiento"
    }
    
    return tmp
  }
  
  func showPaso5(){
    DispatchQueue.main.async {
      self.performSegue(withIdentifier: "segue_paso5", sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextVC = segue.destination as! Paso5ViewController
    nextVC.pizzaDatos["tamanio"]=pizzaDatos["tamanio"]
    nextVC.pizzaDatos["masa"]=pizzaDatos["masa"]
    nextVC.pizzaDatos["queso"]=pizzaDatos["queso"]
    nextVC.pizzaDatos["ingredientes"]=pizzaDatos["ingredientes"]
  }

}
