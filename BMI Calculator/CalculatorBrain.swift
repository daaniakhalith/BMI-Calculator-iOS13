//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Khalith on 21/10/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain{
    var bmivalue: Float = 0.0
    mutating func CalculateBMI(weight: Float, height: Float)
    {
        bmivalue =  weight / (height * height)
    }
    func getBMI() -> String{
        return String(format: "%.f",bmivalue)
    }
     
    
}
