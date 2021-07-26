//
//  ViewController.swift
//  PreWork
//
//  Created by Oluwaseyi Onasami on 7/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmountLabel: UITextField!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        }

    
    @IBAction func tipCalculator(_ sender: Any) {
        
        //Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get the total Tip
        let tipPercentages = Double(tipSlider.value/100)
        let tip = bill * tipPercentages
        
        // Get total bill
        let total = bill + Double(tip)
        
        //update tipAmount Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        //update Total Amount
        totalLabel.text = String(format:"$%.2f", total)
    }


    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get the total Tip
        let tipPercentages = [0.15, 0.18, 0.25, 0.3]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tipAmount Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        //update Total Amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

