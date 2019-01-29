//
//  ViewController.swift
//  Bills Splitter
//
//  Created by Jorge Giannotta on 12/12/2018.
//  Copyright © 2018 Jorge Giannotta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalBillField: UITextField!
    
    @IBOutlet weak var tipField: UITextField!
    
    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //per fare sparire la tastiera
    }
    
    @IBAction func splitButton(_ sender: Any) {
        if let bill = Double(totalBillField.text!){
            if let tip = Double(tipField.text!){
                if let people = Double(peopleField.text!){
                     let totalBill = (bill + tip) / people
                    resultLabel.text = ("The Splitted Bill for \(Int(people)) people is: \(String(totalBill))")
                }else{peopleField.text = ""}
            }else{tipField.text = "0"}
        }else{totalBillField.text = ""}
    
    }
    @IBAction func clearButton(_ sender: Any) {
            resultLabel.text = "0"
            tipField.text = ""
            totalBillField.text = ""
            peopleField.text = ""
    }
}

