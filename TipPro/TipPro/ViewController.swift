//
//  ViewController.swift
//  TipPro
//
//  Created by Tommy Qiu on 7/4/17.
//  Copyright © 2017 Tommy Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var tipAmountTextField: UITextField!
    @IBOutlet weak var totalTextField: UITextField!
    @IBAction func calculateTip(_ sender: Any) {
        if let bill = Double(billAmountTextField.text!){
            var tipPercentage : Double = 0.0;
            switch(tipSelector.selectedSegmentIndex){
                case 0:
                    tipPercentage = 0.15;
                case 1:
                    tipPercentage = 0.18;
                case 2:
                    tipPercentage = 0.20;
            default:
                break;
                }
            let billAmount = Double(bill);
            let tipAmount = billAmount * tipPercentage;
            let totalAmount = billAmount + tipAmount;
            if (!billAmountTextField.isEditing) {
                billAmountTextField.text = String(format: "%.2f", billAmount)
            }
            tipAmountTextField.text = String(format: "%.2f", tipAmount)
            totalTextField.text = String(format: "%.2f", totalAmount)
        } else {
            print("No inputs");
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

