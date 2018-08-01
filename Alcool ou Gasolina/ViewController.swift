//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Adalberto dos Santos on 31/07/2018.
//  Copyright © 2018 Adalberto dos Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gasolinaTf: UITextField!
    @IBOutlet weak var alcoolTf: UITextField!
    @IBOutlet weak var resultdoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calcular(_ sender: UIButton) {
        
        if let precoGasolina = gasolinaTf.text, let precoAlcool = alcoolTf.text {
            
            if let precoGasolinaDouble = Double(precoGasolina), let precoAlcoolDouble = Double(precoAlcool) {
                let razao = precoAlcoolDouble / precoGasolinaDouble
                
                if razao >= 0.7 {
                    resultdoLbl.textColor = UIColor.white
                    resultdoLbl.text = "Abasteça GASOLINA!!!"
                    
                } else {
                    resultdoLbl.textColor = UIColor.yellow
                    resultdoLbl.text = "Abasteça ÁLCOOL!!!"
                }
            }
        }
        
        view.endEditing(true) // esconder teclado ao pressionar o botao
    }
}

