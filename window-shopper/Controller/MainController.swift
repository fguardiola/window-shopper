//
//  ViewController.swift
//  window-shopper
//
//  Created by 67621177 on 08/11/2018.
//  Copyright © 2018 67621177. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        //create a button coding
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.9142765411)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        // add an action function to button
        calcButton.addTarget(self, action: #selector(MainController.calculate), for: .touchUpInside)
        
        //to make button appear just over te keyboard trick
        wageTxt.inputAccessoryView = calcButton
        wageTxt.inputAccessoryView = calcButton
    }

    @objc func calculate(){
        print("Button Clicked!!")
    }
}

