//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Julio Errecart on 11/1/26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {

        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "None yet!"
        
    }

    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.white
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            // Type #colorLiteral( to get Color Literals in 2025!
            bmi = BMI(value: bmiValue, advice: "Get some protein, now!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You are fit, congrats!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Lose those sweets, pronto!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    
}
