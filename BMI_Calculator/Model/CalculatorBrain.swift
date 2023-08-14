//
//  CalculatorBrain.swift
//  BMI_Calculator
//
//  Created by Эльдар Ахатов on 13/08/23.
//

import UIKit

struct CalculatorBrain {
    
    var bmiResult: BMI?

    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        
        if bmiValue < 18.5 {
            BMI(value: bmiValue, advice: "Eat more", color: .blue)
        } else if bmiValue < 24.9 {
            BMI(value: bmiValue, advice: "Good job", color: .green)
        } else {
            BMI(value: bmiValue, advice: "Eat less", color: .red)
        }
    }
    
    
    func resultBMI() -> String {
        
        let currentBMI = String(format: "%.1f", bmiResult?.value ?? 0.0)
        return currentBMI
    }
    
    func getAdvice() -> String {
        return bmiResult?.advice ?? "No advice"
     
    }
    
    func getColor() -> UIColor {
        return bmiResult?.color ?? UIColor.clear
       
    }
    
    
    
    
}
