//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Khalith on 21/10/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue!
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
            
        }
    }
       
