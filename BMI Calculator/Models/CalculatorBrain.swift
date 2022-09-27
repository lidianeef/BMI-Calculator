//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lidiane Elaine Ferreira on 28/06/2022.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        let color = (underweight: #colorLiteral(red: 1, green: 0.8509803922, blue: 0.2392156863, alpha: 1), health: #colorLiteral(red: 0.4196078431, green: 0.7960784314, blue: 0.4666666667, alpha: 1), overweight: #colorLiteral(red: 1, green: 0.4196078431, blue: 0.4196078431, alpha: 1))
                
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Coma mais tortas!", color: color.underweight)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fino como um violino!", color: color.health)
        }else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, advice: "Coma menos tortas!", color: color.overweight)
        }
        
        
        
    }
}
