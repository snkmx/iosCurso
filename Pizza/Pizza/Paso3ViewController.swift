//
//  Paso3ViewController
//  Pizza
//
//  Created by Os on 20/06/17.
//  Copyright © 2017 Os. All rights reserved.
//

import UIKit

class Paso3ViewController: UIViewController {
  
  @IBOutlet weak var btnChedar: UIButton!
  @IBOutlet weak var btnParmesano: UIButton!
  @IBOutlet weak var btnSinQueso: UIButton!
  @IBOutlet weak var lblSelTpQueso: UILabel!
  var pizzaDatos = ["tamanio":"", "masa":"", "queso":""]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func seleccionaChedar(_ sender: Any) {
    pizzaDatos["queso"] = "CHEDAR"
    lblSelTpQueso.text = pizzaDatos["queso"]
    showPaso4()
  }
  
  @IBAction func seleccionaParmesano(_ sender: Any) {
    pizzaDatos["queso"] = "PARMESANO"
    lblSelTpQueso.text = pizzaDatos["queso"]
    showPaso4()
  }
  
  @IBAction func seleccionaSinQueso(_ sender: Any) {
    pizzaDatos["queso"] = "SIN QUESO"
    lblSelTpQueso.text = pizzaDatos["queso"]
    showPaso4()
  }
  
  func showPaso4(){
    DispatchQueue.main.async {
      self.performSegue(withIdentifier: "segue_paso4", sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextVC = segue.destination as! Paso4ViewController
    nextVC.pizzaDatos["tamanio"]=pizzaDatos["tamanio"]
    nextVC.pizzaDatos["masa"]=pizzaDatos["masa"]
    nextVC.pizzaDatos["queso"]=pizzaDatos["queso"]
  }
  
}
