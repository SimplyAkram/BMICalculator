//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Akram Ali on 2/13/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return  bmiTo1DecimalPlace
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        //
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
            print("Underweight")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
            print("Normal")
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
            print("overweight")
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
        
    }
        
        
        
        
        
    
    
    
}
