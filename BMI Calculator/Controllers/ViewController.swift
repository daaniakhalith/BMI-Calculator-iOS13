//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weight: UISlider!
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    var CB=CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSloder(_ sender: UISlider) {
        let weight =  String(Int(sender.value))
        weightLabel.text = "\(weight)kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = height.value
        let weight = weight.value
        CB.CalculateBMI(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = CB.getBMI()
        }
    }
    
}
